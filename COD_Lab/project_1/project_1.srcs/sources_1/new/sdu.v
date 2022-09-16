`timescale 1ns / 1ps

module sdu(
    input clk,
    input [7:0] valid,
    output [2:0] ra1,
    input [3:0] rd1,
    output [2:0]an,
    output [3:0] seg
    );
    
    integer i=0;
    reg [2:0] ang=0;
    
    always@(posedge clk)
    begin
        i=i+1;
    if (i==400)
    begin
        i=0;
    end
    if (i==20)
    if (valid[0]) ang<=0;
    if (i==70)
    if (valid[1]) ang<=1;
    if (i==120)
    if (valid[2]) ang<=2;
    if (i==170)
    if (valid[3]) ang<=3;
    if (i==220)
    if (valid[4]) ang<=4;
    if (i==270)
    if (valid[5]) ang<=5;
    if (i==320)
    if (valid[6]) ang<=6;
    if (i==370)
    if (valid[7]) ang<=7;
    
    end
    assign an=ang;
    assign seg=rd1;
    assign ra1=ang;
endmodule
