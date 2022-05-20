`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 12:52:47
// Design Name: 
// Module Name: ALU_sim
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


module ALU_sim();
        reg ALUSrc;          //�����1λѡ
        reg [31:0] ReadData1; //rs1�Ĵ�����ȡ����
        reg [31:0] ReadData2; //rs2�Ĵ�����ȡ����
        reg [31:0] extend;    //��չ��������
        reg [2:0] AluOp;      //ALU������
        wire Z;           //Z��ʾʾ��Ϊ��
        wire [31:0] AluOutput; //ALU������
        reg true;


        ALU alu_sim(ALUSrc,ReadData1,ReadData2,extend,AluOp,Z,AluOutput);

        initial begin
                ALUSrc = 0;
                ReadData1 = 32'hfffffffe;
                ReadData2 = 32'hfffffffe;
                extend = 0;
                AluOp = 3'b110;
                #10
                true = Z ? 0 : 1;
                #10;

                ReadData1 = 32'hfffffffe;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b101;
                #10
                true = Z ? 1 : 0;
                #10;

                ReadData1 = 32'h0ffffffe;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b101;
                #10
                true = Z ? 1 : 0;
                #10;

                ReadData1 = 32'h0ffffffe;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b111;
                #10
                true = Z ? 0 : 1;
                #10;

                ReadData1 = 32'hfffffff1;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b111; //False
                #10
                true = Z ? 1 : 0;
                #10;

                ReadData1 = 32'hfffffff1;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b110; //False
                #10
                true = Z ? 1 : 0;
                #10;

                ReadData1 = 32'hfffffff1;
                ReadData2 = 32'hfffffffe;
                AluOp = 3'b101; //False
                #10
                true = Z ? 0 : 1;
                #10;

                ReadData1 = 32'h0ffffff1;
                ReadData2 = 32'h0ffffffe;
                AluOp = 3'b101; //False
                #10
                true = Z ? 0 : 1;
                #10;

                ReadData1 = 32'h0ffffff1;
                ReadData2 = 32'h0ffffffe;
                AluOp = 3'b111; //False
                #10
                true = Z ? 1 : 0;
                #10;
        end
endmodule
