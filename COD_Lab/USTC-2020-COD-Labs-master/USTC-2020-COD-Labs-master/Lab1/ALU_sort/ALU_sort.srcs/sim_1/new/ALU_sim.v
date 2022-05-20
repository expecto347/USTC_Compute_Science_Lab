`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/24 10:38:43
// Design Name: 
// Module Name: ALU_sim
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


module ALU_sim();
    parameter WIDTH = 4;
    wire [WIDTH-1: 0] y;   // ������
    wire zf;  // ���־
    wire cf;  // ��λ
    wire of;  // �����־
    reg [WIDTH-1: 0] a, b;    // ��������
    reg [2: 0] m; // ��������
    reg clk;
    
    ALU ALU(y, zf, cf, of, a, b, m);
    
    
    initial
    begin
        clk = 0;
        m = 0;
        a = $random % 16;
        b = $random % 16;
    end
    
    always @(*)
    begin
        forever #5 clk = ~clk;
    end
    
    always @(posedge clk)
    begin
        m = m == 4 ? 0 : m + 1;
        a = $random % 16;
        b = $random % 16;
    end
    
endmodule
