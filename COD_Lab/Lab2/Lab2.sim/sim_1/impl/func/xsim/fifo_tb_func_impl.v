// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr  7 16:11:49 2022
// Host        : expecto running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/expecto/Desktop/Lab/COD_Lab/Lab2/Lab2.sim/sim_1/impl/func/xsim/fifo_tb_func_impl.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module edge_taker
   (out_OBUF,
    enq,
    clk_IBUF_BUFG,
    in_IBUF);
  output [3:0]out_OBUF;
  input enq;
  input clk_IBUF_BUFG;
  input [3:0]in_IBUF;

  wire clk_IBUF_BUFG;
  wire enq;
  wire [3:0]in_IBUF;
  wire [3:0]out_OBUF;
  wire pt;
  wire s_reg_n_0;
  wire st;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out_OBUF[0]_inst_i_1 
       (.I0(pt),
        .I1(s_reg_n_0),
        .I2(in_IBUF[0]),
        .O(out_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out_OBUF[1]_inst_i_1 
       (.I0(pt),
        .I1(s_reg_n_0),
        .I2(in_IBUF[1]),
        .O(out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out_OBUF[2]_inst_i_1 
       (.I0(pt),
        .I1(s_reg_n_0),
        .I2(in_IBUF[2]),
        .O(out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out_OBUF[3]_inst_i_1 
       (.I0(pt),
        .I1(s_reg_n_0),
        .I2(in_IBUF[3]),
        .O(out_OBUF[3]));
  FDRE #(
    .INIT(1'b0)) 
    pt_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_reg_n_0),
        .Q(pt),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(st),
        .Q(s_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(enq),
        .Q(st),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "a4d74b2b" *) 
(* NotValidForBitStream *)
module fifo
   (clk,
    rst,
    in,
    enq,
    deq,
    out,
    full,
    emp,
    an,
    seg);
  input clk;
  input rst;
  input [3:0]in;
  input enq;
  input deq;
  output [3:0]out;
  output full;
  output emp;
  output [2:0]an;
  output [3:0]seg;

  wire [2:0]an;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire emp;
  wire enq;
  wire enq_IBUF;
  wire full;
  wire [3:0]in;
  wire [3:0]in_IBUF;
  wire [3:0]out;
  wire [3:0]out_OBUF;
  wire [3:0]seg;

  OBUFT \an_OBUF[0]_inst 
       (.I(1'b0),
        .O(an[0]),
        .T(1'b1));
  OBUFT \an_OBUF[1]_inst 
       (.I(1'b0),
        .O(an[1]),
        .T(1'b1));
  OBUFT \an_OBUF[2]_inst 
       (.I(1'b0),
        .O(an[2]),
        .T(1'b1));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF emp_OBUF_inst
       (.I(1'b1),
        .O(emp));
  IBUF enq_IBUF_inst
       (.I(enq),
        .O(enq_IBUF));
  OBUF full_OBUF_inst
       (.I(1'b0),
        .O(full));
  IBUF \in_IBUF[0]_inst 
       (.I(in[0]),
        .O(in_IBUF[0]));
  IBUF \in_IBUF[1]_inst 
       (.I(in[1]),
        .O(in_IBUF[1]));
  IBUF \in_IBUF[2]_inst 
       (.I(in[2]),
        .O(in_IBUF[2]));
  IBUF \in_IBUF[3]_inst 
       (.I(in[3]),
        .O(in_IBUF[3]));
  edge_taker inst_1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enq(enq_IBUF),
        .in_IBUF(in_IBUF),
        .out_OBUF(out_OBUF));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUFT \seg_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg[0]),
        .T(1'b1));
  OBUFT \seg_OBUF[1]_inst 
       (.I(1'b0),
        .O(seg[1]),
        .T(1'b1));
  OBUFT \seg_OBUF[2]_inst 
       (.I(1'b0),
        .O(seg[2]),
        .T(1'b1));
  OBUFT \seg_OBUF[3]_inst 
       (.I(1'b0),
        .O(seg[3]),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
