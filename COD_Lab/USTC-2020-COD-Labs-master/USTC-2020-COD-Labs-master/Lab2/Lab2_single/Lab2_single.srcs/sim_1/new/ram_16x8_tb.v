`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 11:05:15
// Design Name: 
// Module Name: ram_16x8_tb
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


module ram_16x8_tb(

    );
    reg  clk; 			//ʱ�ӣ���������Ч��
    reg en, we;				//ʹ�ܣ�дʹ��
    reg [3: 0]  addr;	//��ַ
    reg [7: 0]  din;		//��������
    wire [7: 0]  dout_dist; 	//�������
    wire [7: 0]  dout_blk;	//�������
    
    // ��Input Options �� Registered ������, ��ͬ��.
    dist_mem_gen_16x8 dist_mem(.clk(clk), .we(we), .a(addr), .d(din), .spo(dout_dist));
    // ����ѡPrimitives Output Registers, ��������Ӻ�һ��ʱ������    
    blk_mem_gen_16x8 blk_mem(.clka(clk), .ena(en), .wea(we), .addra(addr), .dina(din), .douta(dout_blk));
    
    integer counter = 0;
    
    initial  begin
        clk = 0;
        addr = 0;
        en = 1;
        we = 0;
        counter = 0;
        forever #2 clk = ~clk;
    end
    
    always @(posedge clk) begin
        addr = addr + 1;
    end
endmodule
