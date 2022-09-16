`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 13:57:44
// Design Name: 
// Module Name: cpu_tb
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


module cpu_tb();
    reg clk;  // 时钟; 上升沿有效
    reg rst;   // 异步复位; 高电平有效
    reg [31:0] DBU_mem_rf_addr;   // DBU选择地址
    wire [31:0] DBU_rf_data;      // DBU选择地址的寄存器堆数据
    wire [31:0] DBU_mem_data;     // DBU选择地址的存储器数据
    wire [31:0] DBU_PC;           // PC
    wire [31:0] DBU_IF_ID_IR;
    wire [31:0] DBU_IF_ID_NPC;
    wire [31:0] DBU_ID_EX_A;
    wire [31:0] DBU_ID_EX_B;
    wire [31:0] DBU_ID_EX_IMM;      
    wire [31:0] DBU_ID_EX_IR;
    wire [31:0] DBU_EX_MEM_Y;
    wire [31:0] DBU_EX_MEM_B;
    wire [4:0] DBU_EX_MEM_WA;
    wire [31:0] DBU_MEM_WB_MDR;
    wire [31:0] DBU_MEM_WB_Y;
    wire [4:0] DBU_MEM_WB_WA;
    
    cpu_pipeline cpu_pipeline(
                            clk,
                            rst,
                            DBU_mem_rf_addr,   // DBU选择地址
                            DBU_rf_data,      // DBU选择地址的寄存器堆数据
                            DBU_mem_data,     // DBU选择地址的存储器数据
                            DBU_PC,           // PC
                            DBU_IF_ID_IR,
                            DBU_IF_ID_NPC,
                            DBU_ID_EX_A,
                            DBU_ID_EX_B,
                            DBU_ID_EX_IMM,      
                            DBU_ID_EX_IR,
                            DBU_EX_MEM_Y,
                            DBU_EX_MEM_B,
                            DBU_EX_MEM_WA,
                            DBU_MEM_WB_MDR,
                            DBU_MEM_WB_Y,
                            DBU_MEM_WB_WA);
        
    initial begin
        DBU_mem_rf_addr = 32'h0000_0004;
        rst = 1'b1;
        clk = 1'b0; #5 
        rst = 1'b0; #5 
        
        // _start:
        DBU_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0009;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_000a;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_000b;
        clk = ~clk; #5; clk = ~clk; #5;
        
        DBU_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0011;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // _next1:
        DBU_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0009;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0011;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0010;
        clk = ~clk; #5; clk = ~clk; #5;
        
        // _next2:
        DBU_mem_rf_addr = 32'h0000_0000;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0003;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0008;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        DBU_mem_rf_addr = 32'h0000_0002;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        clk = ~clk; #5; clk = ~clk; #5;
        
        clk = ~clk; #5; clk = ~clk; #5;
        
        $finish;
    end
    
endmodule

