`timescale 1ns / 1ps
//data memory 数据存储器
module DataMEM(
        input MemWrite,        //存储器写使能
        input IoWrite,
        input clk,           //时钟信号，下降沿写入数据
        input [31:0] Mem_DataAddr1,  //写入存储器地址
        input [7:0] Mem_DataAddr2,   //PDU模块接口
        input [31:0] Mem_DataIn, //写入存储器数据
        output [31:0] Mem_DataOut1, //输出数据
        output [31:0] Mem_DataOut2  //PDU模块输出
    );

    reg [31:0] ram [0:255];     // 存储器
    integer i;
    wire [7:0] Mem_DataAddr_true;
    wire MemWrite_w;

    assign Mem_DataAddr_true = Mem_DataAddr1[9:2];
    assign MemWrite_w = (~IoWrite) & MemWrite;

    initial begin
        for (i = 0; i < 256; i = i+ 1) ram[i] = 0; //初始化
    end

    //读数据是组合逻辑电路
    assign Mem_DataOut1 = ram[Mem_DataAddr_true];
    assign Mem_DataOut2 = ram[Mem_DataAddr2];

    //写数据是时序逻辑电路
    always@(negedge clk)
    begin
        if(MemWrite_w) //写使能为1时写入数据
            begin
                ram[Mem_DataAddr_true] <= Mem_DataIn;
            end
    end
endmodule
