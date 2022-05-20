`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 12:06:37
// Design Name: 
// Module Name: control_unit
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

// 控制信号
module control_unit
#(
parameter ADD_op = 6'b000000,
parameter ADDI_op = 6'b001000,
parameter LW_op = 6'b100011,
parameter SW_op = 6'b101011,
parameter BEQ_op = 6'b000100,
parameter J_op = 6'b000010,

parameter ALU_ADD = 3'b000,
parameter ALU_SUB = 3'b001,
parameter ALU_AND = 3'b010,
parameter ALU_OR = 3'b011,
parameter ALU_XOR = 3'b100
)
(
input clk,
input rst,
input equal,
input [5:0] opcode,
output [1:0] WB,    // mem_to_reg, reg_write
output [2:0] M,     // mem_write, mem_read
output [3:0] EX     // alu_src, alu_op, reg_dst
);

reg reg_dst;
reg [1:0] alu_op;
reg alu_src;
reg mem_read;
reg mem_write;
reg reg_write;
reg mem_to_reg;
reg EX_MEM_is_branch;
reg EX_MEM_had_branched;

assign EX = {alu_src, alu_op, reg_dst};
assign M = {EX_MEM_had_branched, EX_MEM_is_branch, mem_write, mem_read};
assign WB = {mem_to_reg, reg_write};

reg beq_j;

always @(*) begin
    {reg_dst, alu_op, alu_src, mem_read, mem_write, reg_write, mem_to_reg, EX_MEM_is_branch, EX_MEM_had_branched} = 12'h000;
    case(opcode)
        ADD_op: begin
            reg_dst = 1'b1;
            alu_op = 2'b10; // 按 funct
            reg_write = 1'b1;
        end
        ADDI_op: begin
            alu_op = 2'b00; // 做加法
            alu_src = 1'b1; // 选立即数
            reg_write = 1'b1;
        end
        LW_op: begin
            alu_op = 2'b00; // 做加法
            alu_src = 1'b1; // 选立即数
            mem_read = 1'b1;
            reg_write = 1'b1;
            mem_to_reg = 1'b1;
        end
        SW_op: begin
            alu_op = 2'b00; // 做加法
            alu_src = 1'b1; // 选立即数
            mem_write = 1'b1;
        end
        BEQ_op: begin
            EX_MEM_is_branch = 1'b1;
            alu_op = 2'b01; // 做减法
        end
        default: {reg_dst, alu_op, alu_src, mem_read, mem_write, reg_write, mem_to_reg, EX_MEM_is_branch, EX_MEM_had_branched} = 12'h000;
    endcase
end

endmodule

// pc_src的选择
module pc_src_choose
(
input is_j,
input EX_MEM_is_branch,
input EX_MEM_had_branched,
input EX_MEM_ZF,
input shall_branch,
output reg [2:0] pc_src,
output reg flush_IF_to_EX
);

always @(*) begin
    flush_IF_to_EX = 1'b0;
    if(EX_MEM_is_branch) begin                          // 如果需要branch
        if(EX_MEM_ZF) begin
            if(~EX_MEM_had_branched) begin              // 之前预测不branch
                flush_IF_to_EX = 1'b1;
                pc_src = 3'b001;
            end
            else if(shall_branch) begin                 // 之前预测要branch, 并且又有一个branch
                pc_src = 3'b011;
            end
            else begin                                  // 其他
                pc_src = 3'b000;
            end
        end
        else begin                                      // 如果不需要branch                          
            if(EX_MEM_had_branched) begin               // 但之前branch了
                flush_IF_to_EX = 1'b1;
                pc_src = 3'b100;
            end
            else if(shall_branch) begin                 // 并且又有一个branch
                pc_src = 3'b011;
            end
            else begin                                  // 之前没有branch
                pc_src = 3'b000;
            end
        end
    end
    else if(shall_branch) pc_src = 3'b011;
    else if(is_j) pc_src = 3'b010;
    else pc_src = 3'b000;
end

endmodule

// 分支预测器
module branch_predictor
#(
parameter HIGH = 5    // cache地址最高位
)
(
input clk,
input rst,
input [5:0] im_instr_opcode,
input [HIGH:0] im_instr_lowpc,
input [HIGH:0] EX_MEM_lowpc,
input EX_MEM_is_branch,
input EX_MEM_ZF,
output shall_branch
);

localparam BEQ_op = 6'b000100;
localparam CACHE_SIZE = {2'b10, {HIGH{1'b0}}}; // 根据 HIGH 判断缓存大小
reg [1:0] cache[CACHE_SIZE-1:0];
integer i;

assign shall_branch = cache[im_instr_lowpc] >= 2'b10 && im_instr_opcode == BEQ_op ? 1'b1 : 1'b0;

always @(posedge clk, posedge rst) begin
    if(rst) begin
        for(i = 0; i < CACHE_SIZE; i = i + 1) begin
            cache[i] <= 2'b01;
        end
    end
    else if(EX_MEM_is_branch) begin
        case(EX_MEM_ZF)
            1'b0: cache[EX_MEM_lowpc] <= cache[EX_MEM_lowpc] == 2'b00 ? 2'b00 : cache[EX_MEM_lowpc] - 2'b01;
            1'b1: cache[EX_MEM_lowpc] <= cache[EX_MEM_lowpc] == 2'b11 ? 2'b11 : cache[EX_MEM_lowpc] + 2'b01;
            default: cache[EX_MEM_lowpc] <= 2'b01;
        endcase
    end
end

endmodule
