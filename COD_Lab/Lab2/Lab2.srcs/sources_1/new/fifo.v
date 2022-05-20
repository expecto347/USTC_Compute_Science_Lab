`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/31 21:03:32
// Design Name: 
// Module Name: fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo(
    input clk,
    input rst,
	input [3:0] in,
	input enq,
	input deq,
	output reg [3:0] out,
	output reg full,
	output reg emp,
	output reg [2:0] an,
	output reg [3:0] seg
    );
	
	reg [2:0] head_ptr,tail_ptr,next_head_ptr,next_tail_ptr;
	reg [2:0] addr_w,addr_r0,addr_r1;
	reg [3:0] mem_w;
	wire [3:0] mem_r0,mem_r1;
	reg we;
	wire enq_1,deq_1;
	wire s1,s2;
	reg [3:0] count,next_count;
    reg rst_1,rst_2;
	reg [15:0] i;
	wire clk_400,reset,locked;
	
	edge_taker inst_1(clk,enq,s1,enq_1);
	edge_taker inst_2(clk,deq,s2,deq_1);
	ram_8 inst_3(clk,addr_r0,mem_r0,addr_r1,mem_r1,addr_w,we,mem_w);
	//clk_wiz_0 instance_name
   //(
    //.clk_out1(clk_400),
    //.reset(reset),
    //.locked(locked),
    //.clk_in1(clk));
    
	initial
	begin
		head_ptr = 0;
		tail_ptr = 0;
		next_head_ptr = 0;
		next_tail_ptr = 0;
		emp = 1;
		full = 0;
		we = 0;
		count = 0;
		next_count = 0;
        rst_1 = 1;
		rst_2 = 1;
		out = 0;
	end

	always@(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			head_ptr <= 0;
			tail_ptr <= 0;
			next_head_ptr <= 0;
			next_tail_ptr <= 0;
			emp <= 1;
			full <= 0;
			count <=0;
			we <= 0;
			next_count <= 0;
            rst_1 <= 1;
			rst_2 <= 1;
		end
		else
		begin
            head_ptr <= next_head_ptr;
            tail_ptr <= next_tail_ptr;
            count <= next_count;
		end
	end
		
	always@(*)
	begin
		if(enq_1 && (count < 4'b1000))
		begin
			next_head_ptr = head_ptr;
			next_tail_ptr = (tail_ptr == 3'b111) ? 0 : (tail_ptr + 1);
            next_count = count + 1;            
        end
        else if(deq_1 && (count > 0))
        begin
            next_head_ptr = (head_ptr == 3'b111) ? 0 : (head_ptr + 1);
            next_tail_ptr = tail_ptr;
            next_count = count - 1;
        end
        else
        begin
            next_head_ptr = head_ptr;
            next_tail_ptr = tail_ptr;
            next_count = count;
        end
    end

    always@(*)
    begin
        if(rst_1)
        begin
            if(enq_1)
            begin
                addr_w = tail_ptr;
                we = 1;
                mem_w = in;
                rst_1 = 0;
            end
            else out = out;
        end
		else if(rst_2)
		begin
			if(deq_1)
			begin
				addr_r0 = head_ptr;
				#10;
				out = mem_r0;
				rst_2 = 0;
			end
			else if(count == 4'b1000) full =1;
            else if(enq_1 && (count < 4'b1000))
            begin
                addr_w = tail_ptr;
                we = 1;
                mem_w = in;
            end
			else 
            begin
                emp = 0;
                full = 0;
            end
		end
        else
        begin
            if(count == 0) emp = 1;
            else if(count == 4'b1000) full =1;
            else if(enq_1 && (count < 4'b1000))
            begin
                addr_w = tail_ptr;
                we = 1;
                mem_w = in;
            end
            else if(deq_1 && (count > 0))
            begin
                addr_r0 = head_ptr;
                #10;
                out = mem_r0;
            end
            else 
            begin
                emp = 0;
                full = 0;
            end
        end
    end
	
/*	always@(posedge clk_400)
	begin
		if(count == 0)
		begin
			for(i=0;i<=7;i=i+1) begin an = i; seg = 0; end
		end
		else
		begin
			if(head_ptr<tail_ptr)
			begin
				for(i=head_ptr;i<=tail_ptr;i=i+1)
				begin
					an = i;
					#10;
					addr_r1 = an;
					#10;
					seg = mem_r1;
					#10;
				end
			end
			else
			begin
				for(i=head_ptr;i<=7;i=i+1)
				begin
					an = i;
					#10
					addr_r1 = an;
					#10;
					seg = mem_r1;
					#10;
				end
				for(i=0;i<=tail_ptr;i=i+1)
				begin
					an = i;
					#10;
					addr_r1 = an;
					#10;
					seg = mem_r1;
					#10;
				end
			end
		end
	end*/
endmodule
