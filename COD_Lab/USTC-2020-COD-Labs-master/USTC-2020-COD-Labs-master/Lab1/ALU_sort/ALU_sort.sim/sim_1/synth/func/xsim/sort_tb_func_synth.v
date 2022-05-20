// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 28 11:46:12 2020
// Host        : DESKTOP-CK1FK5P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/VivadoProject/COD/Lab1/ALU_sort/ALU_sort.sim/sim_1/synth/func/xsim/sort_tb_func_synth.v
// Design      : sort
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux2
   (I1,
    s1,
    Q,
    x0_IBUF);
  output [3:0]I1;
  input [3:0]s1;
  input [2:0]Q;
  input [3:0]x0_IBUF;

  wire [3:0]I1;
  wire [2:0]Q;
  wire [3:0]s1;
  wire [3:0]x0_IBUF;

  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \r[0]_i_1 
       (.I0(s1[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(x0_IBUF[0]),
        .O(I1[0]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \r[1]_i_1 
       (.I0(s1[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(x0_IBUF[1]),
        .O(I1[1]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \r[2]_i_1 
       (.I0(s1[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(x0_IBUF[2]),
        .O(I1[2]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \r[3]_i_1 
       (.I0(s1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(x0_IBUF[3]),
        .O(I1[3]));
endmodule

(* ORIG_REF_NAME = "mux2" *) 
module mux2_0
   (I4,
    in2,
    Q,
    x3_IBUF);
  output [3:0]I4;
  input [3:0]in2;
  input [2:0]Q;
  input [3:0]x3_IBUF;

  wire [3:0]I4;
  wire [2:0]Q;
  wire [3:0]in2;
  wire [3:0]x3_IBUF;

  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \r[0]_i_1 
       (.I0(in2[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(x3_IBUF[0]),
        .O(I4[0]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \r[1]_i_1 
       (.I0(in2[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(x3_IBUF[1]),
        .O(I4[1]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \r[2]_i_1 
       (.I0(in2[2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(x3_IBUF[2]),
        .O(I4[2]));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \r[3]_i_1 
       (.I0(in2[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(x3_IBUF[3]),
        .O(I4[3]));
endmodule

module mux3
   (I2,
    s0,
    Q,
    in2,
    x1_IBUF);
  output [3:0]I2;
  input [3:0]s0;
  input [2:0]Q;
  input [3:0]in2;
  input [3:0]x1_IBUF;

  wire [3:0]I2;
  wire [2:0]Q;
  wire [3:0]in2;
  wire [3:0]s0;
  wire [3:0]x1_IBUF;

  LUT6 #(
    .INIT(64'hFAEFCAE33A2C0A20)) 
    \r[0]_i_1 
       (.I0(s0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(in2[0]),
        .I5(x1_IBUF[0]),
        .O(I2[0]));
  LUT6 #(
    .INIT(64'hFAEFCAE33A2C0A20)) 
    \r[1]_i_1 
       (.I0(s0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(in2[1]),
        .I5(x1_IBUF[1]),
        .O(I2[1]));
  LUT6 #(
    .INIT(64'hFAEFCAE33A2C0A20)) 
    \r[2]_i_1 
       (.I0(s0[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(in2[2]),
        .I5(x1_IBUF[2]),
        .O(I2[2]));
  LUT6 #(
    .INIT(64'hFAEFCAE33A2C0A20)) 
    \r[3]_i_1 
       (.I0(s0[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(in2[3]),
        .I5(x1_IBUF[3]),
        .O(I2[3]));
endmodule

(* ORIG_REF_NAME = "mux3" *) 
module mux3_1
   (I3,
    s1,
    Q,
    in2,
    x2_IBUF);
  output [3:0]I3;
  input [3:0]s1;
  input [2:0]Q;
  input [3:0]in2;
  input [3:0]x2_IBUF;

  wire [3:0]I3;
  wire [2:0]Q;
  wire [3:0]in2;
  wire [3:0]s1;
  wire [3:0]x2_IBUF;

  LUT6 #(
    .INIT(64'hFBEFFB2F08E00820)) 
    \r[0]_i_1 
       (.I0(s1[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(in2[0]),
        .I5(x2_IBUF[0]),
        .O(I3[0]));
  LUT6 #(
    .INIT(64'hFBEFFB2F08E00820)) 
    \r[1]_i_1 
       (.I0(s1[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(in2[1]),
        .I5(x2_IBUF[1]),
        .O(I3[1]));
  LUT6 #(
    .INIT(64'hFBEFFB2F08E00820)) 
    \r[2]_i_1 
       (.I0(s1[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(in2[2]),
        .I5(x2_IBUF[2]),
        .O(I3[2]));
  LUT6 #(
    .INIT(64'hFBEFFB2F08E00820)) 
    \r[3]_i_1 
       (.I0(s1[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(in2[3]),
        .I5(x2_IBUF[3]),
        .O(I3[3]));
endmodule

module register
   (Q,
    D,
    CLK,
    AR);
  output [3:0]Q;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_2
   (Q,
    D,
    CLK,
    AR);
  output [3:0]Q;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_3
   (Q,
    D,
    CLK,
    AR);
  output [3:0]Q;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_4
   (Q,
    D,
    CLK,
    AR);
  output [3:0]Q;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
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

  wire \FSM_sequential_cur_state[1]_i_1_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cur_state;
  wire done;
  wire done_OBUF;
  wire [3:0]i0;
  wire [3:0]i1;
  wire [3:0]i2;
  wire [3:0]i3;
  wire [0:0]next_state;
  wire rst;
  wire rst_IBUF;
  wire [3:0]s0;
  wire [3:0]s0_OBUF;
  wire [3:0]s1;
  wire [3:0]s1_OBUF;
  wire [3:0]s2;
  wire [3:0]s2_OBUF;
  wire [3:0]s3;
  wire [3:0]s3_OBUF;
  wire [3:0]x0;
  wire [3:0]x0_IBUF;
  wire [3:0]x1;
  wire [3:0]x1_IBUF;
  wire [3:0]x2;
  wire [3:0]x2_IBUF;
  wire [3:0]x3;
  wire [3:0]x3_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .O(next_state));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDA)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .O(\FSM_sequential_cur_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .O(\FSM_sequential_cur_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_cur_state[1]_i_1_n_0 ),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "LOAD:000,CX01_3:001,CX12_3:010,CX23_3:011,CX01_2:100,CX12_2:101,CX01_1:110,HLT:111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_cur_state[2]_i_1_n_0 ),
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
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(done_OBUF));
  mux2 mux2_0
       (.I1(i0),
        .Q(cur_state),
        .s1(s1_OBUF),
        .x0_IBUF(x0_IBUF));
  mux2_0 mux2_3
       (.I4(i3),
        .Q(cur_state),
        .in2(s2_OBUF),
        .x3_IBUF(x3_IBUF));
  mux3 mux3_1
       (.I2(i1),
        .Q(cur_state),
        .in2(s2_OBUF),
        .s0(s0_OBUF),
        .x1_IBUF(x1_IBUF));
  mux3_1 mux3_2
       (.I3(i2),
        .Q(cur_state),
        .in2(s3_OBUF),
        .s1(s1_OBUF),
        .x2_IBUF(x2_IBUF));
  register register0
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i0),
        .Q(s0_OBUF));
  register_2 register1
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i1),
        .Q(s1_OBUF));
  register_3 register2
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i2),
        .Q(s2_OBUF));
  register_4 register3
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i3),
        .Q(s3_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \s0_OBUF[0]_inst 
       (.I(s0_OBUF[0]),
        .O(s0[0]));
  OBUF \s0_OBUF[1]_inst 
       (.I(s0_OBUF[1]),
        .O(s0[1]));
  OBUF \s0_OBUF[2]_inst 
       (.I(s0_OBUF[2]),
        .O(s0[2]));
  OBUF \s0_OBUF[3]_inst 
       (.I(s0_OBUF[3]),
        .O(s0[3]));
  OBUF \s1_OBUF[0]_inst 
       (.I(s1_OBUF[0]),
        .O(s1[0]));
  OBUF \s1_OBUF[1]_inst 
       (.I(s1_OBUF[1]),
        .O(s1[1]));
  OBUF \s1_OBUF[2]_inst 
       (.I(s1_OBUF[2]),
        .O(s1[2]));
  OBUF \s1_OBUF[3]_inst 
       (.I(s1_OBUF[3]),
        .O(s1[3]));
  OBUF \s2_OBUF[0]_inst 
       (.I(s2_OBUF[0]),
        .O(s2[0]));
  OBUF \s2_OBUF[1]_inst 
       (.I(s2_OBUF[1]),
        .O(s2[1]));
  OBUF \s2_OBUF[2]_inst 
       (.I(s2_OBUF[2]),
        .O(s2[2]));
  OBUF \s2_OBUF[3]_inst 
       (.I(s2_OBUF[3]),
        .O(s2[3]));
  OBUF \s3_OBUF[0]_inst 
       (.I(s3_OBUF[0]),
        .O(s3[0]));
  OBUF \s3_OBUF[1]_inst 
       (.I(s3_OBUF[1]),
        .O(s3[1]));
  OBUF \s3_OBUF[2]_inst 
       (.I(s3_OBUF[2]),
        .O(s3[2]));
  OBUF \s3_OBUF[3]_inst 
       (.I(s3_OBUF[3]),
        .O(s3[3]));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF[0]));
  IBUF \x0_IBUF[1]_inst 
       (.I(x0[1]),
        .O(x0_IBUF[1]));
  IBUF \x0_IBUF[2]_inst 
       (.I(x0[2]),
        .O(x0_IBUF[2]));
  IBUF \x0_IBUF[3]_inst 
       (.I(x0[3]),
        .O(x0_IBUF[3]));
  IBUF \x1_IBUF[0]_inst 
       (.I(x1[0]),
        .O(x1_IBUF[0]));
  IBUF \x1_IBUF[1]_inst 
       (.I(x1[1]),
        .O(x1_IBUF[1]));
  IBUF \x1_IBUF[2]_inst 
       (.I(x1[2]),
        .O(x1_IBUF[2]));
  IBUF \x1_IBUF[3]_inst 
       (.I(x1[3]),
        .O(x1_IBUF[3]));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF[0]));
  IBUF \x2_IBUF[1]_inst 
       (.I(x2[1]),
        .O(x2_IBUF[1]));
  IBUF \x2_IBUF[2]_inst 
       (.I(x2[2]),
        .O(x2_IBUF[2]));
  IBUF \x2_IBUF[3]_inst 
       (.I(x2[3]),
        .O(x2_IBUF[3]));
  IBUF \x3_IBUF[0]_inst 
       (.I(x3[0]),
        .O(x3_IBUF[0]));
  IBUF \x3_IBUF[1]_inst 
       (.I(x3[1]),
        .O(x3_IBUF[1]));
  IBUF \x3_IBUF[2]_inst 
       (.I(x3[2]),
        .O(x3_IBUF[2]));
  IBUF \x3_IBUF[3]_inst 
       (.I(x3[3]),
        .O(x3_IBUF[3]));
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
