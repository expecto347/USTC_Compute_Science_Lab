`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/07 12:20:12
// Design Name: 
// Module Name: ram_8
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


module ram_8(input clk,
	input [2:0] ra0,
	output [3:0] rd0,
	input [2:0] ra1,
	output [3:0] rd1,
	input [2:0] wa,
	input we,
	input [3:0] wd
    );
	reg [3:0] regfile[0:7];

	assign rd0 = regfile[ra0];
    assign rd1 = regfile[ra1];

	always @(posedge clk)
	begin
		if(we) regfile[wa] <= wd;
	end

endmodule