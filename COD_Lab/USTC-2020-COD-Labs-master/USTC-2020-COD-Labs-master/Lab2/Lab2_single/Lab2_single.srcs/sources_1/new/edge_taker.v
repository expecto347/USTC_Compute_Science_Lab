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
    #(parameter WIDTH=1)
    (
    input clk, rst, // 时钟(上升沿有效)
    input [WIDTH-1: 0] in,   // 输入信号
    output [WIDTH-1: 0] out   // 输出信号
    );
    
    reg [WIDTH-1: 0] in_delay;
    
    assign out = ~in_delay & in;
    
    //state logic
    always @(posedge clk, posedge rst) begin
        if(rst) in_delay = 1'b0;
        else in_delay = in;
    end
    
endmodule
