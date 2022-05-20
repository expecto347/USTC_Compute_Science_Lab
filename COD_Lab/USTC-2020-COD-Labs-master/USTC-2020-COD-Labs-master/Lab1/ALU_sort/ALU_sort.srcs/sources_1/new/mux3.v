`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 22:43:48
// Design Name: 
// Module Name: mux3
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

module mux3
    # (parameter WIDTH = 4)
    (
    input [1: 0] select,
    input [WIDTH-1: 0] in0, in1, in2,
    output reg [WIDTH-1: 0] out
    );
    
    always @(*)
    begin
        case(select)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            default: out = {WIDTH{1'b0}};
        endcase
    end
    
endmodule
