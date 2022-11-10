`timescale 1ns / 1ps

module T1();
reg a;
reg b;
initial 
begin
    a = 1;
    b = 0;
    #100 b = 1;
    #100 a = 0;
    #75 b = 0;
    #75 b = 1;
    #50 $finish;
end
endmodule
