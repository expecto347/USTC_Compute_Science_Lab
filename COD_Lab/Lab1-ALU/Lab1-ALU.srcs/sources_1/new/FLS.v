`timescale 1ns / 1ps

module  fls (
  input  clk, rst,  //ʱ�ӣ���λ���ߵ�ƽ��Ч��
  input en, //�������ʹ��
  input  [6:0]  d,  //�������г�ʼ��
  output [6:0]  f   //�������
);
    reg [2:0] state,next_state;//��̬����̬
    reg [6:0] d_1,d_2,d_3;//���������м����
    parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101;//������Ҫ�������ݿ��
    initial next_state=S0; 
    reg [6:0] t;
    wire en1;
    Sig Sig(clk,en,en1);

//��һ�Σ�����״̬ת�ƣ�ת������������Ҫ���ã��˴�ÿ��clkת��һ�Σ�������ʱ���߼�
    always@(posedge clk) //ͬ����λ
    begin
      if(rst) state <= S0;
      else state<=next_state;
    end

//�ڶ��Σ�����ÿ��״̬�Ĵ�̬������״̬ת��ͼ���������
    always@(*) 
    if(en1)//����߼�
        begin
        t<=d;
          case(state)
          S0: next_state=S1;
          S1: next_state=S2;
          S2: next_state=S3;
          
          S3: next_state=S4;
          S4: next_state=S5;
          S5: next_state=S3;
          default: next_state=S0;
          endcase
        end
        else
        next_state = state;

//�����Σ�����״̬�������Ħ�����������״̬�йأ������ͺ�״̬�������й�
    always@(posedge clk)
    begin
     case(next_state)
      S1: d_1<=t;
      S2: d_2<=t;
      S3:
        begin
            d_3<=d_1+d_2;
        end
      S4:
        begin
            d_1<=d_2+d_3;
        end
      S5:
        begin
            d_2<=d_3+d_1;
        end
      default:
        d_1<=0;
     endcase
    end
assign f=(state==S1|state==S4)?d_1:((state==S2|state==S5)?d_2:((state==S3)?d_3:0));
endmodule
