`timescale 1ns / 1ps

module ALU(
        input ALUSrc,          //�����1λѡ
        input [31:0] ReadData1, //rs1�Ĵ�����ȡ����
        input [31:0] ReadData2, //rs2�Ĵ�����ȡ����
        input [31:0] extend,    //��չ��������
        input [2:0] AluOp,      //ALU������
        output Z,           //Z��ʾʾ��Ϊ��
        output reg[31:0] AluOutput //ALU������
    );

    wire [31:0] A;
    wire [31:0] B;

    //Ϊ��������˿ڸ�ֵ
    assign A = ReadData1;
    assign B = (ALUSrc == 0) ? ReadData2 : extend; //Muxѡ���������ź�ALUSrc����;
    always@(*) 
    begin
        //ALU����
        case(AluOp)
            3'b000: AluOutput = A + B;
            3'b001: AluOutput = A - B;
            3'b010: AluOutput = A ^ B;
            3'b011: AluOutput = A | B;
            3'b100: AluOutput = A & B;
            3'b101: begin //�Ƚ�A��B�Ĵ�С�����AС��B��ô�������Ϊ1
                if((A[31] == 1)&&(B[31] == 0)) AluOutput = 1;
                else if((A[31] == 0)&&(B[31] == 1)) AluOutput = 0;
                else AluOutput = (A < B) ? 1 : 0;
            end
            3'b110: AluOutput = (A == B) ? 1 : 0;
            3'b111: begin //�Ƚ�A��B�Ĵ�С�����A����B��ô�������Ϊ1
                if((A[31] == 1)&&(B[31] == 0)) AluOutput = 0;
                else if((A[31] == 0)&&(B[31] == 1)) AluOutput = 1;
                else AluOutput = (A > B) ? 1 : 0;
            end
        endcase;
    end

assign Z = (AluOutput == 0);
endmodule
