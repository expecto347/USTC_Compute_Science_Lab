`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/30 18:06:55
// Design Name: 
// Module Name: Sim11
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


module Sim11(

    );
    reg en;
    reg clk;
    reg rst;
    reg [6:0] d;
    wire [6:0] f;
    fls fls(clk,rst,en,d,f);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
        rst=0;
        #10 rst=1;
        #10 rst=0;
    end
    initial
    begin
        en=0;
        #20 d=2;
        #20 en=1;
        #20 en=0;
        #90 d=3;
        en=1;
        #20 en=0;
        #50 en=1;
        #20 en=0;
        #50 en=1;
        #20 en=0;
        #50 en=1;
        #20 en=0;
        #50 en=1;
        #20 en=0;
        #50 en=1;
                #20 en=0;
        #50 en=1;
                #20 en=0;
        #50 en=1;
                #20 en=0;
        #50 en=1;
                #20 en=0;
        #50 en=1;
                #20 en=0;
        #50 en=1;
        $finish;
    end
endmodule