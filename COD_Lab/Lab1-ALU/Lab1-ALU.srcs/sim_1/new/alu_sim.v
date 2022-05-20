`timescale 1ns / 1ps

module ALU_sim();
    parameter WIDTH = 32;
    wire [WIDTH-1: 0] y;   // 运算结果
    wire zf;  // 零标志
    reg [WIDTH-1: 0] a, b;    // 两操作数
    reg [2: 0] m; // 操作类型
    reg clk;
    
    alu32 alu32(a,b,m,y,zf);
    
    
    initial
    begin
        clk = 0;
        m = 0;
        a = $random % 32;
        b = $random % 32;
    end
    
    always @(*)
    begin
        forever #1 clk = ~clk;
    end
    
    always @(posedge clk)
    begin
        m = m == 4 ? 0 : m + 1;
        a = $random % 32;
        b = $random % 32;
    end
    
endmodule