`timescale 1ns / 1ps

module PC(
        input clk,               //时钟信号
        input reset,             //重置信号，将PC的值置为0x0000_30000
        input jal,               //跳转分支信号
        input jalr,              //跳转分支信号
        input branch,            //分支信号
        input Z,                 //ZERO信号
        input [31:0] imm,        //立即数
        input [31:0] Reg_ReadData1,        //从寄存器读取数据
        output reg[31:0] curPC,  //现在的PC
        output reg[31:0] nextPC, //下一个PC
        output [31:0] PC_plus4,  //现在PC加上4
        output reg[7:0] PC_ins   //向取值器取得的PC
    );
    reg [31:0] PC_sub;

    initial begin
        curPC = 32'h00003000;
        nextPC = 32'h00003000;
    end
    
    //在时钟下降沿更改nextPC，避免数据冲突
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

    //在时钟上升沿更改curPC的值
    always@(posedge clk or posedge reset)
    begin
        if(reset) //重置恢复
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
