`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 23:30:13
// Design Name: 
// Module Name: sort_sim
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

module sort_sim();
    wire [3: 0] s0, s1, s2, s3;
    wire done;
    reg [3: 0] x0, x1, x2, x3;
    reg clk, rst;
    sort sort(s0, s1, s2, s3, done, x0, x1, x2, x3, clk, rst);
    
    initial
    begin
        x0 = $random % 16;
        x1 = $random % 16;
        x2 = $random % 16;
        x3 = $random % 16;
        clk = 1'b0; rst = 1'b1;
    end
    
    always @(*)
    begin
        forever #5 clk = ~clk;
    end
    
    always @(posedge clk)
    begin
        if(done)
        begin
            x0 = $random % 16;
            x1 = $random % 16;
            x2 = $random % 16;
            x3 = $random % 16;
            rst = 1'b1;
        end
        else rst = 1'b0;
    end
    
endmodule
