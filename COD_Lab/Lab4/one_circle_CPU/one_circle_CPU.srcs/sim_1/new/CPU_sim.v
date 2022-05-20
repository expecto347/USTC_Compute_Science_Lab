`timescale 1ns / 1ps

module CPU_sim();
    reg reset;
    reg clk;
    
    cpu cpu(clk,reset);
    
    initial begin
        clk = 1;
        reset = 0;
    end
    
    always #5 clk = ~clk;
endmodule
