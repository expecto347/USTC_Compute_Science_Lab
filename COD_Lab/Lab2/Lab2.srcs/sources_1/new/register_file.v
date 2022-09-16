`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/31 20:31:47
// Design Name: 
// Module Name: register_file
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


module register_file
	#(parameter WIDTH=32)
	(input clk,
	input [4:0] ra0,
	output [WIDTH-1:0] rd0,
	input [4:0] ra1,
	output [WIDTH-1:0] rd1,
	input [4:0] wa,
	input we,
	input [WIDTH-1:0] wd
    );
	reg [WIDTH-1:0] regfile[0:31];

	assign rd0 = regfile[ra0],
           rd1 = regfile[ra1];

	always @(posedge clk)
	begin
		if(we) regfile[wa] <= wd;
	end

endmodule
