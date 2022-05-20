`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 16:54:06
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

// Í¬²½¸´Î»¼Ä´æÆ÷
module register_asyn #(parameter N = 1)
(
input clk,
input rst,
input [N-1:0] wd,
input we,
output reg [N-1:0] d
);

always @(posedge clk, posedge rst) begin
    if(rst) begin
        d <= 0;
    end
    else if(we) begin
        d <= wd;
    end
end

endmodule

// Òì²½¸´Î»¼Ä´æÆ÷
module register_syn #(parameter N = 1)
(
input clk,
input rst,
input [N-1:0] wd,
input we,
output reg [N-1:0] d
);

initial d = {N{1'b0}};

always @(posedge clk) begin
    if(rst) begin
        d <= 0;
    end
    else if(we) begin
        d <= wd;
    end
end

endmodule