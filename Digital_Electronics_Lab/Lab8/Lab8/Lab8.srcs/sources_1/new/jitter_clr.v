module jitter_clr(
	input clk,
	input button,
	output button_clean
);
	reg [3:0] cnt;
	always@(posedge clk)
	begin
		if(button==1'b0)
			cnt <= 4'h0;
		else if(cnt<4'h8)
			cnt <= cnt + 1'b1;
	end
	assign button_clean = cnt[3];
endmodule
