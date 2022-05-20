// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 28 10:09:56 2020
// Host        : DESKTOP-CK1FK5P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/VivadoProject/COD/Lab1/ALU_sort/ALU_sort.sim/sim_1/synth/func/xsim/sort_sim_func_synth.v
// Design      : sort
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module register
   (Q,
    E,
    D,
    CLK,
    AR);
  output [3:0]Q;
  input [0:0]E;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_0
   (D,
    \r_reg[3]_0 ,
    \r_reg[3]_1 ,
    E,
    Q,
    x0_IBUF,
    \r_reg[3]_2 ,
    \r_reg[0]_0 ,
    \r_reg[3]_3 ,
    CLK,
    AR);
  output [3:0]D;
  output [3:0]\r_reg[3]_0 ;
  output \r_reg[3]_1 ;
  output [0:0]E;
  input [2:0]Q;
  input [3:0]x0_IBUF;
  input [3:0]\r_reg[3]_2 ;
  input [3:0]\r_reg[0]_0 ;
  input [3:0]\r_reg[3]_3 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire en1;
  wire \r[3]_i_3__0_n_0 ;
  wire \r[3]_i_3_n_0 ;
  wire \r[3]_i_5_n_0 ;
  wire [3:0]\r_reg[0]_0 ;
  wire [3:0]\r_reg[3]_0 ;
  wire \r_reg[3]_1 ;
  wire [3:0]\r_reg[3]_2 ;
  wire [3:0]\r_reg[3]_3 ;
  wire [3:0]x0_IBUF;

  LUT5 #(
    .INIT(32'hFEF510A0)) 
    \r[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\r_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(x0_IBUF[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFEF510A0)) 
    \r[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\r_reg[3]_0 [1]),
        .I3(Q[0]),
        .I4(x0_IBUF[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFEF510A0)) 
    \r[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\r_reg[3]_0 [2]),
        .I3(Q[0]),
        .I4(x0_IBUF[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0D08EF45)) 
    \r[3]_i_1 
       (.I0(Q[2]),
        .I1(\r_reg[3]_1 ),
        .I2(Q[1]),
        .I3(\r[3]_i_3_n_0 ),
        .I4(Q[0]),
        .O(en1));
  LUT6 #(
    .INIT(64'h2202020077171711)) 
    \r[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\r_reg[3]_2 [3]),
        .I3(\r[3]_i_3__0_n_0 ),
        .I4(\r_reg[3]_0 [3]),
        .I5(Q[1]),
        .O(E));
  LUT5 #(
    .INIT(32'hFEF510A0)) 
    \r[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\r_reg[3]_0 [3]),
        .I3(Q[0]),
        .I4(x0_IBUF[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \r[3]_i_3 
       (.I0(\r_reg[3]_2 [3]),
        .I1(\r[3]_i_3__0_n_0 ),
        .I2(\r_reg[3]_0 [3]),
        .O(\r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F5F5755150501)) 
    \r[3]_i_3__0 
       (.I0(\r_reg[3]_0 [2]),
        .I1(\r_reg[3]_0 [0]),
        .I2(\r_reg[3]_0 [1]),
        .I3(\r_reg[3]_2 [0]),
        .I4(\r_reg[3]_2 [1]),
        .I5(\r_reg[3]_2 [2]),
        .O(\r[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \r[3]_i_4 
       (.I0(\r_reg[3]_0 [3]),
        .I1(\r[3]_i_5_n_0 ),
        .I2(\r_reg[0]_0 [3]),
        .O(\r_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hA200AAA2FBAAFFFB)) 
    \r[3]_i_5 
       (.I0(\r_reg[3]_0 [2]),
        .I1(\r_reg[0]_0 [0]),
        .I2(\r_reg[3]_0 [0]),
        .I3(\r_reg[3]_0 [1]),
        .I4(\r_reg[0]_0 [1]),
        .I5(\r_reg[0]_0 [2]),
        .O(\r[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(en1),
        .CLR(AR),
        .D(\r_reg[3]_3 [0]),
        .Q(\r_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(en1),
        .CLR(AR),
        .D(\r_reg[3]_3 [1]),
        .Q(\r_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(en1),
        .CLR(AR),
        .D(\r_reg[3]_3 [2]),
        .Q(\r_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(en1),
        .CLR(AR),
        .D(\r_reg[3]_3 [3]),
        .Q(\r_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_1
   (\FSM_sequential_cur_state_reg[2] ,
    \r_reg[3]_0 ,
    D,
    Q,
    \r_reg[3]_1 ,
    x1_IBUF,
    x3_IBUF,
    E,
    \r_reg[3]_2 ,
    CLK,
    AR);
  output [3:0]\FSM_sequential_cur_state_reg[2] ;
  output [3:0]\r_reg[3]_0 ;
  output [3:0]D;
  input [2:0]Q;
  input [3:0]\r_reg[3]_1 ;
  input [3:0]x1_IBUF;
  input [3:0]x3_IBUF;
  input [0:0]E;
  input [3:0]\r_reg[3]_2 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_sequential_cur_state_reg[2] ;
  wire [2:0]Q;
  wire [3:0]\r_reg[3]_0 ;
  wire [3:0]\r_reg[3]_1 ;
  wire [3:0]\r_reg[3]_2 ;
  wire [3:0]x1_IBUF;
  wire [3:0]x3_IBUF;

  LUT6 #(
    .INIT(64'hFDF8EF450D08EA40)) 
    \r[0]_i_1__0 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [0]),
        .I2(Q[1]),
        .I3(\r_reg[3]_1 [0]),
        .I4(Q[0]),
        .I5(x1_IBUF[0]),
        .O(\FSM_sequential_cur_state_reg[2] [0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \r[0]_i_1__2 
       (.I0(\r_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(x3_IBUF[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFDF8EF450D08EA40)) 
    \r[1]_i_1__0 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [1]),
        .I2(Q[1]),
        .I3(\r_reg[3]_1 [1]),
        .I4(Q[0]),
        .I5(x1_IBUF[1]),
        .O(\FSM_sequential_cur_state_reg[2] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \r[1]_i_1__2 
       (.I0(\r_reg[3]_0 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(x3_IBUF[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFDF8EF450D08EA40)) 
    \r[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [2]),
        .I2(Q[1]),
        .I3(\r_reg[3]_1 [2]),
        .I4(Q[0]),
        .I5(x1_IBUF[2]),
        .O(\FSM_sequential_cur_state_reg[2] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \r[2]_i_1__2 
       (.I0(\r_reg[3]_0 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(x3_IBUF[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFDF8EF450D08EA40)) 
    \r[3]_i_2__0 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [3]),
        .I2(Q[1]),
        .I3(\r_reg[3]_1 [3]),
        .I4(Q[0]),
        .I5(x1_IBUF[3]),
        .O(\FSM_sequential_cur_state_reg[2] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \r[3]_i_2__2 
       (.I0(\r_reg[3]_0 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(x3_IBUF[3]),
        .O(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\r_reg[3]_2 [0]),
        .Q(\r_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\r_reg[3]_2 [1]),
        .Q(\r_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\r_reg[3]_2 [2]),
        .Q(\r_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\r_reg[3]_2 [3]),
        .Q(\r_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_2
   (\FSM_sequential_cur_state_reg[2] ,
    \r_reg[3]_0 ,
    E,
    Q,
    \r_reg[3]_1 ,
    x2_IBUF,
    \r_reg[3]_2 ,
    \r_reg[0]_0 ,
    D,
    CLK,
    AR);
  output [3:0]\FSM_sequential_cur_state_reg[2] ;
  output [3:0]\r_reg[3]_0 ;
  output [0:0]E;
  input [2:0]Q;
  input [3:0]\r_reg[3]_1 ;
  input [3:0]x2_IBUF;
  input \r_reg[3]_2 ;
  input [3:0]\r_reg[0]_0 ;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_sequential_cur_state_reg[2] ;
  wire [2:0]Q;
  wire en3;
  wire \r[3]_i_3__1_n_0 ;
  wire \r[3]_i_3__2_n_0 ;
  wire [3:0]\r_reg[0]_0 ;
  wire [3:0]\r_reg[3]_0 ;
  wire [3:0]\r_reg[3]_1 ;
  wire \r_reg[3]_2 ;
  wire [3:0]x2_IBUF;

  LUT6 #(
    .INIT(64'hEFEAFF5F4540A000)) 
    \r[0]_i_1__1 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [0]),
        .I2(Q[0]),
        .I3(\r_reg[3]_1 [0]),
        .I4(Q[1]),
        .I5(x2_IBUF[0]),
        .O(\FSM_sequential_cur_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'hEFEAFF5F4540A000)) 
    \r[1]_i_1__1 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [1]),
        .I2(Q[0]),
        .I3(\r_reg[3]_1 [1]),
        .I4(Q[1]),
        .I5(x2_IBUF[1]),
        .O(\FSM_sequential_cur_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hEFEAFF5F4540A000)) 
    \r[2]_i_1__1 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [2]),
        .I2(Q[0]),
        .I3(\r_reg[3]_1 [2]),
        .I4(Q[1]),
        .I5(x2_IBUF[2]),
        .O(\FSM_sequential_cur_state_reg[2] [2]));
  LUT5 #(
    .INIT(32'h44A05055)) 
    \r[3]_i_1__1 
       (.I0(Q[2]),
        .I1(\r[3]_i_3__1_n_0 ),
        .I2(\r_reg[3]_2 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000099191911)) 
    \r[3]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r_reg[0]_0 [3]),
        .I3(\r[3]_i_3__2_n_0 ),
        .I4(\r_reg[3]_0 [3]),
        .I5(Q[2]),
        .O(en3));
  LUT6 #(
    .INIT(64'hEFEAFF5F4540A000)) 
    \r[3]_i_2__1 
       (.I0(Q[2]),
        .I1(\r_reg[3]_0 [3]),
        .I2(Q[0]),
        .I3(\r_reg[3]_1 [3]),
        .I4(Q[1]),
        .I5(x2_IBUF[3]),
        .O(\FSM_sequential_cur_state_reg[2] [3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \r[3]_i_3__1 
       (.I0(\r_reg[0]_0 [3]),
        .I1(\r[3]_i_3__2_n_0 ),
        .I2(\r_reg[3]_0 [3]),
        .O(\r[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hD5DDFDFF40445455)) 
    \r[3]_i_3__2 
       (.I0(\r_reg[3]_0 [2]),
        .I1(\r_reg[0]_0 [1]),
        .I2(\r_reg[0]_0 [0]),
        .I3(\r_reg[3]_0 [0]),
        .I4(\r_reg[3]_0 [1]),
        .I5(\r_reg[0]_0 [2]),
        .O(\r[3]_i_3__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(en3),
        .CLR(AR),
        .D(D[0]),
        .Q(\r_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(en3),
        .CLR(AR),
        .D(D[1]),
        .Q(\r_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(en3),
        .CLR(AR),
        .D(D[2]),
        .Q(\r_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(en3),
        .CLR(AR),
        .D(D[3]),
        .Q(\r_reg[3]_0 [3]));
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
  wire en0;
  wire en2;
  wire [3:0]i0;
  wire [3:0]i1;
  wire [3:0]i2;
  wire [3:0]i3;
  wire [2:0]next_state;
  wire register1_n_8;
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

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    done_OBUF_inst_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(done_OBUF));
  register register0
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i0),
        .E(en0),
        .Q(s0_OBUF));
  register_0 register1
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i0),
        .E(en0),
        .Q(cur_state),
        .\r_reg[0]_0 (s2_OBUF),
        .\r_reg[3]_0 (s1_OBUF),
        .\r_reg[3]_1 (register1_n_8),
        .\r_reg[3]_2 (s0_OBUF),
        .\r_reg[3]_3 (i1),
        .x0_IBUF(x0_IBUF));
  register_1 register2
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i3),
        .E(en2),
        .\FSM_sequential_cur_state_reg[2] (i1),
        .Q(cur_state),
        .\r_reg[3]_0 (s2_OBUF),
        .\r_reg[3]_1 (s0_OBUF),
        .\r_reg[3]_2 (i2),
        .x1_IBUF(x1_IBUF),
        .x3_IBUF(x3_IBUF));
  register_2 register3
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(i3),
        .E(en2),
        .\FSM_sequential_cur_state_reg[2] (i2),
        .Q(cur_state),
        .\r_reg[0]_0 (s2_OBUF),
        .\r_reg[3]_0 (s3_OBUF),
        .\r_reg[3]_1 (s1_OBUF),
        .\r_reg[3]_2 (register1_n_8),
        .x2_IBUF(x2_IBUF));
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
