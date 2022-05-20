`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 22:12:56
// Design Name: 
// Module Name: register
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
module register #(parameter N = 4)(
    input clk,
    input rst,
    input en,
    input [N-1:0] data,
    output reg [N-1:0] r
    );
    always @(posedge clk or posedge rst)
        begin
            if(rst)
                r <= 0;
            else if(en)
                r <= data;
            else
                r <= data;
        end
endmodule
