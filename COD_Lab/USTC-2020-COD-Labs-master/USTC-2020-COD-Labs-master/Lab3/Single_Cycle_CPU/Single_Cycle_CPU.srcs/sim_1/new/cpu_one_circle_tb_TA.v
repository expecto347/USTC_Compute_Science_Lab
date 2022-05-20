`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/10 20:11:18
// Design Name: 
// Module Name: cpu_one_circle_tb_TA
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


module cpu_one_circle_tb_TA();
    reg clk;  // 时钟; 上升沿有效
    reg rst;   // 异步复位; 高电平有效
    reg dbu_run;
    reg [31:0] dbu_mem_rf_addr;
    wire [31:0] dbu_rf_data;
    wire [31:0] dbu_mem_data;
    wire [31:0] dbu_pc_in;
    wire [31:0] dbu_pc;
    wire [31:0] dbu_instr;
    wire [31:0] dbu_rf_rd1;
    wire [31:0] dbu_rf_rd2;
    wire [31:0] dbu_alu_y;
    wire [31:0] dbu_mem_rd;
    wire [11:0] dbu_led;
    
    cpu_one_circle cpu_one_circle(clk, rst, dbu_run, dbu_mem_rf_addr, dbu_rf_data, dbu_mem_data, dbu_pc_in, dbu_pc, dbu_instr, dbu_rf_rd1, dbu_rf_rd2, dbu_alu_y, dbu_mem_rd, dbu_led);
    
    initial begin
        dbu_mem_rf_addr = 32'h0000_0004;
        rst = 1'b1;
        dbu_run = 1'b1;
        clk = 1'b0; #5 
        rst = 1'b0; #5 
        
        // _start:
        dbu_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0009;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_000a;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_000b;
        clk = ~clk; #5; clk = ~clk; #5;
        
        dbu_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0011;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // _next1:
        dbu_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0009;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0011;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // _next2:
        dbu_mem_rf_addr = 32'h0000_0000;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0003;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        dbu_mem_rf_addr = 32'h0000_0002;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        
        clk = ~clk; #5; clk = ~clk; #5;
        $finish;
    end
    
endmodule
