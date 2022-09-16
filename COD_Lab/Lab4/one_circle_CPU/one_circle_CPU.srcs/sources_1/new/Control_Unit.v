`timescale 1ns / 1ps
//Control Unit
module ControlUnit(
        input [7:0] op,         //������
        input [2:0] funct3,     //3λ������
        input [6:0] funct7,     //7λ������
        output reg jal,         //�Ƿ���תָ��
        output reg branch,      //beq��ָ֧��
        output reg[2:0] AluOp,  //ALU������ʽ
        output reg AluSrc,      //ALU��λ
        output reg[1:0] RegScr, //Rd����������Դ(00:AluOutput;01:MemData;10:PC+4;11:ImmGen)
        output reg RegWrite,    //Rdдʹ����
        output reg[2:0] ImmGen, //������ƴ�ӷ���
        output reg Sign,        //������������չ�ź�
        output reg MemWrite,    //�洢��дʹ��
        output reg jalr         //������PC����ֵ��ƫ������ӣ����ǼĴ���rs1����ֵ��ƫ�������
    );
    initial begin
        jal = 0;         //Ĭ�ϲ���ת
        branch = 0;      //Ĭ�ϲ���ת
        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
        Sign = 1;        //Ĭ�ϴ�������չ
        MemWrite = 0;    //Ĭ�Ϲر�д�洢��
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
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                        ImmGen = 3'b000; //I��������ƴ��
                        Sign = 1; //�з�������չ
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                        ImmGen = 3'b000; //I��������ƴ��
                        Sign = 1; //�з�������չ
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                        ImmGen = 3'b010; //B��������ƴ��
                        Sign = 1; //�з�������չ
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
                        ImmGen = 3'b010; //B��������ƴ��
                        Sign = 1; //�з�������չ
                        MemWrite = 0;
                        jalr = 0;
                    end

                    default: begin
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                    ImmGen = 3'b100; //J��������ƴ��
                    Sign = 1; //�з�������չ
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
                        ImmGen = 3'b000; //I��������ƴ��
                        Sign = 1; //�з�������չ
                        MemWrite = 0;
                        jalr = 1; //ѡ��Ĵ�������???��ƫ������??
                    end

                    default: begin
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
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
                RegScr = 2'b11; //������ֱ��д
                RegWrite = 1;
                ImmGen = 3'b011; //U��������ƴ��
                Sign = 1; //�з�������չ
                MemWrite = 0;
                jalr = 0;
            end

            default: begin
                        jal = 0;         //Ĭ�ϲ���ת
                        branch = 0;      //Ĭ�ϲ���ת
                        AluOp = 3'b000;  //Ĭ��ALU�ӷ�
                        AluSrc = 0;      //Ĭ��ѡ���ȡrd2����ֵ
                        RegScr = 2'b00;  //Ĭ��ALU���ΪRd����
                        RegWrite = 0;    //Ĭ�Ϲر�д�Ĵ���
                        ImmGen = 3'b000; //Ĭ��ƴ��I��ָ��
                        Sign = 1;        //Ĭ�ϴ�������չ
                        MemWrite = 0;      //Ĭ�Ϲر�д�洢��
                        jalr = 0;
                    end
        endcase
    end
endmodule