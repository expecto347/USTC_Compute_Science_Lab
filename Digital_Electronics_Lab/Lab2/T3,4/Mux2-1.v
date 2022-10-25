module Mux2-1(
input a,b,sel,
output out);
    wire t1,t2;

    assign t1 = a & (~sel);
    assign t2 = b & sel;

    assign out = a | b;
endmodule