`timescale 1ns / 1ps


module fifo_tb(

    );
    reg clk;
    reg rst;
	reg [3:0] in;
	reg enq;
	reg deq;
	wire [3:0] out;
	wire full;
	wire empty;
    wire [2:0] an;
    wire [3:0] seg;
	reg [15:0] i;

    fifo inst(clk,rst,enq,in,deq,out,an,seg,full,empty);

    initial
    begin
        clk = 0;
		enq = 0;
		deq = 0;
    end

    always #5 clk = ~clk;
    
	initial
	begin
		#100;
		for(in = 0;in < 10;in=in+1)
		begin
			#200;
			enq = 1;
			#200;
			enq = 0;
		end
		#100
		for(i = 0;i < 10;i=i+1)
		begin
			#200;
			deq = 1;
			#200;
			deq = 0;
		end
		rst = 1;
		#10
		rst = 0;
		for(in = 0;in < 8;in=in+1)
		begin
			#200;
			enq = 1;
			#200;
			enq = 0;
		end
		#100
		for(i = 0;i < 5;i=i+1)
		begin
			#200;
			deq = 1;
			#200;
			deq = 0;
		end
		for(in = 3;in < 8;in=in+1)
		begin
			#200;
			enq = 1;
			#200;
			enq = 0;
		end
		#200;
		deq = 1;
		#200;
		deq = 0;
	end
endmodule

