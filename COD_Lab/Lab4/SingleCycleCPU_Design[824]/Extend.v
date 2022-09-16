`timescale 1ns / 1ps
module Extend(
        input [24:0] imm,    //立即数位段
        input Sign,          //扩展符号控制信号
        input [2:0] ExtSel,  //立即数拼接方式
        output reg [31:0] extend //扩展完成立即数
    );

    always@(imm or ExtSel or Sign)
    begin
        //$display("imm:%d,extsel:%d,sign:%d",imm,ExtSel,Sign);
        case (ExtSel)
            3'b000://I指令直接
            begin
                extend[11:0] = imm[24:13];
                extend[31:12] = Sign ? (imm[24] ? 20'hfffff : 20'h00000) : 20'h00000;
            end
			
            3'b101://I指令截取
            begin
                extend[4:0] = imm[16:13];
                extend[31:5] = 27'b000000000000000000000000000;
            end
            3'b001://S指令直接
            begin
                extend[4:0] = imm[4:0];
                extend[11:5] = imm[24:18];
                extend[31:12] = Sign ? (imm[24] ? 20'hfffff : 20'h00000) : 20'h00000;
            end
            3'b010://B指令直接
            begin
                extend[0] = 0;
                extend[11] = imm[0];
                extend[4:1] = imm[4:1];
                extend[10:5] = imm[23:18];
                extend[12] = imm[24];
                extend[31:13] = Sign ? (imm[24] ? 19'b1111111111111111111 : 19'b0000000000000000000) : 19'b0000000000000000000;
            end
            3'b011://U指令直接
            begin
                extend[11:0] = 12'h000;
                extend[31:12] = imm[24:5];
            end
            3'b100://J指令直接
            begin
                extend[0] = 0;
                extend[19:12] = imm[12:5];
                extend[11] = imm[13];
                extend[10:1] = imm[23:14];
                extend[20] = imm[24];
                extend[31:21] = Sign ? (imm[24] ? 11'b11111111111 : 11'b00000000000) : 11'b00000000000;
            end
        endcase
        //$display("extend:%d",extend);
    end
endmodule
