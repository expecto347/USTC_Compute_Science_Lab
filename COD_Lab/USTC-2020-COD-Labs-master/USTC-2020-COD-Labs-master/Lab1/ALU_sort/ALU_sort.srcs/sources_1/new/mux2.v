`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 22:43:38
// Design Name: 
// Module Name: mux2
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



module mux2
    # (parameter WIDTH = 4)
    (
    input select,
    input [WIDTH-1: 0] in0, in1,
    output [WIDTH-1: 0] out
    );
    
    assign out = select ? in1 : in0;
    
endmodule
