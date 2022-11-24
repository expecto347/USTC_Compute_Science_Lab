`timescale 1ns / 1ps

module T1(
input [3:0]sw,
output [7:0]led);
dist_mem_gen_0 dist_mem_gen_0(sw, led);
endmodule
