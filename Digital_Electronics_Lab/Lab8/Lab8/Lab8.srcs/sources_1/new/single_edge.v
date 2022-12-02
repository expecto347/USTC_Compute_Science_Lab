`timescale 1ns / 1ps

module signal_edge(
input clk,button,
output button_edge);

reg button_r1,button_r2;
always@(posedge clk)
    button_r1 <= button;

always@(posedge clk)
    button_r2 <= button_r1;
    
assign button_edge = button_r1 & (~button_r2);
endmodule