`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 13:47:16
// Design Name: 
// Module Name: edge_taker
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


module edge_taker
    #(parameter N = 1)
    (
    input clk, rst, // 时钟(上升沿有效), 复位(异步复位, 高电平有效)
    input [N-1: 0]in,   // 输入信号
    output [N-1: 0] out   // 输出信号
    );
    
    reg [N-1: 0] in1 = 0;
    reg [N-1: 0] in2 = 0;
    always@(posedge clk) in1 <= in;
    always@(posedge clk) in2 <= in1;
    assign out = rst ? {N{1'b0}} : in1 & ~in2;
endmodule
