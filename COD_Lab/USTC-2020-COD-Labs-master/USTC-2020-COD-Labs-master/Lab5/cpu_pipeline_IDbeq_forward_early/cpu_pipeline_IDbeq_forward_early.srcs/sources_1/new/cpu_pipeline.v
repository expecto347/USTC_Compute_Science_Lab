`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/29 16:34:33
// Design Name: 
// Module Name: cpu_pipeline
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


module cpu_pipeline
#(
parameter BEQ_op = 6'b000100,
parameter J_op = 6'b000010,
parameter HIGH = 5    // 分支预测器cache地址最高位
)
(
input clk,  // 时钟, 上升沿有效
input rst,   // 异步复位, 高电平有效
input [31:0] DBU_mem_rf_addr,   // DBU选择地址
output [31:0] DBU_rf_data,      // DBU选择地址的寄存器堆数据
output [31:0] DBU_mem_data,     // DBU选择地址的存储器数据
output [31:0] DBU_PC,           // PC
output [31:0] DBU_IF_ID_IR,
output [31:0] DBU_IF_ID_NPC,
output [31:0] DBU_ID_EX_A,
output [31:0] DBU_ID_EX_B,
output [31:0] DBU_ID_EX_IMM,      
output [31:0] DBU_ID_EX_IR,
output [31:0] DBU_EX_MEM_Y,
output [31:0] DBU_EX_MEM_B,
output [4:0] DBU_EX_MEM_WA,
output [31:0] DBU_MEM_WB_MDR,
output [31:0] DBU_MEM_WB_Y,
output [4:0] DBU_MEM_WB_WA
);

// 控制信号
//// 控制单元
wire pc_we;
wire [1:0] pc_src;
wire flush;
wire integer flush_counter;
wire flush_pc_we;
wire IF_ID_we;
//// 转发控制器
wire [1:0] alu_a_src;
wire [1:0] alu_b_src;
wire [1:0] equal_a_src;
wire [1:0] equal_b_src;
//// 竞争冲突检测器
wire stall;

// 寄存器输出
//// PC
reg [31:0] PC;
//// IF/ID段
wire [31:0] IF_ID_NPC;
wire [31:0] IF_ID_IR;
wire [HIGH:0] IF_ID_lowpc;
wire IF_ID_had_branched;
//// ID/EX段
wire [1:0] ID_EX_WB;
wire [1:0] ID_EX_M;
wire [3:0] ID_EX_EX;
wire [31:0] ID_EX_NPC;
wire [31:0] ID_EX_A;
wire [31:0] ID_EX_B;
wire [31:0] ID_EX_IMM;
wire [31:0] ID_EX_IR;
//// EX/MEM
wire [1:0] EX_MEM_WB;
wire [1:0] EX_MEM_M;
wire [31:0] EX_MEM_NPC;
wire EX_MEM_ZF;
wire [31:0] EX_MEM_Y;
wire [31:0] EX_MEM_B;
wire [4:0] EX_MEM_WA;
//// MEM/WB
wire [1:0] MEM_WB_WB;
wire [31:0] MEM_WB_MDR;
wire [31:0] MEM_WB_Y;
wire [4:0] MEM_WB_WA;

// 连线
wire [31:0] WB_wb_data;
wire [31:0] ID_instr_imm;
wire [27:0] ID_instr_25_0_sll_2;
wire [31:0] mem_out_rd;
wire [1:0] ctrl_m;
wire [1:0] ctrl_wb;
wire [3:0] ctrl_ex;
wire [31:0] rf_rd1;
wire [31:0] rf_rd2;
wire shall_branch;
wire equal;
//// EX段
reg [31:0] alu_a;
reg [31:0] alu_b;
wire [2:0] alu_m;
wire [31:0] alu_y;


// 传输数据给 DBU
//// IF_ID段
assign DBU_PC = PC;
assign DBU_IF_ID_IR = IF_ID_IR;
assign DBU_IF_ID_NPC = IF_ID_NPC;
//// ID_EX段
assign DBU_ID_EX_A = ID_EX_A;
assign DBU_ID_EX_B = ID_EX_B;
assign DBU_ID_EX_IMM = ID_EX_IMM;
assign DBU_ID_EX_IR = ID_EX_IR;
//// EX_MEM段
assign DBU_EX_MEM_Y = EX_MEM_Y;
assign DBU_EX_MEM_B = EX_MEM_B;
assign DBU_EX_MEM_WA = EX_MEM_WA;
//// MEM_WB段
assign DBU_MEM_WB_MDR = MEM_WB_MDR;
assign DBU_MEM_WB_Y = MEM_WB_Y;
assign DBU_MEM_WB_WA = MEM_WB_WA;

// IF 段
wire [31:0] im_instr;
instr_mem_256x32 mem_instr(.a(PC >> 2),
                           .spo(im_instr));

register_syn #(.N(32)) 
    rIF_ID_NPC(.clk(clk),
               .rst(rst),
               .we(IF_ID_we && ~stall),
               .wd(PC+4),
               .d(IF_ID_NPC));
              
register_syn #(.N(32+HIGH+1+1)) 
    IF_ID(.clk(clk),
          .rst(rst),
          .we(IF_ID_we && ~stall),
          .wd({im_instr, PC[HIGH+2:2], shall_branch}),
          .d({IF_ID_IR, IF_ID_lowpc, IF_ID_had_branched}));
          
branch_predictor #(.HIGH(HIGH))
    branch_predictor(.clk(clk),
                     .rst(rst),
                     .im_instr_opcode(im_instr[31:26]),
                     .im_instr_lowpc(PC[HIGH+2:2]),
                     .IF_ID_lowpc(IF_ID_lowpc),
                     .IF_ID_is_branch(IF_ID_IR[31:26] == BEQ_op ? 1'b1 : 1'b0),
                     .equal(equal),
                     .shall_branch(shall_branch));
       
// ID段
assign ID_instr_imm = {{16{IF_ID_IR[15]}}, IF_ID_IR[15:0]};
assign ID_instr_25_0_sll_2 = IF_ID_IR << 2;
//// 寄存器文件
register_file register_file(.clk(clk),
                            .rst(rst),
                            .ra1(IF_ID_IR[25:21]),
                            .rd1(rf_rd1),
                            .ra2(IF_ID_IR[20:16]),
                            .rd2(rf_rd2),
                            .dbu_ra(DBU_mem_rf_addr),
                            .dbu_rd(DBU_rf_data),
                            .we(MEM_WB_WB[0]),
                            .wa(MEM_WB_WA),
                            .wd(WB_wb_data));

// equal的判断
assign equal = equal_a == equal_b ? 1'b1 : 1'b0;
reg [31:0] equal_a;
reg [31:0] equal_b;
always @(*) begin
    case(equal_a_src)
        2'b00: equal_a = rf_rd1;
        2'b01: equal_a = alu_y;
        2'b10: equal_a = mem_out_rd;
        default: equal_a = rf_rd1;
    endcase
    case(equal_b_src)
        2'b00: equal_b = rf_rd2;
        2'b01: equal_b = alu_y;
        2'b10: equal_b = mem_out_rd;
        default: equal_b = rf_rd2;
    endcase
end
                            
//// ID/EX 段间寄存器
wire [1:0] ctrl_wb_in;
wire [1:0] ctrl_m_in;
wire [3:0] ctrl_ex_in;
assign ctrl_wb_in = flush == 1'b0 ? ctrl_wb : 2'b00;
assign ctrl_m_in = flush == 1'b0 ? ctrl_m : 2'b00;
assign ctrl_ex_in = flush == 1'b0 ? ctrl_ex : 4'b0000;

register_syn #(.N(2+2+4+32+32+32+32+32))
    ID_EX(.clk(clk),
          .rst(rst || stall),
          .we(1'b1),
          .wd({ctrl_wb, ctrl_m, ctrl_ex, IF_ID_NPC, rf_rd1, rf_rd2, ID_instr_imm, IF_ID_IR}),
          .d({ID_EX_WB, ID_EX_M, ID_EX_EX, ID_EX_NPC, ID_EX_A, ID_EX_B, ID_EX_IMM, ID_EX_IR}));

//// 控制单元
control_unit ctrl_unit(.clk(clk),
                       .rst(rst),
                       .equal(equal),
                       .opcode(IF_ID_IR[31:26]),
                       .WB(ctrl_wb),
                       .M(ctrl_m),
                       .EX(ctrl_ex),
                       .pc_src(pc_src),
                       .flush_counter(flush_counter),
                       .flush_pc_we(flush_pc_we),
                       .IF_ID_we(IF_ID_we),
                       .shall_branch(shall_branch),
                       .had_branched(IF_ID_had_branched));
                       
//// 竞争冲突检测器
hazard_detection_unit
    hazard_detection_unit(.mem_read(ID_EX_M[0]),
                          .IF_ID_IR(IF_ID_IR),
                          .ID_EX_IR(ID_EX_IR),
                          .pc_we(pc_we),
                          .stall(stall));

//// 跳转指令等的PC赋值
always @(posedge clk, posedge rst) begin
    if(rst) begin
        PC <= 32'h0000_0000;
    end
    else begin
        if(pc_we == 1'b1) begin
            case(pc_src)
                2'b00: PC <= PC + 4;
                2'b01: PC <= IF_ID_NPC + (ID_instr_imm << 2);
                2'b10: PC <= {IF_ID_NPC[31: 28], ID_instr_25_0_sll_2};
                2'b11: PC <= PC;
                default: PC <= PC;
            endcase
        end
        else PC <= PC;
    end
end

// EX段

//// 转发控制器
forwarding_unit
    forward(.MEM_WB_WA(MEM_WB_WA),
            .EX_MEM_WA(EX_MEM_WA),
            .ID_EX_WA(ID_EX_EX[0] == 1'b0 ? ID_EX_IR[20:16] : ID_EX_IR[15:11]),
            .ID_EX_rs(ID_EX_IR[25:21]),
            .ID_EX_rt(ID_EX_IR[20:16]),
            .MEM_WB_reg_write(MEM_WB_WB[0]),
            .EX_MEM_reg_write(EX_MEM_WB[0]),
            .ID_EX_reg_write(ID_EX_WB[0]),
            .alu_src(ID_EX_EX[3]),
            .alu_a_src(alu_a_src),
            .alu_b_src(alu_b_src),
            .IF_ID_IR(IF_ID_IR),
            .equal_a_src(equal_a_src),
            .equal_b_src(equal_b_src));

always @(*) begin
    case(alu_a_src)
        2'b00: alu_a = ID_EX_A;
        2'b10: alu_a = WB_wb_data;
        2'b11: alu_a = EX_MEM_Y;
        default: alu_a = ID_EX_A;
    endcase
    case(alu_b_src)
        2'b00: alu_b = ID_EX_B;
        2'b01: alu_b = ID_EX_IMM;
        2'b10: alu_b = WB_wb_data;
        2'b11: alu_b = EX_MEM_Y;
        default: alu_b = ID_EX_B;
    endcase
end
alu_control alu_control(.funct(ID_EX_IR[5:0]),
                        .alu_op(ID_EX_EX[2:1]),
                        .alu_m(alu_m));
ALU ALU(.y(alu_y),
        .zf(alu_zf),
        .cf(alu_cf),
        .of(alu_of),
        .a(alu_a),
        .b(alu_b),
        .m(alu_m));
 

//// EX/MEM段间寄存器
register_syn #(.N(2+2+1+32+32+5))
    EX_MEM(.clk(clk),
           .rst(rst),
           .we(1'b1),
           .wd({ID_EX_WB, ID_EX_M, alu_zf, alu_y, ID_EX_B, ID_EX_EX[0] == 1'b0 ? ID_EX_IR[20:16] : ID_EX_IR[15:11]}),
           .d({EX_MEM_WB, EX_MEM_M, EX_MEM_ZF, EX_MEM_Y, EX_MEM_B, EX_MEM_WA}));

// MEM段
data_mem_256x32 data_mem(.a(EX_MEM_Y >> 2),
                         .d(EX_MEM_B),
                         .dpra(DBU_mem_rf_addr),
                         .clk(clk),
                         .we(EX_MEM_M[1]),
                         .spo(mem_out_rd),
                         .dpo(DBU_mem_data));

//// MEM/WB段间寄存器
register_syn #(.N(2+32+32+5))
    MEM_WB(.clk(clk),
           .rst(rst),
           .we(1'b1),
           .wd({EX_MEM_WB, mem_out_rd, EX_MEM_Y, EX_MEM_WA}),
           .d({MEM_WB_WB, MEM_WB_MDR, MEM_WB_Y, MEM_WB_WA}));

// WB段
assign WB_wb_data = MEM_WB_WB[1] == 1'b0 ? MEM_WB_Y : MEM_WB_MDR;

endmodule
