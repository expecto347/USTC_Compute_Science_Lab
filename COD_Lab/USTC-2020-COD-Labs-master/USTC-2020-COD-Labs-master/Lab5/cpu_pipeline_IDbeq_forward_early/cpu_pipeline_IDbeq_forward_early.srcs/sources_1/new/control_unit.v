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
output [1:0] M,     // mem_write, mem_read
output [3:0] EX,     // alu_src, alu_op, reg_dst
input shall_branch,
input had_branched,
output reg [1:0] pc_src,
output integer flush_counter,
output reg flush_pc_we,
output reg IF_ID_we
);

reg reg_dst;
reg [1:0] alu_op;
reg alu_src;
reg mem_read;
reg mem_write;
reg reg_write;
reg mem_to_reg;

assign EX = {alu_src, alu_op, reg_dst};
assign M = {mem_write, mem_read};
assign WB = {mem_to_reg, reg_write};

always @(*) begin
    {reg_dst, alu_op, alu_src, mem_read, mem_write, reg_write, mem_to_reg} = 11'h000;
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
            //pc_src = flush_counter == 0 ? 2'b00 : 2'b01;
            alu_src = 1'b1;
        end
        J_op: begin
            //pc_src = flush_counter == 0 ? 2'b00 : 2'b10;
            alu_src = 1'b1;
        end
        default: {reg_dst, alu_op, alu_src, mem_read, mem_write, reg_write, mem_to_reg} = 11'h000;
    endcase
end

always @(*) begin
    if(flush_counter == 0) begin
        pc_src = 2'b00;
    end
    else if(opcode == BEQ_op && equal) begin
        pc_src = 2'b01;
    end
    else if(opcode == J_op) begin
        pc_src = 2'b10;
    end
    else begin
        pc_src = 2'b00;
    end 
end

always @(*) begin
    flush_pc_we = (flush_counter == -1 && opcode != BEQ_op && opcode != J_op )
                  || flush_counter == 1 || flush_counter == 0;
    IF_ID_we = (flush_counter == -1 && opcode != BEQ_op && opcode != J_op) 
                     || flush_counter == 0;
end

always @(posedge clk, posedge rst) begin
    if(rst) flush_counter <= 0;
    else begin
        if(flush_counter > 0) flush_counter <= flush_counter - 1;
        else if(flush_counter == 0) flush_counter <= -1;
        else begin
            if(opcode == J_op) flush_counter <= 0;
            else if(opcode == BEQ_op) flush_counter <= 1;
            else flush_counter <= -1;
        end
    end
end


endmodule

// 分支预测器
module branch_predictor
#(
parameter HIGH = 5    // 分支预测器cache地址最高位
)
(
input clk,
input rst,
input [5:0] im_instr_opcode,
input [HIGH:0] im_instr_lowpc,
input [HIGH:0] IF_ID_lowpc,
input IF_ID_is_branch,
input equal,
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
            cache[i] <= 2'b10;
        end
    end
    else if(IF_ID_is_branch) begin
        case(equal)
            1'b0: cache[IF_ID_lowpc] <= cache[IF_ID_lowpc] == 2'b00 ? 2'b00 : cache[IF_ID_lowpc] - 2'b01;
            1'b1: cache[IF_ID_lowpc] <= cache[IF_ID_lowpc] == 2'b11 ? 2'b11 : cache[IF_ID_lowpc] + 2'b01;
            default: cache[IF_ID_lowpc] <= 2'b01;
        endcase
    end
end

endmodule
