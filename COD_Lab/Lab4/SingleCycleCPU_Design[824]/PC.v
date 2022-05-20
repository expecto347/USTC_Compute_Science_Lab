`timescale 1ns / 1ps

module PC(
        input CLK,               //时钟
        input Reset,             //是否重置地址。1-初始化PC，否则接受新地址
        input PCSrc,             //数据选择器输入
        input [31:0] AluOutput,  //ALU计算结果
        output reg[31:0] curPC,  //当前指令的地址
        output reg[31:0] nextPC  //下条指令的地址
    );

    initial begin
        curPC <= 0; //初始值为0
        nextPC <= 4;
    end

    
    //检测时钟下降沿计算新指令地址 
    always@(negedge CLK)
    begin
        // #20000 case(PCSrc)   //烧板时
        case(PCSrc)   //仿真时
            1'b0:   nextPC <= curPC + 4;
            1'b1:   nextPC <= AluOutput;
            default:  nextPC <= curPC + 4;
        endcase
    end
    //检测时钟上升沿更新PC或复位信号
    always@(posedge CLK or posedge Reset)
    begin
        if(Reset) //复位置1时把PC归零
            begin
                curPC <= 0;
            end
        else 
            begin
                curPC <= nextPC;
            end
    end

endmodule
