`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 11:13:55
// Design Name: 
// Module Name: cpu_one_circle_tb
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


module cpu_one_circle_tb(

    );
    reg clk;  // 时钟; 上升沿有效
    reg rst;   // 异步复位; 高电平有效
    reg [31:0] dbu_mem_addr;
    reg [31:0] dbu_rf_addr;
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
    
    cpu_one_circle cpu_one_circle(clk, rst, dbu_mem_rf_addr, dbu_rf_data, dbu_mem_data, dbu_pc_in, dbu_pc, dbu_instr, dbu_rf_rd1, dbu_rf_rd2, dbu_alu_y, dbu_mem_rd, dbu_led);
    
    initial begin
        rst = 1'b1;
        clk = 1'b0; #5 
        rst = 1'b0; #5 
        dbu_rf_addr = 32'h0000_0008;    // 检查$t0
        clk = ~clk; #5 clk = ~clk; #5   // addi	$t0, $t0, 10
        
        dbu_rf_addr = 32'h0000_0009;    // 检查$t1
        clk = ~clk; #5 clk = ~clk; #5   // addi	$t1, $t1, 20
        
        dbu_rf_addr = 32'h0000_000a;    // 检查$t2
        clk = ~clk; #5 clk = ~clk; #5   // add 	$t2, $t2, $t1
        
        clk = ~clk; #5 clk = ~clk; #5   // beq	$t1, $t1, again # 这里会跳回上一句一次
        
        dbu_rf_addr = 32'h0000_000a;    // 检查$t2
        clk = ~clk; #5 clk = ~clk; #5   // add 	$t2, $t2, $t1
        
        clk = ~clk; #5 clk = ~clk; #5   // beq	$t1, $t2, again
        
        dbu_mem_addr = 32'h0000_0000;   // 检查32'h0000_0000
        clk = ~clk; #5 clk = ~clk; #5   // sw	$t2, -10($t0)
        
        dbu_rf_addr = 32'h0000_000b;    // 检查$t3
        clk = ~clk; #5 clk = ~clk; #5   // lw	$t3, -10($t0)
        
        clk = ~clk; #5 clk = ~clk; #5   // j	target
        
        dbu_rf_addr = 32'h0000_0008;    // 检查$t0
        clk = ~clk; #5 clk = ~clk; #5   // add	$t0, $t0, $t0
        $finish;
    end
    
endmodule
