`timescale 1ns / 1ps
//data memory 数据存储器
module DataMEM(
        input DataWr,        //存储器写使能
        input [1:0] Digit,   //读写位数，00为8位，01为16位，10为32位
        input CLK,           //时钟信号，下降沿写入数据
        input [31:0] DAddr,  //写入存储器地址
        input [31:0] DataIn, //写入存储器数据
        output reg[31:0] DataOut //输出数据
    );

    reg [7:0] ram [0:31];     // 存储器
    
    //读数据是组合逻辑电路
    always@(DAddr)
    begin
        DataOut[7:0] = ram[DAddr + 3];
        DataOut[15:8] = ram[DAddr + 2];     
        DataOut[23:16] = ram[DAddr + 1];     
        DataOut[31:24] = ram[DAddr];
    end

    //写数据是时序逻辑电路
    always@(negedge CLK)
    begin   
        if(DataWr) //写使能为1时写入数据
            begin
                ram[DAddr] = DataIn[31:24];    
                ram[DAddr + 1] = DataIn[23:16];
                ram[DAddr + 2] = DataIn[15:8];     
                ram[DAddr + 3] = DataIn[7:0];    
            end
    end
endmodule
