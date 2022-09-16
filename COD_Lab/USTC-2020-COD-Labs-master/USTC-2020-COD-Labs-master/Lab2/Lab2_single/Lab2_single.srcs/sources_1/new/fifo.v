`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 12:15:52
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


module fifo
    (
    input clk, rst,		//ʱ�ӣ���������Ч�����첽��λ���ߵ�ƽ��Ч��
    input [7:0] din,		//���������
    input en_in, 		//�����ʹ�ܣ��ߵ�ƽ��Ч
    input en_out,		//������ʹ�ܣ��ߵ�ƽ��Ч
    output [7:0] dout, 	//����������
    output [4:0] count	//�������ݼ���
    );
    
    reg [3: 0] head_ptr;
    reg [3: 0] tail_ptr;
    reg [3: 0] mem_addr;
    reg ena;
    wire [7: 0]mem_out;
    wire en_in_edge, en_out_edge;
    wire [7: 0]din_edge;
    reg out_ok;
    
    // ���ڴ�
    blk_mem_gen_16x8 queue(.addra(mem_addr), .clka(clk), .dina(din), .douta(mem_out), .ena(1'b1), .wea(en_in_edge));
    // ȡʹ���źű�Ե����һ��ʱ��������
    edge_taker #(.WIDTH(1)) en_in_edge_taker(.in(en_in), .clk(clk), .rst(rst), .out(en_in_edge));
    edge_taker #(.WIDTH(1)) en_out_edge_taker(.in(en_out), .clk(clk), .rst(rst), .out(en_out_edge));
    // din�źű�Ե����һ��ʱ��������
    edge_taker #(.WIDTH(8)) din_edge_taker(.in(din), .clk(clk), .rst(rst), .out(din_edge));
    
    assign count = tail_ptr - head_ptr;
    assign dout = rst ? 8'h00 : mem_out;
    
    always @(posedge clk , posedge rst) begin
        if(rst) begin
            head_ptr <= 4'h0;
            tail_ptr <= 4'h0;
        end
        else begin
            if(en_in_edge && (count < 4'b1111)) begin
                tail_ptr <= tail_ptr + 1;
            end
            else if(en_out_edge && (count > 4'b0000)) begin
                head_ptr <= head_ptr + 1;
            end
        end
    end
    
    always @(*) begin
        if(rst) begin 
            mem_addr = 4'b0000;
        end
        else begin
            if(en_in_edge && (count < 4'b1111)) begin
                mem_addr = tail_ptr;
            end
            else if(en_out_edge && (count > 4'b0000)) begin
                mem_addr = head_ptr;
            end
        end
    end
    
endmodule
