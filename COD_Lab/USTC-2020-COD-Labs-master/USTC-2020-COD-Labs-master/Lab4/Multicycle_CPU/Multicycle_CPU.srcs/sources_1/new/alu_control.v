`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/15 22:39:43
// Design Name: 
// Module Name: alu_control
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


module alu_control
#
(
parameter ADD_funct = 6'b100000,

parameter R_alu_op = 2'b10,
parameter ADDI_alu_op = 2'b00,
parameter LW_alu_op = 2'b00,
parameter SW_alu_op = 2'b00,
parameter BEQ_alu_op = 2'b01,

parameter ALU_ADD = 3'b000,
parameter ALU_SUB = 3'b001,
parameter ALU_AND = 3'b010,
parameter ALU_OR = 3'b011,
parameter ALU_XOR = 3'b100
)
(
input [5: 0] funct,
input [1: 0] alu_op,
output reg [2: 0] alu_m
);
    
always @(*) begin
    case(alu_op)
        R_alu_op: begin
            case(funct)
                ADD_funct: alu_m = ALU_ADD;
                default: alu_m = 3'b111;
            endcase
        end
        2'b00: begin
            alu_m = ALU_ADD;
        end
        BEQ_alu_op: begin
            alu_m = ALU_SUB;
        end
        default: alu_m = 3'b111;
    endcase
end
endmodule
