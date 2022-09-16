`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 22:23:04
// Design Name: 
// Module Name: cpu_one_circle
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


module cpu_one_circle
#(
parameter ADD_op = 6'b000000,
parameter ADD_funct = 6'b100000,
parameter ADDI_op = 6'b001000,
parameter LW_op = 6'b100011,
parameter SW_op = 6'b101011,
parameter BEQ_op = 6'b000100,
parameter J_op = 6'b000010
)
(
input clk,  // 时钟, 上升沿有效
input rst,   // 异步复位, 高电平有效
input dbu_run,
input [31:0] dbu_mem_rf_addr,
output [31:0] dbu_rf_data,
output [31:0] dbu_mem_data,
output [31:0] dbu_pc_in,
output [31:0] dbu_pc,
output [31:0] dbu_instr,
output [31:0] dbu_rf_rd1,
output [31:0] dbu_rf_rd2,
output [31:0] dbu_alu_y,
output [31:0] dbu_mem_rd,
output [11:0] dbu_status
);

// 数据线
reg [31:0] pc;
wire [31:0] instr;
wire [31:0] rf_rd1;
wire [31:0] rf_rd2;
wire [31:0] rf_wd;
wire [31:0] mem_rd;
wire [31:0] alu_b;
wire [31:0] alu_y;
wire [31:0] instr_imm;

// 地址线
reg [31:0] pc_in;
wire [4:0] rf_write_register;
wire [7:0] mem_addr;
// 控制信号线
wire [5:0] opcode;
wire [5:0] funct;
wire reg_dst;
wire reg_write;
wire mem_read;
wire mem_to_reg;
wire mem_write;
wire [2:0] alu_op;
wire alu_src;
wire alu_zero;

// DBU的信号赋值
assign dbu_pc_in = pc_in;
assign dbu_pc = pc;
assign dbu_instr = instr;
assign dbu_rf_rd1 = rf_rd1;
assign dbu_rf_rd2 = rf_rd2;
assign dbu_alu_y = alu_y;
assign dbu_mem_rd = mem_rd;
assign dbu_status = {opcode == J_op, opcode == BEQ_op, reg_dst, reg_write,
                  mem_read, mem_to_reg, mem_write, alu_op,
                  alu_src, alu_zero};

assign opcode = instr[31:26];
assign funct = instr[5:0];
// 指令存储器
dist_instruction_memory_256x32 instr_memory(.a(pc[9:2]), .spo(instr));
// 指令存储器 - 寄存器文件
//// 选择写寄存器
assign rf_write_register = reg_dst == 1'b0 ? instr[20:16] : instr[15:11];
// 寄存器文件
register_file register_file(.clk(clk), .rst(rst),
                            .ra1(instr[25:21]), .rd1(rf_rd1),
                            .ra2(instr[20:16]), .rd2(rf_rd2),
                            .dbu_ra(dbu_mem_rf_addr[4:0]), .dbu_rd(dbu_rf_data),
                            .wa(rf_write_register), .we(reg_write & dbu_run), .wd(rf_wd));
// 寄存器文件 - ALU
//// 带符号扩展后十六位
assign instr_imm = {{16{instr[15]}}, instr[15:0]};
//// 选择alu_src
assign alu_b = (alu_src == 1'b0) ? rf_rd2 : instr_imm;
// ALU
ALU ALU(.m(alu_op), .a(rf_rd1), .b(alu_b), .zf(alu_zero), .y(alu_y));
// ALU - 数据存储器
assign mem_addr = alu_y;
// 数据存储器
dist_memory_256x32 memory(.a(mem_addr >> 2), .d(rf_rd2), .dpra(dbu_mem_rf_addr), .clk(clk), .we(mem_write & dbu_run), .spo(mem_rd), .dpo(dbu_mem_data));
assign rf_wd = mem_to_reg == 1'b0 ? alu_y : mem_rd;
// 控制单元
control_unit control_unit(.opcode(opcode), .funct(funct), .reg_dst(reg_dst), .reg_write(reg_write),
                          .mem_read(mem_read), .mem_to_reg(mem_to_reg), .mem_write(mem_write), .alu_op(alu_op),
                          .alu_src(alu_src));

// PC的更新
wire [31:0] pc_plus4;
wire [27:0] instr25_0_sll2;
assign pc_plus4 = pc + 4;
assign instr25_0_sll2 = instr[25:0] << 2;
always @(*) begin
    if(dbu_run == 1'b0) begin
        pc_in = pc;
    end
    else begin
        case(opcode)
            BEQ_op: pc_in = alu_zero == 1'b1 ? pc + 4 + (instr_imm<<2) : pc + 4;
            J_op: pc_in = {pc_plus4[31:28], instr25_0_sll2[27:0]};
            default: pc_in = pc + 4;
        endcase
    end
end
always @(posedge clk, posedge rst) begin
    if(rst) begin
        pc <= 32'h0000_0000;
    end
    else begin
        pc = pc_in;
    end
end
    
    
endmodule
