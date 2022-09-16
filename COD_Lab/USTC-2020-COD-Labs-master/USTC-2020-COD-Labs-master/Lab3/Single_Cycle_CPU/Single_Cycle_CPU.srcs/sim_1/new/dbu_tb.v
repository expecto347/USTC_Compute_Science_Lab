`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 16:10:58
// Design Name: 
// Module Name: dbu_tb
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


module dbu_tb(
    );
    reg clk;  // 时钟; 上升沿有效
    reg rst;   // 异步复位; 高电平有效
    reg [2:0] sel;
    reg mem_rf;
    reg step;
    reg succ;
    reg inc;
    reg dec;
    wire [7:0] an;
    wire [7:0] seg;
    wire [11:0] led;
    
    dbu dbu(clk, rst, sel, mem_rf, step, succ,  inc, dec, an, seg, led);
    
    initial begin
        inc = 1'b0;
        dec = 1'b0;
        rst = 1'b1;
        clk = 1'b0;
        succ = 1'b0;
        sel = 3'b001;
        mem_rf = 1'b0;
        step = 1'b0;
        #5; rst = 1'b0; #5;
        
        // addi	$t0, $t0, 10
        sel = 3'b001;
        clk = ~clk; #5; clk = ~clk; #5;
        step = 1'b1;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        step = 1'b0;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // addi	$t1, $t1, 20
        sel = 3'b010;
        step = 1'b1;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        step = 1'b0;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // add 	$t2, $t2, $t1
        sel = 3'b011;
        step = 1'b1;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        step = 1'b0;
        clk = ~clk; #5; clk = ~clk; #5;
        
        succ = 1'b1;
        // beq	$t1, $t2, again
        sel = 3'b100;
        clk = ~clk; #5; clk = ~clk; #5;
        // again: add 	$t2, $t2, $t1
        sel = 3'b101;
        clk = ~clk; #5; clk = ~clk; #5;
        // beq	$t1, $t2, again
        sel = 3'b110;
        clk = ~clk; #5; clk = ~clk; #5;
        // sw	$t2, -10($t0)
        sel = 3'b111;
        clk = ~clk; #5; clk = ~clk; #5;
        // lw	$t3, -10($t0)
        clk = ~clk; #5; clk = ~clk; #5;
        // j	target
        clk = ~clk; #5; clk = ~clk; #5;
        // add	$t0, $t0, $t0
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        succ = 1'b0;
        mem_rf = 1'b1; sel = 3'b000;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        mem_rf = 1'b0;
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        inc = 1'b0; clk = ~clk; #5; clk = ~clk; #5;
        inc = 1'b1; clk = ~clk; #5; clk = ~clk; #5; 
        
        $finish;
    end
    
    
endmodule
