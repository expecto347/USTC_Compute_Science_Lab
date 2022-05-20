`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 00:12:09
// Design Name: 
// Module Name: register_file
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


module register_file
    #(
    parameter WIDTH = 32,   // 数据宽度
    parameter ADDR_WIDTH = 5, // 地址长度
    parameter SIZE = {1'b1, {(ADDR_WIDTH){1'b0}}} // 地址数量
    )
    (
    input clk,    // 时钟(上升沿有效)
    input [ADDR_WIDTH-1: 0] ra0,   // 读端口0地址
    output [WIDTH-1: 0] rd0,    //读端口0数据
    input [ADDR_WIDTH-1: 0] ra1,   // 读端口1地址
    output [WIDTH-1: 0] rd1,    //读端口1数据
    input [ADDR_WIDTH-1: 0] wa,  // 写端口位置
    input we,   // 写使能(高电平有效)
    input [WIDTH-1: 0] wd   // 写端口数据
    );
    
    reg [WIDTH-1: 0] registers[SIZE-1: 0];
    
    assign rd0 = ra0 == {ADDR_WIDTH{1'b0}} ? {WIDTH{1'b0}} : registers[ra0];
    assign rd1 = ra1 == {ADDR_WIDTH{1'b0}} ? {WIDTH{1'b0}} : registers[ra1];
    
    always @(posedge clk) begin
        if(we) begin
            if(wa != {ADDR_WIDTH{1'b0}}) begin
                registers[wa] <= wd;
            end
        end
    end
    
endmodule
