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
    wire [WIDTH-1: 0] y;   // 运算结果
    wire zf;  // 零标志
    wire cf;  // 进位
    wire of;  // 溢出标志
    reg [WIDTH-1: 0] a, b;    // 两操作数
    reg [2: 0] m; // 操作类型
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
