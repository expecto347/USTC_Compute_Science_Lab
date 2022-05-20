`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 10:21:20
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
input clk, rst,
input [5:0] opcode,
output reg pc_write_cond,
output reg pc_write,
output reg i_or_d,
output reg mem_read,
output reg mem_write,
output reg mem_to_reg,
output reg ir_write,
output reg [1: 0] pc_source,
output reg [1: 0] alu_op,
output reg alu_src_a,
output reg [1: 0] alu_src_b,
output reg reg_write,
output reg reg_dst
);
   
localparam IF       = 4'b0000;
localparam ID       = 4'b0001;
localparam R_EX     = 4'b0010;
localparam R_WB     = 4'b0011;
localparam I_EX     = 4'b0100;
localparam I_WB     = 4'b0101;
localparam LW_EX    = 4'b0110;
localparam LW_MEM   = 4'b0111;
localparam LW_WB    = 4'b1000;
localparam SW_EX    = 4'b1001;
localparam SW_MEM   = 4'b1010;
localparam BEQ_EX   = 4'b1011;
localparam J_EX     = 4'b1100;

reg [3: 0] cur_state;
reg [3: 0] next_state;

// 控制单元
always @(posedge clk, posedge rst) begin
    if(rst) begin
        cur_state <= 16'h0000;
    end
    else begin
        cur_state <= next_state;
    end
end

always @(*) begin
    // 状态机转移
    case(cur_state)
        IF: next_state = ID;
        ID: begin
            case(opcode)
                ADD_op: next_state = R_EX;
                ADDI_op: next_state = I_EX;
                LW_op: next_state = LW_EX;
                SW_op: next_state = SW_EX;
                BEQ_op: next_state = BEQ_EX;
                J_op: next_state = J_EX;
                default: next_state = cur_state;
            endcase
        end
        R_EX: next_state = R_WB;
        R_WB: next_state = IF;
        I_EX: next_state = I_WB;
        I_WB: next_state = IF;
        LW_EX: next_state = LW_MEM;
        LW_MEM: next_state = LW_WB;
        LW_WB: next_state = IF;
        SW_EX: next_state = SW_MEM;
        SW_MEM: next_state = IF;
        BEQ_EX: next_state = IF;
        J_EX: next_state = IF;
        default: next_state = cur_state;
    endcase
    
    // 输出
    {pc_write_cond, pc_write, pc_source,
     i_or_d, mem_read, mem_write, mem_to_reg,
     ir_write, reg_write, reg_dst,
     alu_op, alu_src_a, alu_src_b} = 16'h0000;
    case(cur_state)
        IF: begin
            mem_read = 1'b1;
            alu_src_a = 1'b0;
            i_or_d = 1'b0;
            ir_write = 1'b1;
            alu_src_b = 2'b01;
            alu_op = 2'b00;
            pc_write = 1'b1;
            pc_source = 2'b00;
        end
        ID: begin
            alu_src_a = 1'b0;
            alu_src_b = 2'b11;
            alu_op = 2'b00;
        end
        R_EX: begin
            alu_src_a = 1'b1;
            alu_src_b = 2'b00;
            alu_op = 2'b10;
        end
        R_WB: begin
            reg_dst = 1'b1;
            reg_write = 1'b1;
            mem_to_reg = 1'b0;
        end
        I_EX, LW_EX, SW_EX: begin
            alu_src_a = 1'b1;
            alu_src_b = 2'b10;
            alu_op = 2'b00;
        end
        I_WB: begin
            reg_dst = 1'b0;
            reg_write = 1'b1;
            mem_to_reg = 1'b0;
        end
        LW_MEM: begin
            mem_read = 1'b1;
            i_or_d = 1'b1;
        end
        LW_WB: begin
            reg_dst = 1'b0;
            reg_write = 1'b1;
            mem_to_reg = 1'b1;
        end
        SW_MEM: begin
            mem_write = 1'b1;
            i_or_d = 1'b1;
        end
        BEQ_EX: begin
            alu_src_a = 1'b1;
            alu_src_b = 2'b00;
            alu_op = 2'b01;
            pc_write_cond = 1'b1;
            pc_source = 2'b01;
        end
        J_EX: begin
            pc_write = 1'b1;
            pc_source = 2'b10;
        end
        default: begin
            {pc_write_cond, pc_write, pc_source,
             i_or_d, mem_read, mem_write, mem_to_reg,
             ir_write, reg_write, reg_dst,
             alu_op, alu_src_a, alu_src_b} = 16'h0000;
        end
    endcase
end
    
endmodule
