`timescale 1ns / 1ps
//data memory ���ݴ洢��
module DataMEM(
        input MemWrite,        //�洢��дʹ��
        input IoWrite,
        input clk,           //ʱ���źţ��½���д������
        input [31:0] Mem_DataAddr1,  //д��洢����ַ
        input [7:0] Mem_DataAddr2,   //PDUģ��ӿ�
        input [31:0] Mem_DataIn, //д��洢������
        output [31:0] Mem_DataOut1, //�������
        output [31:0] Mem_DataOut2  //PDUģ�����
    );

    reg [31:0] ram [0:255];     // �洢��
    integer i;
    wire [7:0] Mem_DataAddr_true;
    wire MemWrite_w;

    assign Mem_DataAddr_true = Mem_DataAddr1[9:2];
    assign MemWrite_w = (~IoWrite) & MemWrite;

    initial begin
        for (i = 0; i < 256; i = i+ 1) ram[i] = 0; //��ʼ��
    end

    //������������߼���·
    assign Mem_DataOut1 = ram[Mem_DataAddr_true];
    assign Mem_DataOut2 = ram[Mem_DataAddr2];

    //д������ʱ���߼���·
    always@(negedge clk)
    begin
        if(MemWrite_w) //дʹ��Ϊ1ʱд������
            begin
                ram[Mem_DataAddr_true] <= Mem_DataIn;
            end
    end
endmodule
