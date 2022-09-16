`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 14:42:16
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb(

    );
    
    reg clk, rst;		//时钟（上升沿有效）、异步复位（高电平有效）
    reg [7:0] din;		//入队列数据
    reg en_in; 		//入队列使能，高电平有效
    reg en_out;		//出队列使能，高电平有效
    wire [7:0] dout; 	//出队列数据
    wire [4:0] count;	//队列数据计数
    
    fifo fifo(clk, rst, din, en_in, en_out, dout, count);
    
    initial begin
        clk = 0;
        rst = 0;
        en_in = 0;
        en_out = 0;
        rst = 1;
        #5
        rst = 0;
        
        din = 8'hff;
        en_in = 1;
        #5 clk = ~clk; #1 en_in = 0; #4 clk = ~clk;
        
        din = 8'haa; en_in = 1; #5 clk = ~clk; 
        #1 en_in = 0; #4 clk = ~clk;
        
        en_out = 1;
        #5 clk = ~clk; #1 en_out = 0; #4 clk = ~clk;
        
        en_out = 1;
        #5 clk = ~clk; #1 en_out = 0; #4 clk = ~clk;
        
        #5 clk = ~clk; #5 clk = ~clk; #5;
        
        $finish;
    end
    
endmodule
