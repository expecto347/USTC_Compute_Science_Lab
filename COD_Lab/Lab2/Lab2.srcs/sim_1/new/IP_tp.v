`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/06 20:50:18
// Design Name: 
// Module Name: IP_tp
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


module IP_tp(

    );
	reg clk;
	reg en,we; //写使�?
	reg [3:0] addr;
	reg [7:0] din; //输入数据
	wire [7:0] dout_dist; //输出数据
	wire [7:0] dout_blk; //输出数据
	
	dist_mem_gen_0 dist_mem(.clk(clk), .we(we), .a(addr), .d(din), .spo(dout_dist));
    blk_mem_gen_0 blk_mem(.clka(clk), .ena(en), .wea(we), .addra(addr), .dina(din), .douta(dout_blk));
	
	initial 
	begin
		clk = 0;
		en = 1;
		we = 1;
		addr = 0;
		din = 8'hff;
	end
	
	always #10 clk=~clk;
	
    always @(posedge clk) begin
		#5
        addr = addr + 1;
    end
endmodule
