`timescale 1ns / 1ps
module counter_30(
input clk,
output reg [7:0]led);
reg [29:0] number;
always@(posedge clk)
begin
    led<=number[29:22];
    number<=number+1;
end
endmodule