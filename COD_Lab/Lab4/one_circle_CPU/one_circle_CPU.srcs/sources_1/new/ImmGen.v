`timescale 1ns / 1ps
// ��չ������ģ��
module Extend(
        input [31:0] imm,    //������λ��
        input Sign,          //��չ���ſ����ź�
        input [2:0] ExtSel,  //������ƴ�ӷ�ʽ
        output reg [31:0] extend //��չ���������
    );

    always@(imm or ExtSel or Sign)
    begin
        case (ExtSel)
            3'b000://Iָ��
            begin
                extend[11:0] = imm[31:20];
                extend[31:12] = Sign ? (imm[31] ? 20'hfffff : 20'h00000) : 20'h00000; //�ж��Ƿ����з�����
            end
			
            3'b001://Sָ��
            begin
                extend[4:0] = imm[11:7];
                extend[11:5] = imm[31:25];
                extend[31:12] = Sign ? (imm[31] ? 20'hfffff : 20'h00000) : 20'h00000;
            end

            3'b010://Bָ��
            begin
                extend[0] = 0; //��չ�����������һλΪ��
                extend[11] = imm[7];
                extend[4:1] = imm[11:8];
                extend[10:5] = imm[30:25];
                extend[12] = imm[31];
                extend[31:13] = Sign ? (imm[31] ? 19'b1111111111111111111 : 19'b0000000000000000000) : 19'b0000000000000000000;
            end

            3'b011://Uָ��
            begin
                extend[11:0] = 12'h000;
                extend[31:12] = imm[31:12];
            end

            3'b100://Jָ��
            begin
                extend[0] = 0;
                extend[19:12] = imm[19:12];
                extend[11] = imm[20];
                extend[10:1] = imm[30:21];
                extend[20] = imm[31];
                extend[31:21] = Sign ? (imm[31] ? 11'b11111111111 : 11'b00000000000) : 11'b00000000000; //���з�����չ
            end
        endcase
    end
endmodule
