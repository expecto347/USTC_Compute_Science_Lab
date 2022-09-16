`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 14:42:16
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();

    localparam WIDTH = 8;
    localparam ADDR_WIDTH = 4;
    localparam SIZE = {1'b1, {ADDR_WIDTH{1'b0}}};
    
    reg clk, rst;		//ʱ�ӣ���������Ч�����첽��λ���ߵ�ƽ��Ч��
    reg [WIDTH-1:0] din;		//���������
    reg en_in; 		//�����ʹ�ܣ��ߵ�ƽ��Ч
    reg en_out;		//������ʹ�ܣ��ߵ�ƽ��Ч
    wire [WIDTH-1:0] dout; 	//����������
    wire [ADDR_WIDTH:0] count;	//�������ݼ���
    
    fifo #(.WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .SIZE(SIZE)) fifo(clk, rst, din, en_in, en_out, dout, count);
    
    initial begin
        clk = 0;
        rst = 0;
        en_in = 0;
        en_out = 0;
        rst = 1;
        #5
        rst = 0;
        
        din = 8'h00;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h01;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h02;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h03;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h04;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h05;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h06;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h07;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h08;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h09;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h0A;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        
        din = 8'h0B;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk;
        #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h0C;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h0D;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h0E;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'h0F;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        din = 8'hFF;
        en_in = 1; #5 clk = ~clk;  #5 clk = ~clk; en_in = 0; #5 clk = ~clk;  #5 clk = ~clk; 
        
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        en_out = 1; #5 clk = ~clk;  #5 clk = ~clk; en_out = 0; #5 clk = ~clk;  #5 clk = ~clk;
        
        #5 clk = ~clk; #5 clk = ~clk; #5;
        
        $finish;
    end
    
endmodule
