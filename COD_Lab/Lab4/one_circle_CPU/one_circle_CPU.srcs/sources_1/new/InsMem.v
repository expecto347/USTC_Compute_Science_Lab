`timescale 1ns / 1ps

module InsMEM(
        input [31:0] instr,      //��ȡ��ǰָ��
        output reg[7:0] op,      //������λ��
        output reg[2:0] funct3,  //3λ������λ��
        output reg[6:0] funct7,  //7λ������λ��
        output reg[4:0] rs1,     //rs1��ַλ��
        output reg[4:0] rs2,     //rs2��ַλ��
        output reg[4:0] rd,      //rd��ַλ��
        output reg[31:0] imm     //������λ�δ���extendģ��ƴ����չ
    );

    initial begin
        op = 7'b0000000;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rs1 = 5'b00000;
        rs2 = 5'b00000;
        imm = 32'h0;
    end

    //�и�ָ��
    always@(instr) 
    begin
        op = instr[6:0];
        rs1 = instr[19:15];
        rs2 = instr[24:20];
        rd = instr[11:7];
        funct3 = instr[14:12];
        funct7 = instr[31:26];
        imm = instr[31:0];
    end
endmodule