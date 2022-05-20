`timescale 1ns / 1ps

module PC(
        input clk,               //ʱ���ź�
        input reset,             //�����źţ���PC��ֵ��Ϊ0x0000_30000
        input jal,               //��ת��֧�ź�
        input jalr,              //��ת��֧�ź�
        input branch,            //��֧�ź�
        input Z,                 //ZERO�ź�
        input [31:0] imm,        //������
        input [31:0] Reg_ReadData1,        //�ӼĴ�����ȡ����
        output reg[31:0] curPC,  //���ڵ�PC
        output reg[31:0] nextPC, //��һ��PC
        output [31:0] PC_plus4,  //����PC����4
        output reg[7:0] PC_ins   //��ȡֵ��ȡ�õ�PC
    );
    reg [31:0] PC_sub;

    initial begin
        curPC = 32'h00003000;
        nextPC = 32'h00003000;
    end
    
    //��ʱ���½��ظ���nextPC���������ݳ�ͻ
    always@(negedge clk or posedge reset)
    begin
        if(reset) nextPC <= 32'h00003000;
        else if(jal)
        begin
            if(jalr) nextPC <= imm + Reg_ReadData1;
            else nextPC <= curPC + imm;
        end
        else
        begin
            if(branch)
            begin
                if(Z) nextPC <= curPC + 4;
                else nextPC <= curPC + imm;
            end
            else nextPC <= curPC + 4;
        end
    end

    //��ʱ�������ظ���curPC��ֵ
    always@(posedge clk or posedge reset)
    begin
        if(reset) //���ûָ�
                curPC <= 32'h00003000;
        else 
                curPC <= nextPC;
    end

assign PC_plus4 = curPC + 4;

always@(*)
begin
    PC_sub = curPC - 32'h00003000;
    PC_ins = PC_sub[9:2];
end
endmodule
