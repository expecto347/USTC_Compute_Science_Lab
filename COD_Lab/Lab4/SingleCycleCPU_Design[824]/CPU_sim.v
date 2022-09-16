`timescale 1ns / 1ps

module TestSingleCycleCpu();
    //INPUTS
    reg CLK;
    reg Reset;
    //OUTPUTS
    wire [31:0] curPC;      //当前地址
    wire [31:0] nextPC;     //下条地址
    wire [4:0] rs1;         //rs1地址
    wire [31:0] ReadData1;  //rs1内数据
    wire [4:0] rs2;         //rs2地址
    wire [31:0] ReadData2;  //rs2内数据
    wire [31:0] AluOutput;  //alu计算结果
    wire [31:0] DB;         //DB总线数据

    wire [31:0] instr;      //指令
    wire [7:0] op;          //操作码
    wire [4:0] rd;          //rd地址

    SingleCycleCPU sc(
        .CLK(CLK),
        .Reset(Reset),
        .curPC(curPC),      //当前地址
        .nextPC(nextPC),     //下条地址
        .rs1(rs1),         //rs1地址
        .ReadData1(ReadData1),  //rs1内数据
        .rs2(rs2),         //rs2地址
        .ReadData2(ReadData2),  //rs2内数据
        .AluOutput(AluOutput),  //alu计算结果
        .DB(DB),         //DB总线数据

        .instr(instr),      //指令
        .op(op),          //操作码
        .rd(rd)          //rd地址
    );

    initial begin
        // Initialize Inputs
        CLK = 1;
        Reset = 1;
        #10
        CLK = !CLK;  // 下降沿，使PC先清零
        Reset = 0;  // 清除保持信号
        
        forever #10
        begin // 产生时钟信号
             CLK = !CLK;
        end
        
    end
endmodule