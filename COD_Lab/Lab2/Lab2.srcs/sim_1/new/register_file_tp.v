`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/05 22:59:01
// Design Name: 
// Module Name: register_file_tp
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


module register_file_tp
	#(
	parameter WIDTH = 32
    )
	(
	
	);
	reg clk;
	reg [4:0] ra0;
	wire [WIDTH-1:0] rd0;
	reg [4:0] ra1;
	wire [WIDTH-1:0] rd1;
	reg [4:0] wa;
	reg we;
	reg [WIDTH-1:0] wd;
	reg [4:0] i,j,k;
	
	register_file rf(clk, ra0, rd0, ra1, rd1, wa, we, wd);
	
	initial clk=0;
	always #5 clk=~clk;
	
	initial
	begin
		for(wa=0;wa<31;wa=wa+1)
		begin
		    we = 0;#10;
			wd = $random;#10;
			we =1;#10;
		end //向每一个寄存器随机写入数据
        for(i=0;i<31;i=i+1)
        begin
            we = 0; #10;
            wa = $random % 32;
            wd = $random; #10;
            we = 1; #10;
        end //向随机一个寄存器存储一个随机的数
	end
	
    initial
	begin
	   #930;
	   for(j=0;j<31;j=j+1)
	   begin
	       ra0 = $random % 32; #10; //随机读取
	   end
    end
    
    initial
	begin
	   #930;
	   for(k=0;k<31;k=k+1)
	   begin
	       ra1 = $random % 32; #10; //随机读取
	   end
    end
endmodule
