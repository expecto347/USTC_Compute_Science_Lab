`timescale 1ns / 1ps

module  fls (
  input  clk, rst,  //时钟，复位（高电平有效）
  input en, //输入输出使能
  input  [6:0]  d,  //输入数列初始项
  output [6:0]  f   //输出数列
);
    reg [2:0] state,next_state;//现态，次态
    reg [6:0] d_1,d_2,d_3;//定义两个中间变量
    parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101;//根据需要定义数据宽度
    initial next_state=S0; 
    reg [6:0] t;
    wire en1;
    Sig Sig(clk,en,en1);

//第一段，描述状态转移，转移条件根据需要设置，此处每个clk转移一次，必须是时序逻辑
    always@(posedge clk) //同步复位
    begin
      if(rst) state <= S0;
      else state<=next_state;
    end

//第二段，描述每个状态的次态。根据状态转移图有向边连线
    always@(*) 
    if(en1)//组合逻辑
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

//第三段，描述状态的输出。摩尔型输出仅和状态有关，米利型和状态及输入有关
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
