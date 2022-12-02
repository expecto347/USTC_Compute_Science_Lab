//state.v
module T4(
input clk, btn,sw,
output reg[2:0] hexplay_an,
output reg[3:0] hexplay_data
);

reg[2:0] current_state;
reg[2:0] next_state;
reg[3:0] num_series;
wire [23:0]data;
wire button_edge;
wire button1;
reg[3:0] prev1;
reg[3:0] prev2;
reg[3:0] prev3;
reg[3:0] prev4;
reg[32:0] hexplay_cnt;

parameter STATE0 = 3'b000;
parameter STATE1 = 3'b001;
parameter STATE2 = 3'b010;
parameter STATE3 = 3'b011;
parameter STATE4 = 3'b100;

signal_edge signal_edge(.clk(clk),.button(button1),.button_edge(button_edge));
jitter_clr jitter_clr(clk, btn, button1);
always@(posedge clk) begin
	if (hexplay_cnt >= (200000))
	   begin
		hexplay_cnt <= 0;
		if (hexplay_an == 5)
			hexplay_an <= 0;
		else
			hexplay_an <= hexplay_an + 1;
		end
		
	else
		hexplay_cnt <= hexplay_cnt + 1;
end


always@(*) begin
	case(hexplay_an)
		0: hexplay_data = data[3:0];
		1: hexplay_data = data[7:4];
		2: hexplay_data = data[11:8];
		3: hexplay_data = data[15:12];
		4: hexplay_data = data[19:16];
		5: hexplay_data = data[23:20];
		default:hexplay_data=4'b0000;
	endcase
end

always@(posedge clk)
begin    
    current_state <= next_state;				
end

always@(posedge button_edge)
begin
	if(button_edge)
    begin
        if(current_state == STATE4)    
            num_series = num_series + 1;    
		case(current_state)
			STATE0: if(sw == 0)
							next_state = STATE0;
					else 
							next_state = STATE1;
			STATE1: if(sw == 0)
							next_state = STATE0;
					else 
							next_state = STATE2;
			STATE2: if(sw == 0)
							next_state = STATE3;
					else 
							next_state = STATE2;
			STATE3: if(sw == 0)
							next_state = STATE4;
					else 
							next_state = STATE1;
            STATE4: if(sw == 0)
                            next_state = STATE0;
                    else    
                            next_state = STATE1;
			default: next_state = STATE0;
		endcase
    end
    else
        next_state = current_state;
end

always@(posedge button_edge)
begin
    if(button_edge)
    begin
        prev4 <= prev3;
        prev3 <= prev2;
        prev2 <= prev1;
        prev1 <={1'b0,1'b0,1'b0,sw};
    end
end
	
assign data[23:20]={1'b0,current_state};
assign data[19:16]=num_series[3:0];
assign data[15:0]={prev1, prev2, prev3, prev4};
 
endmodule