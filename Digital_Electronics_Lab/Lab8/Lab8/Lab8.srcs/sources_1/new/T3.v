//top.v
module T3(
input sw, clk, btn, rst,
output reg [2:0]hexplay_an,
output reg [3:0]hexplay_data);
reg [7:0] data;
reg [32:0] hexplay_cnt;
wire button_edge;
wire button1;

always@(posedge clk or posedge rst) // always block
begin
    if (hexplay_cnt >= ( 20000000 / 8))
		hexplay_cnt <= 0;
	else
		hexplay_cnt <= hexplay_cnt + 1;
    if(rst)
        hexplay_cnt<=0;
end
always@(posedge clk) begin
	if (hexplay_cnt == 0)begin
		if (hexplay_an == 3'b1)
			hexplay_an <= 3'b0;
		else
			hexplay_an <= 3'b1;
	end
end

always@(posedge clk) begin
	if(hexplay_an==0)
        hexplay_data<=data[3:0];
    else
        hexplay_data<=data[7:4];
end

always@(posedge clk or posedge rst)
begin
if(button_edge)
        data<=sw?data+1:data-1;
if(rst)
        data<=8'h1f;
end

signal_edge signal_edge(clk,button1,button_edge);
jitter_clr jitter_clr(clk, btn, button1);
endmodule