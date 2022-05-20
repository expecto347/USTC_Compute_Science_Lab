`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/15 21:05:04
// Design Name: 
// Module Name: cpu_multicycle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpu_multicycle
(
input clk,  // ʱ��, ��������Ч
input rst,   // �첽��λ, �ߵ�ƽ��Ч\
input [31:0] dbu_mem_rf_addr,   // DBUѡ���ַ
output [31:0] dbu_rf_data,      // DBUѡ���ַ�ļĴ���������
output [31:0] dbu_mem_data,     // DBUѡ���ַ�Ĵ洢������
output [31:0] dbu_pc,           // PC
output [31:0] dbu_ir,           // IR
output [31:0] dbu_md,           // MD, �洢���ж������ݼĴ���
output [31:0] dbu_a,            // A
output [31:0] dbu_b,            // B
output [31:0] dbu_alu_out,      // ALUOut
output [15:0] dbu_status
);

// wire����
wire [31: 0] mem_addr;
wire [31: 0] mem_write_data;
wire [31: 0] mem_read_data;     // mem_read_data�ǴӴ洢����������wire
wire [31: 0] rf_rd1;
wire [31: 0] rf_rd2;
wire [31: 0] rf_write_addr;
wire [31: 0] rf_write_data;
wire alu_zero;
wire [2: 0] alu_m;
wire [31: 0] alu_a;
wire [31: 0] alu_b;
wire [31: 0] alu_y;
wire [31: 0] ir_imm;            // ָ����������
wire [31: 0] ir_imm_sll_2;      // ָ����������������λ�Ľ��
wire [27: 0] ir_25_0_sll_2;     // ָ��[25: 0]������λ�Ľ��

// ������
reg [31: 0] pc;
reg [31: 0] mem_data;           // mem_data�Ǵ洢�����������������
reg [31: 0] ir;                 // instruction register
reg [31: 0] A;
reg [31: 0] B;
reg [31: 0] alu_out;

// ���Ƶ�Ԫ�ź�
wire pc_we;
wire pc_write_cond;
wire pc_write;
wire i_or_d;
wire mem_read;
wire mem_write;
wire mem_to_reg;
wire ir_write;
wire [1: 0] pc_source;
wire [1: 0] alu_op;
wire alu_src_a;
wire [1: 0] alu_src_b;
wire reg_write;
wire reg_dst;

// ��dbu������.
assign dbu_pc = pc;
assign dbu_ir = ir;
assign dbu_md = mem_data;
assign dbu_a = A;
assign dbu_b = B;
assign dbu_alu_out = alu_out;
assign dbu_status = {pc_source, pc_we,
                     i_or_d, mem_write,
                     ir_write, reg_dst,
                     mem_to_reg, reg_write,
                     alu_m, alu_src_a,
                     alu_src_b, alu_zero};

// PC
assign pc_we = pc_write | (pc_write_cond & alu_zero);

// ָ�����ݴ洢��
assign mem_addr = i_or_d == 1'b1 ? alu_out : pc;
dist_mem_256x32 mem(.clk(clk), .we(mem_write), 
                    .a(mem_addr >> 2), .d(mem_write_data), .spo(mem_read_data),
                    .dpra(dbu_mem_rf_addr), .dpo(dbu_mem_data));
assign ir_imm = {{16{ir[15]}}, ir[15:0]};
assign ir_imm_sll_2 = ir_imm << 2;

// IR - RF
assign rf_write_addr = reg_dst == 1'b1 ? ir[15: 11] : ir[20: 16];
assign rf_write_data = mem_to_reg == 1'b1 ? mem_data : alu_out;
register_file rf(.clk(clk), .rst(rst), .we(reg_write),
                 .ra1(ir[25: 21]), .rd1(rf_rd1),
                 .ra2(ir[20: 16]), .rd2(rf_rd2),
                 .dbu_ra(dbu_mem_rf_addr), .dbu_rd(dbu_rf_data),
                 .wa(rf_write_addr), .wd(rf_write_data));
assign mem_write_data = B;

// RF - ALU
assign alu_a = alu_src_a == 1'b1 ? A : pc;
assign alu_b = alu_src_b == 2'b00 ? B :
               alu_src_b == 2'b01 ? {{29{1'b0}}, 3'b100} :
               alu_src_b == 2'b10 ? ir_imm : ir_imm_sll_2;
ALU ALU(.m(alu_m), .a(alu_a), .b(alu_b),  
        .y(alu_y), .zf(alu_zero));

// ���Ƶ�Ԫ
alu_control ac(.alu_op(alu_op), .funct(ir[5: 0]), .alu_m(alu_m));
control_unit cn(.clk(clk), .rst(rst), .opcode(ir[31: 26]),
                .pc_write_cond(pc_write_cond), .pc_write(pc_write),
                .i_or_d(i_or_d), .mem_read(mem_read), .mem_write(mem_write),
                .mem_to_reg(mem_to_reg), .ir_write(ir_write),
                .pc_source(pc_source), .alu_op(alu_op),
                .alu_src_a(alu_src_a), .alu_src_b(alu_src_b),
                .reg_write(reg_write), .reg_dst(reg_dst));

always @(posedge clk, posedge rst) begin
    if(rst) begin
        mem_data <= 32'h0000_0000;
        ir <= 32'h0000_0000;
        A <= 32'h0000_0000;
        B <= 32'h0000_0000;
        alu_out <= 32'h0000_0000;
    end
    else begin
        // Memory Data Register ��д��
        mem_data <= mem_read_data;
        
        // Instruction Register ��д��
        if(ir_write) ir <= mem_read_data;
        else ir <= ir;
        
        // A �� B д��
        A <= rf_rd1;
        B <= rf_rd2;
        
        // alu_out д��
        alu_out <= alu_y;
    end
end

// PC�ĸ���
assign ir_25_0_sll_2 = ir[25: 0] << 2;
always @(posedge clk, posedge rst) begin
    if(rst) begin
        pc <= 32'h0000_0000;
    end
    else if(pc_we) begin
        case(pc_source)
            2'b00: pc <= alu_y;
            2'b01: pc <= alu_out;
            2'b10: pc <= {pc[31: 28], ir_25_0_sll_2[27: 0]};
            default: pc <= pc;
        endcase
    end
end

endmodule

