`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 00:27:16
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb
    #(
    parameter WIDTH = 32,   // 数据宽度
    parameter ADDR_WIDTH = 5, // 地址长度
    parameter SIZE = {1'b1, {(ADDR_WIDTH){1'b0}}} // 地址数量
    )
    (

    );
    
    reg clk;    // 时钟(上升沿有效)
    reg [ADDR_WIDTH-1: 0] ra0;   // 读端口0地址
    wire [WIDTH-1: 0] rd0;    //读端口0数据
    reg [ADDR_WIDTH-1: 0] ra1;   // 读端口1地址
    wire [WIDTH-1: 0] rd1;    //读端口1数据
    reg [ADDR_WIDTH-1: 0] wa;  // 写端口位置
    reg we;   // 写使能(高电平有效)
    reg [WIDTH-1: 0] wd;   // 写端口数据
    
    register_file rf(clk, ra0, rd0, ra1, rd1, wa, we, wd);
    
    initial
    begin
        ra0 = 5'b10110;
        ra1 = 5'b11001;
        
        clk = 0;
        we = 1;
        wa = 5'b10110; 
        wd = 32'hf468_fab1;
        #5 clk = ~clk;
        
        #5 clk = ~clk;
        we = 1;
        wa = 5'b11001; 
        wd = 32'h1686_abed;
        #5 clk = ~clk;
        
        #5 clk = ~clk;
        
        $finish;
    end
    
endmodule
