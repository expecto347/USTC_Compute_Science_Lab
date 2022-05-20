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
    #(
    parameter WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter SIZE = {1'b1, {ADDR_WIDTH{1'b0}}}
    )
    (
    input clk, rst,		//ʱ�ӣ���������Ч�����첽��λ���ߵ�ƽ��Ч��
    input [WIDTH-1: 0] din,		//���������
    input en_in, 		//�����ʹ�ܣ��ߵ�ƽ��Ч
    input en_out,		//������ʹ�ܣ��ߵ�ƽ��Ч
    output reg [WIDTH-1: 0] dout, 	//����������
    output reg [ADDR_WIDTH: 0] count	//�������ݼ���
    );
    
    reg [ADDR_WIDTH-1: 0] head_ptr;
    reg [ADDR_WIDTH-1: 0] tail_ptr;
    reg [ADDR_WIDTH-1: 0] next_head_ptr;
    reg [ADDR_WIDTH-1: 0] next_tail_ptr;
    reg [ADDR_WIDTH-1: 0] mem_addr;
    reg [ADDR_WIDTH: 0] next_count;
    reg ena;
    wire [WIDTH-1: 0] mem_out;
    wire en_in_edge, en_out_edge;
    reg out_ok;
    
    // ����ͨ·
    //// ���ڴ�
    blk_mem_gen_16x8 queue(.addra({mem_addr}), .clka(clk), .dina(din), .douta(mem_out), .ena(ena), .wea(en_in_edge));
    //// ȡʹ���źű�Ե
    edge_taker #(.N(1)) en_in_edge_taker(.in(en_in), .clk(clk), .rst(rst), .out(en_in_edge));
    edge_taker #(.N(1)) en_out_edge_taker(.in(en_out), .clk(clk), .rst(rst), .out(en_out_edge));
    
    // ״̬��״̬ת��
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            head_ptr <= {ADDR_WIDTH{1'b0}};
            tail_ptr <= {ADDR_WIDTH{1'b0}};
            next_head_ptr <= {ADDR_WIDTH{1'b0}};
            next_tail_ptr <= {ADDR_WIDTH{1'b0}};
            count <= {(ADDR_WIDTH+1){1'b0}};
            dout <= {WIDTH{1'b0}};
            out_ok <= 1'b0;
        end
        else begin
            head_ptr <= next_head_ptr;
            tail_ptr <= next_tail_ptr;
            count <= next_count;
            out_ok <= en_out_edge;
            if(out_ok) dout <= mem_out;
        end
    end
    
    // ״̬����
    always @(*) begin
        if(rst) begin 
            mem_addr = {ADDR_WIDTH{1'b0}};
            ena = 1'b0;
        end
        else begin
            // head_ptr��״̬����
            if(en_out_edge && (count > 0)) begin
                next_head_ptr = head_ptr == SIZE ? 0 : head_ptr + 1;
                next_tail_ptr = tail_ptr;
                next_count = count - 1;
                mem_addr = head_ptr;
                ena = 1'b1;
            end
            // tail_ptr��״̬����
            else if(en_in_edge && (count < SIZE)) begin
                next_head_ptr = head_ptr;
                next_tail_ptr = tail_ptr == SIZE ? 0 : tail_ptr + 1;
                next_count = count + 1;
                mem_addr = tail_ptr;
                ena = 1'b1;
            end
            else begin
                next_head_ptr = head_ptr;
                next_tail_ptr = tail_ptr;
                next_count = count;
                ena = 1'b0;
                mem_addr = mem_addr;
            end
        end
    end
    
endmodule
