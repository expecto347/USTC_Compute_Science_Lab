 module Mux4-1(
    input a,b,c,d,sel0,sel1,
    output out
 )

    wire t1, t2;
    Mux2-1 mux1(
         .a (a),
         .b (b),
         .sel (sel0)
         .out (t1)
         );

    Mux2-1 mux2(
        .a (c),
        .b (d),
        .sel (sel0),
        .out (t2)
    )

    Mux2-1 mux3(
        .a (t1),
        .b (t2),
        .sel (sel1),
        .out (out)
    )
endmodule