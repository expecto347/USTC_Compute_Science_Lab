`timescale 1ns / 1ps
// 扩展立即数模块
module Extend(
        input [31:0] imm,    //立即数位段
        input Sign,          //扩展符号控制信号
        input [2:0] ExtSel,  //立即数拼接方式
        output reg [31:0] extend //扩展完成立即数
    );

    always@(imm or ExtSel or Sign)
    begin
        case (ExtSel)
            3'b000://I指令
            begin
                extend[11:0] = imm[31:20];
                extend[31:12] = Sign ? (imm[31] ? 20'hfffff : 20'h00000) : 20'h00000; //判断是否是有符号数
            end
			
            3'b001://S指令
            begin
                extend[4:0] = imm[11:7];
                extend[11:5] = imm[31:25];
                extend[31:12] = Sign ? (imm[31] ? 20'hfffff : 20'h00000) : 20'h00000;
            end

            3'b010://B指令
            begin
                extend[0] = 0; //扩展后的立即数第一位为零
                extend[11] = imm[7];
                extend[4:1] = imm[11:8];
                extend[10:5] = imm[30:25];
                extend[12] = imm[31];
                extend[31:13] = Sign ? (imm[31] ? 19'b1111111111111111111 : 19'b0000000000000000000) : 19'b0000000000000000000;
            end

            3'b011://U指令
            begin
                extend[11:0] = 12'h000;
                extend[31:12] = imm[31:12];
            end

            3'b100://J指令
            begin
                extend[0] = 0;
                extend[19:12] = imm[19:12];
                extend[11] = imm[20];
                extend[10:1] = imm[30:21];
                extend[20] = imm[31];
                extend[31:21] = Sign ? (imm[31] ? 11'b11111111111 : 11'b00000000000) : 11'b00000000000; //进行符号拓展
            end
        endcase
    end
endmodule
