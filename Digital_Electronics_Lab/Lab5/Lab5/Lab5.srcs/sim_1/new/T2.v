`timescale 1ns / 1ps

module T2();
reg CLK, RST_N, D;
wire q;
d_ff_r d_ff_r(CLK, RST_N, D, q);
initial
begin
    CLK = 0;
    RST_N = 0;
    #27 RST_N = 1;
end
initial
begin
    D = 0;
    #13 D = 1;
    #24 D = 0;
end
always #5 CLK = ~CLK;
endmodule