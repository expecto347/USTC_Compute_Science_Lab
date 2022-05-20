`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/07 12:26:36
// Design Name: 
// Module Name: edge_taker
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


module edge_taker(
    input clk,
    input a,
    output reg s,
    output p
    );
    reg st,pt;
    initial 
    begin
        st = 0;
        pt = 0;
        s = 0;
    end

    always@(posedge clk)
    begin
        st<=a;
    end
    always@(posedge clk)
    begin
        s<=st;
    end
    always@(posedge clk)
    begin
        pt<=s;
    end
    
    assign p = ~pt & s;
endmodule
