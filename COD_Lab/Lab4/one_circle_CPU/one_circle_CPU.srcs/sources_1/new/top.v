`timescale 1ns / 1ps

module top(
    input clk,
    input rst,

    //ѡ��CPU������ʽ;
    input run, 
    input step,

    //����switch�Ķ˿�
    input valid,
    input [4:0] in,

    //���led��seg�Ķ˿� 
    output [1:0] check,  //led6-5:�鿴����
    output [4:0] out0,    //led4-0
    output [2:0] an,     //8�������
    output [3:0] seg,
    output ready          //led7
);
//IO_BUS
wire [7:0] io_addr;
wire [31:0] io_dout;
wire io_we;
wire [31:0] io_din;

//Debug_BUS
wire [7:0] m_rf_addr;
wire [31:0] rf_data;
wire [31:0] m_data;
wire [31:0] pc;

wire clk_cpu;

pdu_1cycle pdu(
    .clk(clk),
    .rst(rst),
    .run(run),
    .step(step),
    .clk_cpu(clk_cpu),
    .valid(valid),
    .in(in),
    .check(check),
    .out0(out0),
    .an(an),
    .seg(seg),
    .ready(ready),
    .io_addr(io_addr),
    .io_dout(io_dout),
    .io_we(io_we),
    .io_din(io_din),
    .m_rf_addr(m_rf_addr),
    .rf_data(rf_data),
    .m_data(m_data),
    .pc(pc)
);

cpu cpu(
    .clk(clk_cpu),
    .reset(rst),
    .io_addr(io_addr),
    .io_dout(io_dout),
    .io_we(io_we),
    .io_din(io_din),
    .m_rf_addr(m_rf_addr),
    .rf_data(rf_data),
    .m_data(m_data),
    .pc_1(pc)
);

endmodule
