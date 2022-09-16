`timescale 1ns / 1ps

module ALU(
        input ALUSrc,          //输入端1位选
        input [31:0] ReadData1, //rs1寄存器读取数据
        input [31:0] ReadData2, //rs2寄存器读取数据
        input [31:0] extend,    //扩展后立即数
        input [2:0] AluOp,      //ALU功能码
        output Z,           //Z表示示数为零
        output reg[31:0] AluOutput //ALU计算结果
    );

    wire [31:0] A;
    wire [31:0] B;

    //为两个输入端口赋值
    assign A = ReadData1;
    assign B = (ALUSrc == 0) ? ReadData2 : extend; //Mux选择器，由信号ALUSrc控制;
    always@(*) 
    begin
        //ALU部分
        case(AluOp)
            3'b000: AluOutput = A + B;
            3'b001: AluOutput = A - B;
            3'b010: AluOutput = A ^ B;
            3'b011: AluOutput = A | B;
            3'b100: AluOutput = A & B;
            3'b101: begin //比较A和B的大小，如果A小于B那么输出就置为1
                if((A[31] == 1)&&(B[31] == 0)) AluOutput = 1;
                else if((A[31] == 0)&&(B[31] == 1)) AluOutput = 0;
                else AluOutput = (A < B) ? 1 : 0;
            end
            3'b110: AluOutput = (A == B) ? 1 : 0;
            3'b111: begin //比较A和B的大小，如果A大于B那么输出就置为1
                if((A[31] == 1)&&(B[31] == 0)) AluOutput = 0;
                else if((A[31] == 0)&&(B[31] == 1)) AluOutput = 1;
                else AluOutput = (A > B) ? 1 : 0;
            end
        endcase;
    end

assign Z = (AluOutput == 0);
endmodule
