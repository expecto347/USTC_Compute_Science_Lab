`timescale 1ns / 1ps

module register_file
    (
    input clk, 
    input [4:0] ra0,
    output [31:0] rd0,
    input [4:0] ra1,
    output [31:0] rd1,
    input [4:0] ra2,
    output [31:0] rd2,
    input [4:0] wa,
    input RegWrite,
    input [31:0] wd
    );
    
    reg [31:0] registers[0:31];
    integer i;
    
    initial begin
        for (i = 0; i < 32; i = i+ 1) registers[i] = 0;
    end
    
    assign rd0 = (ra0 == 5'b0) ? 32'b0 : registers[ra0];
    assign rd1 = (ra1 == 5'b0) ? 32'b0 : registers[ra1];
    assign rd2 = (ra2 == 5'b0) ? 32'b0 : registers[ra2];
    
    always @(negedge clk) begin
        if(RegWrite) begin
            if(wa != {5'b0}) begin
                registers[wa] <= wd;
            end
        end
    end
endmodule
