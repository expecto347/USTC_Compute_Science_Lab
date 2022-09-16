`timescale 1ns / 1ps

module fifo(
    input clk, rst,
    input enq,
    input [3:0] in,
    input deq,
    output [3:0] out,
    output [2:0] an,
    output [3:0] seg,
    output fullw,
    output emptyw
    );
    reg [7:0] valid=0;
    wire [2:0] ra0w,ra1w,waw;
    wire [3:0] rd0w,rd1w,wdw;
    wire wew;
    reg [2:0] ra0r,ra1r;
    reg [3:0] rd0r,rd1r;
 
    reg [2:0] war;
    reg wer;
    reg [3:0] wdr;
    
    reg [3:0] d1;
    
    wire s;
    
ram_8 ram_8 (clk,ra0r,rd0w,ra1r,rd1w,war,wer,wdr);
sdu sdu (clk,valid,ra1w,rd1r,an,seg);

always@(*)
begin
ra1r<=ra1w;
rd1r<=rd1w;
end //将wire类型转化为reg类型

reg [2:0] head1=0,head2=0,tail1=0,tail2=0;
reg full=0,empty=1;

assign fullw=full;
assign emptyw=empty; //将reg类型转为wire类型输出

reg [1:0] state=0,next_state=0; //初始化状态

wire enq_1,deq_1;

edge_taker inst_1(clk,enq,s,enq_1);
edge_taker inst_2(clk,deq,s,deq_1); //取边沿信号

always@(posedge clk or posedge rst) 
    begin
      if(rst==1) state<=0; 
      else state<=next_state;
    end //状态机第一部分，处理rst等信息


    always@(*) 
     begin
     if (enq&&(!full))
     begin
		next_state = 1;
		d1 = in;
     end
     else
     begin
		if (deq&&(!empty)) next_state = 2;
		else next_state = 3;
     end
    end //状态机第二部分，处理输入的信号

    reg [3:0] outf;
    assign out=outf; //将reg类型转化为wire类型
    always@(posedge clk) 
    begin
		case(next_state)	
			0: 
			begin 
				head1<=0; 
				head2<=0;
				tail1<=0;
				tail2<=0;
				full<=0;
				empty<=1; 
				valid<=0; //初始状态
			end
			1: 
			begin 
				head1 <= head2 + 1;tail2 <= tail1;
				valid[head2] <= 1;
				wer <= 1;war <= head2; wdr <= d1;
				full <= ((head2+1)%8==tail1);
				empty<=0; 
			end
			2: 
			begin 
				tail1<=tail2+1; head2<=head1; 
				valid[tail2]<=0; 
				ra0r<=tail2; 
				outf<=rd0w; 
				empty<=((head1)==(tail2+1)%8); 
				full<=0; 
			end
			3: 
			begin 
				tail2<=tail1;head2<=head1; 
			end
			default: ;
		endcase
    end //根据不同的状态进行输出
endmodule

