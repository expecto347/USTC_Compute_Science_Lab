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
    #(parameter WIDTH = 4) // ����λ��
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
