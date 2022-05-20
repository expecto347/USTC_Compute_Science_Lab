`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 10:14:38
// Design Name: 
// Module Name: ram_16x8
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


module  ram_16x8			//16x8λ���˿�RAM
    (
    input  clk, 			//ʱ�ӣ���������Ч��
    input en, we,				//ʹ�ܣ�дʹ��
    input [3: 0]  addr,	//��ַ
    input [7: 0]  din,		//��������
    output [7: 0]  dout	//�������
    );
    reg [3: 0] addr_reg;
    reg [7: 0] mem[15: 0];
    
    //��ʼ��RAM������
    initial
    $readmemh("init.mem", mem); 
    
    assign dout = mem[addr_reg];
    
    always@(posedge clk) begin
        if(en) begin
            addr_reg <= addr;
            if(we)
                mem[addr] <= din;
        end
    end
endmodule

