`timescale 1ns / 1ps
//Control Unit
module ControlUnit(
        input [7:0] op,         //操作数
        input [2:0] funct3,     //3位功能码
        input [6:0] funct7,     //7位功能码
        output reg jal,         //是否跳转指令
        output reg branch,      //beq分支指令
        output reg[2:0] AluOp,  //ALU操作方式
        output reg AluSrc,      //ALU口位
        output reg[1:0] RegScr, //Rd输入数据来源(00:AluOutput;01:MemData;10:PC+4;11:ImmGen)
        output reg RegWrite,    //Rd写使能信
        output reg[2:0] ImmGen, //立即数拼接方法
        output reg Sign,        //立即数符号扩展信号
        output reg MemWrite,    //存储器写使能
        output reg jalr         //控制是PC的数值与偏移量相加，还是寄存器rs1的数值与偏移量相加
    );
    initial begin
        jal = 0;         //默认不跳转
        branch = 0;      //默认不跳转
        AluOp = 3'b000;  //默认ALU加法
        AluSrc = 0;      //默认选择读取rd2的数值
        RegScr = 2'b00;  //默认ALU输出为Rd输入
        RegWrite = 0;    //默认关闭写寄存器
        ImmGen = 3'b000; //默认拼接I型指令
        Sign = 1;        //默认带符号扩展
        MemWrite = 0;    //默认关闭写存储器
        jalr = 0;
    end

    always@(op or funct3 or funct7) 
    begin
        case(op)
            //R type
            7'b0110011:
            begin
                case(funct3)
                    //add&sub
                    3'b000:
                    begin
                        //add
                        if (funct7 == 7'b0000000) begin
                            jal = 0;
                            branch = 0;
                            AluOp = 3'b000;
                            AluSrc = 0;
                            RegScr = 2'b00;
                            RegWrite = 1;
                            ImmGen = 3'b000;
                            Sign = 1;
                            MemWrite = 0;
                            jalr = 0;
                        end
                        //sub
                        else begin
                            jal = 0;
                            branch = 0;
                            AluOp = 3'b001;
                            AluSrc = 0;
                            RegScr = 2'b00;
                            RegWrite = 1;
                            ImmGen = 3'b000;
                            Sign = 1;
                            MemWrite = 0;
                            jalr = 0;
                        end
                    end
                    
                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            //I type1
            7'b0010011:
            begin
                case(funct3)
                    //addi
                    3'b000:
                    begin
                        jal = 0;
                        branch = 0;
                        AluOp = 3'b000;
                        AluSrc = 1;
                        RegScr = 2'b00;
                        RegWrite = 1;
                        ImmGen = 3'b000; //I型立即数拼接
                        Sign = 1; //有符号数拓展
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            //I type2
            7'b0000011:
            begin
                case(funct3)
                    //lw
                    3'b010:
                    begin
                        jal = 0;
                        branch = 0;
                        AluOp = 3'b000;
                        AluSrc = 1;
                        RegScr = 2'b01;
                        RegWrite = 1;
                        ImmGen = 3'b000; //I型立即数拼接
                        Sign = 1; //有符号数拓展
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            //S type
            7'b0100011:
            begin
                case(funct3)
                    //sw
                    3'b010:
                    begin
                        jal = 0;
                        branch = 0;
                        AluOp = 3'b000;
                        AluSrc = 1;
                        RegScr = 2'b00;
                        RegWrite = 0;
                        ImmGen = 3'b001;
                        Sign = 1;
                        MemWrite = 1;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            //B type
            7'b1100011:
            begin
                case(funct3)
                    //beq
                    3'b000:
                    begin
                        jal = 0;
                        branch = 1;
                        AluOp = 3'b110;
                        AluSrc = 0;
                        RegScr = 2'b10;
                        RegWrite = 0;
                        ImmGen = 3'b010; //B型立即数拼接
                        Sign = 1; //有符号数拓展
                        MemWrite = 0;
                        jalr = 0;
                    end

                    //blt
                    3'b100:
                    begin
                        jal = 0;
                        branch = 1;
                        AluOp = 3'b101;
                        AluSrc = 0;
                        RegScr = 2'b10;
                        RegWrite = 0;
                        ImmGen = 3'b010; //B型立即数拼接
                        Sign = 1; //有符号数拓展
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            //J type
            7'b1101111:
            begin
                //jal
                    jal = 1;
                    branch = 0;
                    AluOp = 3'b000;
                    AluSrc = 0;
                    RegScr = 2'b10;
                    RegWrite = 1;
                    ImmGen = 3'b100; //J型立即数拼接
                    Sign = 1; //有符号数拓展
                    MemWrite = 0;
                    jalr = 0;
            end
            //I type3
            7'b1100111:
            begin
                case(funct3)
                    //jalr
                    3'b000:
                    begin
                        jal = 1;
                        branch = 0;
                        AluOp = 3'b000;
                        AluSrc = 0;
                        RegScr = 2'b10;
                        RegWrite = 1;
                        ImmGen = 3'b000; //I型立即数拼接
                        Sign = 1; //有符号数拓展
                        MemWrite = 0;
                        jalr = 1; //选择寄存器的数???与偏移量相??
                    end

                    default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
                endcase
            end
            
            //U type
            7'b0010111:
            //auipc
            begin
                jal = 0;
                branch = 0;
                AluOp = 3'b000;
                AluSrc = 0;
                RegScr = 2'b11; //立即数直接写
                RegWrite = 1;
                ImmGen = 3'b011; //U型立即数拼接
                Sign = 1; //有符号数拓展
                MemWrite = 0;
                jalr = 0;
            end

            default: begin
                        jal = 0;         //默认不跳转
                        branch = 0;      //默认不跳转
                        AluOp = 3'b000;  //默认ALU加法
                        AluSrc = 0;      //默认选择读取rd2的数值
                        RegScr = 2'b00;  //默认ALU输出为Rd输入
                        RegWrite = 0;    //默认关闭写寄存器
                        ImmGen = 3'b000; //默认拼接I型指令
                        Sign = 1;        //默认带符号扩展
                        MemWrite = 0;      //默认关闭写存储器
                        jalr = 0;
                    end
        endcase
    end
endmodule