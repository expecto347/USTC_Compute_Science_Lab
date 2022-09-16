// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 28 12:33:53 2020
// Host        : DESKTOP-CK1FK5P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/VivadoProject/COD/Lab1/ALU_sort/ALU_sort.sim/sim_1/synth/timing/xsim/sort_tb_time_synth.v
// Design      : sort
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module register
   (s0_OBUF,
    i1,
    en1,
    CLK,
    i0,
    Q,
    s2_OBUF,
    x1_IBUF,
    s1_OBUF);
  output [0:0]s0_OBUF;
  output [0:0]i1;
  output en1;
  input CLK;
  input [0:0]i0;
  input [2:0]Q;
  input [0:0]s2_OBUF;
  input [0:0]x1_IBUF;
  input [0:0]s1_OBUF;

  wire CLK;
  wire [2:0]Q;
  wire en0;
  wire en1;
  wire [0:0]i0;
  wire [0:0]i1;
  wire [0:0]s0_OBUF;
  wire [0:0]s1_OBUF;
  wire [0:0]s2_OBUF;
  wire [0:0]x1_IBUF;

  LUT6 #(
    .INIT(64'hEFEAED4D4540E848)) 
    \r[0]_i_1__1 
       (.I0(Q[0]),
        .I1(s0_OBUF),
        .I2(Q[2]),
        .I3(s2_OBUF),
        .I4(Q[1]),
        .I5(x1_IBUF),
        .O(i1));
  LUT6 #(
    .INIT(64'h45455055EDED5FFF)) 
    \r[0]_i_2 
       (.I0(Q[0]),
        .I1(s0_OBUF),
        .I2(Q[2]),
        .I3(s2_OBUF),
        .I4(s1_OBUF),
        .I5(Q[1]),
        .O(en1));
  LUT5 #(
    .INIT(32'h450045DF)) 
    \r[0]_i_2__0 
       (.I0(Q[0]),
        .I1(s0_OBUF),
        .I2(s1_OBUF),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(en0));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(i0),
        .CE(1'b1),
        .CLR(en0),
        .D(CLK),
        .Q(s0_OBUF));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_0
   (s1_OBUF,
    i0,
    CLK,
    i1,
    en1,
    Q,
    x0_IBUF);
  output [0:0]s1_OBUF;
  output [0:0]i0;
  input CLK;
  input [0:0]i1;
  input en1;
  input [2:0]Q;
  input [0:0]x0_IBUF;

  wire CLK;
  wire [2:0]Q;
  wire en1;
  wire [0:0]i0;
  wire [0:0]i1;
  wire [0:0]s1_OBUF;
  wire [0:0]x0_IBUF;

  LUT5 #(
    .INIT(32'hFCFB3040)) 
    \r[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(s1_OBUF),
        .I3(Q[2]),
        .I4(x0_IBUF),
        .O(i0));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(i1),
        .CE(1'b1),
        .CLR(en1),
        .D(CLK),
        .Q(s1_OBUF));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_1
   (s2_OBUF,
    i3,
    en3,
    CLK,
    i2,
    en2,
    Q,
    x3_IBUF,
    s3_OBUF);
  output [0:0]s2_OBUF;
  output [0:0]i3;
  output en3;
  input CLK;
  input [0:0]i2;
  input en2;
  input [2:0]Q;
  input [0:0]x3_IBUF;
  input [0:0]s3_OBUF;

  wire CLK;
  wire [2:0]Q;
  wire en2;
  wire en3;
  wire [0:0]i2;
  wire [0:0]i3;
  wire [0:0]s2_OBUF;
  wire [0:0]s3_OBUF;
  wire [0:0]x3_IBUF;

  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \r[0]_i_1__0 
       (.I0(Q[2]),
        .I1(s2_OBUF),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(x3_IBUF),
        .O(i3));
  LUT5 #(
    .INIT(32'h0000B00F)) 
    \r[0]_i_2__2 
       (.I0(s2_OBUF),
        .I1(s3_OBUF),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(en3));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(i2),
        .CE(1'b1),
        .CLR(en2),
        .D(CLK),
        .Q(s2_OBUF));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_2
   (s3_OBUF,
    i2,
    en2,
    CLK,
    i3,
    en3,
    Q,
    s1_OBUF,
    x2_IBUF,
    s2_OBUF);
  output [0:0]s3_OBUF;
  output [0:0]i2;
  output en2;
  input CLK;
  input [0:0]i3;
  input en3;
  input [2:0]Q;
  input [0:0]s1_OBUF;
  input [0:0]x2_IBUF;
  input [0:0]s2_OBUF;

  wire CLK;
  wire [2:0]Q;
  wire en2;
  wire en3;
  wire [0:0]i2;
  wire [0:0]i3;
  wire [0:0]s1_OBUF;
  wire [0:0]s2_OBUF;
  wire [0:0]s3_OBUF;
  wire [0:0]x2_IBUF;

  LUT6 #(
    .INIT(64'hFBF8FF3F0B08C000)) 
    \r[0]_i_1__2 
       (.I0(s3_OBUF),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(s1_OBUF),
        .I4(Q[1]),
        .I5(x2_IBUF),
        .O(i2));
  LUT6 #(
    .INIT(64'h0C000C0CF3C37373)) 
    \r[0]_i_2__1 
       (.I0(s3_OBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s1_OBUF),
        .I4(s2_OBUF),
        .I5(Q[2]),
        .O(en2));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(i3),
        .CE(1'b1),
        .CLR(en3),
        .D(CLK),
        .Q(s3_OBUF));
endmodule

(* CX01_1 = "3'b110" *) (* CX01_2 = "3'b100" *) (* CX01_3 = "3'b001" *) 
(* CX12_2 = "3'b101" *) (* CX12_3 = "3'b010" *) (* CX23_3 = "3'b011" *) 
(* HLT = "3'b111" *) (* LOAD = "3'b000" *) (* N = "4" *) 
(* SUB = "3'b001" *) 
(* NotValidForBitStream *)
module sort
   (s0,
    s1,
    s2,
    s3,
    done,
    x0,
    x1,
    x2,
    x3,
    clk,
    rst);
  output [3:0]s0;
  output [3:0]s1;
  output [3:0]s2;
  output [3:0]s3;
  output done;
  input [3:0]x0;
  input [3:0]x1;
  input [3:0]x2;
  input [3:0]x3;
  input clk;
  input rst;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cur_state;
  wire done;
  wire done_OBUF;
  wire en1;
  wire en2;
  wire en3;
  wire [0:0]i0;
  wire [0:0]i1;
  wire [0:0]i2;
  wire [0:0]i3;
  wire [2:0]next_state;
  wire rst;
  wire rst_IBUF;
  wire [3:0]s0;
  wire [0:0]s0_OBUF;
  wire [3:0]s1;
  wire [0:0]s1_OBUF;
  wire [3:0]s2;
  wire [0:0]s2_OBUF;
  wire [3:0]s3;
  wire [0:0]s3_OBUF;
  wire [3:0]x0;
  wire [0:0]x0_IBUF;
  wire [3:0]x1;
  wire [0:0]x1_IBUF;
  wire [3:0]x2;
  wire [0:0]x2_IBUF;
  wire [3:0]x3;
  wire [0:0]x3_IBUF;

initial begin
 $sdf_annotate("sort_tb_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[2]),
        .Q(cur_state[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    done_OBUF_inst_i_1
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .O(done_OBUF));
  register register0
       (.CLK(clk_IBUF_BUFG),
        .Q(cur_state),
        .en1(en1),
        .i0(i0),
        .i1(i1),
        .s0_OBUF(s0_OBUF),
        .s1_OBUF(s1_OBUF),
        .s2_OBUF(s2_OBUF),
        .x1_IBUF(x1_IBUF));
  register_0 register1
       (.CLK(clk_IBUF_BUFG),
        .Q(cur_state),
        .en1(en1),
        .i0(i0),
        .i1(i1),
        .s1_OBUF(s1_OBUF),
        .x0_IBUF(x0_IBUF));
  register_1 register2
       (.CLK(clk_IBUF_BUFG),
        .Q(cur_state),
        .en2(en2),
        .en3(en3),
        .i2(i2),
        .i3(i3),
        .s2_OBUF(s2_OBUF),
        .s3_OBUF(s3_OBUF),
        .x3_IBUF(x3_IBUF));
  register_2 register3
       (.CLK(clk_IBUF_BUFG),
        .Q(cur_state),
        .en2(en2),
        .en3(en3),
        .i2(i2),
        .i3(i3),
        .s1_OBUF(s1_OBUF),
        .s2_OBUF(s2_OBUF),
        .s3_OBUF(s3_OBUF),
        .x2_IBUF(x2_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \s0_OBUF[0]_inst 
       (.I(s0_OBUF),
        .O(s0[0]));
  OBUF \s0_OBUF[1]_inst 
       (.I(1'b0),
        .O(s0[1]));
  OBUF \s0_OBUF[2]_inst 
       (.I(1'b0),
        .O(s0[2]));
  OBUF \s0_OBUF[3]_inst 
       (.I(1'b0),
        .O(s0[3]));
  OBUF \s1_OBUF[0]_inst 
       (.I(s1_OBUF),
        .O(s1[0]));
  OBUF \s1_OBUF[1]_inst 
       (.I(1'b0),
        .O(s1[1]));
  OBUF \s1_OBUF[2]_inst 
       (.I(1'b0),
        .O(s1[2]));
  OBUF \s1_OBUF[3]_inst 
       (.I(1'b0),
        .O(s1[3]));
  OBUF \s2_OBUF[0]_inst 
       (.I(s2_OBUF),
        .O(s2[0]));
  OBUF \s2_OBUF[1]_inst 
       (.I(1'b0),
        .O(s2[1]));
  OBUF \s2_OBUF[2]_inst 
       (.I(1'b0),
        .O(s2[2]));
  OBUF \s2_OBUF[3]_inst 
       (.I(1'b0),
        .O(s2[3]));
  OBUF \s3_OBUF[0]_inst 
       (.I(s3_OBUF),
        .O(s3[0]));
  OBUF \s3_OBUF[1]_inst 
       (.I(1'b0),
        .O(s3[1]));
  OBUF \s3_OBUF[2]_inst 
       (.I(1'b0),
        .O(s3[2]));
  OBUF \s3_OBUF[3]_inst 
       (.I(1'b0),
        .O(s3[3]));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF));
  IBUF \x1_IBUF[0]_inst 
       (.I(x1[0]),
        .O(x1_IBUF));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF));
  IBUF \x3_IBUF[0]_inst 
       (.I(x3[0]),
        .O(x3_IBUF));
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
