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
        reg ALUSrc;          //输入端1位选
        reg [31:0] ReadData1; //rs1寄存器读取数据
        reg [31:0] ReadData2; //rs2寄存器读取数据
        reg [31:0] extend;    //扩展后立即数
        reg [2:0] AluOp;      //ALU功能码
        wire Z;           //Z表示示数为零
        wire [31:0] AluOutput; //ALU计算结果
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
