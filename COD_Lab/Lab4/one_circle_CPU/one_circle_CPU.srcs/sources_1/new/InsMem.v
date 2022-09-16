`timescale 1ns / 1ps

module InsMEM(
        input [31:0] instr,      //获取当前指令
        output reg[7:0] op,      //操作码位段
        output reg[2:0] funct3,  //3位功能码位段
        output reg[6:0] funct7,  //7位功能码位段
        output reg[4:0] rs1,     //rs1地址位段
        output reg[4:0] rs2,     //rs2地址位段
        output reg[4:0] rd,      //rd地址位段
        output reg[31:0] imm     //立即数位段传给extend模块拼接扩展
    );

    initial begin
        op = 7'b0000000;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rs1 = 5'b00000;
        rs2 = 5'b00000;
        imm = 32'h0;
    end

    //切割指令
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