`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 09:37:06
// Design Name: 
// Module Name: ALU
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
module ALU 
    #(parameter WIDTH = 32,
    parameter ALU_ADD = 3'b000,
    parameter ALU_SUB = 3'b001,
    parameter ALU_AND = 3'b010,
    parameter ALU_OR = 3'b011,
    parameter ALU_XOR = 3'b100
    
    ) // ����λ��
    (
    output reg [WIDTH-1: 0] y,   // ������
    output reg zf,  // ���־
    output reg cf,  // ��λ
    output reg of,  // �����־
    input [WIDTH-1: 0] a, b,    // ��������
    input [2: 0] m // ��������
    );
    
    always @(*)
    begin
        // {cf, y}
        case(m)
            3'b000: {cf, y} = a + b;
            3'b001: {cf, y} = a - b;
            3'b010: {cf, y} = {1'b0, a & b};
            3'b011: {cf, y} = {1'b0, a | b};
            3'b100: {cf, y} = {1'b0, a ^ b};
            default: {cf, y} = {(WIDTH+1){1'b0}};
        endcase
        // of
        case(m)
            3'b000: of = (~a[WIDTH-1] & ~b[WIDTH-1] & y[WIDTH-1]) | (a[WIDTH-1] & b[WIDTH-1] & ~y[WIDTH-1]);
            3'b001: of = (~a[WIDTH-1] & b[WIDTH-1] & y[WIDTH-1]) | (a[WIDTH-1] & ~b[WIDTH-1] & ~y[WIDTH-1]);
            default: of = 1'b0;
        endcase
        // zf
        zf = ~|y;
    end
    
endmodule

/*
module ALU
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
    output reg [31:0] y,   // ������
    output reg zf,  // ���־
    output reg cf,  // ��λ
    output reg of,  // �����־
    input [31:0] a, b,    // ��������
    input [5:0] m, // ��������
    input [5:0] funct
    );
    
    always @(*)
    begin
        // {cf, y}
        case(m)
            ADD_op: {cf, y} = ADD_funct == funct ? a + b : 32'b0000_0000;  // ��functΪADD_functʱ, ���Ǽӷ�
            ADDI_op: {cf, y} = a + b;    // �����������������
            LW_op, SW_op: {cf, y} = a + b; // ��Ҫ�����ַ
            BEQ_op: {cf, y} = a - b;
            default: {cf, y} = 32'b0000_0000;
        endcase
        // of
        case(m)
            ADD_op: of = ADD_funct == funct ? (~a[31] & ~b[31] & y[31]) | (a[31] & b[31] & ~y[31]) : 1'b0;  // ��functΪADD_functʱ, ���Ǽӷ�
            ADDI_op: of = (~a[31] & ~b[31] & y[31]) | (a[31] & b[31] & ~y[31]);    // �����������������
            default: of = 1'b0;
        endcase
        // zf
        zf = ~|y;
    end
    
endmodule*/
