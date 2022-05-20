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
    parameter ADD_funct = 6'b100000,
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
    input [5:0] opcode,
    input [5:0] funct,
    output reg reg_dst, reg_write, mem_read, mem_to_reg, mem_write, alu_src,
    output reg [2:0] alu_op
    );
       
    // ¿ØÖÆµ¥Ôª
    always @(*) begin
        {reg_dst, reg_write, mem_read, mem_to_reg, mem_write, alu_op, alu_src} = 9'h0_0000_0000;
        case(opcode)
            ADD_op: begin
                case(funct)
                    ADD_funct: begin
                        reg_dst = 1'b1; reg_write = 1'b1; alu_op = ALU_ADD;
                    end
                    default: {reg_dst, reg_write, mem_read, mem_to_reg, mem_write, alu_op, alu_src} = 9'h0_0000_0000;
                endcase
            end 
            ADDI_op: begin
                alu_src = 1'b1; reg_write = 1'b1; alu_op = ALU_ADD;
            end
            LW_op: begin
                alu_src = 1'b1;
                mem_to_reg = 1'b1;
                reg_write = 1'b1;
                mem_read = 1'b1;
                alu_op = ALU_ADD;
            end
            SW_op: begin
                alu_src = 1'b1;
                mem_write = 1'b1;
                alu_op = ALU_ADD;
            end
            BEQ_op: alu_op = ALU_SUB;
            default: {reg_dst, reg_write, mem_read, mem_to_reg, mem_write, alu_op, alu_src} = 9'h0_0000_0000;
        endcase
    end
    
endmodule
