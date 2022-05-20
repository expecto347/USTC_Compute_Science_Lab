`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/16 00:00:32
// Design Name: 
// Module Name: cpu_multicycle_tb
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


module cpu_multicycle_tb(

    );
    reg clk;
    reg rst;
    
    cpu_multicycle cm(.clk(clk), .rst(rst), .dbu_mem_rf_addr(32'h0000_0002));
    
    initial begin
        
        rst = 1'b1;
        clk = 1'b0;
        #5;
        rst = 1'b0;
        #5;
        
        repeat(67) begin
            clk = ~clk; #5; clk = ~clk; #5;
        end
        
        $finish;
    end
endmodule
