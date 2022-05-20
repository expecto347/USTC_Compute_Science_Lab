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


module fifo_tb(

    );
    
    reg clk, rst;		//ʱ�ӣ���������Ч�����첽��λ���ߵ�ƽ��Ч��
    reg [7:0] din;		//���������
    reg en_in; 		//�����ʹ�ܣ��ߵ�ƽ��Ч
    reg en_out;		//������ʹ�ܣ��ߵ�ƽ��Ч
    wire [7:0] dout; 	//����������
    wire [4:0] count;	//�������ݼ���
    
    fifo fifo(clk, rst, din, en_in, en_out, dout, count);
    
    initial begin
        clk = 0;
        rst = 0;
        en_in = 0;
        en_out = 0;
        rst = 1;
        #5
        rst = 0;
        
        din = 8'hff;
        en_in = 1;
        #5 clk = ~clk; #1 en_in = 0; #4 clk = ~clk;
        
        din = 8'haa; en_in = 1; #5 clk = ~clk; 
        #1 en_in = 0; #4 clk = ~clk;
        
        en_out = 1;
        #5 clk = ~clk; #1 en_out = 0; #4 clk = ~clk;
        
        en_out = 1;
        #5 clk = ~clk; #1 en_out = 0; #4 clk = ~clk;
        
        #5 clk = ~clk; #5 clk = ~clk; #5;
        
        $finish;
    end
    
endmodule
