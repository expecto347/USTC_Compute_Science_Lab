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
    input clk, rst, // ʱ��(��������Ч)
    input [WIDTH-1: 0] in,   // �����ź�
    output [WIDTH-1: 0] out   // ����ź�
    );
    
    reg [WIDTH-1: 0] in_delay;
    
    assign out = ~in_delay & in;
    
    //state logic
    always @(posedge clk, posedge rst) begin
        if(rst) in_delay = 1'b0;
        else in_delay = in;
    end
    
endmodule
