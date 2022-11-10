`timescale 1ns / 1ps

module T4();
reg [2:0] in;
wire [7:0] out;
Decoder Decoder(in,out);
initial
begin
    in=3'b000; #50;
    in=3'b001; #50;
    in=3'b010; #50;
    in=3'b011; #50;
    in=3'b100; #50;
    in=3'b101; #50;
    in=3'b110; #50;
    in=3'b111; #50;
    $finish;
end
endmodule