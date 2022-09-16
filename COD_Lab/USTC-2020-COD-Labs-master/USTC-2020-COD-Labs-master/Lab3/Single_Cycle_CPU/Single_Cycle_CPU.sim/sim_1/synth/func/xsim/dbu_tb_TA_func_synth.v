// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 28 00:36:37 2020
// Host        : DESKTOP-CK1FK5P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/VivadoProject/COD/Lab3/Single_Cycle_CPU/Single_Cycle_CPU.sim/sim_1/synth/func/xsim/dbu_tb_TA_func_synth.v
// Design      : dbu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (\pc_reg[9] ,
    dbu_status,
    led_OBUF,
    a,
    D,
    \pc_reg[2] ,
    \pc_reg[8] ,
    dbu_rf_rd1,
    S,
    \registers_reg[30][7] ,
    \registers_reg[30][11] ,
    \registers_reg[30][15] ,
    \registers_reg[30][19] ,
    \registers_reg[30][23] ,
    \registers_reg[30][27] ,
    \registers_reg[30][31] ,
    \registers_reg[30][3] ,
    \registers_reg[30][7]_0 ,
    \registers_reg[30][11]_0 ,
    \registers_reg[30][15]_0 ,
    \registers_reg[30][19]_0 ,
    \registers_reg[30][23]_0 ,
    \registers_reg[30][27]_0 ,
    \registers_reg[30][31]_0 ,
    pc_plus4,
    spo,
    \led[0] ,
    addr_reg,
    \registers_reg[30][0] ,
    \registers_reg[30][31]_1 );
  output [0:0]\pc_reg[9] ;
  output [0:0]dbu_status;
  output [0:0]led_OBUF;
  output [5:0]a;
  output [31:0]D;
  output [2:0]\pc_reg[2] ;
  output [3:0]\pc_reg[8] ;
  input [30:0]dbu_rf_rd1;
  input [3:0]S;
  input [3:0]\registers_reg[30][7] ;
  input [3:0]\registers_reg[30][11] ;
  input [3:0]\registers_reg[30][15] ;
  input [3:0]\registers_reg[30][19] ;
  input [3:0]\registers_reg[30][23] ;
  input [3:0]\registers_reg[30][27] ;
  input [3:0]\registers_reg[30][31] ;
  input [3:0]\registers_reg[30][3] ;
  input [3:0]\registers_reg[30][7]_0 ;
  input [3:0]\registers_reg[30][11]_0 ;
  input [3:0]\registers_reg[30][15]_0 ;
  input [3:0]\registers_reg[30][19]_0 ;
  input [3:0]\registers_reg[30][23]_0 ;
  input [3:0]\registers_reg[30][27]_0 ;
  input [3:0]\registers_reg[30][31]_0 ;
  input [7:0]pc_plus4;
  input [13:0]spo;
  input \led[0] ;
  input [0:0]addr_reg;
  input [1:0]\registers_reg[30][0] ;
  input [31:0]\registers_reg[30][31]_1 ;

  wire [31:0]D;
  wire [3:0]S;
  wire [5:0]a;
  wire [0:0]addr_reg;
  wire [30:0]dbu_rf_rd1;
  wire [0:0]dbu_status;
  wire \led[0] ;
  wire [0:0]led_OBUF;
  wire \led_OBUF[0]_inst_i_11_n_0 ;
  wire \led_OBUF[0]_inst_i_12_n_0 ;
  wire \led_OBUF[0]_inst_i_13_n_0 ;
  wire \led_OBUF[0]_inst_i_14_n_0 ;
  wire \led_OBUF[0]_inst_i_19_n_0 ;
  wire \led_OBUF[0]_inst_i_20_n_0 ;
  wire \led_OBUF[0]_inst_i_25_n_0 ;
  wire \led_OBUF[0]_inst_i_26_n_0 ;
  wire \led_OBUF[0]_inst_i_2_n_0 ;
  wire \led_OBUF[0]_inst_i_3_n_0 ;
  wire \led_OBUF[0]_inst_i_4_n_0 ;
  wire \led_OBUF[0]_inst_i_5_n_0 ;
  wire [7:0]pc_plus4;
  wire [2:0]\pc_reg[2] ;
  wire [3:0]\pc_reg[8] ;
  wire [0:0]\pc_reg[9] ;
  wire [1:0]\registers_reg[30][0] ;
  wire [3:0]\registers_reg[30][11] ;
  wire [3:0]\registers_reg[30][11]_0 ;
  wire [3:0]\registers_reg[30][15] ;
  wire [3:0]\registers_reg[30][15]_0 ;
  wire [3:0]\registers_reg[30][19] ;
  wire [3:0]\registers_reg[30][19]_0 ;
  wire [3:0]\registers_reg[30][23] ;
  wire [3:0]\registers_reg[30][23]_0 ;
  wire [3:0]\registers_reg[30][27] ;
  wire [3:0]\registers_reg[30][27]_0 ;
  wire [3:0]\registers_reg[30][31] ;
  wire [3:0]\registers_reg[30][31]_0 ;
  wire [31:0]\registers_reg[30][31]_1 ;
  wire [3:0]\registers_reg[30][3] ;
  wire [3:0]\registers_reg[30][7] ;
  wire [3:0]\registers_reg[30][7]_0 ;
  wire [13:0]spo;
  wire y0_carry__0_n_0;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry__0_n_4;
  wire y0_carry__0_n_5;
  wire y0_carry__0_n_6;
  wire y0_carry__0_n_7;
  wire y0_carry__1_n_0;
  wire y0_carry__1_n_1;
  wire y0_carry__1_n_2;
  wire y0_carry__1_n_3;
  wire y0_carry__1_n_4;
  wire y0_carry__1_n_5;
  wire y0_carry__1_n_6;
  wire y0_carry__1_n_7;
  wire y0_carry__2_n_0;
  wire y0_carry__2_n_1;
  wire y0_carry__2_n_2;
  wire y0_carry__2_n_3;
  wire y0_carry__2_n_4;
  wire y0_carry__2_n_5;
  wire y0_carry__2_n_6;
  wire y0_carry__2_n_7;
  wire y0_carry__3_n_0;
  wire y0_carry__3_n_1;
  wire y0_carry__3_n_2;
  wire y0_carry__3_n_3;
  wire y0_carry__3_n_4;
  wire y0_carry__3_n_5;
  wire y0_carry__3_n_6;
  wire y0_carry__3_n_7;
  wire y0_carry__4_n_0;
  wire y0_carry__4_n_1;
  wire y0_carry__4_n_2;
  wire y0_carry__4_n_3;
  wire y0_carry__4_n_4;
  wire y0_carry__4_n_5;
  wire y0_carry__4_n_6;
  wire y0_carry__4_n_7;
  wire y0_carry__5_n_0;
  wire y0_carry__5_n_1;
  wire y0_carry__5_n_2;
  wire y0_carry__5_n_3;
  wire y0_carry__5_n_4;
  wire y0_carry__5_n_5;
  wire y0_carry__5_n_6;
  wire y0_carry__5_n_7;
  wire y0_carry__6_n_1;
  wire y0_carry__6_n_2;
  wire y0_carry__6_n_3;
  wire y0_carry__6_n_4;
  wire y0_carry__6_n_5;
  wire y0_carry__6_n_6;
  wire y0_carry__6_n_7;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire y0_carry_n_4;
  wire y0_carry_n_5;
  wire y0_carry_n_6;
  wire y0_carry_n_7;
  wire \y0_inferred__0/i__carry__0_n_0 ;
  wire \y0_inferred__0/i__carry__0_n_1 ;
  wire \y0_inferred__0/i__carry__0_n_2 ;
  wire \y0_inferred__0/i__carry__0_n_3 ;
  wire \y0_inferred__0/i__carry__0_n_4 ;
  wire \y0_inferred__0/i__carry__0_n_5 ;
  wire \y0_inferred__0/i__carry__0_n_6 ;
  wire \y0_inferred__0/i__carry__0_n_7 ;
  wire \y0_inferred__0/i__carry__1_n_0 ;
  wire \y0_inferred__0/i__carry__1_n_1 ;
  wire \y0_inferred__0/i__carry__1_n_2 ;
  wire \y0_inferred__0/i__carry__1_n_3 ;
  wire \y0_inferred__0/i__carry__1_n_4 ;
  wire \y0_inferred__0/i__carry__1_n_5 ;
  wire \y0_inferred__0/i__carry__1_n_6 ;
  wire \y0_inferred__0/i__carry__1_n_7 ;
  wire \y0_inferred__0/i__carry__2_n_0 ;
  wire \y0_inferred__0/i__carry__2_n_1 ;
  wire \y0_inferred__0/i__carry__2_n_2 ;
  wire \y0_inferred__0/i__carry__2_n_3 ;
  wire \y0_inferred__0/i__carry__2_n_4 ;
  wire \y0_inferred__0/i__carry__2_n_5 ;
  wire \y0_inferred__0/i__carry__2_n_6 ;
  wire \y0_inferred__0/i__carry__2_n_7 ;
  wire \y0_inferred__0/i__carry__3_n_0 ;
  wire \y0_inferred__0/i__carry__3_n_1 ;
  wire \y0_inferred__0/i__carry__3_n_2 ;
  wire \y0_inferred__0/i__carry__3_n_3 ;
  wire \y0_inferred__0/i__carry__3_n_4 ;
  wire \y0_inferred__0/i__carry__3_n_5 ;
  wire \y0_inferred__0/i__carry__3_n_6 ;
  wire \y0_inferred__0/i__carry__3_n_7 ;
  wire \y0_inferred__0/i__carry__4_n_0 ;
  wire \y0_inferred__0/i__carry__4_n_1 ;
  wire \y0_inferred__0/i__carry__4_n_2 ;
  wire \y0_inferred__0/i__carry__4_n_3 ;
  wire \y0_inferred__0/i__carry__4_n_4 ;
  wire \y0_inferred__0/i__carry__4_n_5 ;
  wire \y0_inferred__0/i__carry__4_n_6 ;
  wire \y0_inferred__0/i__carry__4_n_7 ;
  wire \y0_inferred__0/i__carry__5_n_0 ;
  wire \y0_inferred__0/i__carry__5_n_1 ;
  wire \y0_inferred__0/i__carry__5_n_2 ;
  wire \y0_inferred__0/i__carry__5_n_3 ;
  wire \y0_inferred__0/i__carry__5_n_4 ;
  wire \y0_inferred__0/i__carry__5_n_5 ;
  wire \y0_inferred__0/i__carry__5_n_6 ;
  wire \y0_inferred__0/i__carry__5_n_7 ;
  wire \y0_inferred__0/i__carry__6_n_1 ;
  wire \y0_inferred__0/i__carry__6_n_2 ;
  wire \y0_inferred__0/i__carry__6_n_3 ;
  wire \y0_inferred__0/i__carry__6_n_4 ;
  wire \y0_inferred__0/i__carry__6_n_5 ;
  wire \y0_inferred__0/i__carry__6_n_6 ;
  wire \y0_inferred__0/i__carry__6_n_7 ;
  wire \y0_inferred__0/i__carry_n_0 ;
  wire \y0_inferred__0/i__carry_n_1 ;
  wire \y0_inferred__0/i__carry_n_2 ;
  wire \y0_inferred__0/i__carry_n_3 ;
  wire \y0_inferred__0/i__carry_n_4 ;
  wire \y0_inferred__0/i__carry_n_5 ;
  wire \y0_inferred__0/i__carry_n_6 ;
  wire \y0_inferred__0/i__carry_n_7 ;
  wire [27:8]y__31;
  wire [3:3]NLW_y0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_y0_inferred__0/i__carry__6_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(\led_OBUF[0]_inst_i_2_n_0 ),
        .I1(\led_OBUF[0]_inst_i_3_n_0 ),
        .I2(\led_OBUF[0]_inst_i_4_n_0 ),
        .I3(\led_OBUF[0]_inst_i_5_n_0 ),
        .I4(\led[0] ),
        .I5(addr_reg),
        .O(led_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_10 
       (.I0(\y0_inferred__0/i__carry__1_n_6 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__1_n_6),
        .O(y__31[9]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_11 
       (.I0(y0_carry__2_n_5),
        .I1(\y0_inferred__0/i__carry__2_n_5 ),
        .I2(y0_carry__2_n_4),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__2_n_4 ),
        .O(\led_OBUF[0]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_12 
       (.I0(y0_carry__2_n_7),
        .I1(\y0_inferred__0/i__carry__2_n_7 ),
        .I2(y0_carry__2_n_6),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__2_n_6 ),
        .O(\led_OBUF[0]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_13 
       (.I0(y0_carry_n_7),
        .I1(\y0_inferred__0/i__carry_n_7 ),
        .I2(y0_carry_n_6),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry_n_6 ),
        .O(\led_OBUF[0]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_14 
       (.I0(y0_carry__0_n_5),
        .I1(\y0_inferred__0/i__carry__0_n_5 ),
        .I2(y0_carry__0_n_4),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__0_n_4 ),
        .O(\led_OBUF[0]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_15 
       (.I0(\y0_inferred__0/i__carry__5_n_5 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__5_n_5),
        .O(y__31[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_16 
       (.I0(\y0_inferred__0/i__carry__5_n_4 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__5_n_4),
        .O(y__31[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_17 
       (.I0(\y0_inferred__0/i__carry__5_n_7 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__5_n_7),
        .O(y__31[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_18 
       (.I0(\y0_inferred__0/i__carry__5_n_6 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__5_n_6),
        .O(y__31[25]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_19 
       (.I0(y0_carry__6_n_5),
        .I1(\y0_inferred__0/i__carry__6_n_5 ),
        .I2(y0_carry__6_n_4),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__6_n_4 ),
        .O(\led_OBUF[0]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(y__31[10]),
        .I1(y__31[11]),
        .I2(y__31[8]),
        .I3(y__31[9]),
        .I4(\led_OBUF[0]_inst_i_11_n_0 ),
        .I5(\led_OBUF[0]_inst_i_12_n_0 ),
        .O(\led_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_20 
       (.I0(y0_carry__6_n_7),
        .I1(\y0_inferred__0/i__carry__6_n_7 ),
        .I2(y0_carry__6_n_6),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__6_n_6 ),
        .O(\led_OBUF[0]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_21 
       (.I0(\y0_inferred__0/i__carry__3_n_5 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__3_n_5),
        .O(y__31[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_22 
       (.I0(\y0_inferred__0/i__carry__3_n_4 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__3_n_4),
        .O(y__31[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_23 
       (.I0(\y0_inferred__0/i__carry__3_n_7 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__3_n_7),
        .O(y__31[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_24 
       (.I0(\y0_inferred__0/i__carry__3_n_6 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__3_n_6),
        .O(y__31[17]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_25 
       (.I0(y0_carry__4_n_5),
        .I1(\y0_inferred__0/i__carry__4_n_5 ),
        .I2(y0_carry__4_n_4),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__4_n_4 ),
        .O(\led_OBUF[0]_inst_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \led_OBUF[0]_inst_i_26 
       (.I0(y0_carry__4_n_7),
        .I1(\y0_inferred__0/i__carry__4_n_7 ),
        .I2(y0_carry__4_n_6),
        .I3(\registers_reg[30][0] [0]),
        .I4(\y0_inferred__0/i__carry__4_n_6 ),
        .O(\led_OBUF[0]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_OBUF[0]_inst_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\led_OBUF[0]_inst_i_13_n_0 ),
        .I3(\led_OBUF[0]_inst_i_14_n_0 ),
        .I4(a[2]),
        .I5(a[3]),
        .O(\led_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_OBUF[0]_inst_i_4 
       (.I0(y__31[26]),
        .I1(y__31[27]),
        .I2(y__31[24]),
        .I3(y__31[25]),
        .I4(\led_OBUF[0]_inst_i_19_n_0 ),
        .I5(\led_OBUF[0]_inst_i_20_n_0 ),
        .O(\led_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_OBUF[0]_inst_i_5 
       (.I0(y__31[18]),
        .I1(y__31[19]),
        .I2(y__31[16]),
        .I3(y__31[17]),
        .I4(\led_OBUF[0]_inst_i_25_n_0 ),
        .I5(\led_OBUF[0]_inst_i_26_n_0 ),
        .O(\led_OBUF[0]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_7 
       (.I0(\y0_inferred__0/i__carry__1_n_5 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__1_n_5),
        .O(y__31[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_8 
       (.I0(\y0_inferred__0/i__carry__1_n_4 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__1_n_4),
        .O(y__31[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_9 
       (.I0(\y0_inferred__0/i__carry__1_n_7 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__1_n_7),
        .O(y__31[8]));
  LUT6 #(
    .INIT(64'h1100000000000010)) 
    \led_OBUF[1]_inst_i_2 
       (.I0(spo[10]),
        .I1(spo[12]),
        .I2(spo[11]),
        .I3(spo[9]),
        .I4(spo[13]),
        .I5(spo[8]),
        .O(dbu_status));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_1
       (.I0(\y0_inferred__0/i__carry__0_n_4 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__0_n_4),
        .O(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_2
       (.I0(\y0_inferred__0/i__carry__0_n_5 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__0_n_5),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_3
       (.I0(\y0_inferred__0/i__carry__0_n_6 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__0_n_6),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_4
       (.I0(\y0_inferred__0/i__carry__0_n_7 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry__0_n_7),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_5
       (.I0(\y0_inferred__0/i__carry_n_4 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry_n_4),
        .O(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    memory_i_6
       (.I0(\y0_inferred__0/i__carry_n_5 ),
        .I1(\registers_reg[30][0] [0]),
        .I2(y0_carry_n_5),
        .O(a[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry__0_i_1
       (.I0(pc_plus4[6]),
        .I1(spo[6]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[8] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry__0_i_2
       (.I0(pc_plus4[5]),
        .I1(spo[5]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[8] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry__0_i_3
       (.I0(pc_plus4[4]),
        .I1(spo[4]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[8] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry__0_i_4
       (.I0(pc_plus4[3]),
        .I1(spo[3]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[8] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry__1_i_1
       (.I0(pc_plus4[7]),
        .I1(spo[7]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry_i_1
       (.I0(pc_plus4[2]),
        .I1(spo[2]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[2] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry_i_2
       (.I0(pc_plus4[1]),
        .I1(spo[1]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[2] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    pc_in1_carry_i_3
       (.I0(pc_plus4[0]),
        .I1(spo[0]),
        .I2(\led_OBUF[0]_inst_i_2_n_0 ),
        .I3(\led_OBUF[0]_inst_i_3_n_0 ),
        .I4(\led_OBUF[0]_inst_i_4_n_0 ),
        .I5(\led_OBUF[0]_inst_i_5_n_0 ),
        .O(\pc_reg[2] [0]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][0]_i_1 
       (.I0(\registers_reg[30][31]_1 [0]),
        .I1(\y0_inferred__0/i__carry_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][10]_i_1 
       (.I0(\registers_reg[30][31]_1 [10]),
        .I1(\y0_inferred__0/i__carry__1_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__1_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][11]_i_1 
       (.I0(\registers_reg[30][31]_1 [11]),
        .I1(\y0_inferred__0/i__carry__1_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__1_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][12]_i_1 
       (.I0(\registers_reg[30][31]_1 [12]),
        .I1(\y0_inferred__0/i__carry__2_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__2_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][13]_i_1 
       (.I0(\registers_reg[30][31]_1 [13]),
        .I1(\y0_inferred__0/i__carry__2_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__2_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][14]_i_1 
       (.I0(\registers_reg[30][31]_1 [14]),
        .I1(\y0_inferred__0/i__carry__2_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__2_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][15]_i_1 
       (.I0(\registers_reg[30][31]_1 [15]),
        .I1(\y0_inferred__0/i__carry__2_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__2_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][16]_i_1 
       (.I0(\registers_reg[30][31]_1 [16]),
        .I1(\y0_inferred__0/i__carry__3_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__3_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][17]_i_1 
       (.I0(\registers_reg[30][31]_1 [17]),
        .I1(\y0_inferred__0/i__carry__3_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__3_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][18]_i_1 
       (.I0(\registers_reg[30][31]_1 [18]),
        .I1(\y0_inferred__0/i__carry__3_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__3_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][19]_i_1 
       (.I0(\registers_reg[30][31]_1 [19]),
        .I1(\y0_inferred__0/i__carry__3_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__3_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][1]_i_1 
       (.I0(\registers_reg[30][31]_1 [1]),
        .I1(\y0_inferred__0/i__carry_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][20]_i_1 
       (.I0(\registers_reg[30][31]_1 [20]),
        .I1(\y0_inferred__0/i__carry__4_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__4_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][21]_i_1 
       (.I0(\registers_reg[30][31]_1 [21]),
        .I1(\y0_inferred__0/i__carry__4_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__4_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][22]_i_1 
       (.I0(\registers_reg[30][31]_1 [22]),
        .I1(\y0_inferred__0/i__carry__4_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__4_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][23]_i_1 
       (.I0(\registers_reg[30][31]_1 [23]),
        .I1(\y0_inferred__0/i__carry__4_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__4_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][24]_i_1 
       (.I0(\registers_reg[30][31]_1 [24]),
        .I1(\y0_inferred__0/i__carry__5_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__5_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][25]_i_1 
       (.I0(\registers_reg[30][31]_1 [25]),
        .I1(\y0_inferred__0/i__carry__5_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__5_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][26]_i_1 
       (.I0(\registers_reg[30][31]_1 [26]),
        .I1(\y0_inferred__0/i__carry__5_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__5_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][27]_i_1 
       (.I0(\registers_reg[30][31]_1 [27]),
        .I1(\y0_inferred__0/i__carry__5_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__5_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][28]_i_1 
       (.I0(\registers_reg[30][31]_1 [28]),
        .I1(\y0_inferred__0/i__carry__6_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__6_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][29]_i_1 
       (.I0(\registers_reg[30][31]_1 [29]),
        .I1(\y0_inferred__0/i__carry__6_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__6_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][2]_i_1 
       (.I0(\registers_reg[30][31]_1 [2]),
        .I1(\y0_inferred__0/i__carry_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][30]_i_1 
       (.I0(\registers_reg[30][31]_1 [30]),
        .I1(\y0_inferred__0/i__carry__6_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__6_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][31]_i_2 
       (.I0(\registers_reg[30][31]_1 [31]),
        .I1(\y0_inferred__0/i__carry__6_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__6_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][3]_i_1 
       (.I0(\registers_reg[30][31]_1 [3]),
        .I1(\y0_inferred__0/i__carry_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][4]_i_1 
       (.I0(\registers_reg[30][31]_1 [4]),
        .I1(\y0_inferred__0/i__carry__0_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__0_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][5]_i_1 
       (.I0(\registers_reg[30][31]_1 [5]),
        .I1(\y0_inferred__0/i__carry__0_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__0_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][6]_i_1 
       (.I0(\registers_reg[30][31]_1 [6]),
        .I1(\y0_inferred__0/i__carry__0_n_5 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__0_n_5),
        .I4(\registers_reg[30][0] [1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][7]_i_1 
       (.I0(\registers_reg[30][31]_1 [7]),
        .I1(\y0_inferred__0/i__carry__0_n_4 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__0_n_4),
        .I4(\registers_reg[30][0] [1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][8]_i_1 
       (.I0(\registers_reg[30][31]_1 [8]),
        .I1(\y0_inferred__0/i__carry__1_n_7 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__1_n_7),
        .I4(\registers_reg[30][0] [1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \registers[30][9]_i_1 
       (.I0(\registers_reg[30][31]_1 [9]),
        .I1(\y0_inferred__0/i__carry__1_n_6 ),
        .I2(\registers_reg[30][0] [0]),
        .I3(y0_carry__1_n_6),
        .I4(\registers_reg[30][0] [1]),
        .O(D[9]));
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[3:0]),
        .O({y0_carry_n_4,y0_carry_n_5,y0_carry_n_6,y0_carry_n_7}),
        .S(S));
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({y0_carry__0_n_0,y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[7:4]),
        .O({y0_carry__0_n_4,y0_carry__0_n_5,y0_carry__0_n_6,y0_carry__0_n_7}),
        .S(\registers_reg[30][7] ));
  CARRY4 y0_carry__1
       (.CI(y0_carry__0_n_0),
        .CO({y0_carry__1_n_0,y0_carry__1_n_1,y0_carry__1_n_2,y0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[11:8]),
        .O({y0_carry__1_n_4,y0_carry__1_n_5,y0_carry__1_n_6,y0_carry__1_n_7}),
        .S(\registers_reg[30][11] ));
  CARRY4 y0_carry__2
       (.CI(y0_carry__1_n_0),
        .CO({y0_carry__2_n_0,y0_carry__2_n_1,y0_carry__2_n_2,y0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[15:12]),
        .O({y0_carry__2_n_4,y0_carry__2_n_5,y0_carry__2_n_6,y0_carry__2_n_7}),
        .S(\registers_reg[30][15] ));
  CARRY4 y0_carry__3
       (.CI(y0_carry__2_n_0),
        .CO({y0_carry__3_n_0,y0_carry__3_n_1,y0_carry__3_n_2,y0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[19:16]),
        .O({y0_carry__3_n_4,y0_carry__3_n_5,y0_carry__3_n_6,y0_carry__3_n_7}),
        .S(\registers_reg[30][19] ));
  CARRY4 y0_carry__4
       (.CI(y0_carry__3_n_0),
        .CO({y0_carry__4_n_0,y0_carry__4_n_1,y0_carry__4_n_2,y0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[23:20]),
        .O({y0_carry__4_n_4,y0_carry__4_n_5,y0_carry__4_n_6,y0_carry__4_n_7}),
        .S(\registers_reg[30][23] ));
  CARRY4 y0_carry__5
       (.CI(y0_carry__4_n_0),
        .CO({y0_carry__5_n_0,y0_carry__5_n_1,y0_carry__5_n_2,y0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[27:24]),
        .O({y0_carry__5_n_4,y0_carry__5_n_5,y0_carry__5_n_6,y0_carry__5_n_7}),
        .S(\registers_reg[30][27] ));
  CARRY4 y0_carry__6
       (.CI(y0_carry__5_n_0),
        .CO({NLW_y0_carry__6_CO_UNCONNECTED[3],y0_carry__6_n_1,y0_carry__6_n_2,y0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,dbu_rf_rd1[30:28]}),
        .O({y0_carry__6_n_4,y0_carry__6_n_5,y0_carry__6_n_6,y0_carry__6_n_7}),
        .S(\registers_reg[30][31] ));
  CARRY4 \y0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\y0_inferred__0/i__carry_n_0 ,\y0_inferred__0/i__carry_n_1 ,\y0_inferred__0/i__carry_n_2 ,\y0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(dbu_rf_rd1[3:0]),
        .O({\y0_inferred__0/i__carry_n_4 ,\y0_inferred__0/i__carry_n_5 ,\y0_inferred__0/i__carry_n_6 ,\y0_inferred__0/i__carry_n_7 }),
        .S(\registers_reg[30][3] ));
  CARRY4 \y0_inferred__0/i__carry__0 
       (.CI(\y0_inferred__0/i__carry_n_0 ),
        .CO({\y0_inferred__0/i__carry__0_n_0 ,\y0_inferred__0/i__carry__0_n_1 ,\y0_inferred__0/i__carry__0_n_2 ,\y0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[7:4]),
        .O({\y0_inferred__0/i__carry__0_n_4 ,\y0_inferred__0/i__carry__0_n_5 ,\y0_inferred__0/i__carry__0_n_6 ,\y0_inferred__0/i__carry__0_n_7 }),
        .S(\registers_reg[30][7]_0 ));
  CARRY4 \y0_inferred__0/i__carry__1 
       (.CI(\y0_inferred__0/i__carry__0_n_0 ),
        .CO({\y0_inferred__0/i__carry__1_n_0 ,\y0_inferred__0/i__carry__1_n_1 ,\y0_inferred__0/i__carry__1_n_2 ,\y0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[11:8]),
        .O({\y0_inferred__0/i__carry__1_n_4 ,\y0_inferred__0/i__carry__1_n_5 ,\y0_inferred__0/i__carry__1_n_6 ,\y0_inferred__0/i__carry__1_n_7 }),
        .S(\registers_reg[30][11]_0 ));
  CARRY4 \y0_inferred__0/i__carry__2 
       (.CI(\y0_inferred__0/i__carry__1_n_0 ),
        .CO({\y0_inferred__0/i__carry__2_n_0 ,\y0_inferred__0/i__carry__2_n_1 ,\y0_inferred__0/i__carry__2_n_2 ,\y0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[15:12]),
        .O({\y0_inferred__0/i__carry__2_n_4 ,\y0_inferred__0/i__carry__2_n_5 ,\y0_inferred__0/i__carry__2_n_6 ,\y0_inferred__0/i__carry__2_n_7 }),
        .S(\registers_reg[30][15]_0 ));
  CARRY4 \y0_inferred__0/i__carry__3 
       (.CI(\y0_inferred__0/i__carry__2_n_0 ),
        .CO({\y0_inferred__0/i__carry__3_n_0 ,\y0_inferred__0/i__carry__3_n_1 ,\y0_inferred__0/i__carry__3_n_2 ,\y0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[19:16]),
        .O({\y0_inferred__0/i__carry__3_n_4 ,\y0_inferred__0/i__carry__3_n_5 ,\y0_inferred__0/i__carry__3_n_6 ,\y0_inferred__0/i__carry__3_n_7 }),
        .S(\registers_reg[30][19]_0 ));
  CARRY4 \y0_inferred__0/i__carry__4 
       (.CI(\y0_inferred__0/i__carry__3_n_0 ),
        .CO({\y0_inferred__0/i__carry__4_n_0 ,\y0_inferred__0/i__carry__4_n_1 ,\y0_inferred__0/i__carry__4_n_2 ,\y0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[23:20]),
        .O({\y0_inferred__0/i__carry__4_n_4 ,\y0_inferred__0/i__carry__4_n_5 ,\y0_inferred__0/i__carry__4_n_6 ,\y0_inferred__0/i__carry__4_n_7 }),
        .S(\registers_reg[30][23]_0 ));
  CARRY4 \y0_inferred__0/i__carry__5 
       (.CI(\y0_inferred__0/i__carry__4_n_0 ),
        .CO({\y0_inferred__0/i__carry__5_n_0 ,\y0_inferred__0/i__carry__5_n_1 ,\y0_inferred__0/i__carry__5_n_2 ,\y0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(dbu_rf_rd1[27:24]),
        .O({\y0_inferred__0/i__carry__5_n_4 ,\y0_inferred__0/i__carry__5_n_5 ,\y0_inferred__0/i__carry__5_n_6 ,\y0_inferred__0/i__carry__5_n_7 }),
        .S(\registers_reg[30][27]_0 ));
  CARRY4 \y0_inferred__0/i__carry__6 
       (.CI(\y0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_y0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\y0_inferred__0/i__carry__6_n_1 ,\y0_inferred__0/i__carry__6_n_2 ,\y0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dbu_rf_rd1[30:28]}),
        .O({\y0_inferred__0/i__carry__6_n_4 ,\y0_inferred__0/i__carry__6_n_5 ,\y0_inferred__0/i__carry__6_n_6 ,\y0_inferred__0/i__carry__6_n_7 }),
        .S(\registers_reg[30][31]_0 ));
endmodule

module cpu_one_circle
   (led_OBUF,
    \bbstub_spo[26] ,
    addr_reg,
    clk_IBUF_BUFG,
    we00_out,
    \pc_reg[9]_0 ,
    rst_IBUF,
    sel_IBUF,
    \led[0] ,
    addr_reg__0,
    in1,
    in2,
    succ_IBUF);
  output [9:0]led_OBUF;
  output [0:0]\bbstub_spo[26] ;
  input [7:0]addr_reg;
  input clk_IBUF_BUFG;
  input we00_out;
  input \pc_reg[9]_0 ;
  input rst_IBUF;
  input [2:0]sel_IBUF;
  input \led[0] ;
  input [3:0]addr_reg__0;
  input in1;
  input in2;
  input succ_IBUF;

  wire ALU_n_0;
  wire ALU_n_41;
  wire ALU_n_42;
  wire ALU_n_43;
  wire ALU_n_44;
  wire ALU_n_45;
  wire ALU_n_46;
  wire ALU_n_47;
  wire [7:0]addr_reg;
  wire [3:0]addr_reg__0;
  wire [0:0]\bbstub_spo[26] ;
  wire clk_IBUF_BUFG;
  wire [9:1]data1;
  wire [7:2]dbu_alu_y;
  wire [31:0]dbu_instr;
  wire [31:0]dbu_mem_data;
  wire [31:0]dbu_mem_rd;
  wire [9:2]dbu_pc;
  wire [30:0]dbu_rf_rd1;
  wire [31:0]dbu_rf_rd2;
  wire [9:1]dbu_status;
  wire [11:10]dbu_status__0;
  wire in1;
  wire in2;
  wire \led[0] ;
  wire [9:0]led_OBUF;
  wire \pc[1]_i_2_n_0 ;
  wire \pc[9]_i_1_n_0 ;
  wire \pc[9]_i_3_n_0 ;
  wire [9:2]pc_in;
  wire [9:1]pc_in0;
  wire pc_in1_carry__0_n_0;
  wire pc_in1_carry__0_n_1;
  wire pc_in1_carry__0_n_2;
  wire pc_in1_carry__0_n_3;
  wire pc_in1_carry_n_0;
  wire pc_in1_carry_n_1;
  wire pc_in1_carry_n_2;
  wire pc_in1_carry_n_3;
  wire [9:1]pc_plus4;
  wire pc_plus4_carry__0_n_0;
  wire pc_plus4_carry__0_n_1;
  wire pc_plus4_carry__0_n_2;
  wire pc_plus4_carry__0_n_3;
  wire pc_plus4_carry_i_1_n_0;
  wire pc_plus4_carry_n_0;
  wire pc_plus4_carry_n_1;
  wire pc_plus4_carry_n_2;
  wire pc_plus4_carry_n_3;
  wire \pc_reg[9]_0 ;
  wire \pc_reg_n_0_[1] ;
  wire register_file_n_100;
  wire register_file_n_101;
  wire register_file_n_102;
  wire register_file_n_103;
  wire register_file_n_104;
  wire register_file_n_105;
  wire register_file_n_106;
  wire register_file_n_107;
  wire register_file_n_108;
  wire register_file_n_109;
  wire register_file_n_110;
  wire register_file_n_111;
  wire register_file_n_112;
  wire register_file_n_113;
  wire register_file_n_114;
  wire register_file_n_115;
  wire register_file_n_116;
  wire register_file_n_117;
  wire register_file_n_118;
  wire register_file_n_119;
  wire register_file_n_120;
  wire register_file_n_121;
  wire register_file_n_122;
  wire register_file_n_123;
  wire register_file_n_124;
  wire register_file_n_125;
  wire register_file_n_126;
  wire register_file_n_127;
  wire register_file_n_128;
  wire register_file_n_129;
  wire register_file_n_130;
  wire register_file_n_131;
  wire register_file_n_4;
  wire register_file_n_68;
  wire register_file_n_69;
  wire register_file_n_70;
  wire register_file_n_71;
  wire register_file_n_72;
  wire register_file_n_73;
  wire register_file_n_74;
  wire register_file_n_75;
  wire register_file_n_76;
  wire register_file_n_77;
  wire register_file_n_78;
  wire register_file_n_79;
  wire register_file_n_80;
  wire register_file_n_81;
  wire register_file_n_82;
  wire register_file_n_83;
  wire register_file_n_84;
  wire register_file_n_85;
  wire register_file_n_86;
  wire register_file_n_87;
  wire register_file_n_88;
  wire register_file_n_89;
  wire register_file_n_90;
  wire register_file_n_91;
  wire register_file_n_92;
  wire register_file_n_93;
  wire register_file_n_94;
  wire register_file_n_95;
  wire register_file_n_96;
  wire register_file_n_97;
  wire register_file_n_98;
  wire register_file_n_99;
  wire [31:0]rf_wd;
  wire rst_IBUF;
  wire [2:0]sel_IBUF;
  wire succ_IBUF;
  wire we0;
  wire we00_out;
  wire [3:0]NLW_pc_in1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_pc_in1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pc_plus4_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_pc_plus4_carry__1_O_UNCONNECTED;

  ALU ALU
       (.D(rf_wd),
        .S({register_file_n_72,register_file_n_73,register_file_n_74,register_file_n_75}),
        .a(dbu_alu_y),
        .addr_reg(addr_reg[0]),
        .dbu_rf_rd1(dbu_rf_rd1),
        .dbu_status(dbu_status[1]),
        .\led[0] (\led[0] ),
        .led_OBUF(led_OBUF[0]),
        .pc_plus4(pc_plus4[9:2]),
        .\pc_reg[2] ({ALU_n_41,ALU_n_42,ALU_n_43}),
        .\pc_reg[8] ({ALU_n_44,ALU_n_45,ALU_n_46,ALU_n_47}),
        .\pc_reg[9] (ALU_n_0),
        .\registers_reg[30][0] ({dbu_status[6],dbu_status[2]}),
        .\registers_reg[30][11] ({register_file_n_80,register_file_n_81,register_file_n_82,register_file_n_83}),
        .\registers_reg[30][11]_0 ({register_file_n_112,register_file_n_113,register_file_n_114,register_file_n_115}),
        .\registers_reg[30][15] ({register_file_n_84,register_file_n_85,register_file_n_86,register_file_n_87}),
        .\registers_reg[30][15]_0 ({register_file_n_116,register_file_n_117,register_file_n_118,register_file_n_119}),
        .\registers_reg[30][19] ({register_file_n_88,register_file_n_89,register_file_n_90,register_file_n_91}),
        .\registers_reg[30][19]_0 ({register_file_n_120,register_file_n_121,register_file_n_122,register_file_n_123}),
        .\registers_reg[30][23] ({register_file_n_92,register_file_n_93,register_file_n_94,register_file_n_95}),
        .\registers_reg[30][23]_0 ({register_file_n_124,register_file_n_125,register_file_n_126,register_file_n_127}),
        .\registers_reg[30][27] ({register_file_n_96,register_file_n_97,register_file_n_98,register_file_n_99}),
        .\registers_reg[30][27]_0 ({register_file_n_128,register_file_n_129,register_file_n_130,register_file_n_131}),
        .\registers_reg[30][31] ({register_file_n_68,register_file_n_69,register_file_n_70,register_file_n_71}),
        .\registers_reg[30][31]_0 ({register_file_n_100,register_file_n_101,register_file_n_102,register_file_n_103}),
        .\registers_reg[30][31]_1 (dbu_mem_rd),
        .\registers_reg[30][3] ({register_file_n_104,register_file_n_105,register_file_n_106,register_file_n_107}),
        .\registers_reg[30][7] ({register_file_n_76,register_file_n_77,register_file_n_78,register_file_n_79}),
        .\registers_reg[30][7]_0 ({register_file_n_108,register_file_n_109,register_file_n_110,register_file_n_111}),
        .spo({dbu_instr[31:26],dbu_instr[7:0]}));
  (* IMPORTED_FROM = "d:/VivadoProject/COD/Lab3/Single_Cycle_CPU/Single_Cycle_CPU.srcs/sources_1/ip/dist_instruction_memory_256x32/dist_instruction_memory_256x32.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
  dist_instruction_memory_256x32 instr_memory
       (.a(dbu_pc),
        .spo(dbu_instr));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(dbu_status__0[10]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg__0[2]),
        .O(led_OBUF[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \led_OBUF[10]_inst_i_2 
       (.I0(dbu_instr[28]),
        .I1(dbu_instr[30]),
        .I2(dbu_instr[27]),
        .I3(dbu_instr[31]),
        .I4(dbu_instr[29]),
        .I5(dbu_instr[26]),
        .O(dbu_status__0[10]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(dbu_status__0[11]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg__0[3]),
        .O(led_OBUF[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \led_OBUF[11]_inst_i_2 
       (.I0(dbu_instr[27]),
        .I1(dbu_instr[30]),
        .I2(dbu_instr[26]),
        .I3(dbu_instr[31]),
        .I4(dbu_instr[29]),
        .I5(dbu_instr[28]),
        .O(dbu_status__0[11]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(dbu_status[1]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg[1]),
        .O(led_OBUF[1]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(dbu_status[2]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg[2]),
        .O(led_OBUF[2]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(dbu_status[5]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg[5]),
        .O(led_OBUF[3]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \led_OBUF[5]_inst_i_2 
       (.I0(dbu_instr[28]),
        .I1(dbu_instr[30]),
        .I2(dbu_instr[27]),
        .I3(dbu_instr[26]),
        .I4(dbu_instr[31]),
        .I5(dbu_instr[29]),
        .O(dbu_status[5]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(dbu_status[6]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg[6]),
        .O(led_OBUF[4]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(dbu_status[6]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg[7]),
        .O(led_OBUF[5]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(\bbstub_spo[26] ),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg__0[0]),
        .O(led_OBUF[6]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(dbu_status[9]),
        .I1(sel_IBUF[1]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[2]),
        .I4(addr_reg__0[1]),
        .O(led_OBUF[7]));
  (* IMPORTED_FROM = "d:/VivadoProject/COD/Lab3/Single_Cycle_CPU/Single_Cycle_CPU.srcs/sources_1/ip/dist_memory_256x32/dist_memory_256x32.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
  dist_memory_256x32 memory
       (.a({1'b0,1'b0,dbu_alu_y}),
        .clk(clk_IBUF_BUFG),
        .d(dbu_rf_rd2),
        .dpo(dbu_mem_data),
        .dpra(addr_reg),
        .spo(dbu_mem_rd),
        .we(we0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    memory_i_39
       (.I0(dbu_instr[29]),
        .I1(dbu_instr[31]),
        .I2(dbu_instr[26]),
        .I3(dbu_instr[27]),
        .I4(register_file_n_4),
        .I5(\pc_reg[9]_0 ),
        .O(we0));
  LUT5 #(
    .INIT(32'hAAFBAA08)) 
    \pc[1]_i_1 
       (.I0(\pc[1]_i_2_n_0 ),
        .I1(in1),
        .I2(in2),
        .I3(succ_IBUF),
        .I4(\pc_reg_n_0_[1] ),
        .O(data1[1]));
  LUT6 #(
    .INIT(64'hCCC8CDCCCCC8C8CC)) 
    \pc[1]_i_2 
       (.I0(\pc[9]_i_3_n_0 ),
        .I1(pc_plus4[1]),
        .I2(dbu_instr[26]),
        .I3(dbu_instr[28]),
        .I4(dbu_instr[27]),
        .I5(pc_in0[1]),
        .O(\pc[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[2]_i_1 
       (.I0(pc_plus4[2]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[2]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[2]),
        .O(data1[2]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[2]_i_2 
       (.I0(pc_plus4[2]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[0]),
        .I5(pc_in0[2]),
        .O(pc_in[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[3]_i_1 
       (.I0(pc_plus4[3]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[3]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[3]),
        .O(data1[3]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[3]_i_2 
       (.I0(pc_plus4[3]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[1]),
        .I5(pc_in0[3]),
        .O(pc_in[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[4]_i_1 
       (.I0(pc_plus4[4]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[4]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[4]),
        .O(data1[4]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[4]_i_2 
       (.I0(pc_plus4[4]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[2]),
        .I5(pc_in0[4]),
        .O(pc_in[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[5]_i_1 
       (.I0(pc_plus4[5]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[5]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[5]),
        .O(data1[5]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[5]_i_2 
       (.I0(pc_plus4[5]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[3]),
        .I5(pc_in0[5]),
        .O(pc_in[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[6]_i_1 
       (.I0(pc_plus4[6]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[6]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[6]),
        .O(data1[6]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[6]_i_2 
       (.I0(pc_plus4[6]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[4]),
        .I5(pc_in0[6]),
        .O(pc_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[7]_i_1 
       (.I0(pc_plus4[7]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[7]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[7]),
        .O(data1[7]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[7]_i_2 
       (.I0(pc_plus4[7]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[5]),
        .I5(pc_in0[7]),
        .O(pc_in[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[8]_i_1 
       (.I0(pc_plus4[8]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[8]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[8]),
        .O(data1[8]));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[8]_i_2 
       (.I0(pc_plus4[8]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[6]),
        .I5(pc_in0[8]),
        .O(pc_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[9]_i_1 
       (.I0(rst_IBUF),
        .O(\pc[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc[9]_i_2 
       (.I0(pc_plus4[9]),
        .I1(\pc[9]_i_3_n_0 ),
        .I2(pc_in[9]),
        .I3(\pc_reg[9]_0 ),
        .I4(dbu_pc[9]),
        .O(data1[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \pc[9]_i_3 
       (.I0(dbu_instr[31]),
        .I1(dbu_instr[29]),
        .I2(dbu_instr[30]),
        .O(\pc[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBAA8BAAB8AA88A)) 
    \pc[9]_i_4 
       (.I0(pc_plus4[9]),
        .I1(dbu_instr[26]),
        .I2(dbu_instr[28]),
        .I3(dbu_instr[27]),
        .I4(dbu_instr[7]),
        .I5(pc_in0[9]),
        .O(pc_in[9]));
  CARRY4 pc_in1_carry
       (.CI(1'b0),
        .CO({pc_in1_carry_n_0,pc_in1_carry_n_1,pc_in1_carry_n_2,pc_in1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pc_plus4[4:2],1'b0}),
        .O(pc_in0[4:1]),
        .S({ALU_n_41,ALU_n_42,ALU_n_43,pc_plus4[1]}));
  CARRY4 pc_in1_carry__0
       (.CI(pc_in1_carry_n_0),
        .CO({pc_in1_carry__0_n_0,pc_in1_carry__0_n_1,pc_in1_carry__0_n_2,pc_in1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[8:5]),
        .O(pc_in0[8:5]),
        .S({ALU_n_44,ALU_n_45,ALU_n_46,ALU_n_47}));
  CARRY4 pc_in1_carry__1
       (.CI(pc_in1_carry__0_n_0),
        .CO(NLW_pc_in1_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_in1_carry__1_O_UNCONNECTED[3:1],pc_in0[9]}),
        .S({1'b0,1'b0,1'b0,ALU_n_0}));
  CARRY4 pc_plus4_carry
       (.CI(1'b0),
        .CO({pc_plus4_carry_n_0,pc_plus4_carry_n_1,pc_plus4_carry_n_2,pc_plus4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,dbu_pc[2],1'b0}),
        .O(pc_plus4[4:1]),
        .S({dbu_pc[4:3],pc_plus4_carry_i_1_n_0,\pc_reg_n_0_[1] }));
  CARRY4 pc_plus4_carry__0
       (.CI(pc_plus4_carry_n_0),
        .CO({pc_plus4_carry__0_n_0,pc_plus4_carry__0_n_1,pc_plus4_carry__0_n_2,pc_plus4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[8:5]),
        .S(dbu_pc[8:5]));
  CARRY4 pc_plus4_carry__1
       (.CI(pc_plus4_carry__0_n_0),
        .CO(NLW_pc_plus4_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_plus4_carry__1_O_UNCONNECTED[3:1],pc_plus4[9]}),
        .S({1'b0,1'b0,1'b0,dbu_pc[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    pc_plus4_carry_i_1
       (.I0(dbu_pc[2]),
        .O(pc_plus4_carry_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[1]),
        .Q(\pc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[2]),
        .Q(dbu_pc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[3]),
        .Q(dbu_pc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[4]),
        .Q(dbu_pc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[5]),
        .Q(dbu_pc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[6]),
        .Q(dbu_pc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[7]),
        .Q(dbu_pc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[8]),
        .Q(dbu_pc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pc[9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(data1[9]),
        .Q(dbu_pc[9]));
  register_file register_file
       (.D(rf_wd),
        .S({register_file_n_72,register_file_n_73,register_file_n_74,register_file_n_75}),
        .\bbstub_spo[11] ({register_file_n_80,register_file_n_81,register_file_n_82,register_file_n_83}),
        .\bbstub_spo[11]_0 ({register_file_n_112,register_file_n_113,register_file_n_114,register_file_n_115}),
        .\bbstub_spo[15] ({register_file_n_68,register_file_n_69,register_file_n_70,register_file_n_71}),
        .\bbstub_spo[15]_0 ({register_file_n_84,register_file_n_85,register_file_n_86,register_file_n_87}),
        .\bbstub_spo[15]_1 ({register_file_n_88,register_file_n_89,register_file_n_90,register_file_n_91}),
        .\bbstub_spo[15]_2 ({register_file_n_92,register_file_n_93,register_file_n_94,register_file_n_95}),
        .\bbstub_spo[15]_3 ({register_file_n_96,register_file_n_97,register_file_n_98,register_file_n_99}),
        .\bbstub_spo[15]_4 ({register_file_n_100,register_file_n_101,register_file_n_102,register_file_n_103}),
        .\bbstub_spo[15]_5 ({register_file_n_116,register_file_n_117,register_file_n_118,register_file_n_119}),
        .\bbstub_spo[15]_6 ({register_file_n_120,register_file_n_121,register_file_n_122,register_file_n_123}),
        .\bbstub_spo[15]_7 ({register_file_n_124,register_file_n_125,register_file_n_126,register_file_n_127}),
        .\bbstub_spo[15]_8 ({register_file_n_128,register_file_n_129,register_file_n_130,register_file_n_131}),
        .\bbstub_spo[26] (\bbstub_spo[26] ),
        .\bbstub_spo[30] (register_file_n_4),
        .\bbstub_spo[3] ({register_file_n_104,register_file_n_105,register_file_n_106,register_file_n_107}),
        .\bbstub_spo[7] ({register_file_n_76,register_file_n_77,register_file_n_78,register_file_n_79}),
        .\bbstub_spo[7]_0 ({register_file_n_108,register_file_n_109,register_file_n_110,register_file_n_111}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d(dbu_rf_rd2),
        .dbu_rf_rd1(dbu_rf_rd1),
        .dbu_status({dbu_status[9],dbu_status[6],dbu_status[2]}),
        .rst_IBUF(rst_IBUF),
        .spo(dbu_instr),
        .we00_out(we00_out),
        .\y0_inferred__0/i__carry__6 (dbu_status[1]));
endmodule

(* NotValidForBitStream *)
module dbu
   (clk,
    rst,
    sel,
    mem_rf,
    step,
    succ,
    inc,
    dec,
    an,
    seg,
    led);
  input clk;
  input rst;
  input [2:0]sel;
  input mem_rf;
  input step;
  input succ;
  input inc;
  input dec;
  output [7:0]an;
  output [7:0]seg;
  output [11:0]led;

  wire [7:0]addr_reg;
  wire [11:8]addr_reg__0;
  wire [7:0]an;
  wire [0:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [8:8]dbu_status;
  wire dec;
  wire dec_IBUF;
  wire dec_edge_taker_n_0;
  wire in1;
  wire in1_1;
  wire in2;
  wire in2_0;
  wire inc;
  wire inc_IBUF;
  wire inc_edge_taker_n_10;
  wire inc_edge_taker_n_11;
  wire inc_edge_taker_n_12;
  wire inc_edge_taker_n_13;
  wire inc_edge_taker_n_2;
  wire inc_edge_taker_n_3;
  wire inc_edge_taker_n_4;
  wire inc_edge_taker_n_5;
  wire inc_edge_taker_n_6;
  wire inc_edge_taker_n_7;
  wire inc_edge_taker_n_8;
  wire inc_edge_taker_n_9;
  wire [11:0]led;
  wire [11:0]led_OBUF;
  wire \led_OBUF[0]_inst_i_6_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire [7:0]seg;
  wire [2:0]sel;
  wire [2:0]sel_IBUF;
  wire step;
  wire step_IBUF;
  wire step_edge_taker_n_3;
  wire succ;
  wire succ_IBUF;
  wire we00_out;

  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_5),
        .Q(addr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_11),
        .Q(addr_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_10),
        .Q(addr_reg__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_4),
        .Q(addr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_3),
        .Q(addr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_2),
        .Q(addr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_9),
        .Q(addr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_8),
        .Q(addr_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_7),
        .Q(addr_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_6),
        .Q(addr_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_13),
        .Q(addr_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(dec_edge_taker_n_0),
        .CLR(rst_IBUF),
        .D(inc_edge_taker_n_12),
        .Q(addr_reg__0[9]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(an_OBUF),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF),
        .O(an[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  cpu_one_circle cpu_one_circle
       (.addr_reg(addr_reg),
        .addr_reg__0(addr_reg__0),
        .\bbstub_spo[26] (dbu_status),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(in1_1),
        .in2(in2_0),
        .\led[0] (\led_OBUF[0]_inst_i_6_n_0 ),
        .led_OBUF({led_OBUF[11:5],led_OBUF[2:0]}),
        .\pc_reg[9]_0 (step_edge_taker_n_3),
        .rst_IBUF(rst_IBUF),
        .sel_IBUF(sel_IBUF),
        .succ_IBUF(succ_IBUF),
        .we00_out(we00_out));
  IBUF dec_IBUF_inst
       (.I(dec),
        .O(dec_IBUF));
  edge_taker dec_edge_taker
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dec_IBUF(dec_IBUF),
        .in1(in1),
        .\in1_reg[0]_0 (dec_edge_taker_n_0),
        .in2(in2),
        .rst_IBUF(rst_IBUF));
  IBUF inc_IBUF_inst
       (.I(inc),
        .O(inc_IBUF));
  edge_taker_0 inc_edge_taker
       (.O({inc_edge_taker_n_2,inc_edge_taker_n_3,inc_edge_taker_n_4,inc_edge_taker_n_5}),
        .addr_reg(addr_reg),
        .\addr_reg[10] ({inc_edge_taker_n_10,inc_edge_taker_n_11,inc_edge_taker_n_12,inc_edge_taker_n_13}),
        .\addr_reg[7] ({inc_edge_taker_n_6,inc_edge_taker_n_7,inc_edge_taker_n_8,inc_edge_taker_n_9}),
        .addr_reg__0(addr_reg__0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(in1),
        .in2(in2),
        .inc_IBUF(inc_IBUF),
        .rst_IBUF(rst_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \led_OBUF[0]_inst_i_6 
       (.I0(sel_IBUF[1]),
        .I1(sel_IBUF[0]),
        .I2(sel_IBUF[2]),
        .O(\led_OBUF[0]_inst_i_6_n_0 ));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(addr_reg[3]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[1]),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(addr_reg[4]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[0]),
        .I3(sel_IBUF[1]),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  nixietube nixietube
       (.an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(1'b0),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(1'b0),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(1'b0),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(1'b0),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(1'b0),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg[6]));
  OBUF \seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg[7]));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
  IBUF \sel_IBUF[2]_inst 
       (.I(sel[2]),
        .O(sel_IBUF[2]));
  IBUF step_IBUF_inst
       (.I(step),
        .O(step_IBUF));
  edge_taker_1 step_edge_taker
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(in1_1),
        .\in1_reg[0]_0 (step_edge_taker_n_3),
        .in2(in2_0),
        .\registers_reg[31][0] (dbu_status),
        .rst_IBUF(rst_IBUF),
        .step_IBUF(step_IBUF),
        .succ_IBUF(succ_IBUF),
        .we00_out(we00_out));
  IBUF succ_IBUF_inst
       (.I(succ),
        .O(succ_IBUF));
endmodule

(* CHECK_LICENSE_TYPE = "dist_instruction_memory_256x32,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
module dist_instruction_memory_256x32
   (a,
    spo);
  input [7:0]a;
  output [31:0]spo;

  wire [7:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_dpo = "0" *) 
  (* c_has_dpra = "0" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qdpo = "0" *) 
  (* c_has_qdpo_ce = "0" *) 
  (* c_has_qdpo_clk = "0" *) 
  (* c_has_qdpo_rst = "0" *) 
  (* c_has_qdpo_srst = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_instruction_memory_256x32.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_reg_dpra_input = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_instruction_memory_256x32_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "dist_memory_256x32,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
module dist_memory_256x32
   (a,
    d,
    dpra,
    clk,
    we,
    spo,
    dpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  output [31:0]spo;
  output [31:0]dpo;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_dpo = "1" *) 
  (* c_has_dpra = "1" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qdpo = "0" *) 
  (* c_has_qdpo_ce = "0" *) 
  (* c_has_qdpo_clk = "0" *) 
  (* c_has_qdpo_rst = "0" *) 
  (* c_has_qdpo_srst = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_memory_256x32.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_reg_dpra_input = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_memory_256x32_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule

module edge_taker
   (\in1_reg[0]_0 ,
    dec_IBUF,
    clk_IBUF_BUFG,
    rst_IBUF,
    in1,
    in2);
  output \in1_reg[0]_0 ;
  input dec_IBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input in1;
  input in2;

  wire clk_IBUF_BUFG;
  wire dec_IBUF;
  wire in1;
  wire in1_0;
  wire \in1_reg[0]_0 ;
  wire in2;
  wire in2_1;
  wire rst_IBUF;

  LUT5 #(
    .INIT(32'h02020F02)) 
    \addr[0]_i_1 
       (.I0(in1_0),
        .I1(in2_1),
        .I2(rst_IBUF),
        .I3(in1),
        .I4(in2),
        .O(\in1_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dec_IBUF),
        .Q(in1_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(in1_0),
        .Q(in2_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_taker" *) 
module edge_taker_0
   (in1,
    in2,
    O,
    \addr_reg[7] ,
    \addr_reg[10] ,
    inc_IBUF,
    clk_IBUF_BUFG,
    rst_IBUF,
    addr_reg,
    addr_reg__0);
  output in1;
  output in2;
  output [3:0]O;
  output [3:0]\addr_reg[7] ;
  output [3:0]\addr_reg[10] ;
  input inc_IBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input [7:0]addr_reg;
  input [3:0]addr_reg__0;

  wire [3:0]O;
  wire \addr[0]_i_3_n_0 ;
  wire \addr[0]_i_4_n_0 ;
  wire \addr[0]_i_5_n_0 ;
  wire \addr[0]_i_6_n_0 ;
  wire \addr[0]_i_7_n_0 ;
  wire \addr[4]_i_2_n_0 ;
  wire \addr[4]_i_3_n_0 ;
  wire \addr[4]_i_4_n_0 ;
  wire \addr[4]_i_5_n_0 ;
  wire \addr[8]_i_2_n_0 ;
  wire \addr[8]_i_3_n_0 ;
  wire \addr[8]_i_4_n_0 ;
  wire \addr[8]_i_5_n_0 ;
  wire [7:0]addr_reg;
  wire \addr_reg[0]_i_2_n_0 ;
  wire \addr_reg[0]_i_2_n_1 ;
  wire \addr_reg[0]_i_2_n_2 ;
  wire \addr_reg[0]_i_2_n_3 ;
  wire [3:0]\addr_reg[10] ;
  wire \addr_reg[4]_i_1_n_0 ;
  wire \addr_reg[4]_i_1_n_1 ;
  wire \addr_reg[4]_i_1_n_2 ;
  wire \addr_reg[4]_i_1_n_3 ;
  wire [3:0]\addr_reg[7] ;
  wire \addr_reg[8]_i_1_n_1 ;
  wire \addr_reg[8]_i_1_n_2 ;
  wire \addr_reg[8]_i_1_n_3 ;
  wire [3:0]addr_reg__0;
  wire clk_IBUF_BUFG;
  wire in1;
  wire in2;
  wire inc_IBUF;
  wire rst_IBUF;
  wire [3:3]\NLW_addr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hFB)) 
    \addr[0]_i_3 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .O(\addr[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[0]_i_4 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[3]),
        .O(\addr[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[0]_i_5 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[2]),
        .O(\addr[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[0]_i_6 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[1]),
        .O(\addr[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFB04)) 
    \addr[0]_i_7 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[0]),
        .O(\addr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[4]_i_2 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[7]),
        .O(\addr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[4]_i_3 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[6]),
        .O(\addr[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[4]_i_4 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[5]),
        .O(\addr[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[4]_i_5 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg[4]),
        .O(\addr[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[8]_i_2 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg__0[3]),
        .O(\addr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[8]_i_3 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg__0[2]),
        .O(\addr[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[8]_i_4 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg__0[1]),
        .O(\addr[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h04FB)) 
    \addr[8]_i_5 
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(addr_reg__0[0]),
        .O(\addr[8]_i_5_n_0 ));
  CARRY4 \addr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\addr_reg[0]_i_2_n_0 ,\addr_reg[0]_i_2_n_1 ,\addr_reg[0]_i_2_n_2 ,\addr_reg[0]_i_2_n_3 }),
        .CYINIT(\addr[0]_i_3_n_0 ),
        .DI(addr_reg[3:0]),
        .O(O),
        .S({\addr[0]_i_4_n_0 ,\addr[0]_i_5_n_0 ,\addr[0]_i_6_n_0 ,\addr[0]_i_7_n_0 }));
  CARRY4 \addr_reg[4]_i_1 
       (.CI(\addr_reg[0]_i_2_n_0 ),
        .CO({\addr_reg[4]_i_1_n_0 ,\addr_reg[4]_i_1_n_1 ,\addr_reg[4]_i_1_n_2 ,\addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(addr_reg[7:4]),
        .O(\addr_reg[7] ),
        .S({\addr[4]_i_2_n_0 ,\addr[4]_i_3_n_0 ,\addr[4]_i_4_n_0 ,\addr[4]_i_5_n_0 }));
  CARRY4 \addr_reg[8]_i_1 
       (.CI(\addr_reg[4]_i_1_n_0 ),
        .CO({\NLW_addr_reg[8]_i_1_CO_UNCONNECTED [3],\addr_reg[8]_i_1_n_1 ,\addr_reg[8]_i_1_n_2 ,\addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,addr_reg__0[2:0]}),
        .O(\addr_reg[10] ),
        .S({\addr[8]_i_2_n_0 ,\addr[8]_i_3_n_0 ,\addr[8]_i_4_n_0 ,\addr[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \in1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inc_IBUF),
        .Q(in1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(in1),
        .Q(in2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_taker" *) 
module edge_taker_1
   (in1,
    in2,
    we00_out,
    \in1_reg[0]_0 ,
    step_IBUF,
    clk_IBUF_BUFG,
    \registers_reg[31][0] ,
    succ_IBUF,
    rst_IBUF);
  output in1;
  output in2;
  output we00_out;
  output \in1_reg[0]_0 ;
  input step_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]\registers_reg[31][0] ;
  input succ_IBUF;
  input rst_IBUF;

  wire clk_IBUF_BUFG;
  wire in1;
  wire \in1_reg[0]_0 ;
  wire in2;
  wire [0:0]\registers_reg[31][0] ;
  wire rst_IBUF;
  wire step_IBUF;
  wire succ_IBUF;
  wire we00_out;

  FDRE #(
    .INIT(1'b0)) 
    \in1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(step_IBUF),
        .Q(in1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(in1),
        .Q(in2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    memory_i_169
       (.I0(rst_IBUF),
        .I1(in1),
        .I2(in2),
        .I3(succ_IBUF),
        .O(\in1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h88888A88)) 
    \registers[30][31]_i_3 
       (.I0(\registers_reg[31][0] ),
        .I1(succ_IBUF),
        .I2(in2),
        .I3(in1),
        .I4(rst_IBUF),
        .O(we00_out));
endmodule

module nixietube
   (an_OBUF,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [0:0]an_OBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire \FSM_onehot_an[1]_i_10_n_0 ;
  wire \FSM_onehot_an[1]_i_11_n_0 ;
  wire \FSM_onehot_an[1]_i_12_n_0 ;
  wire \FSM_onehot_an[1]_i_14_n_0 ;
  wire \FSM_onehot_an[1]_i_16_n_0 ;
  wire \FSM_onehot_an[1]_i_17_n_0 ;
  wire \FSM_onehot_an[1]_i_19_n_0 ;
  wire \FSM_onehot_an[1]_i_1_n_0 ;
  wire \FSM_onehot_an[1]_i_21_n_0 ;
  wire \FSM_onehot_an[1]_i_22_n_0 ;
  wire \FSM_onehot_an[1]_i_2_n_0 ;
  wire \FSM_onehot_an[1]_i_3_n_0 ;
  wire \FSM_onehot_an[1]_i_4_n_0 ;
  wire \FSM_onehot_an[1]_i_5_n_0 ;
  wire \FSM_onehot_an[1]_i_6_n_0 ;
  wire \FSM_onehot_an[1]_i_7_n_0 ;
  wire \FSM_onehot_an[1]_i_8_n_0 ;
  wire [0:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]cnt_1000HZ;
  wire [31:1]cnt_1000HZ0;
  wire \cnt_1000HZ[0]_C_i_1_n_0 ;
  wire \cnt_1000HZ_reg[0]_C_n_0 ;
  wire \cnt_1000HZ_reg[0]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[0]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[0]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[0]_P_n_0 ;
  wire \cnt_1000HZ_reg[10]_C_n_0 ;
  wire \cnt_1000HZ_reg[10]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[10]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[10]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[10]_P_n_0 ;
  wire \cnt_1000HZ_reg[11]_C_n_0 ;
  wire \cnt_1000HZ_reg[11]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[11]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[11]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[11]_P_n_0 ;
  wire \cnt_1000HZ_reg[12]_C_n_0 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[12]_LDC_i_7_n_0 ;
  wire \cnt_1000HZ_reg[12]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[12]_P_n_0 ;
  wire \cnt_1000HZ_reg[13]_C_n_0 ;
  wire \cnt_1000HZ_reg[13]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[13]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[13]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[13]_P_n_0 ;
  wire \cnt_1000HZ_reg[14]_C_n_0 ;
  wire \cnt_1000HZ_reg[14]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[14]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[14]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[14]_P_n_0 ;
  wire \cnt_1000HZ_reg[15]_C_n_0 ;
  wire \cnt_1000HZ_reg[15]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[15]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[15]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[15]_P_n_0 ;
  wire \cnt_1000HZ_reg[16]_C_n_0 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[16]_LDC_i_5_n_0 ;
  wire \cnt_1000HZ_reg[16]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[16]_P_n_0 ;
  wire \cnt_1000HZ_reg[17]_C_n_0 ;
  wire \cnt_1000HZ_reg[17]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[17]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[17]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[17]_P_n_0 ;
  wire \cnt_1000HZ_reg[18]_C_n_0 ;
  wire \cnt_1000HZ_reg[18]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[18]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[18]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[18]_P_n_0 ;
  wire \cnt_1000HZ_reg[19]_C_n_0 ;
  wire \cnt_1000HZ_reg[19]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[19]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[19]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[19]_P_n_0 ;
  wire \cnt_1000HZ_reg[1]_C_n_0 ;
  wire \cnt_1000HZ_reg[1]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[1]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[1]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[1]_P_n_0 ;
  wire \cnt_1000HZ_reg[20]_C_n_0 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[20]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[20]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[20]_P_n_0 ;
  wire \cnt_1000HZ_reg[21]_C_n_0 ;
  wire \cnt_1000HZ_reg[21]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[21]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[21]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[21]_P_n_0 ;
  wire \cnt_1000HZ_reg[22]_C_n_0 ;
  wire \cnt_1000HZ_reg[22]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[22]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[22]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[22]_P_n_0 ;
  wire \cnt_1000HZ_reg[23]_C_n_0 ;
  wire \cnt_1000HZ_reg[23]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[23]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[23]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[23]_P_n_0 ;
  wire \cnt_1000HZ_reg[24]_C_n_0 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[24]_LDC_i_7_n_0 ;
  wire \cnt_1000HZ_reg[24]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[24]_P_n_0 ;
  wire \cnt_1000HZ_reg[25]_C_n_0 ;
  wire \cnt_1000HZ_reg[25]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[25]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[25]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[25]_P_n_0 ;
  wire \cnt_1000HZ_reg[26]_C_n_0 ;
  wire \cnt_1000HZ_reg[26]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[26]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[26]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[26]_P_n_0 ;
  wire \cnt_1000HZ_reg[27]_C_n_0 ;
  wire \cnt_1000HZ_reg[27]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[27]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[27]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[27]_P_n_0 ;
  wire \cnt_1000HZ_reg[28]_C_n_0 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[28]_LDC_i_5_n_0 ;
  wire \cnt_1000HZ_reg[28]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[28]_P_n_0 ;
  wire \cnt_1000HZ_reg[29]_C_n_0 ;
  wire \cnt_1000HZ_reg[29]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[29]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[29]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[29]_P_n_0 ;
  wire \cnt_1000HZ_reg[2]_C_n_0 ;
  wire \cnt_1000HZ_reg[2]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[2]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[2]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[2]_P_n_0 ;
  wire \cnt_1000HZ_reg[30]_C_n_0 ;
  wire \cnt_1000HZ_reg[30]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[30]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[30]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[30]_P_n_0 ;
  wire \cnt_1000HZ_reg[31]_C_n_0 ;
  wire \cnt_1000HZ_reg[31]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[31]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[31]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[31]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[31]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[31]_P_n_0 ;
  wire \cnt_1000HZ_reg[3]_C_n_0 ;
  wire \cnt_1000HZ_reg[3]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[3]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[3]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[3]_P_n_0 ;
  wire \cnt_1000HZ_reg[4]_C_n_0 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[4]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[4]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[4]_P_n_0 ;
  wire \cnt_1000HZ_reg[5]_C_n_0 ;
  wire \cnt_1000HZ_reg[5]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[5]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[5]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[5]_P_n_0 ;
  wire \cnt_1000HZ_reg[6]_C_n_0 ;
  wire \cnt_1000HZ_reg[6]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[6]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[6]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[6]_P_n_0 ;
  wire \cnt_1000HZ_reg[7]_C_n_0 ;
  wire \cnt_1000HZ_reg[7]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[7]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[7]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[7]_P_n_0 ;
  wire \cnt_1000HZ_reg[8]_C_n_0 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_3_n_0 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_3_n_1 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_3_n_2 ;
  wire \cnt_1000HZ_reg[8]_LDC_i_3_n_3 ;
  wire \cnt_1000HZ_reg[8]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[8]_P_n_0 ;
  wire \cnt_1000HZ_reg[9]_C_n_0 ;
  wire \cnt_1000HZ_reg[9]_LDC_i_1_n_0 ;
  wire \cnt_1000HZ_reg[9]_LDC_i_2_n_0 ;
  wire \cnt_1000HZ_reg[9]_LDC_n_0 ;
  wire \cnt_1000HZ_reg[9]_P_n_0 ;
  wire [31:1]p_2_in;
  wire rst_IBUF;
  wire [3:2]\NLW_cnt_1000HZ_reg[31]_LDC_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_1000HZ_reg[31]_LDC_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_an[1]_i_1 
       (.I0(\FSM_onehot_an[1]_i_2_n_0 ),
        .I1(\FSM_onehot_an[1]_i_3_n_0 ),
        .I2(\FSM_onehot_an[1]_i_4_n_0 ),
        .I3(\FSM_onehot_an[1]_i_5_n_0 ),
        .I4(\FSM_onehot_an[1]_i_6_n_0 ),
        .I5(\FSM_onehot_an[1]_i_7_n_0 ),
        .O(\FSM_onehot_an[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_10 
       (.I0(\cnt_1000HZ_reg[28]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[28]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[28]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[29]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[29]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[29]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \FSM_onehot_an[1]_i_11 
       (.I0(\cnt_1000HZ_reg[8]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[8]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[8]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[7]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[7]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[7]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \FSM_onehot_an[1]_i_12 
       (.I0(\cnt_1000HZ_reg[10]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[10]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[10]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[11]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[11]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[11]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_an[1]_i_13 
       (.I0(\cnt_1000HZ_reg[9]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[9]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[9]_C_n_0 ),
        .O(cnt_1000HZ[9]));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_14 
       (.I0(\cnt_1000HZ_reg[19]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[19]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[19]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[20]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[20]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[20]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_an[1]_i_15 
       (.I0(\cnt_1000HZ_reg[21]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[21]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[21]_C_n_0 ),
        .O(cnt_1000HZ[21]));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_16 
       (.I0(\cnt_1000HZ_reg[22]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[22]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[22]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[23]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[23]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[23]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \FSM_onehot_an[1]_i_17 
       (.I0(\cnt_1000HZ_reg[13]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[13]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[13]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[14]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[14]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[14]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_an[1]_i_18 
       (.I0(\cnt_1000HZ_reg[15]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[15]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[15]_C_n_0 ),
        .O(cnt_1000HZ[15]));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_19 
       (.I0(\cnt_1000HZ_reg[16]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[16]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[16]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[17]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[17]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[17]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FFFFFFFFFF)) 
    \FSM_onehot_an[1]_i_2 
       (.I0(\cnt_1000HZ_reg[24]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[24]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[24]_C_n_0 ),
        .I3(\FSM_onehot_an[1]_i_8_n_0 ),
        .I4(cnt_1000HZ[27]),
        .I5(\FSM_onehot_an[1]_i_10_n_0 ),
        .O(\FSM_onehot_an[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_an[1]_i_20 
       (.I0(\cnt_1000HZ_reg[0]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[0]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[0]_C_n_0 ),
        .O(cnt_1000HZ[0]));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_21 
       (.I0(\cnt_1000HZ_reg[1]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[1]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[1]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[2]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[2]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[2]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \FSM_onehot_an[1]_i_22 
       (.I0(\cnt_1000HZ_reg[4]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[4]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[4]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[5]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[5]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[5]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFFFFFFFFF)) 
    \FSM_onehot_an[1]_i_3 
       (.I0(\cnt_1000HZ_reg[6]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[6]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[6]_C_n_0 ),
        .I3(\FSM_onehot_an[1]_i_11_n_0 ),
        .I4(\FSM_onehot_an[1]_i_12_n_0 ),
        .I5(cnt_1000HZ[9]),
        .O(\FSM_onehot_an[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FFFFFFFFFF)) 
    \FSM_onehot_an[1]_i_4 
       (.I0(\cnt_1000HZ_reg[18]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[18]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[18]_C_n_0 ),
        .I3(\FSM_onehot_an[1]_i_14_n_0 ),
        .I4(cnt_1000HZ[21]),
        .I5(\FSM_onehot_an[1]_i_16_n_0 ),
        .O(\FSM_onehot_an[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FFFFFFFFFF)) 
    \FSM_onehot_an[1]_i_5 
       (.I0(\cnt_1000HZ_reg[12]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[12]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[12]_C_n_0 ),
        .I3(\FSM_onehot_an[1]_i_17_n_0 ),
        .I4(cnt_1000HZ[15]),
        .I5(\FSM_onehot_an[1]_i_19_n_0 ),
        .O(\FSM_onehot_an[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \FSM_onehot_an[1]_i_6 
       (.I0(\cnt_1000HZ_reg[30]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[30]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[30]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[31]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[31]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[31]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBBBFFFFFFFF)) 
    \FSM_onehot_an[1]_i_7 
       (.I0(cnt_1000HZ[0]),
        .I1(\FSM_onehot_an[1]_i_21_n_0 ),
        .I2(\cnt_1000HZ_reg[3]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[3]_LDC_n_0 ),
        .I4(\cnt_1000HZ_reg[3]_C_n_0 ),
        .I5(\FSM_onehot_an[1]_i_22_n_0 ),
        .O(\FSM_onehot_an[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_onehot_an[1]_i_8 
       (.I0(\cnt_1000HZ_reg[25]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[25]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[25]_P_n_0 ),
        .I3(\cnt_1000HZ_reg[26]_C_n_0 ),
        .I4(\cnt_1000HZ_reg[26]_LDC_n_0 ),
        .I5(\cnt_1000HZ_reg[26]_P_n_0 ),
        .O(\FSM_onehot_an[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_an[1]_i_9 
       (.I0(\cnt_1000HZ_reg[27]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[27]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[27]_C_n_0 ),
        .O(cnt_1000HZ[27]));
  (* FSM_ENCODED_STATES = "iSTATE:11011111,iSTATE0:11111110,iSTATE1:11101111,iSTATE2:10111111,iSTATE3:11111101,iSTATE4:01111111,iSTATE5:11111011,iSTATE6:11110111,iSTATE7:10,iSTATE8:01" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_onehot_an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_an[1]_i_1_n_0 ),
        .D(1'b1),
        .PRE(rst_IBUF),
        .Q(an_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h001D)) 
    \cnt_1000HZ[0]_C_i_1 
       (.I0(\cnt_1000HZ_reg[0]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[0]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[0]_P_n_0 ),
        .I3(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(\cnt_1000HZ[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[10]_C_i_1 
       (.I0(cnt_1000HZ0[10]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[11]_C_i_1 
       (.I0(cnt_1000HZ0[11]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[12]_C_i_1 
       (.I0(cnt_1000HZ0[12]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[13]_C_i_1 
       (.I0(cnt_1000HZ0[13]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[14]_C_i_1 
       (.I0(cnt_1000HZ0[14]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[15]_C_i_1 
       (.I0(cnt_1000HZ0[15]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[16]_C_i_1 
       (.I0(cnt_1000HZ0[16]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[17]_C_i_1 
       (.I0(cnt_1000HZ0[17]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[18]_C_i_1 
       (.I0(cnt_1000HZ0[18]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[19]_C_i_1 
       (.I0(cnt_1000HZ0[19]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[1]_C_i_1 
       (.I0(cnt_1000HZ0[1]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[20]_C_i_1 
       (.I0(cnt_1000HZ0[20]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[21]_C_i_1 
       (.I0(cnt_1000HZ0[21]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[22]_C_i_1 
       (.I0(cnt_1000HZ0[22]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[23]_C_i_1 
       (.I0(cnt_1000HZ0[23]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[24]_C_i_1 
       (.I0(cnt_1000HZ0[24]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[25]_C_i_1 
       (.I0(cnt_1000HZ0[25]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[26]_C_i_1 
       (.I0(cnt_1000HZ0[26]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[27]_C_i_1 
       (.I0(cnt_1000HZ0[27]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[28]_C_i_1 
       (.I0(cnt_1000HZ0[28]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[29]_C_i_1 
       (.I0(cnt_1000HZ0[29]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[2]_C_i_1 
       (.I0(cnt_1000HZ0[2]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[30]_C_i_1 
       (.I0(cnt_1000HZ0[30]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[31]_C_i_1 
       (.I0(cnt_1000HZ0[31]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[3]_C_i_1 
       (.I0(cnt_1000HZ0[3]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[4]_C_i_1 
       (.I0(cnt_1000HZ0[4]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[5]_C_i_1 
       (.I0(cnt_1000HZ0[5]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[6]_C_i_1 
       (.I0(cnt_1000HZ0[6]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[7]_C_i_1 
       (.I0(cnt_1000HZ0[7]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[8]_C_i_1 
       (.I0(cnt_1000HZ0[8]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ[9]_C_i_1 
       (.I0(cnt_1000HZ0[9]),
        .I1(\FSM_onehot_an[1]_i_1_n_0 ),
        .O(p_2_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[0]_LDC_i_2_n_0 ),
        .D(\cnt_1000HZ[0]_C_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[0]_LDC 
       (.CLR(\cnt_1000HZ_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[0]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \cnt_1000HZ_reg[0]_LDC_i_1 
       (.I0(rst_IBUF),
        .I1(\cnt_1000HZ_reg[0]_C_n_0 ),
        .I2(\cnt_1000HZ_reg[0]_LDC_n_0 ),
        .I3(\cnt_1000HZ_reg[0]_P_n_0 ),
        .O(\cnt_1000HZ_reg[0]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \cnt_1000HZ_reg[0]_LDC_i_2 
       (.I0(\cnt_1000HZ_reg[0]_C_n_0 ),
        .I1(\cnt_1000HZ_reg[0]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[0]_P_n_0 ),
        .I3(rst_IBUF),
        .O(\cnt_1000HZ_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1000HZ[0]_C_i_1_n_0 ),
        .PRE(\cnt_1000HZ_reg[0]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[10]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[10]_LDC_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(\cnt_1000HZ_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[10]_LDC 
       (.CLR(\cnt_1000HZ_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[10]_LDC_i_1 
       (.I0(cnt_1000HZ0[10]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[10]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[10]),
        .O(\cnt_1000HZ_reg[10]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[10]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[10]),
        .PRE(\cnt_1000HZ_reg[10]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[11]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[11]_LDC_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(\cnt_1000HZ_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[11]_LDC 
       (.CLR(\cnt_1000HZ_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[11]_LDC_i_1 
       (.I0(cnt_1000HZ0[11]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[11]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[11]),
        .O(\cnt_1000HZ_reg[11]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[11]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[11]),
        .PRE(\cnt_1000HZ_reg[11]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[12]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[12]_LDC_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(\cnt_1000HZ_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[12]_LDC 
       (.CLR(\cnt_1000HZ_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[12]_LDC_i_1 
       (.I0(cnt_1000HZ0[12]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[12]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[12]),
        .O(\cnt_1000HZ_reg[12]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[12]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[8]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[12]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[12]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[12]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[12]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[12:9]),
        .S({cnt_1000HZ[12:10],\cnt_1000HZ_reg[12]_LDC_i_7_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[12]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[12]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[12]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[12]_C_n_0 ),
        .O(cnt_1000HZ[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[12]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[11]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[11]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[11]_C_n_0 ),
        .O(cnt_1000HZ[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[12]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[10]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[10]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[10]_C_n_0 ),
        .O(cnt_1000HZ[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[12]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[9]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[9]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[9]_C_n_0 ),
        .O(\cnt_1000HZ_reg[12]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[12]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[12]),
        .PRE(\cnt_1000HZ_reg[12]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[12]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[13]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[13]_LDC_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(\cnt_1000HZ_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[13]_LDC 
       (.CLR(\cnt_1000HZ_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[13]_LDC_i_1 
       (.I0(cnt_1000HZ0[13]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[13]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[13]),
        .O(\cnt_1000HZ_reg[13]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[13]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[13]),
        .PRE(\cnt_1000HZ_reg[13]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[13]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[14]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[14]_LDC_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(\cnt_1000HZ_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[14]_LDC 
       (.CLR(\cnt_1000HZ_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[14]_LDC_i_1 
       (.I0(cnt_1000HZ0[14]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[14]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[14]),
        .O(\cnt_1000HZ_reg[14]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[14]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[14]),
        .PRE(\cnt_1000HZ_reg[14]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[14]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[15]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[15]_LDC_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(\cnt_1000HZ_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[15]_LDC 
       (.CLR(\cnt_1000HZ_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[15]_LDC_i_1 
       (.I0(cnt_1000HZ0[15]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[15]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[15]),
        .O(\cnt_1000HZ_reg[15]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[15]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[15]),
        .PRE(\cnt_1000HZ_reg[15]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[15]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[16]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[16]_LDC_i_2_n_0 ),
        .D(p_2_in[16]),
        .Q(\cnt_1000HZ_reg[16]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[16]_LDC 
       (.CLR(\cnt_1000HZ_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[16]_LDC_i_1 
       (.I0(cnt_1000HZ0[16]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[16]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[16]),
        .O(\cnt_1000HZ_reg[16]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[16]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[12]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[16]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[16]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[16]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[16]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[16:13]),
        .S({cnt_1000HZ[16],\cnt_1000HZ_reg[16]_LDC_i_5_n_0 ,cnt_1000HZ[14:13]}));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[16]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[16]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[16]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[16]_C_n_0 ),
        .O(cnt_1000HZ[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[16]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[15]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[15]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[15]_C_n_0 ),
        .O(\cnt_1000HZ_reg[16]_LDC_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[16]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[14]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[14]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[14]_C_n_0 ),
        .O(cnt_1000HZ[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[16]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[13]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[13]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[13]_C_n_0 ),
        .O(cnt_1000HZ[13]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[16]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[16]),
        .PRE(\cnt_1000HZ_reg[16]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[16]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[17]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[17]_LDC_i_2_n_0 ),
        .D(p_2_in[17]),
        .Q(\cnt_1000HZ_reg[17]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[17]_LDC 
       (.CLR(\cnt_1000HZ_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[17]_LDC_i_1 
       (.I0(cnt_1000HZ0[17]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[17]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[17]),
        .O(\cnt_1000HZ_reg[17]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[17]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[17]),
        .PRE(\cnt_1000HZ_reg[17]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[17]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[18]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[18]_LDC_i_2_n_0 ),
        .D(p_2_in[18]),
        .Q(\cnt_1000HZ_reg[18]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[18]_LDC 
       (.CLR(\cnt_1000HZ_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[18]_LDC_i_1 
       (.I0(cnt_1000HZ0[18]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[18]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[18]),
        .O(\cnt_1000HZ_reg[18]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[18]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[18]),
        .PRE(\cnt_1000HZ_reg[18]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[18]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[19]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[19]_LDC_i_2_n_0 ),
        .D(p_2_in[19]),
        .Q(\cnt_1000HZ_reg[19]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[19]_LDC 
       (.CLR(\cnt_1000HZ_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[19]_LDC_i_1 
       (.I0(cnt_1000HZ0[19]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[19]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[19]),
        .O(\cnt_1000HZ_reg[19]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[19]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[19]),
        .PRE(\cnt_1000HZ_reg[19]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[19]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[1]_LDC_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\cnt_1000HZ_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[1]_LDC 
       (.CLR(\cnt_1000HZ_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[1]_LDC_i_1 
       (.I0(cnt_1000HZ0[1]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[1]),
        .O(\cnt_1000HZ_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[1]),
        .PRE(\cnt_1000HZ_reg[1]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[20]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[20]_LDC_i_2_n_0 ),
        .D(p_2_in[20]),
        .Q(\cnt_1000HZ_reg[20]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[20]_LDC 
       (.CLR(\cnt_1000HZ_reg[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[20]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[20]_LDC_i_1 
       (.I0(cnt_1000HZ0[20]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[20]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[20]),
        .O(\cnt_1000HZ_reg[20]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[20]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[16]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[20]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[20]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[20]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[20]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[20:17]),
        .S(cnt_1000HZ[20:17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[20]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[20]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[20]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[20]_C_n_0 ),
        .O(cnt_1000HZ[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[20]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[19]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[19]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[19]_C_n_0 ),
        .O(cnt_1000HZ[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[20]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[18]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[18]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[18]_C_n_0 ),
        .O(cnt_1000HZ[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[20]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[17]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[17]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[17]_C_n_0 ),
        .O(cnt_1000HZ[17]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[20]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[20]),
        .PRE(\cnt_1000HZ_reg[20]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[20]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[21]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[21]_LDC_i_2_n_0 ),
        .D(p_2_in[21]),
        .Q(\cnt_1000HZ_reg[21]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[21]_LDC 
       (.CLR(\cnt_1000HZ_reg[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[21]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[21]_LDC_i_1 
       (.I0(cnt_1000HZ0[21]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[21]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[21]),
        .O(\cnt_1000HZ_reg[21]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[21]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[21]),
        .PRE(\cnt_1000HZ_reg[21]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[21]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[22]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[22]_LDC_i_2_n_0 ),
        .D(p_2_in[22]),
        .Q(\cnt_1000HZ_reg[22]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[22]_LDC 
       (.CLR(\cnt_1000HZ_reg[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[22]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[22]_LDC_i_1 
       (.I0(cnt_1000HZ0[22]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[22]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[22]),
        .O(\cnt_1000HZ_reg[22]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[22]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[22]),
        .PRE(\cnt_1000HZ_reg[22]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[22]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[23]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[23]_LDC_i_2_n_0 ),
        .D(p_2_in[23]),
        .Q(\cnt_1000HZ_reg[23]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[23]_LDC 
       (.CLR(\cnt_1000HZ_reg[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[23]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[23]_LDC_i_1 
       (.I0(cnt_1000HZ0[23]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[23]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[23]),
        .O(\cnt_1000HZ_reg[23]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[23]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[23]),
        .PRE(\cnt_1000HZ_reg[23]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[23]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[24]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[24]_LDC_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(\cnt_1000HZ_reg[24]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[24]_LDC 
       (.CLR(\cnt_1000HZ_reg[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[24]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[24]_LDC_i_1 
       (.I0(cnt_1000HZ0[24]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[24]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[24]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[24]),
        .O(\cnt_1000HZ_reg[24]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[24]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[20]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[24]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[24]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[24]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[24]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[24:21]),
        .S({cnt_1000HZ[24:22],\cnt_1000HZ_reg[24]_LDC_i_7_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[24]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[24]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[24]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[24]_C_n_0 ),
        .O(cnt_1000HZ[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[24]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[23]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[23]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[23]_C_n_0 ),
        .O(cnt_1000HZ[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[24]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[22]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[22]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[22]_C_n_0 ),
        .O(cnt_1000HZ[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[24]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[21]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[21]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[21]_C_n_0 ),
        .O(\cnt_1000HZ_reg[24]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[24]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[24]),
        .PRE(\cnt_1000HZ_reg[24]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[24]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[25]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[25]_LDC_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(\cnt_1000HZ_reg[25]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[25]_LDC 
       (.CLR(\cnt_1000HZ_reg[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[25]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[25]_LDC_i_1 
       (.I0(cnt_1000HZ0[25]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[25]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[25]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[25]),
        .O(\cnt_1000HZ_reg[25]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[25]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[25]),
        .PRE(\cnt_1000HZ_reg[25]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[25]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[26]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[26]_LDC_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(\cnt_1000HZ_reg[26]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[26]_LDC 
       (.CLR(\cnt_1000HZ_reg[26]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[26]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[26]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[26]_LDC_i_1 
       (.I0(cnt_1000HZ0[26]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[26]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[26]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[26]),
        .O(\cnt_1000HZ_reg[26]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[26]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[26]),
        .PRE(\cnt_1000HZ_reg[26]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[26]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[27]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[27]_LDC_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(\cnt_1000HZ_reg[27]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[27]_LDC 
       (.CLR(\cnt_1000HZ_reg[27]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[27]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[27]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[27]_LDC_i_1 
       (.I0(cnt_1000HZ0[27]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[27]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[27]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[27]),
        .O(\cnt_1000HZ_reg[27]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[27]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[27]),
        .PRE(\cnt_1000HZ_reg[27]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[27]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[28]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[28]_LDC_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(\cnt_1000HZ_reg[28]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[28]_LDC 
       (.CLR(\cnt_1000HZ_reg[28]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[28]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[28]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[28]_LDC_i_1 
       (.I0(cnt_1000HZ0[28]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[28]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[28]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[28]),
        .O(\cnt_1000HZ_reg[28]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[28]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[24]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[28]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[28]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[28]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[28]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[28:25]),
        .S({cnt_1000HZ[28],\cnt_1000HZ_reg[28]_LDC_i_5_n_0 ,cnt_1000HZ[26:25]}));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[28]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[28]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[28]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[28]_C_n_0 ),
        .O(cnt_1000HZ[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[28]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[27]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[27]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[27]_C_n_0 ),
        .O(\cnt_1000HZ_reg[28]_LDC_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[28]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[26]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[26]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[26]_C_n_0 ),
        .O(cnt_1000HZ[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[28]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[25]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[25]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[25]_C_n_0 ),
        .O(cnt_1000HZ[25]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[28]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[28]),
        .PRE(\cnt_1000HZ_reg[28]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[28]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[29]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[29]_LDC_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(\cnt_1000HZ_reg[29]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[29]_LDC 
       (.CLR(\cnt_1000HZ_reg[29]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[29]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[29]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[29]_LDC_i_1 
       (.I0(cnt_1000HZ0[29]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[29]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[29]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[29]),
        .O(\cnt_1000HZ_reg[29]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[29]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[29]),
        .PRE(\cnt_1000HZ_reg[29]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[29]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[2]_LDC_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\cnt_1000HZ_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[2]_LDC 
       (.CLR(\cnt_1000HZ_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[2]_LDC_i_1 
       (.I0(cnt_1000HZ0[2]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[2]),
        .O(\cnt_1000HZ_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[2]),
        .PRE(\cnt_1000HZ_reg[2]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[30]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[30]_LDC_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(\cnt_1000HZ_reg[30]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[30]_LDC 
       (.CLR(\cnt_1000HZ_reg[30]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[30]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[30]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[30]_LDC_i_1 
       (.I0(cnt_1000HZ0[30]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[30]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[30]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[30]),
        .O(\cnt_1000HZ_reg[30]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[30]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[30]),
        .PRE(\cnt_1000HZ_reg[30]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[30]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[31]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[31]_LDC_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(\cnt_1000HZ_reg[31]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[31]_LDC 
       (.CLR(\cnt_1000HZ_reg[31]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[31]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[31]_LDC_i_1 
       (.I0(cnt_1000HZ0[31]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[31]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[31]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[31]),
        .O(\cnt_1000HZ_reg[31]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[31]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[28]_LDC_i_3_n_0 ),
        .CO({\NLW_cnt_1000HZ_reg[31]_LDC_i_3_CO_UNCONNECTED [3:2],\cnt_1000HZ_reg[31]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[31]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_1000HZ_reg[31]_LDC_i_3_O_UNCONNECTED [3],cnt_1000HZ0[31:29]}),
        .S({1'b0,cnt_1000HZ[31:29]}));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[31]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[31]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[31]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[31]_C_n_0 ),
        .O(cnt_1000HZ[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[31]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[30]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[30]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[30]_C_n_0 ),
        .O(cnt_1000HZ[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[31]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[29]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[29]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[29]_C_n_0 ),
        .O(cnt_1000HZ[29]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[31]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[31]),
        .PRE(\cnt_1000HZ_reg[31]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[31]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[3]_LDC_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\cnt_1000HZ_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[3]_LDC 
       (.CLR(\cnt_1000HZ_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[3]_LDC_i_1 
       (.I0(cnt_1000HZ0[3]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[3]),
        .O(\cnt_1000HZ_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[3]),
        .PRE(\cnt_1000HZ_reg[3]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[4]_LDC_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\cnt_1000HZ_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[4]_LDC 
       (.CLR(\cnt_1000HZ_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[4]_LDC_i_1 
       (.I0(cnt_1000HZ0[4]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[4]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[4]),
        .O(\cnt_1000HZ_reg[4]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[4]_LDC_i_3 
       (.CI(1'b0),
        .CO({\cnt_1000HZ_reg[4]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[4]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[4]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[4]_LDC_i_3_n_3 }),
        .CYINIT(cnt_1000HZ[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[4:1]),
        .S(cnt_1000HZ[4:1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[4]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[4]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[4]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[4]_C_n_0 ),
        .O(cnt_1000HZ[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[4]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[3]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[3]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[3]_C_n_0 ),
        .O(cnt_1000HZ[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[4]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[2]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[2]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[2]_C_n_0 ),
        .O(cnt_1000HZ[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[4]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[1]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[1]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[1]_C_n_0 ),
        .O(cnt_1000HZ[1]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[4]),
        .PRE(\cnt_1000HZ_reg[4]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[5]_LDC_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\cnt_1000HZ_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[5]_LDC 
       (.CLR(\cnt_1000HZ_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[5]_LDC_i_1 
       (.I0(cnt_1000HZ0[5]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[5]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[5]),
        .O(\cnt_1000HZ_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[5]),
        .PRE(\cnt_1000HZ_reg[5]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[6]_LDC_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\cnt_1000HZ_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[6]_LDC 
       (.CLR(\cnt_1000HZ_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[6]_LDC_i_1 
       (.I0(cnt_1000HZ0[6]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[6]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[6]),
        .O(\cnt_1000HZ_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[6]),
        .PRE(\cnt_1000HZ_reg[6]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[7]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[7]_LDC_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\cnt_1000HZ_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[7]_LDC 
       (.CLR(\cnt_1000HZ_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[7]_LDC_i_1 
       (.I0(cnt_1000HZ0[7]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[7]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[7]),
        .O(\cnt_1000HZ_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[7]),
        .PRE(\cnt_1000HZ_reg[7]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[8]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[8]_LDC_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(\cnt_1000HZ_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[8]_LDC 
       (.CLR(\cnt_1000HZ_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[8]_LDC_i_1 
       (.I0(cnt_1000HZ0[8]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[8]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[8]),
        .O(\cnt_1000HZ_reg[8]_LDC_i_2_n_0 ));
  CARRY4 \cnt_1000HZ_reg[8]_LDC_i_3 
       (.CI(\cnt_1000HZ_reg[4]_LDC_i_3_n_0 ),
        .CO({\cnt_1000HZ_reg[8]_LDC_i_3_n_0 ,\cnt_1000HZ_reg[8]_LDC_i_3_n_1 ,\cnt_1000HZ_reg[8]_LDC_i_3_n_2 ,\cnt_1000HZ_reg[8]_LDC_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_1000HZ0[8:5]),
        .S(cnt_1000HZ[8:5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[8]_LDC_i_4 
       (.I0(\cnt_1000HZ_reg[8]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[8]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[8]_C_n_0 ),
        .O(cnt_1000HZ[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[8]_LDC_i_5 
       (.I0(\cnt_1000HZ_reg[7]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[7]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[7]_C_n_0 ),
        .O(cnt_1000HZ[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[8]_LDC_i_6 
       (.I0(\cnt_1000HZ_reg[6]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[6]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[6]_C_n_0 ),
        .O(cnt_1000HZ[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt_1000HZ_reg[8]_LDC_i_7 
       (.I0(\cnt_1000HZ_reg[5]_P_n_0 ),
        .I1(\cnt_1000HZ_reg[5]_LDC_n_0 ),
        .I2(\cnt_1000HZ_reg[5]_C_n_0 ),
        .O(cnt_1000HZ[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[8]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[8]),
        .PRE(\cnt_1000HZ_reg[8]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[9]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_1000HZ_reg[9]_LDC_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(\cnt_1000HZ_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cnt_1000HZ_reg[9]_LDC 
       (.CLR(\cnt_1000HZ_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\cnt_1000HZ_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\cnt_1000HZ_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1000HZ_reg[9]_LDC_i_1 
       (.I0(cnt_1000HZ0[9]),
        .I1(rst_IBUF),
        .O(\cnt_1000HZ_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1000HZ_reg[9]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(cnt_1000HZ0[9]),
        .O(\cnt_1000HZ_reg[9]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_1000HZ_reg[9]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[9]),
        .PRE(\cnt_1000HZ_reg[9]_LDC_i_1_n_0 ),
        .Q(\cnt_1000HZ_reg[9]_P_n_0 ));
endmodule

module register_file
   (dbu_status,
    \bbstub_spo[26] ,
    \bbstub_spo[30] ,
    d,
    dbu_rf_rd1,
    \bbstub_spo[15] ,
    S,
    \bbstub_spo[7] ,
    \bbstub_spo[11] ,
    \bbstub_spo[15]_0 ,
    \bbstub_spo[15]_1 ,
    \bbstub_spo[15]_2 ,
    \bbstub_spo[15]_3 ,
    \bbstub_spo[15]_4 ,
    \bbstub_spo[3] ,
    \bbstub_spo[7]_0 ,
    \bbstub_spo[11]_0 ,
    \bbstub_spo[15]_5 ,
    \bbstub_spo[15]_6 ,
    \bbstub_spo[15]_7 ,
    \bbstub_spo[15]_8 ,
    we00_out,
    spo,
    \y0_inferred__0/i__carry__6 ,
    D,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [2:0]dbu_status;
  output [0:0]\bbstub_spo[26] ;
  output \bbstub_spo[30] ;
  output [31:0]d;
  output [30:0]dbu_rf_rd1;
  output [3:0]\bbstub_spo[15] ;
  output [3:0]S;
  output [3:0]\bbstub_spo[7] ;
  output [3:0]\bbstub_spo[11] ;
  output [3:0]\bbstub_spo[15]_0 ;
  output [3:0]\bbstub_spo[15]_1 ;
  output [3:0]\bbstub_spo[15]_2 ;
  output [3:0]\bbstub_spo[15]_3 ;
  output [3:0]\bbstub_spo[15]_4 ;
  output [3:0]\bbstub_spo[3] ;
  output [3:0]\bbstub_spo[7]_0 ;
  output [3:0]\bbstub_spo[11]_0 ;
  output [3:0]\bbstub_spo[15]_5 ;
  output [3:0]\bbstub_spo[15]_6 ;
  output [3:0]\bbstub_spo[15]_7 ;
  output [3:0]\bbstub_spo[15]_8 ;
  input we00_out;
  input [31:0]spo;
  input [0:0]\y0_inferred__0/i__carry__6 ;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire [31:0]D;
  wire [3:0]S;
  wire [3:0]\bbstub_spo[11] ;
  wire [3:0]\bbstub_spo[11]_0 ;
  wire [3:0]\bbstub_spo[15] ;
  wire [3:0]\bbstub_spo[15]_0 ;
  wire [3:0]\bbstub_spo[15]_1 ;
  wire [3:0]\bbstub_spo[15]_2 ;
  wire [3:0]\bbstub_spo[15]_3 ;
  wire [3:0]\bbstub_spo[15]_4 ;
  wire [3:0]\bbstub_spo[15]_5 ;
  wire [3:0]\bbstub_spo[15]_6 ;
  wire [3:0]\bbstub_spo[15]_7 ;
  wire [3:0]\bbstub_spo[15]_8 ;
  wire [0:0]\bbstub_spo[26] ;
  wire \bbstub_spo[30] ;
  wire [3:0]\bbstub_spo[3] ;
  wire [3:0]\bbstub_spo[7] ;
  wire [3:0]\bbstub_spo[7]_0 ;
  wire clk_IBUF_BUFG;
  wire [31:0]d;
  wire [30:0]dbu_rf_rd1;
  wire [2:0]dbu_status;
  wire \led_OBUF[9]_inst_i_3_n_0 ;
  wire \led_OBUF[9]_inst_i_4_n_0 ;
  wire memory_i_100_n_0;
  wire memory_i_101_n_0;
  wire memory_i_102_n_0;
  wire memory_i_103_n_0;
  wire memory_i_104_n_0;
  wire memory_i_105_n_0;
  wire memory_i_106_n_0;
  wire memory_i_107_n_0;
  wire memory_i_108_n_0;
  wire memory_i_109_n_0;
  wire memory_i_110_n_0;
  wire memory_i_111_n_0;
  wire memory_i_112_n_0;
  wire memory_i_113_n_0;
  wire memory_i_114_n_0;
  wire memory_i_115_n_0;
  wire memory_i_116_n_0;
  wire memory_i_117_n_0;
  wire memory_i_118_n_0;
  wire memory_i_119_n_0;
  wire memory_i_120_n_0;
  wire memory_i_121_n_0;
  wire memory_i_122_n_0;
  wire memory_i_123_n_0;
  wire memory_i_124_n_0;
  wire memory_i_125_n_0;
  wire memory_i_126_n_0;
  wire memory_i_127_n_0;
  wire memory_i_128_n_0;
  wire memory_i_129_n_0;
  wire memory_i_130_n_0;
  wire memory_i_131_n_0;
  wire memory_i_132_n_0;
  wire memory_i_133_n_0;
  wire memory_i_134_n_0;
  wire memory_i_135_n_0;
  wire memory_i_136_n_0;
  wire memory_i_137_n_0;
  wire memory_i_138_n_0;
  wire memory_i_139_n_0;
  wire memory_i_140_n_0;
  wire memory_i_141_n_0;
  wire memory_i_142_n_0;
  wire memory_i_143_n_0;
  wire memory_i_144_n_0;
  wire memory_i_145_n_0;
  wire memory_i_146_n_0;
  wire memory_i_147_n_0;
  wire memory_i_148_n_0;
  wire memory_i_149_n_0;
  wire memory_i_150_n_0;
  wire memory_i_151_n_0;
  wire memory_i_152_n_0;
  wire memory_i_153_n_0;
  wire memory_i_154_n_0;
  wire memory_i_155_n_0;
  wire memory_i_156_n_0;
  wire memory_i_157_n_0;
  wire memory_i_158_n_0;
  wire memory_i_159_n_0;
  wire memory_i_160_n_0;
  wire memory_i_161_n_0;
  wire memory_i_162_n_0;
  wire memory_i_163_n_0;
  wire memory_i_164_n_0;
  wire memory_i_165_n_0;
  wire memory_i_166_n_0;
  wire memory_i_167_n_0;
  wire memory_i_170_n_0;
  wire memory_i_171_n_0;
  wire memory_i_172_n_0;
  wire memory_i_173_n_0;
  wire memory_i_174_n_0;
  wire memory_i_175_n_0;
  wire memory_i_176_n_0;
  wire memory_i_177_n_0;
  wire memory_i_178_n_0;
  wire memory_i_179_n_0;
  wire memory_i_180_n_0;
  wire memory_i_181_n_0;
  wire memory_i_182_n_0;
  wire memory_i_183_n_0;
  wire memory_i_184_n_0;
  wire memory_i_185_n_0;
  wire memory_i_186_n_0;
  wire memory_i_187_n_0;
  wire memory_i_188_n_0;
  wire memory_i_189_n_0;
  wire memory_i_190_n_0;
  wire memory_i_191_n_0;
  wire memory_i_192_n_0;
  wire memory_i_193_n_0;
  wire memory_i_194_n_0;
  wire memory_i_195_n_0;
  wire memory_i_196_n_0;
  wire memory_i_197_n_0;
  wire memory_i_198_n_0;
  wire memory_i_199_n_0;
  wire memory_i_200_n_0;
  wire memory_i_201_n_0;
  wire memory_i_202_n_0;
  wire memory_i_203_n_0;
  wire memory_i_204_n_0;
  wire memory_i_205_n_0;
  wire memory_i_206_n_0;
  wire memory_i_207_n_0;
  wire memory_i_208_n_0;
  wire memory_i_209_n_0;
  wire memory_i_210_n_0;
  wire memory_i_211_n_0;
  wire memory_i_212_n_0;
  wire memory_i_213_n_0;
  wire memory_i_214_n_0;
  wire memory_i_215_n_0;
  wire memory_i_216_n_0;
  wire memory_i_217_n_0;
  wire memory_i_218_n_0;
  wire memory_i_219_n_0;
  wire memory_i_220_n_0;
  wire memory_i_221_n_0;
  wire memory_i_222_n_0;
  wire memory_i_223_n_0;
  wire memory_i_224_n_0;
  wire memory_i_225_n_0;
  wire memory_i_226_n_0;
  wire memory_i_227_n_0;
  wire memory_i_228_n_0;
  wire memory_i_229_n_0;
  wire memory_i_230_n_0;
  wire memory_i_231_n_0;
  wire memory_i_232_n_0;
  wire memory_i_233_n_0;
  wire memory_i_234_n_0;
  wire memory_i_235_n_0;
  wire memory_i_236_n_0;
  wire memory_i_237_n_0;
  wire memory_i_238_n_0;
  wire memory_i_239_n_0;
  wire memory_i_240_n_0;
  wire memory_i_241_n_0;
  wire memory_i_242_n_0;
  wire memory_i_243_n_0;
  wire memory_i_244_n_0;
  wire memory_i_245_n_0;
  wire memory_i_246_n_0;
  wire memory_i_247_n_0;
  wire memory_i_248_n_0;
  wire memory_i_249_n_0;
  wire memory_i_250_n_0;
  wire memory_i_251_n_0;
  wire memory_i_252_n_0;
  wire memory_i_253_n_0;
  wire memory_i_254_n_0;
  wire memory_i_255_n_0;
  wire memory_i_256_n_0;
  wire memory_i_257_n_0;
  wire memory_i_258_n_0;
  wire memory_i_259_n_0;
  wire memory_i_260_n_0;
  wire memory_i_261_n_0;
  wire memory_i_262_n_0;
  wire memory_i_263_n_0;
  wire memory_i_264_n_0;
  wire memory_i_265_n_0;
  wire memory_i_266_n_0;
  wire memory_i_267_n_0;
  wire memory_i_268_n_0;
  wire memory_i_269_n_0;
  wire memory_i_270_n_0;
  wire memory_i_271_n_0;
  wire memory_i_272_n_0;
  wire memory_i_273_n_0;
  wire memory_i_274_n_0;
  wire memory_i_275_n_0;
  wire memory_i_276_n_0;
  wire memory_i_277_n_0;
  wire memory_i_278_n_0;
  wire memory_i_279_n_0;
  wire memory_i_280_n_0;
  wire memory_i_281_n_0;
  wire memory_i_282_n_0;
  wire memory_i_283_n_0;
  wire memory_i_284_n_0;
  wire memory_i_285_n_0;
  wire memory_i_286_n_0;
  wire memory_i_287_n_0;
  wire memory_i_288_n_0;
  wire memory_i_289_n_0;
  wire memory_i_290_n_0;
  wire memory_i_291_n_0;
  wire memory_i_292_n_0;
  wire memory_i_293_n_0;
  wire memory_i_294_n_0;
  wire memory_i_295_n_0;
  wire memory_i_296_n_0;
  wire memory_i_297_n_0;
  wire memory_i_298_n_0;
  wire memory_i_299_n_0;
  wire memory_i_300_n_0;
  wire memory_i_301_n_0;
  wire memory_i_302_n_0;
  wire memory_i_303_n_0;
  wire memory_i_304_n_0;
  wire memory_i_305_n_0;
  wire memory_i_306_n_0;
  wire memory_i_307_n_0;
  wire memory_i_308_n_0;
  wire memory_i_309_n_0;
  wire memory_i_310_n_0;
  wire memory_i_311_n_0;
  wire memory_i_312_n_0;
  wire memory_i_313_n_0;
  wire memory_i_314_n_0;
  wire memory_i_315_n_0;
  wire memory_i_316_n_0;
  wire memory_i_317_n_0;
  wire memory_i_318_n_0;
  wire memory_i_319_n_0;
  wire memory_i_320_n_0;
  wire memory_i_321_n_0;
  wire memory_i_322_n_0;
  wire memory_i_323_n_0;
  wire memory_i_324_n_0;
  wire memory_i_325_n_0;
  wire memory_i_326_n_0;
  wire memory_i_327_n_0;
  wire memory_i_328_n_0;
  wire memory_i_329_n_0;
  wire memory_i_330_n_0;
  wire memory_i_331_n_0;
  wire memory_i_332_n_0;
  wire memory_i_333_n_0;
  wire memory_i_334_n_0;
  wire memory_i_335_n_0;
  wire memory_i_336_n_0;
  wire memory_i_337_n_0;
  wire memory_i_338_n_0;
  wire memory_i_339_n_0;
  wire memory_i_340_n_0;
  wire memory_i_341_n_0;
  wire memory_i_342_n_0;
  wire memory_i_343_n_0;
  wire memory_i_344_n_0;
  wire memory_i_345_n_0;
  wire memory_i_346_n_0;
  wire memory_i_347_n_0;
  wire memory_i_348_n_0;
  wire memory_i_349_n_0;
  wire memory_i_350_n_0;
  wire memory_i_351_n_0;
  wire memory_i_352_n_0;
  wire memory_i_353_n_0;
  wire memory_i_354_n_0;
  wire memory_i_355_n_0;
  wire memory_i_356_n_0;
  wire memory_i_357_n_0;
  wire memory_i_358_n_0;
  wire memory_i_359_n_0;
  wire memory_i_360_n_0;
  wire memory_i_361_n_0;
  wire memory_i_362_n_0;
  wire memory_i_363_n_0;
  wire memory_i_364_n_0;
  wire memory_i_365_n_0;
  wire memory_i_366_n_0;
  wire memory_i_367_n_0;
  wire memory_i_368_n_0;
  wire memory_i_369_n_0;
  wire memory_i_370_n_0;
  wire memory_i_371_n_0;
  wire memory_i_372_n_0;
  wire memory_i_373_n_0;
  wire memory_i_374_n_0;
  wire memory_i_375_n_0;
  wire memory_i_376_n_0;
  wire memory_i_377_n_0;
  wire memory_i_378_n_0;
  wire memory_i_379_n_0;
  wire memory_i_380_n_0;
  wire memory_i_381_n_0;
  wire memory_i_382_n_0;
  wire memory_i_383_n_0;
  wire memory_i_384_n_0;
  wire memory_i_385_n_0;
  wire memory_i_386_n_0;
  wire memory_i_387_n_0;
  wire memory_i_388_n_0;
  wire memory_i_389_n_0;
  wire memory_i_390_n_0;
  wire memory_i_391_n_0;
  wire memory_i_392_n_0;
  wire memory_i_393_n_0;
  wire memory_i_394_n_0;
  wire memory_i_395_n_0;
  wire memory_i_396_n_0;
  wire memory_i_397_n_0;
  wire memory_i_398_n_0;
  wire memory_i_399_n_0;
  wire memory_i_400_n_0;
  wire memory_i_401_n_0;
  wire memory_i_402_n_0;
  wire memory_i_403_n_0;
  wire memory_i_404_n_0;
  wire memory_i_405_n_0;
  wire memory_i_406_n_0;
  wire memory_i_407_n_0;
  wire memory_i_408_n_0;
  wire memory_i_409_n_0;
  wire memory_i_40_n_0;
  wire memory_i_410_n_0;
  wire memory_i_411_n_0;
  wire memory_i_412_n_0;
  wire memory_i_413_n_0;
  wire memory_i_414_n_0;
  wire memory_i_415_n_0;
  wire memory_i_416_n_0;
  wire memory_i_417_n_0;
  wire memory_i_418_n_0;
  wire memory_i_419_n_0;
  wire memory_i_41_n_0;
  wire memory_i_420_n_0;
  wire memory_i_421_n_0;
  wire memory_i_422_n_0;
  wire memory_i_423_n_0;
  wire memory_i_424_n_0;
  wire memory_i_425_n_0;
  wire memory_i_42_n_0;
  wire memory_i_43_n_0;
  wire memory_i_44_n_0;
  wire memory_i_45_n_0;
  wire memory_i_46_n_0;
  wire memory_i_47_n_0;
  wire memory_i_48_n_0;
  wire memory_i_49_n_0;
  wire memory_i_50_n_0;
  wire memory_i_51_n_0;
  wire memory_i_52_n_0;
  wire memory_i_53_n_0;
  wire memory_i_54_n_0;
  wire memory_i_55_n_0;
  wire memory_i_56_n_0;
  wire memory_i_57_n_0;
  wire memory_i_58_n_0;
  wire memory_i_59_n_0;
  wire memory_i_60_n_0;
  wire memory_i_61_n_0;
  wire memory_i_62_n_0;
  wire memory_i_63_n_0;
  wire memory_i_64_n_0;
  wire memory_i_65_n_0;
  wire memory_i_66_n_0;
  wire memory_i_67_n_0;
  wire memory_i_68_n_0;
  wire memory_i_69_n_0;
  wire memory_i_70_n_0;
  wire memory_i_71_n_0;
  wire memory_i_72_n_0;
  wire memory_i_73_n_0;
  wire memory_i_74_n_0;
  wire memory_i_75_n_0;
  wire memory_i_76_n_0;
  wire memory_i_77_n_0;
  wire memory_i_78_n_0;
  wire memory_i_79_n_0;
  wire memory_i_80_n_0;
  wire memory_i_81_n_0;
  wire memory_i_82_n_0;
  wire memory_i_83_n_0;
  wire memory_i_84_n_0;
  wire memory_i_85_n_0;
  wire memory_i_86_n_0;
  wire memory_i_87_n_0;
  wire memory_i_88_n_0;
  wire memory_i_89_n_0;
  wire memory_i_90_n_0;
  wire memory_i_91_n_0;
  wire memory_i_92_n_0;
  wire memory_i_93_n_0;
  wire memory_i_94_n_0;
  wire memory_i_95_n_0;
  wire memory_i_96_n_0;
  wire memory_i_97_n_0;
  wire memory_i_98_n_0;
  wire memory_i_99_n_0;
  wire registers;
  wire \registers[10][31]_i_1_n_0 ;
  wire \registers[11][31]_i_1_n_0 ;
  wire \registers[12][31]_i_1_n_0 ;
  wire \registers[13][31]_i_1_n_0 ;
  wire \registers[14][31]_i_1_n_0 ;
  wire \registers[15][31]_i_1_n_0 ;
  wire \registers[16][31]_i_1_n_0 ;
  wire \registers[17][31]_i_1_n_0 ;
  wire \registers[18][31]_i_1_n_0 ;
  wire \registers[19][31]_i_1_n_0 ;
  wire \registers[1][31]_i_1_n_0 ;
  wire \registers[20][31]_i_1_n_0 ;
  wire \registers[21][31]_i_1_n_0 ;
  wire \registers[22][31]_i_1_n_0 ;
  wire \registers[23][31]_i_1_n_0 ;
  wire \registers[24][31]_i_1_n_0 ;
  wire \registers[25][31]_i_1_n_0 ;
  wire \registers[26][31]_i_1_n_0 ;
  wire \registers[27][31]_i_1_n_0 ;
  wire \registers[28][31]_i_1_n_0 ;
  wire \registers[29][31]_i_1_n_0 ;
  wire \registers[2][31]_i_1_n_0 ;
  wire \registers[30][31]_i_1_n_0 ;
  wire \registers[3][31]_i_1_n_0 ;
  wire \registers[4][31]_i_1_n_0 ;
  wire \registers[5][31]_i_1_n_0 ;
  wire \registers[6][31]_i_1_n_0 ;
  wire \registers[7][31]_i_1_n_0 ;
  wire \registers[8][31]_i_1_n_0 ;
  wire \registers[9][31]_i_1_n_0 ;
  wire [31:0]\registers_reg[10] ;
  wire [31:0]\registers_reg[11] ;
  wire [31:0]\registers_reg[12] ;
  wire [31:0]\registers_reg[13] ;
  wire [31:0]\registers_reg[14] ;
  wire [31:0]\registers_reg[15] ;
  wire [31:0]\registers_reg[16] ;
  wire [31:0]\registers_reg[17] ;
  wire [31:0]\registers_reg[18] ;
  wire [31:0]\registers_reg[19] ;
  wire [31:0]\registers_reg[1] ;
  wire [31:0]\registers_reg[20] ;
  wire [31:0]\registers_reg[21] ;
  wire [31:0]\registers_reg[22] ;
  wire [31:0]\registers_reg[23] ;
  wire [31:0]\registers_reg[24] ;
  wire [31:0]\registers_reg[25] ;
  wire [31:0]\registers_reg[26] ;
  wire [31:0]\registers_reg[27] ;
  wire [31:0]\registers_reg[28] ;
  wire [31:0]\registers_reg[29] ;
  wire [31:0]\registers_reg[2] ;
  wire [31:0]\registers_reg[30] ;
  wire [31:0]\registers_reg[31] ;
  wire [31:0]\registers_reg[3] ;
  wire [31:0]\registers_reg[4] ;
  wire [31:0]\registers_reg[5] ;
  wire [31:0]\registers_reg[6] ;
  wire [31:0]\registers_reg[7] ;
  wire [31:0]\registers_reg[8] ;
  wire [31:0]\registers_reg[9] ;
  wire [4:0]rf_write_register__4;
  wire rst_IBUF;
  wire [31:0]spo;
  wire we00_out;
  wire y0_carry__0_i_10_n_0;
  wire y0_carry__0_i_11_n_0;
  wire y0_carry__0_i_12_n_0;
  wire y0_carry__0_i_13_n_0;
  wire y0_carry__0_i_14_n_0;
  wire y0_carry__0_i_15_n_0;
  wire y0_carry__0_i_16_n_0;
  wire y0_carry__0_i_17_n_0;
  wire y0_carry__0_i_18_n_0;
  wire y0_carry__0_i_19_n_0;
  wire y0_carry__0_i_20_n_0;
  wire y0_carry__0_i_21_n_0;
  wire y0_carry__0_i_22_n_0;
  wire y0_carry__0_i_23_n_0;
  wire y0_carry__0_i_24_n_0;
  wire y0_carry__0_i_25_n_0;
  wire y0_carry__0_i_26_n_0;
  wire y0_carry__0_i_27_n_0;
  wire y0_carry__0_i_28_n_0;
  wire y0_carry__0_i_29_n_0;
  wire y0_carry__0_i_30_n_0;
  wire y0_carry__0_i_31_n_0;
  wire y0_carry__0_i_32_n_0;
  wire y0_carry__0_i_33_n_0;
  wire y0_carry__0_i_34_n_0;
  wire y0_carry__0_i_35_n_0;
  wire y0_carry__0_i_36_n_0;
  wire y0_carry__0_i_37_n_0;
  wire y0_carry__0_i_38_n_0;
  wire y0_carry__0_i_39_n_0;
  wire y0_carry__0_i_40_n_0;
  wire y0_carry__0_i_41_n_0;
  wire y0_carry__0_i_42_n_0;
  wire y0_carry__0_i_43_n_0;
  wire y0_carry__0_i_44_n_0;
  wire y0_carry__0_i_45_n_0;
  wire y0_carry__0_i_46_n_0;
  wire y0_carry__0_i_47_n_0;
  wire y0_carry__0_i_48_n_0;
  wire y0_carry__0_i_49_n_0;
  wire y0_carry__0_i_50_n_0;
  wire y0_carry__0_i_51_n_0;
  wire y0_carry__0_i_52_n_0;
  wire y0_carry__0_i_53_n_0;
  wire y0_carry__0_i_54_n_0;
  wire y0_carry__0_i_55_n_0;
  wire y0_carry__0_i_56_n_0;
  wire y0_carry__0_i_9_n_0;
  wire y0_carry__1_i_10_n_0;
  wire y0_carry__1_i_11_n_0;
  wire y0_carry__1_i_12_n_0;
  wire y0_carry__1_i_13_n_0;
  wire y0_carry__1_i_14_n_0;
  wire y0_carry__1_i_15_n_0;
  wire y0_carry__1_i_16_n_0;
  wire y0_carry__1_i_17_n_0;
  wire y0_carry__1_i_18_n_0;
  wire y0_carry__1_i_19_n_0;
  wire y0_carry__1_i_20_n_0;
  wire y0_carry__1_i_21_n_0;
  wire y0_carry__1_i_22_n_0;
  wire y0_carry__1_i_23_n_0;
  wire y0_carry__1_i_24_n_0;
  wire y0_carry__1_i_25_n_0;
  wire y0_carry__1_i_26_n_0;
  wire y0_carry__1_i_27_n_0;
  wire y0_carry__1_i_28_n_0;
  wire y0_carry__1_i_29_n_0;
  wire y0_carry__1_i_30_n_0;
  wire y0_carry__1_i_31_n_0;
  wire y0_carry__1_i_32_n_0;
  wire y0_carry__1_i_33_n_0;
  wire y0_carry__1_i_34_n_0;
  wire y0_carry__1_i_35_n_0;
  wire y0_carry__1_i_36_n_0;
  wire y0_carry__1_i_37_n_0;
  wire y0_carry__1_i_38_n_0;
  wire y0_carry__1_i_39_n_0;
  wire y0_carry__1_i_40_n_0;
  wire y0_carry__1_i_41_n_0;
  wire y0_carry__1_i_42_n_0;
  wire y0_carry__1_i_43_n_0;
  wire y0_carry__1_i_44_n_0;
  wire y0_carry__1_i_45_n_0;
  wire y0_carry__1_i_46_n_0;
  wire y0_carry__1_i_47_n_0;
  wire y0_carry__1_i_48_n_0;
  wire y0_carry__1_i_49_n_0;
  wire y0_carry__1_i_50_n_0;
  wire y0_carry__1_i_51_n_0;
  wire y0_carry__1_i_52_n_0;
  wire y0_carry__1_i_53_n_0;
  wire y0_carry__1_i_54_n_0;
  wire y0_carry__1_i_55_n_0;
  wire y0_carry__1_i_56_n_0;
  wire y0_carry__1_i_9_n_0;
  wire y0_carry__2_i_10_n_0;
  wire y0_carry__2_i_11_n_0;
  wire y0_carry__2_i_12_n_0;
  wire y0_carry__2_i_13_n_0;
  wire y0_carry__2_i_14_n_0;
  wire y0_carry__2_i_15_n_0;
  wire y0_carry__2_i_16_n_0;
  wire y0_carry__2_i_17_n_0;
  wire y0_carry__2_i_18_n_0;
  wire y0_carry__2_i_19_n_0;
  wire y0_carry__2_i_20_n_0;
  wire y0_carry__2_i_21_n_0;
  wire y0_carry__2_i_22_n_0;
  wire y0_carry__2_i_23_n_0;
  wire y0_carry__2_i_24_n_0;
  wire y0_carry__2_i_25_n_0;
  wire y0_carry__2_i_26_n_0;
  wire y0_carry__2_i_27_n_0;
  wire y0_carry__2_i_28_n_0;
  wire y0_carry__2_i_29_n_0;
  wire y0_carry__2_i_30_n_0;
  wire y0_carry__2_i_31_n_0;
  wire y0_carry__2_i_32_n_0;
  wire y0_carry__2_i_33_n_0;
  wire y0_carry__2_i_34_n_0;
  wire y0_carry__2_i_35_n_0;
  wire y0_carry__2_i_36_n_0;
  wire y0_carry__2_i_37_n_0;
  wire y0_carry__2_i_38_n_0;
  wire y0_carry__2_i_39_n_0;
  wire y0_carry__2_i_40_n_0;
  wire y0_carry__2_i_41_n_0;
  wire y0_carry__2_i_42_n_0;
  wire y0_carry__2_i_43_n_0;
  wire y0_carry__2_i_44_n_0;
  wire y0_carry__2_i_45_n_0;
  wire y0_carry__2_i_46_n_0;
  wire y0_carry__2_i_47_n_0;
  wire y0_carry__2_i_48_n_0;
  wire y0_carry__2_i_49_n_0;
  wire y0_carry__2_i_50_n_0;
  wire y0_carry__2_i_51_n_0;
  wire y0_carry__2_i_52_n_0;
  wire y0_carry__2_i_53_n_0;
  wire y0_carry__2_i_54_n_0;
  wire y0_carry__2_i_55_n_0;
  wire y0_carry__2_i_56_n_0;
  wire y0_carry__2_i_9_n_0;
  wire y0_carry__3_i_10_n_0;
  wire y0_carry__3_i_11_n_0;
  wire y0_carry__3_i_12_n_0;
  wire y0_carry__3_i_13_n_0;
  wire y0_carry__3_i_14_n_0;
  wire y0_carry__3_i_15_n_0;
  wire y0_carry__3_i_16_n_0;
  wire y0_carry__3_i_17_n_0;
  wire y0_carry__3_i_18_n_0;
  wire y0_carry__3_i_19_n_0;
  wire y0_carry__3_i_20_n_0;
  wire y0_carry__3_i_21_n_0;
  wire y0_carry__3_i_22_n_0;
  wire y0_carry__3_i_23_n_0;
  wire y0_carry__3_i_24_n_0;
  wire y0_carry__3_i_25_n_0;
  wire y0_carry__3_i_26_n_0;
  wire y0_carry__3_i_27_n_0;
  wire y0_carry__3_i_28_n_0;
  wire y0_carry__3_i_29_n_0;
  wire y0_carry__3_i_30_n_0;
  wire y0_carry__3_i_31_n_0;
  wire y0_carry__3_i_32_n_0;
  wire y0_carry__3_i_33_n_0;
  wire y0_carry__3_i_34_n_0;
  wire y0_carry__3_i_35_n_0;
  wire y0_carry__3_i_36_n_0;
  wire y0_carry__3_i_37_n_0;
  wire y0_carry__3_i_38_n_0;
  wire y0_carry__3_i_39_n_0;
  wire y0_carry__3_i_40_n_0;
  wire y0_carry__3_i_41_n_0;
  wire y0_carry__3_i_42_n_0;
  wire y0_carry__3_i_43_n_0;
  wire y0_carry__3_i_44_n_0;
  wire y0_carry__3_i_45_n_0;
  wire y0_carry__3_i_46_n_0;
  wire y0_carry__3_i_47_n_0;
  wire y0_carry__3_i_48_n_0;
  wire y0_carry__3_i_49_n_0;
  wire y0_carry__3_i_50_n_0;
  wire y0_carry__3_i_51_n_0;
  wire y0_carry__3_i_52_n_0;
  wire y0_carry__3_i_53_n_0;
  wire y0_carry__3_i_54_n_0;
  wire y0_carry__3_i_55_n_0;
  wire y0_carry__3_i_56_n_0;
  wire y0_carry__3_i_9_n_0;
  wire y0_carry__4_i_10_n_0;
  wire y0_carry__4_i_11_n_0;
  wire y0_carry__4_i_12_n_0;
  wire y0_carry__4_i_13_n_0;
  wire y0_carry__4_i_14_n_0;
  wire y0_carry__4_i_15_n_0;
  wire y0_carry__4_i_16_n_0;
  wire y0_carry__4_i_17_n_0;
  wire y0_carry__4_i_18_n_0;
  wire y0_carry__4_i_19_n_0;
  wire y0_carry__4_i_20_n_0;
  wire y0_carry__4_i_21_n_0;
  wire y0_carry__4_i_22_n_0;
  wire y0_carry__4_i_23_n_0;
  wire y0_carry__4_i_24_n_0;
  wire y0_carry__4_i_25_n_0;
  wire y0_carry__4_i_26_n_0;
  wire y0_carry__4_i_27_n_0;
  wire y0_carry__4_i_28_n_0;
  wire y0_carry__4_i_29_n_0;
  wire y0_carry__4_i_30_n_0;
  wire y0_carry__4_i_31_n_0;
  wire y0_carry__4_i_32_n_0;
  wire y0_carry__4_i_33_n_0;
  wire y0_carry__4_i_34_n_0;
  wire y0_carry__4_i_35_n_0;
  wire y0_carry__4_i_36_n_0;
  wire y0_carry__4_i_37_n_0;
  wire y0_carry__4_i_38_n_0;
  wire y0_carry__4_i_39_n_0;
  wire y0_carry__4_i_40_n_0;
  wire y0_carry__4_i_41_n_0;
  wire y0_carry__4_i_42_n_0;
  wire y0_carry__4_i_43_n_0;
  wire y0_carry__4_i_44_n_0;
  wire y0_carry__4_i_45_n_0;
  wire y0_carry__4_i_46_n_0;
  wire y0_carry__4_i_47_n_0;
  wire y0_carry__4_i_48_n_0;
  wire y0_carry__4_i_49_n_0;
  wire y0_carry__4_i_50_n_0;
  wire y0_carry__4_i_51_n_0;
  wire y0_carry__4_i_52_n_0;
  wire y0_carry__4_i_53_n_0;
  wire y0_carry__4_i_54_n_0;
  wire y0_carry__4_i_55_n_0;
  wire y0_carry__4_i_56_n_0;
  wire y0_carry__4_i_9_n_0;
  wire y0_carry__5_i_10_n_0;
  wire y0_carry__5_i_11_n_0;
  wire y0_carry__5_i_12_n_0;
  wire y0_carry__5_i_13_n_0;
  wire y0_carry__5_i_14_n_0;
  wire y0_carry__5_i_15_n_0;
  wire y0_carry__5_i_16_n_0;
  wire y0_carry__5_i_17_n_0;
  wire y0_carry__5_i_18_n_0;
  wire y0_carry__5_i_19_n_0;
  wire y0_carry__5_i_20_n_0;
  wire y0_carry__5_i_21_n_0;
  wire y0_carry__5_i_22_n_0;
  wire y0_carry__5_i_23_n_0;
  wire y0_carry__5_i_24_n_0;
  wire y0_carry__5_i_25_n_0;
  wire y0_carry__5_i_26_n_0;
  wire y0_carry__5_i_27_n_0;
  wire y0_carry__5_i_28_n_0;
  wire y0_carry__5_i_29_n_0;
  wire y0_carry__5_i_30_n_0;
  wire y0_carry__5_i_31_n_0;
  wire y0_carry__5_i_32_n_0;
  wire y0_carry__5_i_33_n_0;
  wire y0_carry__5_i_34_n_0;
  wire y0_carry__5_i_35_n_0;
  wire y0_carry__5_i_36_n_0;
  wire y0_carry__5_i_37_n_0;
  wire y0_carry__5_i_38_n_0;
  wire y0_carry__5_i_39_n_0;
  wire y0_carry__5_i_40_n_0;
  wire y0_carry__5_i_41_n_0;
  wire y0_carry__5_i_42_n_0;
  wire y0_carry__5_i_43_n_0;
  wire y0_carry__5_i_44_n_0;
  wire y0_carry__5_i_45_n_0;
  wire y0_carry__5_i_46_n_0;
  wire y0_carry__5_i_47_n_0;
  wire y0_carry__5_i_48_n_0;
  wire y0_carry__5_i_49_n_0;
  wire y0_carry__5_i_50_n_0;
  wire y0_carry__5_i_51_n_0;
  wire y0_carry__5_i_52_n_0;
  wire y0_carry__5_i_53_n_0;
  wire y0_carry__5_i_54_n_0;
  wire y0_carry__5_i_55_n_0;
  wire y0_carry__5_i_56_n_0;
  wire y0_carry__5_i_9_n_0;
  wire y0_carry__6_i_10_n_0;
  wire y0_carry__6_i_11_n_0;
  wire y0_carry__6_i_12_n_0;
  wire y0_carry__6_i_13_n_0;
  wire y0_carry__6_i_14_n_0;
  wire y0_carry__6_i_15_n_0;
  wire y0_carry__6_i_16_n_0;
  wire y0_carry__6_i_17_n_0;
  wire y0_carry__6_i_18_n_0;
  wire y0_carry__6_i_19_n_0;
  wire y0_carry__6_i_20_n_0;
  wire y0_carry__6_i_21_n_0;
  wire y0_carry__6_i_22_n_0;
  wire y0_carry__6_i_23_n_0;
  wire y0_carry__6_i_24_n_0;
  wire y0_carry__6_i_25_n_0;
  wire y0_carry__6_i_26_n_0;
  wire y0_carry__6_i_27_n_0;
  wire y0_carry__6_i_28_n_0;
  wire y0_carry__6_i_29_n_0;
  wire y0_carry__6_i_30_n_0;
  wire y0_carry__6_i_31_n_0;
  wire y0_carry__6_i_32_n_0;
  wire y0_carry__6_i_33_n_0;
  wire y0_carry__6_i_34_n_0;
  wire y0_carry__6_i_35_n_0;
  wire y0_carry__6_i_36_n_0;
  wire y0_carry__6_i_37_n_0;
  wire y0_carry__6_i_38_n_0;
  wire y0_carry__6_i_39_n_0;
  wire y0_carry__6_i_40_n_0;
  wire y0_carry__6_i_41_n_0;
  wire y0_carry__6_i_42_n_0;
  wire y0_carry__6_i_43_n_0;
  wire y0_carry__6_i_44_n_0;
  wire y0_carry__6_i_45_n_0;
  wire y0_carry__6_i_46_n_0;
  wire y0_carry__6_i_47_n_0;
  wire y0_carry__6_i_48_n_0;
  wire y0_carry__6_i_49_n_0;
  wire y0_carry__6_i_50_n_0;
  wire y0_carry__6_i_51_n_0;
  wire y0_carry__6_i_52_n_0;
  wire y0_carry__6_i_53_n_0;
  wire y0_carry__6_i_54_n_0;
  wire y0_carry__6_i_55_n_0;
  wire y0_carry__6_i_56_n_0;
  wire y0_carry__6_i_57_n_0;
  wire y0_carry__6_i_8_n_0;
  wire y0_carry__6_i_9_n_0;
  wire y0_carry_i_10_n_0;
  wire y0_carry_i_11_n_0;
  wire y0_carry_i_12_n_0;
  wire y0_carry_i_13_n_0;
  wire y0_carry_i_14_n_0;
  wire y0_carry_i_15_n_0;
  wire y0_carry_i_16_n_0;
  wire y0_carry_i_17_n_0;
  wire y0_carry_i_18_n_0;
  wire y0_carry_i_19_n_0;
  wire y0_carry_i_20_n_0;
  wire y0_carry_i_21_n_0;
  wire y0_carry_i_22_n_0;
  wire y0_carry_i_23_n_0;
  wire y0_carry_i_24_n_0;
  wire y0_carry_i_25_n_0;
  wire y0_carry_i_26_n_0;
  wire y0_carry_i_27_n_0;
  wire y0_carry_i_28_n_0;
  wire y0_carry_i_29_n_0;
  wire y0_carry_i_30_n_0;
  wire y0_carry_i_31_n_0;
  wire y0_carry_i_32_n_0;
  wire y0_carry_i_33_n_0;
  wire y0_carry_i_34_n_0;
  wire y0_carry_i_35_n_0;
  wire y0_carry_i_36_n_0;
  wire y0_carry_i_37_n_0;
  wire y0_carry_i_38_n_0;
  wire y0_carry_i_39_n_0;
  wire y0_carry_i_40_n_0;
  wire y0_carry_i_41_n_0;
  wire y0_carry_i_42_n_0;
  wire y0_carry_i_43_n_0;
  wire y0_carry_i_44_n_0;
  wire y0_carry_i_45_n_0;
  wire y0_carry_i_46_n_0;
  wire y0_carry_i_47_n_0;
  wire y0_carry_i_48_n_0;
  wire y0_carry_i_49_n_0;
  wire y0_carry_i_50_n_0;
  wire y0_carry_i_51_n_0;
  wire y0_carry_i_52_n_0;
  wire y0_carry_i_53_n_0;
  wire y0_carry_i_54_n_0;
  wire y0_carry_i_55_n_0;
  wire y0_carry_i_56_n_0;
  wire y0_carry_i_9_n_0;
  wire [0:0]\y0_inferred__0/i__carry__6 ;

  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__0_i_1
       (.I0(dbu_rf_rd1[7]),
        .I1(d[7]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[7]),
        .O(\bbstub_spo[7]_0 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__0_i_2
       (.I0(dbu_rf_rd1[6]),
        .I1(d[6]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[6]),
        .O(\bbstub_spo[7]_0 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__0_i_3
       (.I0(dbu_rf_rd1[5]),
        .I1(d[5]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[5]),
        .O(\bbstub_spo[7]_0 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__0_i_4
       (.I0(dbu_rf_rd1[4]),
        .I1(d[4]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[4]),
        .O(\bbstub_spo[7]_0 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__1_i_1
       (.I0(dbu_rf_rd1[11]),
        .I1(d[11]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[11]),
        .O(\bbstub_spo[11]_0 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__1_i_2
       (.I0(dbu_rf_rd1[10]),
        .I1(d[10]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[10]),
        .O(\bbstub_spo[11]_0 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__1_i_3
       (.I0(dbu_rf_rd1[9]),
        .I1(d[9]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[9]),
        .O(\bbstub_spo[11]_0 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__1_i_4
       (.I0(dbu_rf_rd1[8]),
        .I1(d[8]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[8]),
        .O(\bbstub_spo[11]_0 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__2_i_1
       (.I0(dbu_rf_rd1[15]),
        .I1(d[15]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_5 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__2_i_2
       (.I0(dbu_rf_rd1[14]),
        .I1(d[14]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[14]),
        .O(\bbstub_spo[15]_5 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__2_i_3
       (.I0(dbu_rf_rd1[13]),
        .I1(d[13]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[13]),
        .O(\bbstub_spo[15]_5 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__2_i_4
       (.I0(dbu_rf_rd1[12]),
        .I1(d[12]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[12]),
        .O(\bbstub_spo[15]_5 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__3_i_1
       (.I0(dbu_rf_rd1[19]),
        .I1(d[19]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_6 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__3_i_2
       (.I0(dbu_rf_rd1[18]),
        .I1(d[18]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_6 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__3_i_3
       (.I0(dbu_rf_rd1[17]),
        .I1(d[17]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_6 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__3_i_4
       (.I0(dbu_rf_rd1[16]),
        .I1(d[16]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_6 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__4_i_1
       (.I0(dbu_rf_rd1[23]),
        .I1(d[23]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_7 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__4_i_2
       (.I0(dbu_rf_rd1[22]),
        .I1(d[22]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_7 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__4_i_3
       (.I0(dbu_rf_rd1[21]),
        .I1(d[21]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_7 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__4_i_4
       (.I0(dbu_rf_rd1[20]),
        .I1(d[20]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_7 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__5_i_1
       (.I0(dbu_rf_rd1[27]),
        .I1(d[27]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_8 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__5_i_2
       (.I0(dbu_rf_rd1[26]),
        .I1(d[26]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_8 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__5_i_3
       (.I0(dbu_rf_rd1[25]),
        .I1(d[25]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_8 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__5_i_4
       (.I0(dbu_rf_rd1[24]),
        .I1(d[24]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_8 [0]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    i__carry__6_i_1
       (.I0(y0_carry__6_i_20_n_0),
        .I1(spo[21]),
        .I2(y0_carry__6_i_21_n_0),
        .I3(d[31]),
        .I4(\y0_inferred__0/i__carry__6 ),
        .I5(spo[15]),
        .O(\bbstub_spo[15]_4 [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__6_i_2
       (.I0(dbu_rf_rd1[30]),
        .I1(d[30]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_4 [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__6_i_3
       (.I0(dbu_rf_rd1[29]),
        .I1(d[29]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_4 [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__6_i_4
       (.I0(dbu_rf_rd1[28]),
        .I1(d[28]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_4 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry_i_1
       (.I0(dbu_rf_rd1[3]),
        .I1(d[3]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[3]),
        .O(\bbstub_spo[3] [3]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry_i_2
       (.I0(dbu_rf_rd1[2]),
        .I1(d[2]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[2]),
        .O(\bbstub_spo[3] [2]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry_i_3
       (.I0(dbu_rf_rd1[1]),
        .I1(d[1]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[1]),
        .O(\bbstub_spo[3] [1]));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry_i_4
       (.I0(dbu_rf_rd1[0]),
        .I1(d[0]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[0]),
        .O(\bbstub_spo[3] [0]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \led_OBUF[2]_inst_i_2 
       (.I0(spo[31]),
        .I1(spo[30]),
        .I2(spo[27]),
        .I3(spo[28]),
        .I4(spo[29]),
        .I5(spo[26]),
        .O(dbu_status[0]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \led_OBUF[7]_inst_i_2 
       (.I0(spo[28]),
        .I1(spo[30]),
        .I2(spo[27]),
        .I3(spo[26]),
        .I4(spo[29]),
        .I5(spo[31]),
        .O(dbu_status[1]));
  LUT6 #(
    .INIT(64'h00A0000000000A08)) 
    \led_OBUF[8]_inst_i_2 
       (.I0(\bbstub_spo[30] ),
        .I1(\led_OBUF[9]_inst_i_3_n_0 ),
        .I2(spo[31]),
        .I3(spo[29]),
        .I4(spo[27]),
        .I5(spo[26]),
        .O(\bbstub_spo[26] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \led_OBUF[9]_inst_i_2 
       (.I0(\led_OBUF[9]_inst_i_3_n_0 ),
        .I1(spo[26]),
        .I2(spo[31]),
        .I3(spo[28]),
        .I4(spo[27]),
        .I5(\led_OBUF[9]_inst_i_4_n_0 ),
        .O(dbu_status[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \led_OBUF[9]_inst_i_3 
       (.I0(spo[0]),
        .I1(spo[4]),
        .I2(spo[1]),
        .I3(spo[5]),
        .I4(spo[3]),
        .I5(spo[2]),
        .O(\led_OBUF[9]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \led_OBUF[9]_inst_i_4 
       (.I0(spo[30]),
        .I1(spo[29]),
        .O(\led_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_10
       (.I0(memory_i_52_n_0),
        .I1(memory_i_53_n_0),
        .I2(spo[16]),
        .I3(memory_i_54_n_0),
        .I4(spo[17]),
        .I5(memory_i_55_n_0),
        .O(d[28]));
  MUXF7 memory_i_100
       (.I0(memory_i_290_n_0),
        .I1(memory_i_291_n_0),
        .O(memory_i_100_n_0),
        .S(spo[18]));
  MUXF7 memory_i_101
       (.I0(memory_i_292_n_0),
        .I1(memory_i_293_n_0),
        .O(memory_i_101_n_0),
        .S(spo[18]));
  MUXF7 memory_i_102
       (.I0(memory_i_294_n_0),
        .I1(memory_i_295_n_0),
        .O(memory_i_102_n_0),
        .S(spo[18]));
  MUXF7 memory_i_103
       (.I0(memory_i_296_n_0),
        .I1(memory_i_297_n_0),
        .O(memory_i_103_n_0),
        .S(spo[18]));
  MUXF7 memory_i_104
       (.I0(memory_i_298_n_0),
        .I1(memory_i_299_n_0),
        .O(memory_i_104_n_0),
        .S(spo[18]));
  MUXF7 memory_i_105
       (.I0(memory_i_300_n_0),
        .I1(memory_i_301_n_0),
        .O(memory_i_105_n_0),
        .S(spo[18]));
  MUXF7 memory_i_106
       (.I0(memory_i_302_n_0),
        .I1(memory_i_303_n_0),
        .O(memory_i_106_n_0),
        .S(spo[18]));
  MUXF7 memory_i_107
       (.I0(memory_i_304_n_0),
        .I1(memory_i_305_n_0),
        .O(memory_i_107_n_0),
        .S(spo[18]));
  MUXF7 memory_i_108
       (.I0(memory_i_306_n_0),
        .I1(memory_i_307_n_0),
        .O(memory_i_108_n_0),
        .S(spo[18]));
  MUXF7 memory_i_109
       (.I0(memory_i_308_n_0),
        .I1(memory_i_309_n_0),
        .O(memory_i_109_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_11
       (.I0(memory_i_56_n_0),
        .I1(memory_i_57_n_0),
        .I2(spo[16]),
        .I3(memory_i_58_n_0),
        .I4(spo[17]),
        .I5(memory_i_59_n_0),
        .O(d[27]));
  MUXF7 memory_i_110
       (.I0(memory_i_310_n_0),
        .I1(memory_i_311_n_0),
        .O(memory_i_110_n_0),
        .S(spo[18]));
  MUXF7 memory_i_111
       (.I0(memory_i_312_n_0),
        .I1(memory_i_313_n_0),
        .O(memory_i_111_n_0),
        .S(spo[18]));
  MUXF7 memory_i_112
       (.I0(memory_i_314_n_0),
        .I1(memory_i_315_n_0),
        .O(memory_i_112_n_0),
        .S(spo[18]));
  MUXF7 memory_i_113
       (.I0(memory_i_316_n_0),
        .I1(memory_i_317_n_0),
        .O(memory_i_113_n_0),
        .S(spo[18]));
  MUXF7 memory_i_114
       (.I0(memory_i_318_n_0),
        .I1(memory_i_319_n_0),
        .O(memory_i_114_n_0),
        .S(spo[18]));
  MUXF7 memory_i_115
       (.I0(memory_i_320_n_0),
        .I1(memory_i_321_n_0),
        .O(memory_i_115_n_0),
        .S(spo[18]));
  MUXF7 memory_i_116
       (.I0(memory_i_322_n_0),
        .I1(memory_i_323_n_0),
        .O(memory_i_116_n_0),
        .S(spo[18]));
  MUXF7 memory_i_117
       (.I0(memory_i_324_n_0),
        .I1(memory_i_325_n_0),
        .O(memory_i_117_n_0),
        .S(spo[18]));
  MUXF7 memory_i_118
       (.I0(memory_i_326_n_0),
        .I1(memory_i_327_n_0),
        .O(memory_i_118_n_0),
        .S(spo[18]));
  MUXF7 memory_i_119
       (.I0(memory_i_328_n_0),
        .I1(memory_i_329_n_0),
        .O(memory_i_119_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_12
       (.I0(memory_i_60_n_0),
        .I1(memory_i_61_n_0),
        .I2(spo[16]),
        .I3(memory_i_62_n_0),
        .I4(spo[17]),
        .I5(memory_i_63_n_0),
        .O(d[26]));
  MUXF7 memory_i_120
       (.I0(memory_i_330_n_0),
        .I1(memory_i_331_n_0),
        .O(memory_i_120_n_0),
        .S(spo[18]));
  MUXF7 memory_i_121
       (.I0(memory_i_332_n_0),
        .I1(memory_i_333_n_0),
        .O(memory_i_121_n_0),
        .S(spo[18]));
  MUXF7 memory_i_122
       (.I0(memory_i_334_n_0),
        .I1(memory_i_335_n_0),
        .O(memory_i_122_n_0),
        .S(spo[18]));
  MUXF7 memory_i_123
       (.I0(memory_i_336_n_0),
        .I1(memory_i_337_n_0),
        .O(memory_i_123_n_0),
        .S(spo[18]));
  MUXF7 memory_i_124
       (.I0(memory_i_338_n_0),
        .I1(memory_i_339_n_0),
        .O(memory_i_124_n_0),
        .S(spo[18]));
  MUXF7 memory_i_125
       (.I0(memory_i_340_n_0),
        .I1(memory_i_341_n_0),
        .O(memory_i_125_n_0),
        .S(spo[18]));
  MUXF7 memory_i_126
       (.I0(memory_i_342_n_0),
        .I1(memory_i_343_n_0),
        .O(memory_i_126_n_0),
        .S(spo[18]));
  MUXF7 memory_i_127
       (.I0(memory_i_344_n_0),
        .I1(memory_i_345_n_0),
        .O(memory_i_127_n_0),
        .S(spo[18]));
  MUXF7 memory_i_128
       (.I0(memory_i_346_n_0),
        .I1(memory_i_347_n_0),
        .O(memory_i_128_n_0),
        .S(spo[18]));
  MUXF7 memory_i_129
       (.I0(memory_i_348_n_0),
        .I1(memory_i_349_n_0),
        .O(memory_i_129_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_13
       (.I0(memory_i_64_n_0),
        .I1(memory_i_65_n_0),
        .I2(spo[16]),
        .I3(memory_i_66_n_0),
        .I4(spo[17]),
        .I5(memory_i_67_n_0),
        .O(d[25]));
  MUXF7 memory_i_130
       (.I0(memory_i_350_n_0),
        .I1(memory_i_351_n_0),
        .O(memory_i_130_n_0),
        .S(spo[18]));
  MUXF7 memory_i_131
       (.I0(memory_i_352_n_0),
        .I1(memory_i_353_n_0),
        .O(memory_i_131_n_0),
        .S(spo[18]));
  MUXF7 memory_i_132
       (.I0(memory_i_354_n_0),
        .I1(memory_i_355_n_0),
        .O(memory_i_132_n_0),
        .S(spo[18]));
  MUXF7 memory_i_133
       (.I0(memory_i_356_n_0),
        .I1(memory_i_357_n_0),
        .O(memory_i_133_n_0),
        .S(spo[18]));
  MUXF7 memory_i_134
       (.I0(memory_i_358_n_0),
        .I1(memory_i_359_n_0),
        .O(memory_i_134_n_0),
        .S(spo[18]));
  MUXF7 memory_i_135
       (.I0(memory_i_360_n_0),
        .I1(memory_i_361_n_0),
        .O(memory_i_135_n_0),
        .S(spo[18]));
  MUXF7 memory_i_136
       (.I0(memory_i_362_n_0),
        .I1(memory_i_363_n_0),
        .O(memory_i_136_n_0),
        .S(spo[18]));
  MUXF7 memory_i_137
       (.I0(memory_i_364_n_0),
        .I1(memory_i_365_n_0),
        .O(memory_i_137_n_0),
        .S(spo[18]));
  MUXF7 memory_i_138
       (.I0(memory_i_366_n_0),
        .I1(memory_i_367_n_0),
        .O(memory_i_138_n_0),
        .S(spo[18]));
  MUXF7 memory_i_139
       (.I0(memory_i_368_n_0),
        .I1(memory_i_369_n_0),
        .O(memory_i_139_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_14
       (.I0(memory_i_68_n_0),
        .I1(memory_i_69_n_0),
        .I2(spo[16]),
        .I3(memory_i_70_n_0),
        .I4(spo[17]),
        .I5(memory_i_71_n_0),
        .O(d[24]));
  MUXF7 memory_i_140
       (.I0(memory_i_370_n_0),
        .I1(memory_i_371_n_0),
        .O(memory_i_140_n_0),
        .S(spo[18]));
  MUXF7 memory_i_141
       (.I0(memory_i_372_n_0),
        .I1(memory_i_373_n_0),
        .O(memory_i_141_n_0),
        .S(spo[18]));
  MUXF7 memory_i_142
       (.I0(memory_i_374_n_0),
        .I1(memory_i_375_n_0),
        .O(memory_i_142_n_0),
        .S(spo[18]));
  MUXF7 memory_i_143
       (.I0(memory_i_376_n_0),
        .I1(memory_i_377_n_0),
        .O(memory_i_143_n_0),
        .S(spo[18]));
  MUXF7 memory_i_144
       (.I0(memory_i_378_n_0),
        .I1(memory_i_379_n_0),
        .O(memory_i_144_n_0),
        .S(spo[18]));
  MUXF7 memory_i_145
       (.I0(memory_i_380_n_0),
        .I1(memory_i_381_n_0),
        .O(memory_i_145_n_0),
        .S(spo[18]));
  MUXF7 memory_i_146
       (.I0(memory_i_382_n_0),
        .I1(memory_i_383_n_0),
        .O(memory_i_146_n_0),
        .S(spo[18]));
  MUXF7 memory_i_147
       (.I0(memory_i_384_n_0),
        .I1(memory_i_385_n_0),
        .O(memory_i_147_n_0),
        .S(spo[18]));
  MUXF7 memory_i_148
       (.I0(memory_i_386_n_0),
        .I1(memory_i_387_n_0),
        .O(memory_i_148_n_0),
        .S(spo[18]));
  MUXF7 memory_i_149
       (.I0(memory_i_388_n_0),
        .I1(memory_i_389_n_0),
        .O(memory_i_149_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_15
       (.I0(memory_i_72_n_0),
        .I1(memory_i_73_n_0),
        .I2(spo[16]),
        .I3(memory_i_74_n_0),
        .I4(spo[17]),
        .I5(memory_i_75_n_0),
        .O(d[23]));
  MUXF7 memory_i_150
       (.I0(memory_i_390_n_0),
        .I1(memory_i_391_n_0),
        .O(memory_i_150_n_0),
        .S(spo[18]));
  MUXF7 memory_i_151
       (.I0(memory_i_392_n_0),
        .I1(memory_i_393_n_0),
        .O(memory_i_151_n_0),
        .S(spo[18]));
  MUXF7 memory_i_152
       (.I0(memory_i_394_n_0),
        .I1(memory_i_395_n_0),
        .O(memory_i_152_n_0),
        .S(spo[18]));
  MUXF7 memory_i_153
       (.I0(memory_i_396_n_0),
        .I1(memory_i_397_n_0),
        .O(memory_i_153_n_0),
        .S(spo[18]));
  MUXF7 memory_i_154
       (.I0(memory_i_398_n_0),
        .I1(memory_i_399_n_0),
        .O(memory_i_154_n_0),
        .S(spo[18]));
  MUXF7 memory_i_155
       (.I0(memory_i_400_n_0),
        .I1(memory_i_401_n_0),
        .O(memory_i_155_n_0),
        .S(spo[18]));
  MUXF7 memory_i_156
       (.I0(memory_i_402_n_0),
        .I1(memory_i_403_n_0),
        .O(memory_i_156_n_0),
        .S(spo[18]));
  MUXF7 memory_i_157
       (.I0(memory_i_404_n_0),
        .I1(memory_i_405_n_0),
        .O(memory_i_157_n_0),
        .S(spo[18]));
  MUXF7 memory_i_158
       (.I0(memory_i_406_n_0),
        .I1(memory_i_407_n_0),
        .O(memory_i_158_n_0),
        .S(spo[18]));
  MUXF7 memory_i_159
       (.I0(memory_i_408_n_0),
        .I1(memory_i_409_n_0),
        .O(memory_i_159_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_16
       (.I0(memory_i_76_n_0),
        .I1(memory_i_77_n_0),
        .I2(spo[16]),
        .I3(memory_i_78_n_0),
        .I4(spo[17]),
        .I5(memory_i_79_n_0),
        .O(d[22]));
  MUXF7 memory_i_160
       (.I0(memory_i_410_n_0),
        .I1(memory_i_411_n_0),
        .O(memory_i_160_n_0),
        .S(spo[18]));
  MUXF7 memory_i_161
       (.I0(memory_i_412_n_0),
        .I1(memory_i_413_n_0),
        .O(memory_i_161_n_0),
        .S(spo[18]));
  MUXF7 memory_i_162
       (.I0(memory_i_414_n_0),
        .I1(memory_i_415_n_0),
        .O(memory_i_162_n_0),
        .S(spo[18]));
  MUXF7 memory_i_163
       (.I0(memory_i_416_n_0),
        .I1(memory_i_417_n_0),
        .O(memory_i_163_n_0),
        .S(spo[18]));
  MUXF7 memory_i_164
       (.I0(memory_i_418_n_0),
        .I1(memory_i_419_n_0),
        .O(memory_i_164_n_0),
        .S(spo[18]));
  MUXF7 memory_i_165
       (.I0(memory_i_420_n_0),
        .I1(memory_i_421_n_0),
        .O(memory_i_165_n_0),
        .S(spo[18]));
  MUXF7 memory_i_166
       (.I0(memory_i_422_n_0),
        .I1(memory_i_423_n_0),
        .O(memory_i_166_n_0),
        .S(spo[18]));
  MUXF7 memory_i_167
       (.I0(memory_i_424_n_0),
        .I1(memory_i_425_n_0),
        .O(memory_i_167_n_0),
        .S(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    memory_i_168
       (.I0(spo[28]),
        .I1(spo[30]),
        .O(\bbstub_spo[30] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_17
       (.I0(memory_i_80_n_0),
        .I1(memory_i_81_n_0),
        .I2(spo[16]),
        .I3(memory_i_82_n_0),
        .I4(spo[17]),
        .I5(memory_i_83_n_0),
        .O(d[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_170
       (.I0(\registers_reg[27] [31]),
        .I1(\registers_reg[11] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [31]),
        .O(memory_i_170_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_171
       (.I0(\registers_reg[31] [31]),
        .I1(\registers_reg[15] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [31]),
        .O(memory_i_171_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_172
       (.I0(\registers_reg[25] [31]),
        .I1(\registers_reg[9] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [31]),
        .O(memory_i_172_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_173
       (.I0(\registers_reg[29] [31]),
        .I1(\registers_reg[13] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [31]),
        .O(memory_i_173_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_174
       (.I0(\registers_reg[26] [31]),
        .I1(\registers_reg[10] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [31]),
        .O(memory_i_174_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_175
       (.I0(\registers_reg[30] [31]),
        .I1(\registers_reg[14] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [31]),
        .O(memory_i_175_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_176
       (.I0(\registers_reg[24] [31]),
        .I1(\registers_reg[8] [31]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [31]),
        .O(memory_i_176_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_177
       (.I0(\registers_reg[28] [31]),
        .I1(\registers_reg[12] [31]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [31]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [31]),
        .O(memory_i_177_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_178
       (.I0(\registers_reg[27] [30]),
        .I1(\registers_reg[11] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [30]),
        .O(memory_i_178_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_179
       (.I0(\registers_reg[31] [30]),
        .I1(\registers_reg[15] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [30]),
        .O(memory_i_179_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_18
       (.I0(memory_i_84_n_0),
        .I1(memory_i_85_n_0),
        .I2(spo[16]),
        .I3(memory_i_86_n_0),
        .I4(spo[17]),
        .I5(memory_i_87_n_0),
        .O(d[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_180
       (.I0(\registers_reg[25] [30]),
        .I1(\registers_reg[9] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [30]),
        .O(memory_i_180_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_181
       (.I0(\registers_reg[29] [30]),
        .I1(\registers_reg[13] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [30]),
        .O(memory_i_181_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_182
       (.I0(\registers_reg[26] [30]),
        .I1(\registers_reg[10] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [30]),
        .O(memory_i_182_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_183
       (.I0(\registers_reg[30] [30]),
        .I1(\registers_reg[14] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [30]),
        .O(memory_i_183_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_184
       (.I0(\registers_reg[24] [30]),
        .I1(\registers_reg[8] [30]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [30]),
        .O(memory_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_185
       (.I0(\registers_reg[28] [30]),
        .I1(\registers_reg[12] [30]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [30]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [30]),
        .O(memory_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_186
       (.I0(\registers_reg[27] [29]),
        .I1(\registers_reg[11] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [29]),
        .O(memory_i_186_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_187
       (.I0(\registers_reg[31] [29]),
        .I1(\registers_reg[15] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [29]),
        .O(memory_i_187_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_188
       (.I0(\registers_reg[25] [29]),
        .I1(\registers_reg[9] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [29]),
        .O(memory_i_188_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_189
       (.I0(\registers_reg[29] [29]),
        .I1(\registers_reg[13] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [29]),
        .O(memory_i_189_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_19
       (.I0(memory_i_88_n_0),
        .I1(memory_i_89_n_0),
        .I2(spo[16]),
        .I3(memory_i_90_n_0),
        .I4(spo[17]),
        .I5(memory_i_91_n_0),
        .O(d[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_190
       (.I0(\registers_reg[26] [29]),
        .I1(\registers_reg[10] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [29]),
        .O(memory_i_190_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_191
       (.I0(\registers_reg[30] [29]),
        .I1(\registers_reg[14] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [29]),
        .O(memory_i_191_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_192
       (.I0(\registers_reg[24] [29]),
        .I1(\registers_reg[8] [29]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [29]),
        .O(memory_i_192_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_193
       (.I0(\registers_reg[28] [29]),
        .I1(\registers_reg[12] [29]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [29]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [29]),
        .O(memory_i_193_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_194
       (.I0(\registers_reg[27] [28]),
        .I1(\registers_reg[11] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [28]),
        .O(memory_i_194_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_195
       (.I0(\registers_reg[31] [28]),
        .I1(\registers_reg[15] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [28]),
        .O(memory_i_195_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_196
       (.I0(\registers_reg[25] [28]),
        .I1(\registers_reg[9] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [28]),
        .O(memory_i_196_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_197
       (.I0(\registers_reg[29] [28]),
        .I1(\registers_reg[13] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [28]),
        .O(memory_i_197_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_198
       (.I0(\registers_reg[26] [28]),
        .I1(\registers_reg[10] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [28]),
        .O(memory_i_198_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_199
       (.I0(\registers_reg[30] [28]),
        .I1(\registers_reg[14] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [28]),
        .O(memory_i_199_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_20
       (.I0(memory_i_92_n_0),
        .I1(memory_i_93_n_0),
        .I2(spo[16]),
        .I3(memory_i_94_n_0),
        .I4(spo[17]),
        .I5(memory_i_95_n_0),
        .O(d[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_200
       (.I0(\registers_reg[24] [28]),
        .I1(\registers_reg[8] [28]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [28]),
        .O(memory_i_200_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_201
       (.I0(\registers_reg[28] [28]),
        .I1(\registers_reg[12] [28]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [28]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [28]),
        .O(memory_i_201_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_202
       (.I0(\registers_reg[27] [27]),
        .I1(\registers_reg[11] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [27]),
        .O(memory_i_202_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_203
       (.I0(\registers_reg[31] [27]),
        .I1(\registers_reg[15] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [27]),
        .O(memory_i_203_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_204
       (.I0(\registers_reg[25] [27]),
        .I1(\registers_reg[9] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [27]),
        .O(memory_i_204_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_205
       (.I0(\registers_reg[29] [27]),
        .I1(\registers_reg[13] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [27]),
        .O(memory_i_205_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_206
       (.I0(\registers_reg[26] [27]),
        .I1(\registers_reg[10] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [27]),
        .O(memory_i_206_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_207
       (.I0(\registers_reg[30] [27]),
        .I1(\registers_reg[14] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [27]),
        .O(memory_i_207_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_208
       (.I0(\registers_reg[24] [27]),
        .I1(\registers_reg[8] [27]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [27]),
        .O(memory_i_208_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_209
       (.I0(\registers_reg[28] [27]),
        .I1(\registers_reg[12] [27]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [27]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [27]),
        .O(memory_i_209_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_21
       (.I0(memory_i_96_n_0),
        .I1(memory_i_97_n_0),
        .I2(spo[16]),
        .I3(memory_i_98_n_0),
        .I4(spo[17]),
        .I5(memory_i_99_n_0),
        .O(d[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_210
       (.I0(\registers_reg[27] [26]),
        .I1(\registers_reg[11] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [26]),
        .O(memory_i_210_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_211
       (.I0(\registers_reg[31] [26]),
        .I1(\registers_reg[15] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [26]),
        .O(memory_i_211_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_212
       (.I0(\registers_reg[25] [26]),
        .I1(\registers_reg[9] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [26]),
        .O(memory_i_212_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_213
       (.I0(\registers_reg[29] [26]),
        .I1(\registers_reg[13] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [26]),
        .O(memory_i_213_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_214
       (.I0(\registers_reg[26] [26]),
        .I1(\registers_reg[10] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [26]),
        .O(memory_i_214_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_215
       (.I0(\registers_reg[30] [26]),
        .I1(\registers_reg[14] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [26]),
        .O(memory_i_215_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_216
       (.I0(\registers_reg[24] [26]),
        .I1(\registers_reg[8] [26]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [26]),
        .O(memory_i_216_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_217
       (.I0(\registers_reg[28] [26]),
        .I1(\registers_reg[12] [26]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [26]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [26]),
        .O(memory_i_217_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_218
       (.I0(\registers_reg[27] [25]),
        .I1(\registers_reg[11] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [25]),
        .O(memory_i_218_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_219
       (.I0(\registers_reg[31] [25]),
        .I1(\registers_reg[15] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [25]),
        .O(memory_i_219_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_22
       (.I0(memory_i_100_n_0),
        .I1(memory_i_101_n_0),
        .I2(spo[16]),
        .I3(memory_i_102_n_0),
        .I4(spo[17]),
        .I5(memory_i_103_n_0),
        .O(d[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_220
       (.I0(\registers_reg[25] [25]),
        .I1(\registers_reg[9] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [25]),
        .O(memory_i_220_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_221
       (.I0(\registers_reg[29] [25]),
        .I1(\registers_reg[13] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [25]),
        .O(memory_i_221_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_222
       (.I0(\registers_reg[26] [25]),
        .I1(\registers_reg[10] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [25]),
        .O(memory_i_222_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_223
       (.I0(\registers_reg[30] [25]),
        .I1(\registers_reg[14] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [25]),
        .O(memory_i_223_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_224
       (.I0(\registers_reg[24] [25]),
        .I1(\registers_reg[8] [25]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [25]),
        .O(memory_i_224_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_225
       (.I0(\registers_reg[28] [25]),
        .I1(\registers_reg[12] [25]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [25]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [25]),
        .O(memory_i_225_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_226
       (.I0(\registers_reg[27] [24]),
        .I1(\registers_reg[11] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [24]),
        .O(memory_i_226_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_227
       (.I0(\registers_reg[31] [24]),
        .I1(\registers_reg[15] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [24]),
        .O(memory_i_227_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_228
       (.I0(\registers_reg[25] [24]),
        .I1(\registers_reg[9] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [24]),
        .O(memory_i_228_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_229
       (.I0(\registers_reg[29] [24]),
        .I1(\registers_reg[13] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [24]),
        .O(memory_i_229_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_23
       (.I0(memory_i_104_n_0),
        .I1(memory_i_105_n_0),
        .I2(spo[16]),
        .I3(memory_i_106_n_0),
        .I4(spo[17]),
        .I5(memory_i_107_n_0),
        .O(d[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_230
       (.I0(\registers_reg[26] [24]),
        .I1(\registers_reg[10] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [24]),
        .O(memory_i_230_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_231
       (.I0(\registers_reg[30] [24]),
        .I1(\registers_reg[14] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [24]),
        .O(memory_i_231_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_232
       (.I0(\registers_reg[24] [24]),
        .I1(\registers_reg[8] [24]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [24]),
        .O(memory_i_232_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_233
       (.I0(\registers_reg[28] [24]),
        .I1(\registers_reg[12] [24]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [24]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [24]),
        .O(memory_i_233_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_234
       (.I0(\registers_reg[27] [23]),
        .I1(\registers_reg[11] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [23]),
        .O(memory_i_234_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_235
       (.I0(\registers_reg[31] [23]),
        .I1(\registers_reg[15] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [23]),
        .O(memory_i_235_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_236
       (.I0(\registers_reg[25] [23]),
        .I1(\registers_reg[9] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [23]),
        .O(memory_i_236_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_237
       (.I0(\registers_reg[29] [23]),
        .I1(\registers_reg[13] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [23]),
        .O(memory_i_237_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_238
       (.I0(\registers_reg[26] [23]),
        .I1(\registers_reg[10] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [23]),
        .O(memory_i_238_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_239
       (.I0(\registers_reg[30] [23]),
        .I1(\registers_reg[14] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [23]),
        .O(memory_i_239_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_24
       (.I0(memory_i_108_n_0),
        .I1(memory_i_109_n_0),
        .I2(spo[16]),
        .I3(memory_i_110_n_0),
        .I4(spo[17]),
        .I5(memory_i_111_n_0),
        .O(d[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_240
       (.I0(\registers_reg[24] [23]),
        .I1(\registers_reg[8] [23]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [23]),
        .O(memory_i_240_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_241
       (.I0(\registers_reg[28] [23]),
        .I1(\registers_reg[12] [23]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [23]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [23]),
        .O(memory_i_241_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_242
       (.I0(\registers_reg[27] [22]),
        .I1(\registers_reg[11] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [22]),
        .O(memory_i_242_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_243
       (.I0(\registers_reg[31] [22]),
        .I1(\registers_reg[15] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [22]),
        .O(memory_i_243_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_244
       (.I0(\registers_reg[25] [22]),
        .I1(\registers_reg[9] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [22]),
        .O(memory_i_244_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_245
       (.I0(\registers_reg[29] [22]),
        .I1(\registers_reg[13] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [22]),
        .O(memory_i_245_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_246
       (.I0(\registers_reg[26] [22]),
        .I1(\registers_reg[10] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [22]),
        .O(memory_i_246_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_247
       (.I0(\registers_reg[30] [22]),
        .I1(\registers_reg[14] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [22]),
        .O(memory_i_247_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_248
       (.I0(\registers_reg[24] [22]),
        .I1(\registers_reg[8] [22]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [22]),
        .O(memory_i_248_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_249
       (.I0(\registers_reg[28] [22]),
        .I1(\registers_reg[12] [22]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [22]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [22]),
        .O(memory_i_249_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_25
       (.I0(memory_i_112_n_0),
        .I1(memory_i_113_n_0),
        .I2(spo[16]),
        .I3(memory_i_114_n_0),
        .I4(spo[17]),
        .I5(memory_i_115_n_0),
        .O(d[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_250
       (.I0(\registers_reg[27] [21]),
        .I1(\registers_reg[11] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [21]),
        .O(memory_i_250_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_251
       (.I0(\registers_reg[31] [21]),
        .I1(\registers_reg[15] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [21]),
        .O(memory_i_251_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_252
       (.I0(\registers_reg[25] [21]),
        .I1(\registers_reg[9] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [21]),
        .O(memory_i_252_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_253
       (.I0(\registers_reg[29] [21]),
        .I1(\registers_reg[13] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [21]),
        .O(memory_i_253_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_254
       (.I0(\registers_reg[26] [21]),
        .I1(\registers_reg[10] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [21]),
        .O(memory_i_254_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_255
       (.I0(\registers_reg[30] [21]),
        .I1(\registers_reg[14] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [21]),
        .O(memory_i_255_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_256
       (.I0(\registers_reg[24] [21]),
        .I1(\registers_reg[8] [21]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [21]),
        .O(memory_i_256_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_257
       (.I0(\registers_reg[28] [21]),
        .I1(\registers_reg[12] [21]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [21]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [21]),
        .O(memory_i_257_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_258
       (.I0(\registers_reg[27] [20]),
        .I1(\registers_reg[11] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [20]),
        .O(memory_i_258_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_259
       (.I0(\registers_reg[31] [20]),
        .I1(\registers_reg[15] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [20]),
        .O(memory_i_259_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_26
       (.I0(memory_i_116_n_0),
        .I1(memory_i_117_n_0),
        .I2(spo[16]),
        .I3(memory_i_118_n_0),
        .I4(spo[17]),
        .I5(memory_i_119_n_0),
        .O(d[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_260
       (.I0(\registers_reg[25] [20]),
        .I1(\registers_reg[9] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [20]),
        .O(memory_i_260_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_261
       (.I0(\registers_reg[29] [20]),
        .I1(\registers_reg[13] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [20]),
        .O(memory_i_261_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_262
       (.I0(\registers_reg[26] [20]),
        .I1(\registers_reg[10] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [20]),
        .O(memory_i_262_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_263
       (.I0(\registers_reg[30] [20]),
        .I1(\registers_reg[14] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [20]),
        .O(memory_i_263_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_264
       (.I0(\registers_reg[24] [20]),
        .I1(\registers_reg[8] [20]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [20]),
        .O(memory_i_264_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_265
       (.I0(\registers_reg[28] [20]),
        .I1(\registers_reg[12] [20]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [20]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [20]),
        .O(memory_i_265_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_266
       (.I0(\registers_reg[27] [19]),
        .I1(\registers_reg[11] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [19]),
        .O(memory_i_266_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_267
       (.I0(\registers_reg[31] [19]),
        .I1(\registers_reg[15] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [19]),
        .O(memory_i_267_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_268
       (.I0(\registers_reg[25] [19]),
        .I1(\registers_reg[9] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [19]),
        .O(memory_i_268_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_269
       (.I0(\registers_reg[29] [19]),
        .I1(\registers_reg[13] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [19]),
        .O(memory_i_269_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_27
       (.I0(memory_i_120_n_0),
        .I1(memory_i_121_n_0),
        .I2(spo[16]),
        .I3(memory_i_122_n_0),
        .I4(spo[17]),
        .I5(memory_i_123_n_0),
        .O(d[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_270
       (.I0(\registers_reg[26] [19]),
        .I1(\registers_reg[10] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [19]),
        .O(memory_i_270_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_271
       (.I0(\registers_reg[30] [19]),
        .I1(\registers_reg[14] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [19]),
        .O(memory_i_271_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_272
       (.I0(\registers_reg[24] [19]),
        .I1(\registers_reg[8] [19]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [19]),
        .O(memory_i_272_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_273
       (.I0(\registers_reg[28] [19]),
        .I1(\registers_reg[12] [19]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [19]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [19]),
        .O(memory_i_273_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_274
       (.I0(\registers_reg[27] [18]),
        .I1(\registers_reg[11] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [18]),
        .O(memory_i_274_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_275
       (.I0(\registers_reg[31] [18]),
        .I1(\registers_reg[15] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [18]),
        .O(memory_i_275_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_276
       (.I0(\registers_reg[25] [18]),
        .I1(\registers_reg[9] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [18]),
        .O(memory_i_276_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_277
       (.I0(\registers_reg[29] [18]),
        .I1(\registers_reg[13] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [18]),
        .O(memory_i_277_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_278
       (.I0(\registers_reg[26] [18]),
        .I1(\registers_reg[10] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [18]),
        .O(memory_i_278_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_279
       (.I0(\registers_reg[30] [18]),
        .I1(\registers_reg[14] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [18]),
        .O(memory_i_279_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_28
       (.I0(memory_i_124_n_0),
        .I1(memory_i_125_n_0),
        .I2(spo[16]),
        .I3(memory_i_126_n_0),
        .I4(spo[17]),
        .I5(memory_i_127_n_0),
        .O(d[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_280
       (.I0(\registers_reg[24] [18]),
        .I1(\registers_reg[8] [18]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [18]),
        .O(memory_i_280_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_281
       (.I0(\registers_reg[28] [18]),
        .I1(\registers_reg[12] [18]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [18]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [18]),
        .O(memory_i_281_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_282
       (.I0(\registers_reg[27] [17]),
        .I1(\registers_reg[11] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [17]),
        .O(memory_i_282_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_283
       (.I0(\registers_reg[31] [17]),
        .I1(\registers_reg[15] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [17]),
        .O(memory_i_283_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_284
       (.I0(\registers_reg[25] [17]),
        .I1(\registers_reg[9] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [17]),
        .O(memory_i_284_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_285
       (.I0(\registers_reg[29] [17]),
        .I1(\registers_reg[13] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [17]),
        .O(memory_i_285_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_286
       (.I0(\registers_reg[26] [17]),
        .I1(\registers_reg[10] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [17]),
        .O(memory_i_286_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_287
       (.I0(\registers_reg[30] [17]),
        .I1(\registers_reg[14] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [17]),
        .O(memory_i_287_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_288
       (.I0(\registers_reg[24] [17]),
        .I1(\registers_reg[8] [17]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [17]),
        .O(memory_i_288_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_289
       (.I0(\registers_reg[28] [17]),
        .I1(\registers_reg[12] [17]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [17]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [17]),
        .O(memory_i_289_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_29
       (.I0(memory_i_128_n_0),
        .I1(memory_i_129_n_0),
        .I2(spo[16]),
        .I3(memory_i_130_n_0),
        .I4(spo[17]),
        .I5(memory_i_131_n_0),
        .O(d[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_290
       (.I0(\registers_reg[27] [16]),
        .I1(\registers_reg[11] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [16]),
        .O(memory_i_290_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_291
       (.I0(\registers_reg[31] [16]),
        .I1(\registers_reg[15] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [16]),
        .O(memory_i_291_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_292
       (.I0(\registers_reg[25] [16]),
        .I1(\registers_reg[9] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [16]),
        .O(memory_i_292_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_293
       (.I0(\registers_reg[29] [16]),
        .I1(\registers_reg[13] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [16]),
        .O(memory_i_293_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_294
       (.I0(\registers_reg[26] [16]),
        .I1(\registers_reg[10] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [16]),
        .O(memory_i_294_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_295
       (.I0(\registers_reg[30] [16]),
        .I1(\registers_reg[14] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [16]),
        .O(memory_i_295_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_296
       (.I0(\registers_reg[24] [16]),
        .I1(\registers_reg[8] [16]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [16]),
        .O(memory_i_296_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_297
       (.I0(\registers_reg[28] [16]),
        .I1(\registers_reg[12] [16]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [16]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [16]),
        .O(memory_i_297_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_298
       (.I0(\registers_reg[27] [15]),
        .I1(\registers_reg[11] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [15]),
        .O(memory_i_298_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_299
       (.I0(\registers_reg[31] [15]),
        .I1(\registers_reg[15] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [15]),
        .O(memory_i_299_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_30
       (.I0(memory_i_132_n_0),
        .I1(memory_i_133_n_0),
        .I2(spo[16]),
        .I3(memory_i_134_n_0),
        .I4(spo[17]),
        .I5(memory_i_135_n_0),
        .O(d[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_300
       (.I0(\registers_reg[25] [15]),
        .I1(\registers_reg[9] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [15]),
        .O(memory_i_300_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_301
       (.I0(\registers_reg[29] [15]),
        .I1(\registers_reg[13] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [15]),
        .O(memory_i_301_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_302
       (.I0(\registers_reg[26] [15]),
        .I1(\registers_reg[10] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [15]),
        .O(memory_i_302_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_303
       (.I0(\registers_reg[30] [15]),
        .I1(\registers_reg[14] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [15]),
        .O(memory_i_303_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_304
       (.I0(\registers_reg[24] [15]),
        .I1(\registers_reg[8] [15]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [15]),
        .O(memory_i_304_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_305
       (.I0(\registers_reg[28] [15]),
        .I1(\registers_reg[12] [15]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [15]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [15]),
        .O(memory_i_305_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_306
       (.I0(\registers_reg[27] [14]),
        .I1(\registers_reg[11] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [14]),
        .O(memory_i_306_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_307
       (.I0(\registers_reg[31] [14]),
        .I1(\registers_reg[15] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [14]),
        .O(memory_i_307_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_308
       (.I0(\registers_reg[25] [14]),
        .I1(\registers_reg[9] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [14]),
        .O(memory_i_308_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_309
       (.I0(\registers_reg[29] [14]),
        .I1(\registers_reg[13] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [14]),
        .O(memory_i_309_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_31
       (.I0(memory_i_136_n_0),
        .I1(memory_i_137_n_0),
        .I2(spo[16]),
        .I3(memory_i_138_n_0),
        .I4(spo[17]),
        .I5(memory_i_139_n_0),
        .O(d[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_310
       (.I0(\registers_reg[26] [14]),
        .I1(\registers_reg[10] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [14]),
        .O(memory_i_310_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_311
       (.I0(\registers_reg[30] [14]),
        .I1(\registers_reg[14] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [14]),
        .O(memory_i_311_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_312
       (.I0(\registers_reg[24] [14]),
        .I1(\registers_reg[8] [14]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [14]),
        .O(memory_i_312_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_313
       (.I0(\registers_reg[28] [14]),
        .I1(\registers_reg[12] [14]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [14]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [14]),
        .O(memory_i_313_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_314
       (.I0(\registers_reg[27] [13]),
        .I1(\registers_reg[11] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [13]),
        .O(memory_i_314_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_315
       (.I0(\registers_reg[31] [13]),
        .I1(\registers_reg[15] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [13]),
        .O(memory_i_315_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_316
       (.I0(\registers_reg[25] [13]),
        .I1(\registers_reg[9] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [13]),
        .O(memory_i_316_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_317
       (.I0(\registers_reg[29] [13]),
        .I1(\registers_reg[13] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [13]),
        .O(memory_i_317_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_318
       (.I0(\registers_reg[26] [13]),
        .I1(\registers_reg[10] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [13]),
        .O(memory_i_318_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_319
       (.I0(\registers_reg[30] [13]),
        .I1(\registers_reg[14] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [13]),
        .O(memory_i_319_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_32
       (.I0(memory_i_140_n_0),
        .I1(memory_i_141_n_0),
        .I2(spo[16]),
        .I3(memory_i_142_n_0),
        .I4(spo[17]),
        .I5(memory_i_143_n_0),
        .O(d[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_320
       (.I0(\registers_reg[24] [13]),
        .I1(\registers_reg[8] [13]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [13]),
        .O(memory_i_320_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_321
       (.I0(\registers_reg[28] [13]),
        .I1(\registers_reg[12] [13]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [13]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [13]),
        .O(memory_i_321_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_322
       (.I0(\registers_reg[27] [12]),
        .I1(\registers_reg[11] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [12]),
        .O(memory_i_322_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_323
       (.I0(\registers_reg[31] [12]),
        .I1(\registers_reg[15] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [12]),
        .O(memory_i_323_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_324
       (.I0(\registers_reg[25] [12]),
        .I1(\registers_reg[9] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [12]),
        .O(memory_i_324_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_325
       (.I0(\registers_reg[29] [12]),
        .I1(\registers_reg[13] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [12]),
        .O(memory_i_325_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_326
       (.I0(\registers_reg[26] [12]),
        .I1(\registers_reg[10] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [12]),
        .O(memory_i_326_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_327
       (.I0(\registers_reg[30] [12]),
        .I1(\registers_reg[14] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [12]),
        .O(memory_i_327_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_328
       (.I0(\registers_reg[24] [12]),
        .I1(\registers_reg[8] [12]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [12]),
        .O(memory_i_328_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_329
       (.I0(\registers_reg[28] [12]),
        .I1(\registers_reg[12] [12]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [12]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [12]),
        .O(memory_i_329_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_33
       (.I0(memory_i_144_n_0),
        .I1(memory_i_145_n_0),
        .I2(spo[16]),
        .I3(memory_i_146_n_0),
        .I4(spo[17]),
        .I5(memory_i_147_n_0),
        .O(d[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_330
       (.I0(\registers_reg[27] [11]),
        .I1(\registers_reg[11] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [11]),
        .O(memory_i_330_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_331
       (.I0(\registers_reg[31] [11]),
        .I1(\registers_reg[15] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [11]),
        .O(memory_i_331_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_332
       (.I0(\registers_reg[25] [11]),
        .I1(\registers_reg[9] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [11]),
        .O(memory_i_332_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_333
       (.I0(\registers_reg[29] [11]),
        .I1(\registers_reg[13] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [11]),
        .O(memory_i_333_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_334
       (.I0(\registers_reg[26] [11]),
        .I1(\registers_reg[10] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [11]),
        .O(memory_i_334_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_335
       (.I0(\registers_reg[30] [11]),
        .I1(\registers_reg[14] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [11]),
        .O(memory_i_335_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_336
       (.I0(\registers_reg[24] [11]),
        .I1(\registers_reg[8] [11]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [11]),
        .O(memory_i_336_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_337
       (.I0(\registers_reg[28] [11]),
        .I1(\registers_reg[12] [11]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [11]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [11]),
        .O(memory_i_337_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_338
       (.I0(\registers_reg[27] [10]),
        .I1(\registers_reg[11] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [10]),
        .O(memory_i_338_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_339
       (.I0(\registers_reg[31] [10]),
        .I1(\registers_reg[15] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [10]),
        .O(memory_i_339_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_34
       (.I0(memory_i_148_n_0),
        .I1(memory_i_149_n_0),
        .I2(spo[16]),
        .I3(memory_i_150_n_0),
        .I4(spo[17]),
        .I5(memory_i_151_n_0),
        .O(d[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_340
       (.I0(\registers_reg[25] [10]),
        .I1(\registers_reg[9] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [10]),
        .O(memory_i_340_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_341
       (.I0(\registers_reg[29] [10]),
        .I1(\registers_reg[13] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [10]),
        .O(memory_i_341_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_342
       (.I0(\registers_reg[26] [10]),
        .I1(\registers_reg[10] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [10]),
        .O(memory_i_342_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_343
       (.I0(\registers_reg[30] [10]),
        .I1(\registers_reg[14] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [10]),
        .O(memory_i_343_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_344
       (.I0(\registers_reg[24] [10]),
        .I1(\registers_reg[8] [10]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [10]),
        .O(memory_i_344_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_345
       (.I0(\registers_reg[28] [10]),
        .I1(\registers_reg[12] [10]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [10]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [10]),
        .O(memory_i_345_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_346
       (.I0(\registers_reg[27] [9]),
        .I1(\registers_reg[11] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [9]),
        .O(memory_i_346_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_347
       (.I0(\registers_reg[31] [9]),
        .I1(\registers_reg[15] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [9]),
        .O(memory_i_347_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_348
       (.I0(\registers_reg[25] [9]),
        .I1(\registers_reg[9] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [9]),
        .O(memory_i_348_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_349
       (.I0(\registers_reg[29] [9]),
        .I1(\registers_reg[13] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [9]),
        .O(memory_i_349_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_35
       (.I0(memory_i_152_n_0),
        .I1(memory_i_153_n_0),
        .I2(spo[16]),
        .I3(memory_i_154_n_0),
        .I4(spo[17]),
        .I5(memory_i_155_n_0),
        .O(d[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_350
       (.I0(\registers_reg[26] [9]),
        .I1(\registers_reg[10] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [9]),
        .O(memory_i_350_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_351
       (.I0(\registers_reg[30] [9]),
        .I1(\registers_reg[14] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [9]),
        .O(memory_i_351_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_352
       (.I0(\registers_reg[24] [9]),
        .I1(\registers_reg[8] [9]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [9]),
        .O(memory_i_352_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_353
       (.I0(\registers_reg[28] [9]),
        .I1(\registers_reg[12] [9]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [9]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [9]),
        .O(memory_i_353_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_354
       (.I0(\registers_reg[27] [8]),
        .I1(\registers_reg[11] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [8]),
        .O(memory_i_354_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_355
       (.I0(\registers_reg[31] [8]),
        .I1(\registers_reg[15] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [8]),
        .O(memory_i_355_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_356
       (.I0(\registers_reg[25] [8]),
        .I1(\registers_reg[9] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [8]),
        .O(memory_i_356_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_357
       (.I0(\registers_reg[29] [8]),
        .I1(\registers_reg[13] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [8]),
        .O(memory_i_357_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_358
       (.I0(\registers_reg[26] [8]),
        .I1(\registers_reg[10] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [8]),
        .O(memory_i_358_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_359
       (.I0(\registers_reg[30] [8]),
        .I1(\registers_reg[14] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [8]),
        .O(memory_i_359_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_36
       (.I0(memory_i_156_n_0),
        .I1(memory_i_157_n_0),
        .I2(spo[16]),
        .I3(memory_i_158_n_0),
        .I4(spo[17]),
        .I5(memory_i_159_n_0),
        .O(d[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_360
       (.I0(\registers_reg[24] [8]),
        .I1(\registers_reg[8] [8]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [8]),
        .O(memory_i_360_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_361
       (.I0(\registers_reg[28] [8]),
        .I1(\registers_reg[12] [8]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [8]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [8]),
        .O(memory_i_361_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_362
       (.I0(\registers_reg[27] [7]),
        .I1(\registers_reg[11] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [7]),
        .O(memory_i_362_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_363
       (.I0(\registers_reg[31] [7]),
        .I1(\registers_reg[15] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [7]),
        .O(memory_i_363_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_364
       (.I0(\registers_reg[25] [7]),
        .I1(\registers_reg[9] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [7]),
        .O(memory_i_364_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_365
       (.I0(\registers_reg[29] [7]),
        .I1(\registers_reg[13] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [7]),
        .O(memory_i_365_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_366
       (.I0(\registers_reg[26] [7]),
        .I1(\registers_reg[10] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [7]),
        .O(memory_i_366_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_367
       (.I0(\registers_reg[30] [7]),
        .I1(\registers_reg[14] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [7]),
        .O(memory_i_367_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_368
       (.I0(\registers_reg[24] [7]),
        .I1(\registers_reg[8] [7]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [7]),
        .O(memory_i_368_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_369
       (.I0(\registers_reg[28] [7]),
        .I1(\registers_reg[12] [7]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [7]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [7]),
        .O(memory_i_369_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_37
       (.I0(memory_i_160_n_0),
        .I1(memory_i_161_n_0),
        .I2(spo[16]),
        .I3(memory_i_162_n_0),
        .I4(spo[17]),
        .I5(memory_i_163_n_0),
        .O(d[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_370
       (.I0(\registers_reg[27] [6]),
        .I1(\registers_reg[11] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [6]),
        .O(memory_i_370_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_371
       (.I0(\registers_reg[31] [6]),
        .I1(\registers_reg[15] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [6]),
        .O(memory_i_371_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_372
       (.I0(\registers_reg[25] [6]),
        .I1(\registers_reg[9] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [6]),
        .O(memory_i_372_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_373
       (.I0(\registers_reg[29] [6]),
        .I1(\registers_reg[13] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [6]),
        .O(memory_i_373_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_374
       (.I0(\registers_reg[26] [6]),
        .I1(\registers_reg[10] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [6]),
        .O(memory_i_374_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_375
       (.I0(\registers_reg[30] [6]),
        .I1(\registers_reg[14] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [6]),
        .O(memory_i_375_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_376
       (.I0(\registers_reg[24] [6]),
        .I1(\registers_reg[8] [6]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [6]),
        .O(memory_i_376_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_377
       (.I0(\registers_reg[28] [6]),
        .I1(\registers_reg[12] [6]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [6]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [6]),
        .O(memory_i_377_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_378
       (.I0(\registers_reg[27] [5]),
        .I1(\registers_reg[11] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [5]),
        .O(memory_i_378_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_379
       (.I0(\registers_reg[31] [5]),
        .I1(\registers_reg[15] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [5]),
        .O(memory_i_379_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_38
       (.I0(memory_i_164_n_0),
        .I1(memory_i_165_n_0),
        .I2(spo[16]),
        .I3(memory_i_166_n_0),
        .I4(spo[17]),
        .I5(memory_i_167_n_0),
        .O(d[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_380
       (.I0(\registers_reg[25] [5]),
        .I1(\registers_reg[9] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [5]),
        .O(memory_i_380_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_381
       (.I0(\registers_reg[29] [5]),
        .I1(\registers_reg[13] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [5]),
        .O(memory_i_381_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_382
       (.I0(\registers_reg[26] [5]),
        .I1(\registers_reg[10] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [5]),
        .O(memory_i_382_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_383
       (.I0(\registers_reg[30] [5]),
        .I1(\registers_reg[14] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [5]),
        .O(memory_i_383_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_384
       (.I0(\registers_reg[24] [5]),
        .I1(\registers_reg[8] [5]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [5]),
        .O(memory_i_384_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_385
       (.I0(\registers_reg[28] [5]),
        .I1(\registers_reg[12] [5]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [5]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [5]),
        .O(memory_i_385_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_386
       (.I0(\registers_reg[27] [4]),
        .I1(\registers_reg[11] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [4]),
        .O(memory_i_386_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_387
       (.I0(\registers_reg[31] [4]),
        .I1(\registers_reg[15] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [4]),
        .O(memory_i_387_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_388
       (.I0(\registers_reg[25] [4]),
        .I1(\registers_reg[9] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [4]),
        .O(memory_i_388_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_389
       (.I0(\registers_reg[29] [4]),
        .I1(\registers_reg[13] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [4]),
        .O(memory_i_389_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_390
       (.I0(\registers_reg[26] [4]),
        .I1(\registers_reg[10] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [4]),
        .O(memory_i_390_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_391
       (.I0(\registers_reg[30] [4]),
        .I1(\registers_reg[14] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [4]),
        .O(memory_i_391_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_392
       (.I0(\registers_reg[24] [4]),
        .I1(\registers_reg[8] [4]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [4]),
        .O(memory_i_392_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_393
       (.I0(\registers_reg[28] [4]),
        .I1(\registers_reg[12] [4]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [4]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [4]),
        .O(memory_i_393_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_394
       (.I0(\registers_reg[27] [3]),
        .I1(\registers_reg[11] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [3]),
        .O(memory_i_394_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_395
       (.I0(\registers_reg[31] [3]),
        .I1(\registers_reg[15] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [3]),
        .O(memory_i_395_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_396
       (.I0(\registers_reg[25] [3]),
        .I1(\registers_reg[9] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [3]),
        .O(memory_i_396_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_397
       (.I0(\registers_reg[29] [3]),
        .I1(\registers_reg[13] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [3]),
        .O(memory_i_397_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_398
       (.I0(\registers_reg[26] [3]),
        .I1(\registers_reg[10] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [3]),
        .O(memory_i_398_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_399
       (.I0(\registers_reg[30] [3]),
        .I1(\registers_reg[14] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [3]),
        .O(memory_i_399_n_0));
  MUXF7 memory_i_40
       (.I0(memory_i_170_n_0),
        .I1(memory_i_171_n_0),
        .O(memory_i_40_n_0),
        .S(spo[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_400
       (.I0(\registers_reg[24] [3]),
        .I1(\registers_reg[8] [3]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [3]),
        .O(memory_i_400_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_401
       (.I0(\registers_reg[28] [3]),
        .I1(\registers_reg[12] [3]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [3]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [3]),
        .O(memory_i_401_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_402
       (.I0(\registers_reg[27] [2]),
        .I1(\registers_reg[11] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [2]),
        .O(memory_i_402_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_403
       (.I0(\registers_reg[31] [2]),
        .I1(\registers_reg[15] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [2]),
        .O(memory_i_403_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_404
       (.I0(\registers_reg[25] [2]),
        .I1(\registers_reg[9] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [2]),
        .O(memory_i_404_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_405
       (.I0(\registers_reg[29] [2]),
        .I1(\registers_reg[13] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [2]),
        .O(memory_i_405_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_406
       (.I0(\registers_reg[26] [2]),
        .I1(\registers_reg[10] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [2]),
        .O(memory_i_406_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_407
       (.I0(\registers_reg[30] [2]),
        .I1(\registers_reg[14] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [2]),
        .O(memory_i_407_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_408
       (.I0(\registers_reg[24] [2]),
        .I1(\registers_reg[8] [2]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [2]),
        .O(memory_i_408_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_409
       (.I0(\registers_reg[28] [2]),
        .I1(\registers_reg[12] [2]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [2]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [2]),
        .O(memory_i_409_n_0));
  MUXF7 memory_i_41
       (.I0(memory_i_172_n_0),
        .I1(memory_i_173_n_0),
        .O(memory_i_41_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_410
       (.I0(\registers_reg[27] [1]),
        .I1(\registers_reg[11] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [1]),
        .O(memory_i_410_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_411
       (.I0(\registers_reg[31] [1]),
        .I1(\registers_reg[15] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [1]),
        .O(memory_i_411_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_412
       (.I0(\registers_reg[25] [1]),
        .I1(\registers_reg[9] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [1]),
        .O(memory_i_412_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_413
       (.I0(\registers_reg[29] [1]),
        .I1(\registers_reg[13] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [1]),
        .O(memory_i_413_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_414
       (.I0(\registers_reg[26] [1]),
        .I1(\registers_reg[10] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [1]),
        .O(memory_i_414_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_415
       (.I0(\registers_reg[30] [1]),
        .I1(\registers_reg[14] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [1]),
        .O(memory_i_415_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_416
       (.I0(\registers_reg[24] [1]),
        .I1(\registers_reg[8] [1]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [1]),
        .O(memory_i_416_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_417
       (.I0(\registers_reg[28] [1]),
        .I1(\registers_reg[12] [1]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [1]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [1]),
        .O(memory_i_417_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_418
       (.I0(\registers_reg[27] [0]),
        .I1(\registers_reg[11] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[19] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[3] [0]),
        .O(memory_i_418_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_419
       (.I0(\registers_reg[31] [0]),
        .I1(\registers_reg[15] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[23] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[7] [0]),
        .O(memory_i_419_n_0));
  MUXF7 memory_i_42
       (.I0(memory_i_174_n_0),
        .I1(memory_i_175_n_0),
        .O(memory_i_42_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_420
       (.I0(\registers_reg[25] [0]),
        .I1(\registers_reg[9] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[17] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[1] [0]),
        .O(memory_i_420_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_421
       (.I0(\registers_reg[29] [0]),
        .I1(\registers_reg[13] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[21] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[5] [0]),
        .O(memory_i_421_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_422
       (.I0(\registers_reg[26] [0]),
        .I1(\registers_reg[10] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[18] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[2] [0]),
        .O(memory_i_422_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_423
       (.I0(\registers_reg[30] [0]),
        .I1(\registers_reg[14] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[22] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[6] [0]),
        .O(memory_i_423_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    memory_i_424
       (.I0(\registers_reg[24] [0]),
        .I1(\registers_reg[8] [0]),
        .I2(spo[19]),
        .I3(spo[20]),
        .I4(\registers_reg[16] [0]),
        .O(memory_i_424_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_425
       (.I0(\registers_reg[28] [0]),
        .I1(\registers_reg[12] [0]),
        .I2(spo[19]),
        .I3(\registers_reg[20] [0]),
        .I4(spo[20]),
        .I5(\registers_reg[4] [0]),
        .O(memory_i_425_n_0));
  MUXF7 memory_i_43
       (.I0(memory_i_176_n_0),
        .I1(memory_i_177_n_0),
        .O(memory_i_43_n_0),
        .S(spo[18]));
  MUXF7 memory_i_44
       (.I0(memory_i_178_n_0),
        .I1(memory_i_179_n_0),
        .O(memory_i_44_n_0),
        .S(spo[18]));
  MUXF7 memory_i_45
       (.I0(memory_i_180_n_0),
        .I1(memory_i_181_n_0),
        .O(memory_i_45_n_0),
        .S(spo[18]));
  MUXF7 memory_i_46
       (.I0(memory_i_182_n_0),
        .I1(memory_i_183_n_0),
        .O(memory_i_46_n_0),
        .S(spo[18]));
  MUXF7 memory_i_47
       (.I0(memory_i_184_n_0),
        .I1(memory_i_185_n_0),
        .O(memory_i_47_n_0),
        .S(spo[18]));
  MUXF7 memory_i_48
       (.I0(memory_i_186_n_0),
        .I1(memory_i_187_n_0),
        .O(memory_i_48_n_0),
        .S(spo[18]));
  MUXF7 memory_i_49
       (.I0(memory_i_188_n_0),
        .I1(memory_i_189_n_0),
        .O(memory_i_49_n_0),
        .S(spo[18]));
  MUXF7 memory_i_50
       (.I0(memory_i_190_n_0),
        .I1(memory_i_191_n_0),
        .O(memory_i_50_n_0),
        .S(spo[18]));
  MUXF7 memory_i_51
       (.I0(memory_i_192_n_0),
        .I1(memory_i_193_n_0),
        .O(memory_i_51_n_0),
        .S(spo[18]));
  MUXF7 memory_i_52
       (.I0(memory_i_194_n_0),
        .I1(memory_i_195_n_0),
        .O(memory_i_52_n_0),
        .S(spo[18]));
  MUXF7 memory_i_53
       (.I0(memory_i_196_n_0),
        .I1(memory_i_197_n_0),
        .O(memory_i_53_n_0),
        .S(spo[18]));
  MUXF7 memory_i_54
       (.I0(memory_i_198_n_0),
        .I1(memory_i_199_n_0),
        .O(memory_i_54_n_0),
        .S(spo[18]));
  MUXF7 memory_i_55
       (.I0(memory_i_200_n_0),
        .I1(memory_i_201_n_0),
        .O(memory_i_55_n_0),
        .S(spo[18]));
  MUXF7 memory_i_56
       (.I0(memory_i_202_n_0),
        .I1(memory_i_203_n_0),
        .O(memory_i_56_n_0),
        .S(spo[18]));
  MUXF7 memory_i_57
       (.I0(memory_i_204_n_0),
        .I1(memory_i_205_n_0),
        .O(memory_i_57_n_0),
        .S(spo[18]));
  MUXF7 memory_i_58
       (.I0(memory_i_206_n_0),
        .I1(memory_i_207_n_0),
        .O(memory_i_58_n_0),
        .S(spo[18]));
  MUXF7 memory_i_59
       (.I0(memory_i_208_n_0),
        .I1(memory_i_209_n_0),
        .O(memory_i_59_n_0),
        .S(spo[18]));
  MUXF7 memory_i_60
       (.I0(memory_i_210_n_0),
        .I1(memory_i_211_n_0),
        .O(memory_i_60_n_0),
        .S(spo[18]));
  MUXF7 memory_i_61
       (.I0(memory_i_212_n_0),
        .I1(memory_i_213_n_0),
        .O(memory_i_61_n_0),
        .S(spo[18]));
  MUXF7 memory_i_62
       (.I0(memory_i_214_n_0),
        .I1(memory_i_215_n_0),
        .O(memory_i_62_n_0),
        .S(spo[18]));
  MUXF7 memory_i_63
       (.I0(memory_i_216_n_0),
        .I1(memory_i_217_n_0),
        .O(memory_i_63_n_0),
        .S(spo[18]));
  MUXF7 memory_i_64
       (.I0(memory_i_218_n_0),
        .I1(memory_i_219_n_0),
        .O(memory_i_64_n_0),
        .S(spo[18]));
  MUXF7 memory_i_65
       (.I0(memory_i_220_n_0),
        .I1(memory_i_221_n_0),
        .O(memory_i_65_n_0),
        .S(spo[18]));
  MUXF7 memory_i_66
       (.I0(memory_i_222_n_0),
        .I1(memory_i_223_n_0),
        .O(memory_i_66_n_0),
        .S(spo[18]));
  MUXF7 memory_i_67
       (.I0(memory_i_224_n_0),
        .I1(memory_i_225_n_0),
        .O(memory_i_67_n_0),
        .S(spo[18]));
  MUXF7 memory_i_68
       (.I0(memory_i_226_n_0),
        .I1(memory_i_227_n_0),
        .O(memory_i_68_n_0),
        .S(spo[18]));
  MUXF7 memory_i_69
       (.I0(memory_i_228_n_0),
        .I1(memory_i_229_n_0),
        .O(memory_i_69_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_7
       (.I0(memory_i_40_n_0),
        .I1(memory_i_41_n_0),
        .I2(spo[16]),
        .I3(memory_i_42_n_0),
        .I4(spo[17]),
        .I5(memory_i_43_n_0),
        .O(d[31]));
  MUXF7 memory_i_70
       (.I0(memory_i_230_n_0),
        .I1(memory_i_231_n_0),
        .O(memory_i_70_n_0),
        .S(spo[18]));
  MUXF7 memory_i_71
       (.I0(memory_i_232_n_0),
        .I1(memory_i_233_n_0),
        .O(memory_i_71_n_0),
        .S(spo[18]));
  MUXF7 memory_i_72
       (.I0(memory_i_234_n_0),
        .I1(memory_i_235_n_0),
        .O(memory_i_72_n_0),
        .S(spo[18]));
  MUXF7 memory_i_73
       (.I0(memory_i_236_n_0),
        .I1(memory_i_237_n_0),
        .O(memory_i_73_n_0),
        .S(spo[18]));
  MUXF7 memory_i_74
       (.I0(memory_i_238_n_0),
        .I1(memory_i_239_n_0),
        .O(memory_i_74_n_0),
        .S(spo[18]));
  MUXF7 memory_i_75
       (.I0(memory_i_240_n_0),
        .I1(memory_i_241_n_0),
        .O(memory_i_75_n_0),
        .S(spo[18]));
  MUXF7 memory_i_76
       (.I0(memory_i_242_n_0),
        .I1(memory_i_243_n_0),
        .O(memory_i_76_n_0),
        .S(spo[18]));
  MUXF7 memory_i_77
       (.I0(memory_i_244_n_0),
        .I1(memory_i_245_n_0),
        .O(memory_i_77_n_0),
        .S(spo[18]));
  MUXF7 memory_i_78
       (.I0(memory_i_246_n_0),
        .I1(memory_i_247_n_0),
        .O(memory_i_78_n_0),
        .S(spo[18]));
  MUXF7 memory_i_79
       (.I0(memory_i_248_n_0),
        .I1(memory_i_249_n_0),
        .O(memory_i_79_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_8
       (.I0(memory_i_44_n_0),
        .I1(memory_i_45_n_0),
        .I2(spo[16]),
        .I3(memory_i_46_n_0),
        .I4(spo[17]),
        .I5(memory_i_47_n_0),
        .O(d[30]));
  MUXF7 memory_i_80
       (.I0(memory_i_250_n_0),
        .I1(memory_i_251_n_0),
        .O(memory_i_80_n_0),
        .S(spo[18]));
  MUXF7 memory_i_81
       (.I0(memory_i_252_n_0),
        .I1(memory_i_253_n_0),
        .O(memory_i_81_n_0),
        .S(spo[18]));
  MUXF7 memory_i_82
       (.I0(memory_i_254_n_0),
        .I1(memory_i_255_n_0),
        .O(memory_i_82_n_0),
        .S(spo[18]));
  MUXF7 memory_i_83
       (.I0(memory_i_256_n_0),
        .I1(memory_i_257_n_0),
        .O(memory_i_83_n_0),
        .S(spo[18]));
  MUXF7 memory_i_84
       (.I0(memory_i_258_n_0),
        .I1(memory_i_259_n_0),
        .O(memory_i_84_n_0),
        .S(spo[18]));
  MUXF7 memory_i_85
       (.I0(memory_i_260_n_0),
        .I1(memory_i_261_n_0),
        .O(memory_i_85_n_0),
        .S(spo[18]));
  MUXF7 memory_i_86
       (.I0(memory_i_262_n_0),
        .I1(memory_i_263_n_0),
        .O(memory_i_86_n_0),
        .S(spo[18]));
  MUXF7 memory_i_87
       (.I0(memory_i_264_n_0),
        .I1(memory_i_265_n_0),
        .O(memory_i_87_n_0),
        .S(spo[18]));
  MUXF7 memory_i_88
       (.I0(memory_i_266_n_0),
        .I1(memory_i_267_n_0),
        .O(memory_i_88_n_0),
        .S(spo[18]));
  MUXF7 memory_i_89
       (.I0(memory_i_268_n_0),
        .I1(memory_i_269_n_0),
        .O(memory_i_89_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_i_9
       (.I0(memory_i_48_n_0),
        .I1(memory_i_49_n_0),
        .I2(spo[16]),
        .I3(memory_i_50_n_0),
        .I4(spo[17]),
        .I5(memory_i_51_n_0),
        .O(d[29]));
  MUXF7 memory_i_90
       (.I0(memory_i_270_n_0),
        .I1(memory_i_271_n_0),
        .O(memory_i_90_n_0),
        .S(spo[18]));
  MUXF7 memory_i_91
       (.I0(memory_i_272_n_0),
        .I1(memory_i_273_n_0),
        .O(memory_i_91_n_0),
        .S(spo[18]));
  MUXF7 memory_i_92
       (.I0(memory_i_274_n_0),
        .I1(memory_i_275_n_0),
        .O(memory_i_92_n_0),
        .S(spo[18]));
  MUXF7 memory_i_93
       (.I0(memory_i_276_n_0),
        .I1(memory_i_277_n_0),
        .O(memory_i_93_n_0),
        .S(spo[18]));
  MUXF7 memory_i_94
       (.I0(memory_i_278_n_0),
        .I1(memory_i_279_n_0),
        .O(memory_i_94_n_0),
        .S(spo[18]));
  MUXF7 memory_i_95
       (.I0(memory_i_280_n_0),
        .I1(memory_i_281_n_0),
        .O(memory_i_95_n_0),
        .S(spo[18]));
  MUXF7 memory_i_96
       (.I0(memory_i_282_n_0),
        .I1(memory_i_283_n_0),
        .O(memory_i_96_n_0),
        .S(spo[18]));
  MUXF7 memory_i_97
       (.I0(memory_i_284_n_0),
        .I1(memory_i_285_n_0),
        .O(memory_i_97_n_0),
        .S(spo[18]));
  MUXF7 memory_i_98
       (.I0(memory_i_286_n_0),
        .I1(memory_i_287_n_0),
        .O(memory_i_98_n_0),
        .S(spo[18]));
  MUXF7 memory_i_99
       (.I0(memory_i_288_n_0),
        .I1(memory_i_289_n_0),
        .O(memory_i_99_n_0),
        .S(spo[18]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[10][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[3]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[4]),
        .O(\registers[10][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[11][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[11][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[12][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[0]),
        .I3(rf_write_register__4[3]),
        .I4(rf_write_register__4[1]),
        .I5(rf_write_register__4[4]),
        .O(\registers[12][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[13][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[13][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[14][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[2]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[14][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[15][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[4]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[2]),
        .O(\registers[15][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \registers[16][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[4]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[1]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[0]),
        .O(\registers[16][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[17][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[1]),
        .O(\registers[17][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[18][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[0]),
        .O(\registers[18][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[19][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[2]),
        .I5(rf_write_register__4[4]),
        .O(\registers[19][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \registers[1][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[1]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[20][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[0]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[1]),
        .O(\registers[20][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[21][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[1]),
        .I5(rf_write_register__4[4]),
        .O(\registers[21][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[22][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[2]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[4]),
        .O(\registers[22][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[23][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[2]),
        .O(\registers[23][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[24][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[4]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[3]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[1]),
        .O(\registers[24][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[25][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[4]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[1]),
        .I5(rf_write_register__4[3]),
        .O(\registers[25][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[26][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[3]),
        .O(\registers[26][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[27][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[4]),
        .O(\registers[27][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[28][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[3]),
        .O(\registers[28][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[29][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[4]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[2]),
        .O(\registers[29][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \registers[2][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[30][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[4]),
        .I4(rf_write_register__4[3]),
        .I5(rf_write_register__4[2]),
        .O(\registers[30][31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \registers[30][31]_i_4 
       (.I0(spo[11]),
        .I1(dbu_status[2]),
        .I2(spo[16]),
        .O(rf_write_register__4[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \registers[30][31]_i_5 
       (.I0(spo[12]),
        .I1(dbu_status[2]),
        .I2(spo[17]),
        .O(rf_write_register__4[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \registers[30][31]_i_6 
       (.I0(spo[15]),
        .I1(dbu_status[2]),
        .I2(spo[20]),
        .O(rf_write_register__4[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \registers[30][31]_i_7 
       (.I0(spo[14]),
        .I1(dbu_status[2]),
        .I2(spo[19]),
        .O(rf_write_register__4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \registers[30][31]_i_8 
       (.I0(spo[13]),
        .I1(dbu_status[2]),
        .I2(spo[18]),
        .O(rf_write_register__4[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \registers[31][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[2]),
        .O(registers));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[3][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[1]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \registers[4][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[2]),
        .I2(rf_write_register__4[0]),
        .I3(rf_write_register__4[1]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[4][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[5][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[2]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[5][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[6][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[1]),
        .I2(rf_write_register__4[0]),
        .I3(rf_write_register__4[2]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[3]),
        .O(\registers[6][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \registers[7][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[1]),
        .I3(rf_write_register__4[0]),
        .I4(rf_write_register__4[4]),
        .I5(rf_write_register__4[2]),
        .O(\registers[7][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \registers[8][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[3]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[1]),
        .I4(rf_write_register__4[0]),
        .I5(rf_write_register__4[4]),
        .O(\registers[8][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \registers[9][31]_i_1 
       (.I0(we00_out),
        .I1(rf_write_register__4[0]),
        .I2(rf_write_register__4[2]),
        .I3(rf_write_register__4[3]),
        .I4(rf_write_register__4[1]),
        .I5(rf_write_register__4[4]),
        .O(\registers[9][31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[10] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[10] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[10] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[10] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[10] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[10] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[10] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[10] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[10] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[10] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[10] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[10] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[10] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[10] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[10] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[10] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[10] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[10] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[10] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[10] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[10] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[10] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[10] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[11] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[11] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[11] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[11] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[11] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[11] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[11] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[11] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[11] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[11] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[11] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[11] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[11] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[11] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[11] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[11] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[11] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[11] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[11] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[11] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[11] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[11] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[11] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[11] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[11] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[11] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[11] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[11] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[11] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[11] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[11] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[12] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[12] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[12] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[12] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[12] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[12] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[12] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[12] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[12] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[12] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[12] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[12] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[12] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[12] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[12] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[12] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[12] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[12] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[12] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[12] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[12] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[12] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[12] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[12] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[12] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[12] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[12] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[12] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[13] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[13] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[13] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[13] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[13] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[13] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[13] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[13] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[13] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[13] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[13] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[13] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[13] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[13] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[13] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[13] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[13] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[13] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[13] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[13] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[13] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[13] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[13] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[13] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[13] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[13] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[13] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[13] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[14] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[14] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[14] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[14] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[14] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[14] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[14] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[14] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[14] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[14] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[14] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[14] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[14] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[14] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[14] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[14] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[14] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[14] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[14] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[14] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[14] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[14] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[14] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[14] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[14] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[14] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[14] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[14] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[15] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[15] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[15] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[15] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[15] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[15] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[15] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[15] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[15] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[15] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[15] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[15] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[15] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[15] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[15] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[15] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[15] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[15] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[15] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[15] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[15] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[15] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[15] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[15] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[16] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[16] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[16] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[16] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[16] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[16] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[16] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[16] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[16] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[16] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[16] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[16] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[16] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[16] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[16] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[16] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[16] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[16] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[16] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[16] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[16] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[16] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[16] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[16] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[16] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[16] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[16] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[16] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[16] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[16] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[16] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[16] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[17] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[17] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[17] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[17] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[17] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[17] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[17] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[17] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[17] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[17] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[17] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[17] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[17] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[17] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[17] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[17] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[17] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[17] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[17] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[17] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[17] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[17] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[17] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[17] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[17] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[17] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[17] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[17] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[17] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[17] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[17] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[17] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[18] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[18] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[18] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[18] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[18] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[18] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[18] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[18] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[18] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[18] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[18] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[18] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[18] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[18] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[18] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[18] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[18] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[18] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[18] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[18] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[18] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[18] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[18] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[18] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[18] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[18] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[18] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[18] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[18] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[18] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[18] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[18] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[19] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[19] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[19] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[19] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[19] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[19] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[19] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[19] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[19] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[19] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[19] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[19] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[19] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[19] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[19] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[19] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[19] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[19] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[19] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[19] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[19] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[19] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[19] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[19] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[19] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[19] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[19] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[19] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[19] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[19] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[19] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[19] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[1] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[1] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[1] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[1] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[1] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[1] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[1] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[1] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[1] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[1] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[1] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[1] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[1] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[1] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[1] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[1] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[20] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[20] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[20] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[20] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[20] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[20] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[20] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[20] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[20] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[20] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[20] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[20] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[20] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[20] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[20] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[20] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[20] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[20] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[20] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[20] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[20] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[20] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[20] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[20] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[20] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[20] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[20] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[20] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[20] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[20] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[20] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[20] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[21] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[21] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[21] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[21] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[21] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[21] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[21] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[21] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[21] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[21] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[21] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[21] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[21] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[21] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[21] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[21] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[21] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[21] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[21] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[21] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[21] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[21] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[21] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[21] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[21] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[21] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[21] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[21] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[21] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[21] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[21] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[21] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[22] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[22] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[22] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[22] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[22] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[22] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[22] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[22] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[22] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[22] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[22] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[22] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[22] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[22] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[22] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[22] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[22] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[22] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[22] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[22] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[22] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[22] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[22] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[22] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[22] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[22] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[22] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[22] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[22] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[22] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[22] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[22] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[23] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[23] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[23] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[23] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[23] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[23] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[23] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[23] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[23] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[23] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[23] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[23] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[23] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[23] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[23] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[23] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[23] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[23] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[23] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[23] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[23] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[23] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[23] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[23] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[23] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[23] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[23] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[23] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[23] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[23] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[23] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[23] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[24] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[24] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[24] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[24] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[24] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[24] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[24] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[24] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[24] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[24] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[24] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[24] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[24] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[24] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[24] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[24] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[24] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[24] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[24] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[24] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[24] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[24] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[24] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[24] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[24] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[24] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[24] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[24] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[24] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[24] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[24] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[24] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[25] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[25] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[25] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[25] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[25] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[25] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[25] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[25] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[25] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[25] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[25] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[25] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[25] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[25] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[25] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[25] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[25] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[25] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[25] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[25] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[25] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[25] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[25] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[25] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[25] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[25] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[25] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[25] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[25] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[25] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[25] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[25] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[26] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[26] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[26] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[26] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[26] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[26] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[26] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[26] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[26] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[26] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[26] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[26] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[26] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[26] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[26] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[26] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[26] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[26] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[26] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[26] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[26] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[26] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[26] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[26] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[26] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[26] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[26] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[26] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[26] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[26] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[26] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[26] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[27] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[27] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[27] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[27] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[27] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[27] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[27] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[27] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[27] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[27] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[27] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[27] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[27] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[27] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[27] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[27] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[27] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[27] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[27] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[27] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[27] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[27] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[27] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[27] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[27] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[27] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[27] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[27] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[27] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[27] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[27] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[27] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[28] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[28] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[28] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[28] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[28] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[28] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[28] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[28] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[28] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[28] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[28] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[28] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[28] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[28] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[28] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[28] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[28] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[28] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[28] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[28] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[28] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[28] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[28] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[28] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[28] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[28] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[28] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[28] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[28] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[28] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[28] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[28] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[29] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[29] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[29] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[29] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[29] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[29] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[29] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[29] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[29] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[29] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[29] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[29] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[29] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[29] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[29] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[29] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[29] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[29] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[29] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[29] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[29] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[29] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[29] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[29] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[29] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[29] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[29] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[29] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[29] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[29] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[29] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[29] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[2] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[2] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[2] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[2] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[2] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[2] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[2] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[2] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[2] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[2] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[2] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[2] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[2] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[2] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[2] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[2] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[2] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[30] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[30] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[30] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[30] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[30] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[30] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[30] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[30] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[30] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[30] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[30] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[30] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[30] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[30] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[30] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[30] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[30] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[30] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[30] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[30] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[30] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[30] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[30] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[30] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[30] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[30] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[30] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[30] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[30] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[30] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[30] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[30] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][0] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][10] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[31] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][11] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[31] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][12] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[31] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][13] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[31] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][14] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[31] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][15] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[31] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][16] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[31] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][17] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[31] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][18] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[31] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][19] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[31] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][1] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][20] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[31] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][21] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[31] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][22] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[31] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][23] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[31] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][24] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[31] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][25] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[31] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][26] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[31] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][27] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[31] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][28] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[31] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][29] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[31] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][2] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][30] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[31] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][31] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[31] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][3] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][4] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][5] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][6] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][7] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][8] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[31] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][9] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[31] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[3] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[3] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[3] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[3] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[3] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[3] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[3] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[3] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[3] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[3] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[3] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[3] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[3] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[3] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[3] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[3] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[3] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[3] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[3] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[5] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[5] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[5] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[5] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[5] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[5] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[6] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[6] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[6] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[6] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[6] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[6] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[6] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[6] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[6] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[6] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[6] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[6] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[6] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[6] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[6] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[6] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[6] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[6] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[6] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[7] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[7] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[7] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[7] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[7] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[7] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[7] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[7] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[7] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[7] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[7] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[7] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[7] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[7] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[7] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[7] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[7] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[7] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[7] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[7] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[7] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[7] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[7] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[7] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[8] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[8] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[8] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[8] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[8] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[8] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[8] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[8] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[8] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[8] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[8] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[8] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[8] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[8] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[8] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[8] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[8] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[8] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[8] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[8] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[8] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[8] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[8] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(\registers_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(\registers_reg[9] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(\registers_reg[9] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(\registers_reg[9] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(\registers_reg[9] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[14]),
        .Q(\registers_reg[9] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[15]),
        .Q(\registers_reg[9] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[16]),
        .Q(\registers_reg[9] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[17]),
        .Q(\registers_reg[9] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[18]),
        .Q(\registers_reg[9] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[19]),
        .Q(\registers_reg[9] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(\registers_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[20]),
        .Q(\registers_reg[9] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[21]),
        .Q(\registers_reg[9] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[22]),
        .Q(\registers_reg[9] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[23]),
        .Q(\registers_reg[9] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[24]),
        .Q(\registers_reg[9] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[25]),
        .Q(\registers_reg[9] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[26]),
        .Q(\registers_reg[9] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[27]),
        .Q(\registers_reg[9] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[28]),
        .Q(\registers_reg[9] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[29]),
        .Q(\registers_reg[9] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(\registers_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[30]),
        .Q(\registers_reg[9] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[31]),
        .Q(\registers_reg[9] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(\registers_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(\registers_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(\registers_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(\registers_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(\registers_reg[9] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(\registers_reg[9] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9][31]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(\registers_reg[9] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_1
       (.I0(y0_carry__0_i_9_n_0),
        .I1(y0_carry__0_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__0_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__0_i_12_n_0),
        .O(dbu_rf_rd1[7]));
  MUXF7 y0_carry__0_i_10
       (.I0(y0_carry__0_i_27_n_0),
        .I1(y0_carry__0_i_28_n_0),
        .O(y0_carry__0_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_11
       (.I0(y0_carry__0_i_29_n_0),
        .I1(y0_carry__0_i_30_n_0),
        .O(y0_carry__0_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_12
       (.I0(y0_carry__0_i_31_n_0),
        .I1(y0_carry__0_i_32_n_0),
        .O(y0_carry__0_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_13
       (.I0(y0_carry__0_i_33_n_0),
        .I1(y0_carry__0_i_34_n_0),
        .O(y0_carry__0_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_14
       (.I0(y0_carry__0_i_35_n_0),
        .I1(y0_carry__0_i_36_n_0),
        .O(y0_carry__0_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_15
       (.I0(y0_carry__0_i_37_n_0),
        .I1(y0_carry__0_i_38_n_0),
        .O(y0_carry__0_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_16
       (.I0(y0_carry__0_i_39_n_0),
        .I1(y0_carry__0_i_40_n_0),
        .O(y0_carry__0_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_17
       (.I0(y0_carry__0_i_41_n_0),
        .I1(y0_carry__0_i_42_n_0),
        .O(y0_carry__0_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_18
       (.I0(y0_carry__0_i_43_n_0),
        .I1(y0_carry__0_i_44_n_0),
        .O(y0_carry__0_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_19
       (.I0(y0_carry__0_i_45_n_0),
        .I1(y0_carry__0_i_46_n_0),
        .O(y0_carry__0_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_2
       (.I0(y0_carry__0_i_13_n_0),
        .I1(y0_carry__0_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__0_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__0_i_16_n_0),
        .O(dbu_rf_rd1[6]));
  MUXF7 y0_carry__0_i_20
       (.I0(y0_carry__0_i_47_n_0),
        .I1(y0_carry__0_i_48_n_0),
        .O(y0_carry__0_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_21
       (.I0(y0_carry__0_i_49_n_0),
        .I1(y0_carry__0_i_50_n_0),
        .O(y0_carry__0_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_22
       (.I0(y0_carry__0_i_51_n_0),
        .I1(y0_carry__0_i_52_n_0),
        .O(y0_carry__0_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_23
       (.I0(y0_carry__0_i_53_n_0),
        .I1(y0_carry__0_i_54_n_0),
        .O(y0_carry__0_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__0_i_24
       (.I0(y0_carry__0_i_55_n_0),
        .I1(y0_carry__0_i_56_n_0),
        .O(y0_carry__0_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_25
       (.I0(\registers_reg[27] [7]),
        .I1(\registers_reg[11] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [7]),
        .O(y0_carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_26
       (.I0(\registers_reg[31] [7]),
        .I1(\registers_reg[15] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [7]),
        .O(y0_carry__0_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_27
       (.I0(\registers_reg[25] [7]),
        .I1(\registers_reg[9] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [7]),
        .O(y0_carry__0_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_28
       (.I0(\registers_reg[29] [7]),
        .I1(\registers_reg[13] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [7]),
        .O(y0_carry__0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_29
       (.I0(\registers_reg[26] [7]),
        .I1(\registers_reg[10] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [7]),
        .O(y0_carry__0_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_3
       (.I0(y0_carry__0_i_17_n_0),
        .I1(y0_carry__0_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__0_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__0_i_20_n_0),
        .O(dbu_rf_rd1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_30
       (.I0(\registers_reg[30] [7]),
        .I1(\registers_reg[14] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [7]),
        .O(y0_carry__0_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__0_i_31
       (.I0(\registers_reg[24] [7]),
        .I1(\registers_reg[8] [7]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [7]),
        .O(y0_carry__0_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_32
       (.I0(\registers_reg[28] [7]),
        .I1(\registers_reg[12] [7]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [7]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [7]),
        .O(y0_carry__0_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_33
       (.I0(\registers_reg[27] [6]),
        .I1(\registers_reg[11] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [6]),
        .O(y0_carry__0_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_34
       (.I0(\registers_reg[31] [6]),
        .I1(\registers_reg[15] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [6]),
        .O(y0_carry__0_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_35
       (.I0(\registers_reg[25] [6]),
        .I1(\registers_reg[9] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [6]),
        .O(y0_carry__0_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_36
       (.I0(\registers_reg[29] [6]),
        .I1(\registers_reg[13] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [6]),
        .O(y0_carry__0_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_37
       (.I0(\registers_reg[26] [6]),
        .I1(\registers_reg[10] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [6]),
        .O(y0_carry__0_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_38
       (.I0(\registers_reg[30] [6]),
        .I1(\registers_reg[14] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [6]),
        .O(y0_carry__0_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__0_i_39
       (.I0(\registers_reg[24] [6]),
        .I1(\registers_reg[8] [6]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [6]),
        .O(y0_carry__0_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_4
       (.I0(y0_carry__0_i_21_n_0),
        .I1(y0_carry__0_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__0_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__0_i_24_n_0),
        .O(dbu_rf_rd1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_40
       (.I0(\registers_reg[28] [6]),
        .I1(\registers_reg[12] [6]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [6]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [6]),
        .O(y0_carry__0_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_41
       (.I0(\registers_reg[27] [5]),
        .I1(\registers_reg[11] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [5]),
        .O(y0_carry__0_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_42
       (.I0(\registers_reg[31] [5]),
        .I1(\registers_reg[15] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [5]),
        .O(y0_carry__0_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_43
       (.I0(\registers_reg[25] [5]),
        .I1(\registers_reg[9] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [5]),
        .O(y0_carry__0_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_44
       (.I0(\registers_reg[29] [5]),
        .I1(\registers_reg[13] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [5]),
        .O(y0_carry__0_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_45
       (.I0(\registers_reg[26] [5]),
        .I1(\registers_reg[10] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [5]),
        .O(y0_carry__0_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_46
       (.I0(\registers_reg[30] [5]),
        .I1(\registers_reg[14] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [5]),
        .O(y0_carry__0_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__0_i_47
       (.I0(\registers_reg[24] [5]),
        .I1(\registers_reg[8] [5]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [5]),
        .O(y0_carry__0_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_48
       (.I0(\registers_reg[28] [5]),
        .I1(\registers_reg[12] [5]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [5]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [5]),
        .O(y0_carry__0_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_49
       (.I0(\registers_reg[27] [4]),
        .I1(\registers_reg[11] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [4]),
        .O(y0_carry__0_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__0_i_5
       (.I0(dbu_rf_rd1[7]),
        .I1(d[7]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[7]),
        .O(\bbstub_spo[7] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_50
       (.I0(\registers_reg[31] [4]),
        .I1(\registers_reg[15] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [4]),
        .O(y0_carry__0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_51
       (.I0(\registers_reg[25] [4]),
        .I1(\registers_reg[9] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [4]),
        .O(y0_carry__0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_52
       (.I0(\registers_reg[29] [4]),
        .I1(\registers_reg[13] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [4]),
        .O(y0_carry__0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_53
       (.I0(\registers_reg[26] [4]),
        .I1(\registers_reg[10] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [4]),
        .O(y0_carry__0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_54
       (.I0(\registers_reg[30] [4]),
        .I1(\registers_reg[14] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [4]),
        .O(y0_carry__0_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__0_i_55
       (.I0(\registers_reg[24] [4]),
        .I1(\registers_reg[8] [4]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [4]),
        .O(y0_carry__0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__0_i_56
       (.I0(\registers_reg[28] [4]),
        .I1(\registers_reg[12] [4]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [4]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [4]),
        .O(y0_carry__0_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__0_i_6
       (.I0(dbu_rf_rd1[6]),
        .I1(d[6]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[6]),
        .O(\bbstub_spo[7] [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__0_i_7
       (.I0(dbu_rf_rd1[5]),
        .I1(d[5]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[5]),
        .O(\bbstub_spo[7] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__0_i_8
       (.I0(dbu_rf_rd1[4]),
        .I1(d[4]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[4]),
        .O(\bbstub_spo[7] [0]));
  MUXF7 y0_carry__0_i_9
       (.I0(y0_carry__0_i_25_n_0),
        .I1(y0_carry__0_i_26_n_0),
        .O(y0_carry__0_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_1
       (.I0(y0_carry__1_i_9_n_0),
        .I1(y0_carry__1_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__1_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__1_i_12_n_0),
        .O(dbu_rf_rd1[11]));
  MUXF7 y0_carry__1_i_10
       (.I0(y0_carry__1_i_27_n_0),
        .I1(y0_carry__1_i_28_n_0),
        .O(y0_carry__1_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_11
       (.I0(y0_carry__1_i_29_n_0),
        .I1(y0_carry__1_i_30_n_0),
        .O(y0_carry__1_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_12
       (.I0(y0_carry__1_i_31_n_0),
        .I1(y0_carry__1_i_32_n_0),
        .O(y0_carry__1_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_13
       (.I0(y0_carry__1_i_33_n_0),
        .I1(y0_carry__1_i_34_n_0),
        .O(y0_carry__1_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_14
       (.I0(y0_carry__1_i_35_n_0),
        .I1(y0_carry__1_i_36_n_0),
        .O(y0_carry__1_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_15
       (.I0(y0_carry__1_i_37_n_0),
        .I1(y0_carry__1_i_38_n_0),
        .O(y0_carry__1_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_16
       (.I0(y0_carry__1_i_39_n_0),
        .I1(y0_carry__1_i_40_n_0),
        .O(y0_carry__1_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_17
       (.I0(y0_carry__1_i_41_n_0),
        .I1(y0_carry__1_i_42_n_0),
        .O(y0_carry__1_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_18
       (.I0(y0_carry__1_i_43_n_0),
        .I1(y0_carry__1_i_44_n_0),
        .O(y0_carry__1_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_19
       (.I0(y0_carry__1_i_45_n_0),
        .I1(y0_carry__1_i_46_n_0),
        .O(y0_carry__1_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_2
       (.I0(y0_carry__1_i_13_n_0),
        .I1(y0_carry__1_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__1_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__1_i_16_n_0),
        .O(dbu_rf_rd1[10]));
  MUXF7 y0_carry__1_i_20
       (.I0(y0_carry__1_i_47_n_0),
        .I1(y0_carry__1_i_48_n_0),
        .O(y0_carry__1_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_21
       (.I0(y0_carry__1_i_49_n_0),
        .I1(y0_carry__1_i_50_n_0),
        .O(y0_carry__1_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_22
       (.I0(y0_carry__1_i_51_n_0),
        .I1(y0_carry__1_i_52_n_0),
        .O(y0_carry__1_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_23
       (.I0(y0_carry__1_i_53_n_0),
        .I1(y0_carry__1_i_54_n_0),
        .O(y0_carry__1_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__1_i_24
       (.I0(y0_carry__1_i_55_n_0),
        .I1(y0_carry__1_i_56_n_0),
        .O(y0_carry__1_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_25
       (.I0(\registers_reg[27] [11]),
        .I1(\registers_reg[11] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [11]),
        .O(y0_carry__1_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_26
       (.I0(\registers_reg[31] [11]),
        .I1(\registers_reg[15] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [11]),
        .O(y0_carry__1_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_27
       (.I0(\registers_reg[25] [11]),
        .I1(\registers_reg[9] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [11]),
        .O(y0_carry__1_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_28
       (.I0(\registers_reg[29] [11]),
        .I1(\registers_reg[13] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [11]),
        .O(y0_carry__1_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_29
       (.I0(\registers_reg[26] [11]),
        .I1(\registers_reg[10] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [11]),
        .O(y0_carry__1_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_3
       (.I0(y0_carry__1_i_17_n_0),
        .I1(y0_carry__1_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__1_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__1_i_20_n_0),
        .O(dbu_rf_rd1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_30
       (.I0(\registers_reg[30] [11]),
        .I1(\registers_reg[14] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [11]),
        .O(y0_carry__1_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__1_i_31
       (.I0(\registers_reg[24] [11]),
        .I1(\registers_reg[8] [11]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [11]),
        .O(y0_carry__1_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_32
       (.I0(\registers_reg[28] [11]),
        .I1(\registers_reg[12] [11]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [11]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [11]),
        .O(y0_carry__1_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_33
       (.I0(\registers_reg[27] [10]),
        .I1(\registers_reg[11] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [10]),
        .O(y0_carry__1_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_34
       (.I0(\registers_reg[31] [10]),
        .I1(\registers_reg[15] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [10]),
        .O(y0_carry__1_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_35
       (.I0(\registers_reg[25] [10]),
        .I1(\registers_reg[9] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [10]),
        .O(y0_carry__1_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_36
       (.I0(\registers_reg[29] [10]),
        .I1(\registers_reg[13] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [10]),
        .O(y0_carry__1_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_37
       (.I0(\registers_reg[26] [10]),
        .I1(\registers_reg[10] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [10]),
        .O(y0_carry__1_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_38
       (.I0(\registers_reg[30] [10]),
        .I1(\registers_reg[14] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [10]),
        .O(y0_carry__1_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__1_i_39
       (.I0(\registers_reg[24] [10]),
        .I1(\registers_reg[8] [10]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [10]),
        .O(y0_carry__1_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_4
       (.I0(y0_carry__1_i_21_n_0),
        .I1(y0_carry__1_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__1_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__1_i_24_n_0),
        .O(dbu_rf_rd1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_40
       (.I0(\registers_reg[28] [10]),
        .I1(\registers_reg[12] [10]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [10]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [10]),
        .O(y0_carry__1_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_41
       (.I0(\registers_reg[27] [9]),
        .I1(\registers_reg[11] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [9]),
        .O(y0_carry__1_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_42
       (.I0(\registers_reg[31] [9]),
        .I1(\registers_reg[15] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [9]),
        .O(y0_carry__1_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_43
       (.I0(\registers_reg[25] [9]),
        .I1(\registers_reg[9] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [9]),
        .O(y0_carry__1_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_44
       (.I0(\registers_reg[29] [9]),
        .I1(\registers_reg[13] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [9]),
        .O(y0_carry__1_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_45
       (.I0(\registers_reg[26] [9]),
        .I1(\registers_reg[10] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [9]),
        .O(y0_carry__1_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_46
       (.I0(\registers_reg[30] [9]),
        .I1(\registers_reg[14] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [9]),
        .O(y0_carry__1_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__1_i_47
       (.I0(\registers_reg[24] [9]),
        .I1(\registers_reg[8] [9]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [9]),
        .O(y0_carry__1_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_48
       (.I0(\registers_reg[28] [9]),
        .I1(\registers_reg[12] [9]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [9]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [9]),
        .O(y0_carry__1_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_49
       (.I0(\registers_reg[27] [8]),
        .I1(\registers_reg[11] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [8]),
        .O(y0_carry__1_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__1_i_5
       (.I0(dbu_rf_rd1[11]),
        .I1(d[11]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[11]),
        .O(\bbstub_spo[11] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_50
       (.I0(\registers_reg[31] [8]),
        .I1(\registers_reg[15] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [8]),
        .O(y0_carry__1_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_51
       (.I0(\registers_reg[25] [8]),
        .I1(\registers_reg[9] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [8]),
        .O(y0_carry__1_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_52
       (.I0(\registers_reg[29] [8]),
        .I1(\registers_reg[13] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [8]),
        .O(y0_carry__1_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_53
       (.I0(\registers_reg[26] [8]),
        .I1(\registers_reg[10] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [8]),
        .O(y0_carry__1_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_54
       (.I0(\registers_reg[30] [8]),
        .I1(\registers_reg[14] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [8]),
        .O(y0_carry__1_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__1_i_55
       (.I0(\registers_reg[24] [8]),
        .I1(\registers_reg[8] [8]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [8]),
        .O(y0_carry__1_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__1_i_56
       (.I0(\registers_reg[28] [8]),
        .I1(\registers_reg[12] [8]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [8]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [8]),
        .O(y0_carry__1_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__1_i_6
       (.I0(dbu_rf_rd1[10]),
        .I1(d[10]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[10]),
        .O(\bbstub_spo[11] [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__1_i_7
       (.I0(dbu_rf_rd1[9]),
        .I1(d[9]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[9]),
        .O(\bbstub_spo[11] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__1_i_8
       (.I0(dbu_rf_rd1[8]),
        .I1(d[8]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[8]),
        .O(\bbstub_spo[11] [0]));
  MUXF7 y0_carry__1_i_9
       (.I0(y0_carry__1_i_25_n_0),
        .I1(y0_carry__1_i_26_n_0),
        .O(y0_carry__1_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_1
       (.I0(y0_carry__2_i_9_n_0),
        .I1(y0_carry__2_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__2_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__2_i_12_n_0),
        .O(dbu_rf_rd1[15]));
  MUXF7 y0_carry__2_i_10
       (.I0(y0_carry__2_i_27_n_0),
        .I1(y0_carry__2_i_28_n_0),
        .O(y0_carry__2_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_11
       (.I0(y0_carry__2_i_29_n_0),
        .I1(y0_carry__2_i_30_n_0),
        .O(y0_carry__2_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_12
       (.I0(y0_carry__2_i_31_n_0),
        .I1(y0_carry__2_i_32_n_0),
        .O(y0_carry__2_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_13
       (.I0(y0_carry__2_i_33_n_0),
        .I1(y0_carry__2_i_34_n_0),
        .O(y0_carry__2_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_14
       (.I0(y0_carry__2_i_35_n_0),
        .I1(y0_carry__2_i_36_n_0),
        .O(y0_carry__2_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_15
       (.I0(y0_carry__2_i_37_n_0),
        .I1(y0_carry__2_i_38_n_0),
        .O(y0_carry__2_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_16
       (.I0(y0_carry__2_i_39_n_0),
        .I1(y0_carry__2_i_40_n_0),
        .O(y0_carry__2_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_17
       (.I0(y0_carry__2_i_41_n_0),
        .I1(y0_carry__2_i_42_n_0),
        .O(y0_carry__2_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_18
       (.I0(y0_carry__2_i_43_n_0),
        .I1(y0_carry__2_i_44_n_0),
        .O(y0_carry__2_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_19
       (.I0(y0_carry__2_i_45_n_0),
        .I1(y0_carry__2_i_46_n_0),
        .O(y0_carry__2_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_2
       (.I0(y0_carry__2_i_13_n_0),
        .I1(y0_carry__2_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__2_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__2_i_16_n_0),
        .O(dbu_rf_rd1[14]));
  MUXF7 y0_carry__2_i_20
       (.I0(y0_carry__2_i_47_n_0),
        .I1(y0_carry__2_i_48_n_0),
        .O(y0_carry__2_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_21
       (.I0(y0_carry__2_i_49_n_0),
        .I1(y0_carry__2_i_50_n_0),
        .O(y0_carry__2_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_22
       (.I0(y0_carry__2_i_51_n_0),
        .I1(y0_carry__2_i_52_n_0),
        .O(y0_carry__2_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_23
       (.I0(y0_carry__2_i_53_n_0),
        .I1(y0_carry__2_i_54_n_0),
        .O(y0_carry__2_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__2_i_24
       (.I0(y0_carry__2_i_55_n_0),
        .I1(y0_carry__2_i_56_n_0),
        .O(y0_carry__2_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_25
       (.I0(\registers_reg[27] [15]),
        .I1(\registers_reg[11] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [15]),
        .O(y0_carry__2_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_26
       (.I0(\registers_reg[31] [15]),
        .I1(\registers_reg[15] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [15]),
        .O(y0_carry__2_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_27
       (.I0(\registers_reg[25] [15]),
        .I1(\registers_reg[9] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [15]),
        .O(y0_carry__2_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_28
       (.I0(\registers_reg[29] [15]),
        .I1(\registers_reg[13] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [15]),
        .O(y0_carry__2_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_29
       (.I0(\registers_reg[26] [15]),
        .I1(\registers_reg[10] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [15]),
        .O(y0_carry__2_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_3
       (.I0(y0_carry__2_i_17_n_0),
        .I1(y0_carry__2_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__2_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__2_i_20_n_0),
        .O(dbu_rf_rd1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_30
       (.I0(\registers_reg[30] [15]),
        .I1(\registers_reg[14] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [15]),
        .O(y0_carry__2_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__2_i_31
       (.I0(\registers_reg[24] [15]),
        .I1(\registers_reg[8] [15]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [15]),
        .O(y0_carry__2_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_32
       (.I0(\registers_reg[28] [15]),
        .I1(\registers_reg[12] [15]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [15]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [15]),
        .O(y0_carry__2_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_33
       (.I0(\registers_reg[27] [14]),
        .I1(\registers_reg[11] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [14]),
        .O(y0_carry__2_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_34
       (.I0(\registers_reg[31] [14]),
        .I1(\registers_reg[15] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [14]),
        .O(y0_carry__2_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_35
       (.I0(\registers_reg[25] [14]),
        .I1(\registers_reg[9] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [14]),
        .O(y0_carry__2_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_36
       (.I0(\registers_reg[29] [14]),
        .I1(\registers_reg[13] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [14]),
        .O(y0_carry__2_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_37
       (.I0(\registers_reg[26] [14]),
        .I1(\registers_reg[10] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [14]),
        .O(y0_carry__2_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_38
       (.I0(\registers_reg[30] [14]),
        .I1(\registers_reg[14] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [14]),
        .O(y0_carry__2_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__2_i_39
       (.I0(\registers_reg[24] [14]),
        .I1(\registers_reg[8] [14]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [14]),
        .O(y0_carry__2_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_4
       (.I0(y0_carry__2_i_21_n_0),
        .I1(y0_carry__2_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__2_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__2_i_24_n_0),
        .O(dbu_rf_rd1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_40
       (.I0(\registers_reg[28] [14]),
        .I1(\registers_reg[12] [14]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [14]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [14]),
        .O(y0_carry__2_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_41
       (.I0(\registers_reg[27] [13]),
        .I1(\registers_reg[11] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [13]),
        .O(y0_carry__2_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_42
       (.I0(\registers_reg[31] [13]),
        .I1(\registers_reg[15] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [13]),
        .O(y0_carry__2_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_43
       (.I0(\registers_reg[25] [13]),
        .I1(\registers_reg[9] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [13]),
        .O(y0_carry__2_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_44
       (.I0(\registers_reg[29] [13]),
        .I1(\registers_reg[13] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [13]),
        .O(y0_carry__2_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_45
       (.I0(\registers_reg[26] [13]),
        .I1(\registers_reg[10] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [13]),
        .O(y0_carry__2_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_46
       (.I0(\registers_reg[30] [13]),
        .I1(\registers_reg[14] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [13]),
        .O(y0_carry__2_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__2_i_47
       (.I0(\registers_reg[24] [13]),
        .I1(\registers_reg[8] [13]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [13]),
        .O(y0_carry__2_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_48
       (.I0(\registers_reg[28] [13]),
        .I1(\registers_reg[12] [13]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [13]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [13]),
        .O(y0_carry__2_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_49
       (.I0(\registers_reg[27] [12]),
        .I1(\registers_reg[11] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [12]),
        .O(y0_carry__2_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__2_i_5
       (.I0(dbu_rf_rd1[15]),
        .I1(d[15]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_50
       (.I0(\registers_reg[31] [12]),
        .I1(\registers_reg[15] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [12]),
        .O(y0_carry__2_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_51
       (.I0(\registers_reg[25] [12]),
        .I1(\registers_reg[9] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [12]),
        .O(y0_carry__2_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_52
       (.I0(\registers_reg[29] [12]),
        .I1(\registers_reg[13] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [12]),
        .O(y0_carry__2_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_53
       (.I0(\registers_reg[26] [12]),
        .I1(\registers_reg[10] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [12]),
        .O(y0_carry__2_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_54
       (.I0(\registers_reg[30] [12]),
        .I1(\registers_reg[14] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [12]),
        .O(y0_carry__2_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__2_i_55
       (.I0(\registers_reg[24] [12]),
        .I1(\registers_reg[8] [12]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [12]),
        .O(y0_carry__2_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__2_i_56
       (.I0(\registers_reg[28] [12]),
        .I1(\registers_reg[12] [12]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [12]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [12]),
        .O(y0_carry__2_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__2_i_6
       (.I0(dbu_rf_rd1[14]),
        .I1(d[14]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[14]),
        .O(\bbstub_spo[15]_0 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__2_i_7
       (.I0(dbu_rf_rd1[13]),
        .I1(d[13]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[13]),
        .O(\bbstub_spo[15]_0 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__2_i_8
       (.I0(dbu_rf_rd1[12]),
        .I1(d[12]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[12]),
        .O(\bbstub_spo[15]_0 [0]));
  MUXF7 y0_carry__2_i_9
       (.I0(y0_carry__2_i_25_n_0),
        .I1(y0_carry__2_i_26_n_0),
        .O(y0_carry__2_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_1
       (.I0(y0_carry__3_i_9_n_0),
        .I1(y0_carry__3_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__3_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__3_i_12_n_0),
        .O(dbu_rf_rd1[19]));
  MUXF7 y0_carry__3_i_10
       (.I0(y0_carry__3_i_27_n_0),
        .I1(y0_carry__3_i_28_n_0),
        .O(y0_carry__3_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_11
       (.I0(y0_carry__3_i_29_n_0),
        .I1(y0_carry__3_i_30_n_0),
        .O(y0_carry__3_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_12
       (.I0(y0_carry__3_i_31_n_0),
        .I1(y0_carry__3_i_32_n_0),
        .O(y0_carry__3_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_13
       (.I0(y0_carry__3_i_33_n_0),
        .I1(y0_carry__3_i_34_n_0),
        .O(y0_carry__3_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_14
       (.I0(y0_carry__3_i_35_n_0),
        .I1(y0_carry__3_i_36_n_0),
        .O(y0_carry__3_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_15
       (.I0(y0_carry__3_i_37_n_0),
        .I1(y0_carry__3_i_38_n_0),
        .O(y0_carry__3_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_16
       (.I0(y0_carry__3_i_39_n_0),
        .I1(y0_carry__3_i_40_n_0),
        .O(y0_carry__3_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_17
       (.I0(y0_carry__3_i_41_n_0),
        .I1(y0_carry__3_i_42_n_0),
        .O(y0_carry__3_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_18
       (.I0(y0_carry__3_i_43_n_0),
        .I1(y0_carry__3_i_44_n_0),
        .O(y0_carry__3_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_19
       (.I0(y0_carry__3_i_45_n_0),
        .I1(y0_carry__3_i_46_n_0),
        .O(y0_carry__3_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_2
       (.I0(y0_carry__3_i_13_n_0),
        .I1(y0_carry__3_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__3_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__3_i_16_n_0),
        .O(dbu_rf_rd1[18]));
  MUXF7 y0_carry__3_i_20
       (.I0(y0_carry__3_i_47_n_0),
        .I1(y0_carry__3_i_48_n_0),
        .O(y0_carry__3_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_21
       (.I0(y0_carry__3_i_49_n_0),
        .I1(y0_carry__3_i_50_n_0),
        .O(y0_carry__3_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_22
       (.I0(y0_carry__3_i_51_n_0),
        .I1(y0_carry__3_i_52_n_0),
        .O(y0_carry__3_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_23
       (.I0(y0_carry__3_i_53_n_0),
        .I1(y0_carry__3_i_54_n_0),
        .O(y0_carry__3_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__3_i_24
       (.I0(y0_carry__3_i_55_n_0),
        .I1(y0_carry__3_i_56_n_0),
        .O(y0_carry__3_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_25
       (.I0(\registers_reg[27] [19]),
        .I1(\registers_reg[11] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [19]),
        .O(y0_carry__3_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_26
       (.I0(\registers_reg[31] [19]),
        .I1(\registers_reg[15] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [19]),
        .O(y0_carry__3_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_27
       (.I0(\registers_reg[25] [19]),
        .I1(\registers_reg[9] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [19]),
        .O(y0_carry__3_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_28
       (.I0(\registers_reg[29] [19]),
        .I1(\registers_reg[13] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [19]),
        .O(y0_carry__3_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_29
       (.I0(\registers_reg[26] [19]),
        .I1(\registers_reg[10] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [19]),
        .O(y0_carry__3_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_3
       (.I0(y0_carry__3_i_17_n_0),
        .I1(y0_carry__3_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__3_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__3_i_20_n_0),
        .O(dbu_rf_rd1[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_30
       (.I0(\registers_reg[30] [19]),
        .I1(\registers_reg[14] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [19]),
        .O(y0_carry__3_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__3_i_31
       (.I0(\registers_reg[24] [19]),
        .I1(\registers_reg[8] [19]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [19]),
        .O(y0_carry__3_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_32
       (.I0(\registers_reg[28] [19]),
        .I1(\registers_reg[12] [19]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [19]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [19]),
        .O(y0_carry__3_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_33
       (.I0(\registers_reg[27] [18]),
        .I1(\registers_reg[11] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [18]),
        .O(y0_carry__3_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_34
       (.I0(\registers_reg[31] [18]),
        .I1(\registers_reg[15] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [18]),
        .O(y0_carry__3_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_35
       (.I0(\registers_reg[25] [18]),
        .I1(\registers_reg[9] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [18]),
        .O(y0_carry__3_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_36
       (.I0(\registers_reg[29] [18]),
        .I1(\registers_reg[13] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [18]),
        .O(y0_carry__3_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_37
       (.I0(\registers_reg[26] [18]),
        .I1(\registers_reg[10] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [18]),
        .O(y0_carry__3_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_38
       (.I0(\registers_reg[30] [18]),
        .I1(\registers_reg[14] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [18]),
        .O(y0_carry__3_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__3_i_39
       (.I0(\registers_reg[24] [18]),
        .I1(\registers_reg[8] [18]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [18]),
        .O(y0_carry__3_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_4
       (.I0(y0_carry__3_i_21_n_0),
        .I1(y0_carry__3_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__3_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__3_i_24_n_0),
        .O(dbu_rf_rd1[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_40
       (.I0(\registers_reg[28] [18]),
        .I1(\registers_reg[12] [18]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [18]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [18]),
        .O(y0_carry__3_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_41
       (.I0(\registers_reg[27] [17]),
        .I1(\registers_reg[11] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [17]),
        .O(y0_carry__3_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_42
       (.I0(\registers_reg[31] [17]),
        .I1(\registers_reg[15] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [17]),
        .O(y0_carry__3_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_43
       (.I0(\registers_reg[25] [17]),
        .I1(\registers_reg[9] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [17]),
        .O(y0_carry__3_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_44
       (.I0(\registers_reg[29] [17]),
        .I1(\registers_reg[13] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [17]),
        .O(y0_carry__3_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_45
       (.I0(\registers_reg[26] [17]),
        .I1(\registers_reg[10] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [17]),
        .O(y0_carry__3_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_46
       (.I0(\registers_reg[30] [17]),
        .I1(\registers_reg[14] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [17]),
        .O(y0_carry__3_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__3_i_47
       (.I0(\registers_reg[24] [17]),
        .I1(\registers_reg[8] [17]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [17]),
        .O(y0_carry__3_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_48
       (.I0(\registers_reg[28] [17]),
        .I1(\registers_reg[12] [17]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [17]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [17]),
        .O(y0_carry__3_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_49
       (.I0(\registers_reg[27] [16]),
        .I1(\registers_reg[11] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [16]),
        .O(y0_carry__3_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__3_i_5
       (.I0(dbu_rf_rd1[19]),
        .I1(d[19]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_1 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_50
       (.I0(\registers_reg[31] [16]),
        .I1(\registers_reg[15] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [16]),
        .O(y0_carry__3_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_51
       (.I0(\registers_reg[25] [16]),
        .I1(\registers_reg[9] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [16]),
        .O(y0_carry__3_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_52
       (.I0(\registers_reg[29] [16]),
        .I1(\registers_reg[13] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [16]),
        .O(y0_carry__3_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_53
       (.I0(\registers_reg[26] [16]),
        .I1(\registers_reg[10] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [16]),
        .O(y0_carry__3_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_54
       (.I0(\registers_reg[30] [16]),
        .I1(\registers_reg[14] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [16]),
        .O(y0_carry__3_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__3_i_55
       (.I0(\registers_reg[24] [16]),
        .I1(\registers_reg[8] [16]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [16]),
        .O(y0_carry__3_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__3_i_56
       (.I0(\registers_reg[28] [16]),
        .I1(\registers_reg[12] [16]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [16]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [16]),
        .O(y0_carry__3_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__3_i_6
       (.I0(dbu_rf_rd1[18]),
        .I1(d[18]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_1 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__3_i_7
       (.I0(dbu_rf_rd1[17]),
        .I1(d[17]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_1 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__3_i_8
       (.I0(dbu_rf_rd1[16]),
        .I1(d[16]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_1 [0]));
  MUXF7 y0_carry__3_i_9
       (.I0(y0_carry__3_i_25_n_0),
        .I1(y0_carry__3_i_26_n_0),
        .O(y0_carry__3_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_1
       (.I0(y0_carry__4_i_9_n_0),
        .I1(y0_carry__4_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__4_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__4_i_12_n_0),
        .O(dbu_rf_rd1[23]));
  MUXF7 y0_carry__4_i_10
       (.I0(y0_carry__4_i_27_n_0),
        .I1(y0_carry__4_i_28_n_0),
        .O(y0_carry__4_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_11
       (.I0(y0_carry__4_i_29_n_0),
        .I1(y0_carry__4_i_30_n_0),
        .O(y0_carry__4_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_12
       (.I0(y0_carry__4_i_31_n_0),
        .I1(y0_carry__4_i_32_n_0),
        .O(y0_carry__4_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_13
       (.I0(y0_carry__4_i_33_n_0),
        .I1(y0_carry__4_i_34_n_0),
        .O(y0_carry__4_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_14
       (.I0(y0_carry__4_i_35_n_0),
        .I1(y0_carry__4_i_36_n_0),
        .O(y0_carry__4_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_15
       (.I0(y0_carry__4_i_37_n_0),
        .I1(y0_carry__4_i_38_n_0),
        .O(y0_carry__4_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_16
       (.I0(y0_carry__4_i_39_n_0),
        .I1(y0_carry__4_i_40_n_0),
        .O(y0_carry__4_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_17
       (.I0(y0_carry__4_i_41_n_0),
        .I1(y0_carry__4_i_42_n_0),
        .O(y0_carry__4_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_18
       (.I0(y0_carry__4_i_43_n_0),
        .I1(y0_carry__4_i_44_n_0),
        .O(y0_carry__4_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_19
       (.I0(y0_carry__4_i_45_n_0),
        .I1(y0_carry__4_i_46_n_0),
        .O(y0_carry__4_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_2
       (.I0(y0_carry__4_i_13_n_0),
        .I1(y0_carry__4_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__4_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__4_i_16_n_0),
        .O(dbu_rf_rd1[22]));
  MUXF7 y0_carry__4_i_20
       (.I0(y0_carry__4_i_47_n_0),
        .I1(y0_carry__4_i_48_n_0),
        .O(y0_carry__4_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_21
       (.I0(y0_carry__4_i_49_n_0),
        .I1(y0_carry__4_i_50_n_0),
        .O(y0_carry__4_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_22
       (.I0(y0_carry__4_i_51_n_0),
        .I1(y0_carry__4_i_52_n_0),
        .O(y0_carry__4_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_23
       (.I0(y0_carry__4_i_53_n_0),
        .I1(y0_carry__4_i_54_n_0),
        .O(y0_carry__4_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__4_i_24
       (.I0(y0_carry__4_i_55_n_0),
        .I1(y0_carry__4_i_56_n_0),
        .O(y0_carry__4_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_25
       (.I0(\registers_reg[27] [23]),
        .I1(\registers_reg[11] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [23]),
        .O(y0_carry__4_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_26
       (.I0(\registers_reg[31] [23]),
        .I1(\registers_reg[15] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [23]),
        .O(y0_carry__4_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_27
       (.I0(\registers_reg[25] [23]),
        .I1(\registers_reg[9] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [23]),
        .O(y0_carry__4_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_28
       (.I0(\registers_reg[29] [23]),
        .I1(\registers_reg[13] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [23]),
        .O(y0_carry__4_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_29
       (.I0(\registers_reg[26] [23]),
        .I1(\registers_reg[10] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [23]),
        .O(y0_carry__4_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_3
       (.I0(y0_carry__4_i_17_n_0),
        .I1(y0_carry__4_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__4_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__4_i_20_n_0),
        .O(dbu_rf_rd1[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_30
       (.I0(\registers_reg[30] [23]),
        .I1(\registers_reg[14] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [23]),
        .O(y0_carry__4_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__4_i_31
       (.I0(\registers_reg[24] [23]),
        .I1(\registers_reg[8] [23]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [23]),
        .O(y0_carry__4_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_32
       (.I0(\registers_reg[28] [23]),
        .I1(\registers_reg[12] [23]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [23]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [23]),
        .O(y0_carry__4_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_33
       (.I0(\registers_reg[27] [22]),
        .I1(\registers_reg[11] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [22]),
        .O(y0_carry__4_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_34
       (.I0(\registers_reg[31] [22]),
        .I1(\registers_reg[15] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [22]),
        .O(y0_carry__4_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_35
       (.I0(\registers_reg[25] [22]),
        .I1(\registers_reg[9] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [22]),
        .O(y0_carry__4_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_36
       (.I0(\registers_reg[29] [22]),
        .I1(\registers_reg[13] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [22]),
        .O(y0_carry__4_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_37
       (.I0(\registers_reg[26] [22]),
        .I1(\registers_reg[10] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [22]),
        .O(y0_carry__4_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_38
       (.I0(\registers_reg[30] [22]),
        .I1(\registers_reg[14] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [22]),
        .O(y0_carry__4_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__4_i_39
       (.I0(\registers_reg[24] [22]),
        .I1(\registers_reg[8] [22]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [22]),
        .O(y0_carry__4_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_4
       (.I0(y0_carry__4_i_21_n_0),
        .I1(y0_carry__4_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__4_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__4_i_24_n_0),
        .O(dbu_rf_rd1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_40
       (.I0(\registers_reg[28] [22]),
        .I1(\registers_reg[12] [22]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [22]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [22]),
        .O(y0_carry__4_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_41
       (.I0(\registers_reg[27] [21]),
        .I1(\registers_reg[11] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [21]),
        .O(y0_carry__4_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_42
       (.I0(\registers_reg[31] [21]),
        .I1(\registers_reg[15] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [21]),
        .O(y0_carry__4_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_43
       (.I0(\registers_reg[25] [21]),
        .I1(\registers_reg[9] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [21]),
        .O(y0_carry__4_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_44
       (.I0(\registers_reg[29] [21]),
        .I1(\registers_reg[13] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [21]),
        .O(y0_carry__4_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_45
       (.I0(\registers_reg[26] [21]),
        .I1(\registers_reg[10] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [21]),
        .O(y0_carry__4_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_46
       (.I0(\registers_reg[30] [21]),
        .I1(\registers_reg[14] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [21]),
        .O(y0_carry__4_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__4_i_47
       (.I0(\registers_reg[24] [21]),
        .I1(\registers_reg[8] [21]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [21]),
        .O(y0_carry__4_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_48
       (.I0(\registers_reg[28] [21]),
        .I1(\registers_reg[12] [21]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [21]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [21]),
        .O(y0_carry__4_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_49
       (.I0(\registers_reg[27] [20]),
        .I1(\registers_reg[11] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [20]),
        .O(y0_carry__4_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__4_i_5
       (.I0(dbu_rf_rd1[23]),
        .I1(d[23]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_2 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_50
       (.I0(\registers_reg[31] [20]),
        .I1(\registers_reg[15] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [20]),
        .O(y0_carry__4_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_51
       (.I0(\registers_reg[25] [20]),
        .I1(\registers_reg[9] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [20]),
        .O(y0_carry__4_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_52
       (.I0(\registers_reg[29] [20]),
        .I1(\registers_reg[13] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [20]),
        .O(y0_carry__4_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_53
       (.I0(\registers_reg[26] [20]),
        .I1(\registers_reg[10] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [20]),
        .O(y0_carry__4_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_54
       (.I0(\registers_reg[30] [20]),
        .I1(\registers_reg[14] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [20]),
        .O(y0_carry__4_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__4_i_55
       (.I0(\registers_reg[24] [20]),
        .I1(\registers_reg[8] [20]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [20]),
        .O(y0_carry__4_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__4_i_56
       (.I0(\registers_reg[28] [20]),
        .I1(\registers_reg[12] [20]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [20]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [20]),
        .O(y0_carry__4_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__4_i_6
       (.I0(dbu_rf_rd1[22]),
        .I1(d[22]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_2 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__4_i_7
       (.I0(dbu_rf_rd1[21]),
        .I1(d[21]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_2 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__4_i_8
       (.I0(dbu_rf_rd1[20]),
        .I1(d[20]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_2 [0]));
  MUXF7 y0_carry__4_i_9
       (.I0(y0_carry__4_i_25_n_0),
        .I1(y0_carry__4_i_26_n_0),
        .O(y0_carry__4_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_1
       (.I0(y0_carry__5_i_9_n_0),
        .I1(y0_carry__5_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry__5_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry__5_i_12_n_0),
        .O(dbu_rf_rd1[27]));
  MUXF7 y0_carry__5_i_10
       (.I0(y0_carry__5_i_27_n_0),
        .I1(y0_carry__5_i_28_n_0),
        .O(y0_carry__5_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_11
       (.I0(y0_carry__5_i_29_n_0),
        .I1(y0_carry__5_i_30_n_0),
        .O(y0_carry__5_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_12
       (.I0(y0_carry__5_i_31_n_0),
        .I1(y0_carry__5_i_32_n_0),
        .O(y0_carry__5_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_13
       (.I0(y0_carry__5_i_33_n_0),
        .I1(y0_carry__5_i_34_n_0),
        .O(y0_carry__5_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_14
       (.I0(y0_carry__5_i_35_n_0),
        .I1(y0_carry__5_i_36_n_0),
        .O(y0_carry__5_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_15
       (.I0(y0_carry__5_i_37_n_0),
        .I1(y0_carry__5_i_38_n_0),
        .O(y0_carry__5_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_16
       (.I0(y0_carry__5_i_39_n_0),
        .I1(y0_carry__5_i_40_n_0),
        .O(y0_carry__5_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_17
       (.I0(y0_carry__5_i_41_n_0),
        .I1(y0_carry__5_i_42_n_0),
        .O(y0_carry__5_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_18
       (.I0(y0_carry__5_i_43_n_0),
        .I1(y0_carry__5_i_44_n_0),
        .O(y0_carry__5_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_19
       (.I0(y0_carry__5_i_45_n_0),
        .I1(y0_carry__5_i_46_n_0),
        .O(y0_carry__5_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_2
       (.I0(y0_carry__5_i_13_n_0),
        .I1(y0_carry__5_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry__5_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry__5_i_16_n_0),
        .O(dbu_rf_rd1[26]));
  MUXF7 y0_carry__5_i_20
       (.I0(y0_carry__5_i_47_n_0),
        .I1(y0_carry__5_i_48_n_0),
        .O(y0_carry__5_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_21
       (.I0(y0_carry__5_i_49_n_0),
        .I1(y0_carry__5_i_50_n_0),
        .O(y0_carry__5_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_22
       (.I0(y0_carry__5_i_51_n_0),
        .I1(y0_carry__5_i_52_n_0),
        .O(y0_carry__5_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_23
       (.I0(y0_carry__5_i_53_n_0),
        .I1(y0_carry__5_i_54_n_0),
        .O(y0_carry__5_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__5_i_24
       (.I0(y0_carry__5_i_55_n_0),
        .I1(y0_carry__5_i_56_n_0),
        .O(y0_carry__5_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_25
       (.I0(\registers_reg[27] [27]),
        .I1(\registers_reg[11] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [27]),
        .O(y0_carry__5_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_26
       (.I0(\registers_reg[31] [27]),
        .I1(\registers_reg[15] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [27]),
        .O(y0_carry__5_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_27
       (.I0(\registers_reg[25] [27]),
        .I1(\registers_reg[9] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [27]),
        .O(y0_carry__5_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_28
       (.I0(\registers_reg[29] [27]),
        .I1(\registers_reg[13] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [27]),
        .O(y0_carry__5_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_29
       (.I0(\registers_reg[26] [27]),
        .I1(\registers_reg[10] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [27]),
        .O(y0_carry__5_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_3
       (.I0(y0_carry__5_i_17_n_0),
        .I1(y0_carry__5_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry__5_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry__5_i_20_n_0),
        .O(dbu_rf_rd1[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_30
       (.I0(\registers_reg[30] [27]),
        .I1(\registers_reg[14] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [27]),
        .O(y0_carry__5_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__5_i_31
       (.I0(\registers_reg[24] [27]),
        .I1(\registers_reg[8] [27]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [27]),
        .O(y0_carry__5_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_32
       (.I0(\registers_reg[28] [27]),
        .I1(\registers_reg[12] [27]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [27]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [27]),
        .O(y0_carry__5_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_33
       (.I0(\registers_reg[27] [26]),
        .I1(\registers_reg[11] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [26]),
        .O(y0_carry__5_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_34
       (.I0(\registers_reg[31] [26]),
        .I1(\registers_reg[15] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [26]),
        .O(y0_carry__5_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_35
       (.I0(\registers_reg[25] [26]),
        .I1(\registers_reg[9] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [26]),
        .O(y0_carry__5_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_36
       (.I0(\registers_reg[29] [26]),
        .I1(\registers_reg[13] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [26]),
        .O(y0_carry__5_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_37
       (.I0(\registers_reg[26] [26]),
        .I1(\registers_reg[10] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [26]),
        .O(y0_carry__5_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_38
       (.I0(\registers_reg[30] [26]),
        .I1(\registers_reg[14] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [26]),
        .O(y0_carry__5_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__5_i_39
       (.I0(\registers_reg[24] [26]),
        .I1(\registers_reg[8] [26]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [26]),
        .O(y0_carry__5_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_4
       (.I0(y0_carry__5_i_21_n_0),
        .I1(y0_carry__5_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry__5_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry__5_i_24_n_0),
        .O(dbu_rf_rd1[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_40
       (.I0(\registers_reg[28] [26]),
        .I1(\registers_reg[12] [26]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [26]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [26]),
        .O(y0_carry__5_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_41
       (.I0(\registers_reg[27] [25]),
        .I1(\registers_reg[11] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [25]),
        .O(y0_carry__5_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_42
       (.I0(\registers_reg[31] [25]),
        .I1(\registers_reg[15] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [25]),
        .O(y0_carry__5_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_43
       (.I0(\registers_reg[25] [25]),
        .I1(\registers_reg[9] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [25]),
        .O(y0_carry__5_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_44
       (.I0(\registers_reg[29] [25]),
        .I1(\registers_reg[13] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [25]),
        .O(y0_carry__5_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_45
       (.I0(\registers_reg[26] [25]),
        .I1(\registers_reg[10] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [25]),
        .O(y0_carry__5_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_46
       (.I0(\registers_reg[30] [25]),
        .I1(\registers_reg[14] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [25]),
        .O(y0_carry__5_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__5_i_47
       (.I0(\registers_reg[24] [25]),
        .I1(\registers_reg[8] [25]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [25]),
        .O(y0_carry__5_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_48
       (.I0(\registers_reg[28] [25]),
        .I1(\registers_reg[12] [25]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [25]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [25]),
        .O(y0_carry__5_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_49
       (.I0(\registers_reg[27] [24]),
        .I1(\registers_reg[11] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [24]),
        .O(y0_carry__5_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__5_i_5
       (.I0(dbu_rf_rd1[27]),
        .I1(d[27]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_3 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_50
       (.I0(\registers_reg[31] [24]),
        .I1(\registers_reg[15] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [24]),
        .O(y0_carry__5_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_51
       (.I0(\registers_reg[25] [24]),
        .I1(\registers_reg[9] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [24]),
        .O(y0_carry__5_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_52
       (.I0(\registers_reg[29] [24]),
        .I1(\registers_reg[13] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [24]),
        .O(y0_carry__5_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_53
       (.I0(\registers_reg[26] [24]),
        .I1(\registers_reg[10] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [24]),
        .O(y0_carry__5_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_54
       (.I0(\registers_reg[30] [24]),
        .I1(\registers_reg[14] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [24]),
        .O(y0_carry__5_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__5_i_55
       (.I0(\registers_reg[24] [24]),
        .I1(\registers_reg[8] [24]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [24]),
        .O(y0_carry__5_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__5_i_56
       (.I0(\registers_reg[28] [24]),
        .I1(\registers_reg[12] [24]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [24]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [24]),
        .O(y0_carry__5_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__5_i_6
       (.I0(dbu_rf_rd1[26]),
        .I1(d[26]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_3 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__5_i_7
       (.I0(dbu_rf_rd1[25]),
        .I1(d[25]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_3 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__5_i_8
       (.I0(dbu_rf_rd1[24]),
        .I1(d[24]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15]_3 [0]));
  MUXF7 y0_carry__5_i_9
       (.I0(y0_carry__5_i_25_n_0),
        .I1(y0_carry__5_i_26_n_0),
        .O(y0_carry__5_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_1
       (.I0(y0_carry__6_i_8_n_0),
        .I1(y0_carry__6_i_9_n_0),
        .I2(spo[21]),
        .I3(y0_carry__6_i_10_n_0),
        .I4(spo[22]),
        .I5(y0_carry__6_i_11_n_0),
        .O(dbu_rf_rd1[30]));
  MUXF7 y0_carry__6_i_10
       (.I0(y0_carry__6_i_26_n_0),
        .I1(y0_carry__6_i_27_n_0),
        .O(y0_carry__6_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_11
       (.I0(y0_carry__6_i_28_n_0),
        .I1(y0_carry__6_i_29_n_0),
        .O(y0_carry__6_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_12
       (.I0(y0_carry__6_i_30_n_0),
        .I1(y0_carry__6_i_31_n_0),
        .O(y0_carry__6_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_13
       (.I0(y0_carry__6_i_32_n_0),
        .I1(y0_carry__6_i_33_n_0),
        .O(y0_carry__6_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_14
       (.I0(y0_carry__6_i_34_n_0),
        .I1(y0_carry__6_i_35_n_0),
        .O(y0_carry__6_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_15
       (.I0(y0_carry__6_i_36_n_0),
        .I1(y0_carry__6_i_37_n_0),
        .O(y0_carry__6_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_16
       (.I0(y0_carry__6_i_38_n_0),
        .I1(y0_carry__6_i_39_n_0),
        .O(y0_carry__6_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_17
       (.I0(y0_carry__6_i_40_n_0),
        .I1(y0_carry__6_i_41_n_0),
        .O(y0_carry__6_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_18
       (.I0(y0_carry__6_i_42_n_0),
        .I1(y0_carry__6_i_43_n_0),
        .O(y0_carry__6_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_19
       (.I0(y0_carry__6_i_44_n_0),
        .I1(y0_carry__6_i_45_n_0),
        .O(y0_carry__6_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_2
       (.I0(y0_carry__6_i_12_n_0),
        .I1(y0_carry__6_i_13_n_0),
        .I2(spo[21]),
        .I3(y0_carry__6_i_14_n_0),
        .I4(spo[22]),
        .I5(y0_carry__6_i_15_n_0),
        .O(dbu_rf_rd1[29]));
  MUXF8 y0_carry__6_i_20
       (.I0(y0_carry__6_i_46_n_0),
        .I1(y0_carry__6_i_47_n_0),
        .O(y0_carry__6_i_20_n_0),
        .S(spo[22]));
  MUXF8 y0_carry__6_i_21
       (.I0(y0_carry__6_i_48_n_0),
        .I1(y0_carry__6_i_49_n_0),
        .O(y0_carry__6_i_21_n_0),
        .S(spo[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_22
       (.I0(\registers_reg[27] [30]),
        .I1(\registers_reg[11] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [30]),
        .O(y0_carry__6_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_23
       (.I0(\registers_reg[31] [30]),
        .I1(\registers_reg[15] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [30]),
        .O(y0_carry__6_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_24
       (.I0(\registers_reg[25] [30]),
        .I1(\registers_reg[9] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [30]),
        .O(y0_carry__6_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_25
       (.I0(\registers_reg[29] [30]),
        .I1(\registers_reg[13] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [30]),
        .O(y0_carry__6_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_26
       (.I0(\registers_reg[26] [30]),
        .I1(\registers_reg[10] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [30]),
        .O(y0_carry__6_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_27
       (.I0(\registers_reg[30] [30]),
        .I1(\registers_reg[14] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [30]),
        .O(y0_carry__6_i_27_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__6_i_28
       (.I0(\registers_reg[24] [30]),
        .I1(\registers_reg[8] [30]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [30]),
        .O(y0_carry__6_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_29
       (.I0(\registers_reg[28] [30]),
        .I1(\registers_reg[12] [30]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [30]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [30]),
        .O(y0_carry__6_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_3
       (.I0(y0_carry__6_i_16_n_0),
        .I1(y0_carry__6_i_17_n_0),
        .I2(spo[21]),
        .I3(y0_carry__6_i_18_n_0),
        .I4(spo[22]),
        .I5(y0_carry__6_i_19_n_0),
        .O(dbu_rf_rd1[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_30
       (.I0(\registers_reg[27] [29]),
        .I1(\registers_reg[11] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [29]),
        .O(y0_carry__6_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_31
       (.I0(\registers_reg[31] [29]),
        .I1(\registers_reg[15] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [29]),
        .O(y0_carry__6_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_32
       (.I0(\registers_reg[25] [29]),
        .I1(\registers_reg[9] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [29]),
        .O(y0_carry__6_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_33
       (.I0(\registers_reg[29] [29]),
        .I1(\registers_reg[13] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [29]),
        .O(y0_carry__6_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_34
       (.I0(\registers_reg[26] [29]),
        .I1(\registers_reg[10] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [29]),
        .O(y0_carry__6_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_35
       (.I0(\registers_reg[30] [29]),
        .I1(\registers_reg[14] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [29]),
        .O(y0_carry__6_i_35_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__6_i_36
       (.I0(\registers_reg[24] [29]),
        .I1(\registers_reg[8] [29]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [29]),
        .O(y0_carry__6_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_37
       (.I0(\registers_reg[28] [29]),
        .I1(\registers_reg[12] [29]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [29]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [29]),
        .O(y0_carry__6_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_38
       (.I0(\registers_reg[27] [28]),
        .I1(\registers_reg[11] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [28]),
        .O(y0_carry__6_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_39
       (.I0(\registers_reg[31] [28]),
        .I1(\registers_reg[15] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [28]),
        .O(y0_carry__6_i_39_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    y0_carry__6_i_4
       (.I0(y0_carry__6_i_20_n_0),
        .I1(spo[21]),
        .I2(y0_carry__6_i_21_n_0),
        .I3(d[31]),
        .I4(\y0_inferred__0/i__carry__6 ),
        .I5(spo[15]),
        .O(\bbstub_spo[15] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_40
       (.I0(\registers_reg[25] [28]),
        .I1(\registers_reg[9] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [28]),
        .O(y0_carry__6_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_41
       (.I0(\registers_reg[29] [28]),
        .I1(\registers_reg[13] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [28]),
        .O(y0_carry__6_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_42
       (.I0(\registers_reg[26] [28]),
        .I1(\registers_reg[10] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [28]),
        .O(y0_carry__6_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_43
       (.I0(\registers_reg[30] [28]),
        .I1(\registers_reg[14] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [28]),
        .O(y0_carry__6_i_43_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__6_i_44
       (.I0(\registers_reg[24] [28]),
        .I1(\registers_reg[8] [28]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [28]),
        .O(y0_carry__6_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_45
       (.I0(\registers_reg[28] [28]),
        .I1(\registers_reg[12] [28]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [28]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [28]),
        .O(y0_carry__6_i_45_n_0));
  MUXF7 y0_carry__6_i_46
       (.I0(y0_carry__6_i_50_n_0),
        .I1(y0_carry__6_i_51_n_0),
        .O(y0_carry__6_i_46_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_47
       (.I0(y0_carry__6_i_52_n_0),
        .I1(y0_carry__6_i_53_n_0),
        .O(y0_carry__6_i_47_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_48
       (.I0(y0_carry__6_i_54_n_0),
        .I1(y0_carry__6_i_55_n_0),
        .O(y0_carry__6_i_48_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_49
       (.I0(y0_carry__6_i_56_n_0),
        .I1(y0_carry__6_i_57_n_0),
        .O(y0_carry__6_i_49_n_0),
        .S(spo[23]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__6_i_5
       (.I0(dbu_rf_rd1[30]),
        .I1(d[30]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15] [2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry__6_i_50
       (.I0(\registers_reg[24] [31]),
        .I1(\registers_reg[8] [31]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [31]),
        .O(y0_carry__6_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_51
       (.I0(\registers_reg[28] [31]),
        .I1(\registers_reg[12] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [31]),
        .O(y0_carry__6_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_52
       (.I0(\registers_reg[26] [31]),
        .I1(\registers_reg[10] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [31]),
        .O(y0_carry__6_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_53
       (.I0(\registers_reg[30] [31]),
        .I1(\registers_reg[14] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [31]),
        .O(y0_carry__6_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_54
       (.I0(\registers_reg[25] [31]),
        .I1(\registers_reg[9] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [31]),
        .O(y0_carry__6_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_55
       (.I0(\registers_reg[29] [31]),
        .I1(\registers_reg[13] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [31]),
        .O(y0_carry__6_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_56
       (.I0(\registers_reg[27] [31]),
        .I1(\registers_reg[11] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [31]),
        .O(y0_carry__6_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry__6_i_57
       (.I0(\registers_reg[31] [31]),
        .I1(\registers_reg[15] [31]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [31]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [31]),
        .O(y0_carry__6_i_57_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__6_i_6
       (.I0(dbu_rf_rd1[29]),
        .I1(d[29]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry__6_i_7
       (.I0(dbu_rf_rd1[28]),
        .I1(d[28]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[15]),
        .O(\bbstub_spo[15] [0]));
  MUXF7 y0_carry__6_i_8
       (.I0(y0_carry__6_i_22_n_0),
        .I1(y0_carry__6_i_23_n_0),
        .O(y0_carry__6_i_8_n_0),
        .S(spo[23]));
  MUXF7 y0_carry__6_i_9
       (.I0(y0_carry__6_i_24_n_0),
        .I1(y0_carry__6_i_25_n_0),
        .O(y0_carry__6_i_9_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_1
       (.I0(y0_carry_i_9_n_0),
        .I1(y0_carry_i_10_n_0),
        .I2(spo[21]),
        .I3(y0_carry_i_11_n_0),
        .I4(spo[22]),
        .I5(y0_carry_i_12_n_0),
        .O(dbu_rf_rd1[3]));
  MUXF7 y0_carry_i_10
       (.I0(y0_carry_i_27_n_0),
        .I1(y0_carry_i_28_n_0),
        .O(y0_carry_i_10_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_11
       (.I0(y0_carry_i_29_n_0),
        .I1(y0_carry_i_30_n_0),
        .O(y0_carry_i_11_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_12
       (.I0(y0_carry_i_31_n_0),
        .I1(y0_carry_i_32_n_0),
        .O(y0_carry_i_12_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_13
       (.I0(y0_carry_i_33_n_0),
        .I1(y0_carry_i_34_n_0),
        .O(y0_carry_i_13_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_14
       (.I0(y0_carry_i_35_n_0),
        .I1(y0_carry_i_36_n_0),
        .O(y0_carry_i_14_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_15
       (.I0(y0_carry_i_37_n_0),
        .I1(y0_carry_i_38_n_0),
        .O(y0_carry_i_15_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_16
       (.I0(y0_carry_i_39_n_0),
        .I1(y0_carry_i_40_n_0),
        .O(y0_carry_i_16_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_17
       (.I0(y0_carry_i_41_n_0),
        .I1(y0_carry_i_42_n_0),
        .O(y0_carry_i_17_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_18
       (.I0(y0_carry_i_43_n_0),
        .I1(y0_carry_i_44_n_0),
        .O(y0_carry_i_18_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_19
       (.I0(y0_carry_i_45_n_0),
        .I1(y0_carry_i_46_n_0),
        .O(y0_carry_i_19_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_2
       (.I0(y0_carry_i_13_n_0),
        .I1(y0_carry_i_14_n_0),
        .I2(spo[21]),
        .I3(y0_carry_i_15_n_0),
        .I4(spo[22]),
        .I5(y0_carry_i_16_n_0),
        .O(dbu_rf_rd1[2]));
  MUXF7 y0_carry_i_20
       (.I0(y0_carry_i_47_n_0),
        .I1(y0_carry_i_48_n_0),
        .O(y0_carry_i_20_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_21
       (.I0(y0_carry_i_49_n_0),
        .I1(y0_carry_i_50_n_0),
        .O(y0_carry_i_21_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_22
       (.I0(y0_carry_i_51_n_0),
        .I1(y0_carry_i_52_n_0),
        .O(y0_carry_i_22_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_23
       (.I0(y0_carry_i_53_n_0),
        .I1(y0_carry_i_54_n_0),
        .O(y0_carry_i_23_n_0),
        .S(spo[23]));
  MUXF7 y0_carry_i_24
       (.I0(y0_carry_i_55_n_0),
        .I1(y0_carry_i_56_n_0),
        .O(y0_carry_i_24_n_0),
        .S(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_25
       (.I0(\registers_reg[27] [3]),
        .I1(\registers_reg[11] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [3]),
        .O(y0_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_26
       (.I0(\registers_reg[31] [3]),
        .I1(\registers_reg[15] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [3]),
        .O(y0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_27
       (.I0(\registers_reg[25] [3]),
        .I1(\registers_reg[9] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [3]),
        .O(y0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_28
       (.I0(\registers_reg[29] [3]),
        .I1(\registers_reg[13] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [3]),
        .O(y0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_29
       (.I0(\registers_reg[26] [3]),
        .I1(\registers_reg[10] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [3]),
        .O(y0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_3
       (.I0(y0_carry_i_17_n_0),
        .I1(y0_carry_i_18_n_0),
        .I2(spo[21]),
        .I3(y0_carry_i_19_n_0),
        .I4(spo[22]),
        .I5(y0_carry_i_20_n_0),
        .O(dbu_rf_rd1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_30
       (.I0(\registers_reg[30] [3]),
        .I1(\registers_reg[14] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [3]),
        .O(y0_carry_i_30_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry_i_31
       (.I0(\registers_reg[24] [3]),
        .I1(\registers_reg[8] [3]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [3]),
        .O(y0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_32
       (.I0(\registers_reg[28] [3]),
        .I1(\registers_reg[12] [3]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [3]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [3]),
        .O(y0_carry_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_33
       (.I0(\registers_reg[27] [2]),
        .I1(\registers_reg[11] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [2]),
        .O(y0_carry_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_34
       (.I0(\registers_reg[31] [2]),
        .I1(\registers_reg[15] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [2]),
        .O(y0_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_35
       (.I0(\registers_reg[25] [2]),
        .I1(\registers_reg[9] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [2]),
        .O(y0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_36
       (.I0(\registers_reg[29] [2]),
        .I1(\registers_reg[13] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [2]),
        .O(y0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_37
       (.I0(\registers_reg[26] [2]),
        .I1(\registers_reg[10] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [2]),
        .O(y0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_38
       (.I0(\registers_reg[30] [2]),
        .I1(\registers_reg[14] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [2]),
        .O(y0_carry_i_38_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry_i_39
       (.I0(\registers_reg[24] [2]),
        .I1(\registers_reg[8] [2]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [2]),
        .O(y0_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_4
       (.I0(y0_carry_i_21_n_0),
        .I1(y0_carry_i_22_n_0),
        .I2(spo[21]),
        .I3(y0_carry_i_23_n_0),
        .I4(spo[22]),
        .I5(y0_carry_i_24_n_0),
        .O(dbu_rf_rd1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_40
       (.I0(\registers_reg[28] [2]),
        .I1(\registers_reg[12] [2]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [2]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [2]),
        .O(y0_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_41
       (.I0(\registers_reg[27] [1]),
        .I1(\registers_reg[11] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [1]),
        .O(y0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_42
       (.I0(\registers_reg[31] [1]),
        .I1(\registers_reg[15] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [1]),
        .O(y0_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_43
       (.I0(\registers_reg[25] [1]),
        .I1(\registers_reg[9] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [1]),
        .O(y0_carry_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_44
       (.I0(\registers_reg[29] [1]),
        .I1(\registers_reg[13] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [1]),
        .O(y0_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_45
       (.I0(\registers_reg[26] [1]),
        .I1(\registers_reg[10] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [1]),
        .O(y0_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_46
       (.I0(\registers_reg[30] [1]),
        .I1(\registers_reg[14] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [1]),
        .O(y0_carry_i_46_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry_i_47
       (.I0(\registers_reg[24] [1]),
        .I1(\registers_reg[8] [1]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [1]),
        .O(y0_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_48
       (.I0(\registers_reg[28] [1]),
        .I1(\registers_reg[12] [1]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [1]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [1]),
        .O(y0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_49
       (.I0(\registers_reg[27] [0]),
        .I1(\registers_reg[11] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[19] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[3] [0]),
        .O(y0_carry_i_49_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry_i_5
       (.I0(dbu_rf_rd1[3]),
        .I1(d[3]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_50
       (.I0(\registers_reg[31] [0]),
        .I1(\registers_reg[15] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[23] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[7] [0]),
        .O(y0_carry_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_51
       (.I0(\registers_reg[25] [0]),
        .I1(\registers_reg[9] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[17] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[1] [0]),
        .O(y0_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_52
       (.I0(\registers_reg[29] [0]),
        .I1(\registers_reg[13] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[21] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[5] [0]),
        .O(y0_carry_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_53
       (.I0(\registers_reg[26] [0]),
        .I1(\registers_reg[10] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[18] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[2] [0]),
        .O(y0_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_54
       (.I0(\registers_reg[30] [0]),
        .I1(\registers_reg[14] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[22] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[6] [0]),
        .O(y0_carry_i_54_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    y0_carry_i_55
       (.I0(\registers_reg[24] [0]),
        .I1(\registers_reg[8] [0]),
        .I2(spo[24]),
        .I3(spo[25]),
        .I4(\registers_reg[16] [0]),
        .O(y0_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    y0_carry_i_56
       (.I0(\registers_reg[28] [0]),
        .I1(\registers_reg[12] [0]),
        .I2(spo[24]),
        .I3(\registers_reg[20] [0]),
        .I4(spo[25]),
        .I5(\registers_reg[4] [0]),
        .O(y0_carry_i_56_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry_i_6
       (.I0(dbu_rf_rd1[2]),
        .I1(d[2]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry_i_7
       (.I0(dbu_rf_rd1[1]),
        .I1(d[1]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y0_carry_i_8
       (.I0(dbu_rf_rd1[0]),
        .I1(d[0]),
        .I2(\y0_inferred__0/i__carry__6 ),
        .I3(spo[0]),
        .O(S[0]));
  MUXF7 y0_carry_i_9
       (.I0(y0_carry_i_25_n_0),
        .I1(y0_carry_i_26_n_0),
        .O(y0_carry_i_9_n_0),
        .S(spo[23]));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_instruction_memory_256x32.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module dist_instruction_memory_256x32_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire [29:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [26];
  assign spo[30] = \<const0> ;
  assign spo[29:25] = \^spo [29:25];
  assign spo[24] = \^spo [15];
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21:19] = \^spo [21:19];
  assign spo[18] = \<const0> ;
  assign spo[17:15] = \^spo [17:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5:0] = \^spo [5:0];
  GND GND
       (.G(\<const0> ));
  dist_instruction_memory_256x32_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [26],\^spo [29:27],\^spo [25],\^spo [15],\^spo [21:19],\^spo [17:16],\^spo [5:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module dist_instruction_memory_256x32_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [16:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [16:0]spo;

  dist_instruction_memory_256x32_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_instruction_memory_256x32_rom
   (spo,
    a);
  output [16:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [16:0]spo;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h0000000012150000)) 
    \spo[0]_INST_0 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000020000001000)) 
    \spo[15]_INST_0 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0001000090F00000)) 
    \spo[16]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0800040008005400)) 
    \spo[17]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0005897F00000000)) 
    \spo[19]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_1_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0800400000000100)) 
    \spo[1]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0100080006000000)) 
    \spo[20]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h0000000007000800)) 
    \spo[21]_INST_0 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(spo[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \spo[25]_INST_0 
       (.I0(a[3]),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(a[1]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0005000010A20000)) 
    \spo[26]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[16]));
  LUT3 #(
    .INIT(8'h01)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033000070C40000)) 
    \spo[27]_INST_0 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9020)) 
    \spo[28]_INST_0 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .I3(a[1]),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(a[4]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(a[2]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007000)) 
    \spo[2]_INST_0 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0005000010800000)) 
    \spo[3]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a[4]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h06005A0000000200)) 
    \spo[4]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h0000220000001000)) 
    \spo[5]_INST_0 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[26]_INST_0_i_1_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(spo[5]));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "1" *) (* C_HAS_DPRA = "1" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "dist_memory_256x32.mif" *) (* C_MEM_TYPE = "2" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module dist_memory_256x32_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;

  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dist_memory_256x32_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module dist_memory_256x32_dist_mem_gen_v8_0_13_synth
   (spo,
    dpo,
    we,
    a,
    clk,
    d,
    dpra);
  output [31:0]spo;
  output [31:0]dpo;
  input we;
  input [7:0]a;
  input clk;
  input [31:0]d;
  input [7:0]dpra;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;

  dist_memory_256x32_dpram \gen_dp_ram.dpram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dpram" *) 
module dist_memory_256x32_dpram
   (spo,
    dpo,
    we,
    a,
    clk,
    d,
    dpra);
  output [31:0]spo;
  output [31:0]dpo;
  input we;
  input [7:0]a;
  input clk;
  input [31:0]d;
  input [7:0]dpra;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  (* RTL_KEEP = "true" *) wire [31:0]qdpo_int;
  (* RTL_KEEP = "true" *) wire [31:0]qspo_int;
  wire ram_reg_0_127_0_0_i_1_n_0;
  wire ram_reg_0_127_0_0_n_0;
  wire ram_reg_0_127_0_0_n_1;
  wire ram_reg_0_127_10_10_n_0;
  wire ram_reg_0_127_10_10_n_1;
  wire ram_reg_0_127_11_11_n_0;
  wire ram_reg_0_127_11_11_n_1;
  wire ram_reg_0_127_12_12_n_0;
  wire ram_reg_0_127_12_12_n_1;
  wire ram_reg_0_127_13_13_n_0;
  wire ram_reg_0_127_13_13_n_1;
  wire ram_reg_0_127_14_14_n_0;
  wire ram_reg_0_127_14_14_n_1;
  wire ram_reg_0_127_15_15_n_0;
  wire ram_reg_0_127_15_15_n_1;
  wire ram_reg_0_127_16_16_n_0;
  wire ram_reg_0_127_16_16_n_1;
  wire ram_reg_0_127_17_17_n_0;
  wire ram_reg_0_127_17_17_n_1;
  wire ram_reg_0_127_18_18_n_0;
  wire ram_reg_0_127_18_18_n_1;
  wire ram_reg_0_127_19_19_n_0;
  wire ram_reg_0_127_19_19_n_1;
  wire ram_reg_0_127_1_1_n_0;
  wire ram_reg_0_127_1_1_n_1;
  wire ram_reg_0_127_20_20_n_0;
  wire ram_reg_0_127_20_20_n_1;
  wire ram_reg_0_127_21_21_n_0;
  wire ram_reg_0_127_21_21_n_1;
  wire ram_reg_0_127_22_22_n_0;
  wire ram_reg_0_127_22_22_n_1;
  wire ram_reg_0_127_23_23_n_0;
  wire ram_reg_0_127_23_23_n_1;
  wire ram_reg_0_127_24_24_n_0;
  wire ram_reg_0_127_24_24_n_1;
  wire ram_reg_0_127_25_25_n_0;
  wire ram_reg_0_127_25_25_n_1;
  wire ram_reg_0_127_26_26_n_0;
  wire ram_reg_0_127_26_26_n_1;
  wire ram_reg_0_127_27_27_n_0;
  wire ram_reg_0_127_27_27_n_1;
  wire ram_reg_0_127_28_28_n_0;
  wire ram_reg_0_127_28_28_n_1;
  wire ram_reg_0_127_29_29_n_0;
  wire ram_reg_0_127_29_29_n_1;
  wire ram_reg_0_127_2_2_n_0;
  wire ram_reg_0_127_2_2_n_1;
  wire ram_reg_0_127_30_30_n_0;
  wire ram_reg_0_127_30_30_n_1;
  wire ram_reg_0_127_31_31_n_0;
  wire ram_reg_0_127_31_31_n_1;
  wire ram_reg_0_127_3_3_n_0;
  wire ram_reg_0_127_3_3_n_1;
  wire ram_reg_0_127_4_4_n_0;
  wire ram_reg_0_127_4_4_n_1;
  wire ram_reg_0_127_5_5_n_0;
  wire ram_reg_0_127_5_5_n_1;
  wire ram_reg_0_127_6_6_n_0;
  wire ram_reg_0_127_6_6_n_1;
  wire ram_reg_0_127_7_7_n_0;
  wire ram_reg_0_127_7_7_n_1;
  wire ram_reg_0_127_8_8_n_0;
  wire ram_reg_0_127_8_8_n_1;
  wire ram_reg_0_127_9_9_n_0;
  wire ram_reg_0_127_9_9_n_1;
  wire ram_reg_128_255_0_0_i_1_n_0;
  wire ram_reg_128_255_0_0_n_0;
  wire ram_reg_128_255_0_0_n_1;
  wire ram_reg_128_255_10_10_n_0;
  wire ram_reg_128_255_10_10_n_1;
  wire ram_reg_128_255_11_11_n_0;
  wire ram_reg_128_255_11_11_n_1;
  wire ram_reg_128_255_12_12_n_0;
  wire ram_reg_128_255_12_12_n_1;
  wire ram_reg_128_255_13_13_n_0;
  wire ram_reg_128_255_13_13_n_1;
  wire ram_reg_128_255_14_14_n_0;
  wire ram_reg_128_255_14_14_n_1;
  wire ram_reg_128_255_15_15_n_0;
  wire ram_reg_128_255_15_15_n_1;
  wire ram_reg_128_255_16_16_n_0;
  wire ram_reg_128_255_16_16_n_1;
  wire ram_reg_128_255_17_17_n_0;
  wire ram_reg_128_255_17_17_n_1;
  wire ram_reg_128_255_18_18_n_0;
  wire ram_reg_128_255_18_18_n_1;
  wire ram_reg_128_255_19_19_n_0;
  wire ram_reg_128_255_19_19_n_1;
  wire ram_reg_128_255_1_1_n_0;
  wire ram_reg_128_255_1_1_n_1;
  wire ram_reg_128_255_20_20_n_0;
  wire ram_reg_128_255_20_20_n_1;
  wire ram_reg_128_255_21_21_n_0;
  wire ram_reg_128_255_21_21_n_1;
  wire ram_reg_128_255_22_22_n_0;
  wire ram_reg_128_255_22_22_n_1;
  wire ram_reg_128_255_23_23_n_0;
  wire ram_reg_128_255_23_23_n_1;
  wire ram_reg_128_255_24_24_n_0;
  wire ram_reg_128_255_24_24_n_1;
  wire ram_reg_128_255_25_25_n_0;
  wire ram_reg_128_255_25_25_n_1;
  wire ram_reg_128_255_26_26_n_0;
  wire ram_reg_128_255_26_26_n_1;
  wire ram_reg_128_255_27_27_n_0;
  wire ram_reg_128_255_27_27_n_1;
  wire ram_reg_128_255_28_28_n_0;
  wire ram_reg_128_255_28_28_n_1;
  wire ram_reg_128_255_29_29_n_0;
  wire ram_reg_128_255_29_29_n_1;
  wire ram_reg_128_255_2_2_n_0;
  wire ram_reg_128_255_2_2_n_1;
  wire ram_reg_128_255_30_30_n_0;
  wire ram_reg_128_255_30_30_n_1;
  wire ram_reg_128_255_31_31_n_0;
  wire ram_reg_128_255_31_31_n_1;
  wire ram_reg_128_255_3_3_n_0;
  wire ram_reg_128_255_3_3_n_1;
  wire ram_reg_128_255_4_4_n_0;
  wire ram_reg_128_255_4_4_n_1;
  wire ram_reg_128_255_5_5_n_0;
  wire ram_reg_128_255_5_5_n_1;
  wire ram_reg_128_255_6_6_n_0;
  wire ram_reg_128_255_6_6_n_1;
  wire ram_reg_128_255_7_7_n_0;
  wire ram_reg_128_255_7_7_n_1;
  wire ram_reg_128_255_8_8_n_0;
  wire ram_reg_128_255_8_8_n_1;
  wire ram_reg_128_255_9_9_n_0;
  wire ram_reg_128_255_9_9_n_1;
  wire [31:0]spo;
  wire we;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[0]_INST_0 
       (.I0(ram_reg_128_255_0_0_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_0_0_n_0),
        .O(dpo[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[10]_INST_0 
       (.I0(ram_reg_128_255_10_10_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_10_10_n_0),
        .O(dpo[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[11]_INST_0 
       (.I0(ram_reg_128_255_11_11_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_11_11_n_0),
        .O(dpo[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[12]_INST_0 
       (.I0(ram_reg_128_255_12_12_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_12_12_n_0),
        .O(dpo[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[13]_INST_0 
       (.I0(ram_reg_128_255_13_13_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_13_13_n_0),
        .O(dpo[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[14]_INST_0 
       (.I0(ram_reg_128_255_14_14_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_14_14_n_0),
        .O(dpo[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[15]_INST_0 
       (.I0(ram_reg_128_255_15_15_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_15_15_n_0),
        .O(dpo[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[16]_INST_0 
       (.I0(ram_reg_128_255_16_16_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_16_16_n_0),
        .O(dpo[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[17]_INST_0 
       (.I0(ram_reg_128_255_17_17_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_17_17_n_0),
        .O(dpo[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[18]_INST_0 
       (.I0(ram_reg_128_255_18_18_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_18_18_n_0),
        .O(dpo[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[19]_INST_0 
       (.I0(ram_reg_128_255_19_19_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_19_19_n_0),
        .O(dpo[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[1]_INST_0 
       (.I0(ram_reg_128_255_1_1_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_1_1_n_0),
        .O(dpo[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[20]_INST_0 
       (.I0(ram_reg_128_255_20_20_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_20_20_n_0),
        .O(dpo[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[21]_INST_0 
       (.I0(ram_reg_128_255_21_21_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_21_21_n_0),
        .O(dpo[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[22]_INST_0 
       (.I0(ram_reg_128_255_22_22_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_22_22_n_0),
        .O(dpo[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[23]_INST_0 
       (.I0(ram_reg_128_255_23_23_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_23_23_n_0),
        .O(dpo[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[24]_INST_0 
       (.I0(ram_reg_128_255_24_24_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_24_24_n_0),
        .O(dpo[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[25]_INST_0 
       (.I0(ram_reg_128_255_25_25_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_25_25_n_0),
        .O(dpo[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[26]_INST_0 
       (.I0(ram_reg_128_255_26_26_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_26_26_n_0),
        .O(dpo[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[27]_INST_0 
       (.I0(ram_reg_128_255_27_27_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_27_27_n_0),
        .O(dpo[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[28]_INST_0 
       (.I0(ram_reg_128_255_28_28_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_28_28_n_0),
        .O(dpo[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[29]_INST_0 
       (.I0(ram_reg_128_255_29_29_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_29_29_n_0),
        .O(dpo[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[2]_INST_0 
       (.I0(ram_reg_128_255_2_2_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_2_2_n_0),
        .O(dpo[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[30]_INST_0 
       (.I0(ram_reg_128_255_30_30_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_30_30_n_0),
        .O(dpo[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[31]_INST_0 
       (.I0(ram_reg_128_255_31_31_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_31_31_n_0),
        .O(dpo[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[3]_INST_0 
       (.I0(ram_reg_128_255_3_3_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_3_3_n_0),
        .O(dpo[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[4]_INST_0 
       (.I0(ram_reg_128_255_4_4_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_4_4_n_0),
        .O(dpo[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[5]_INST_0 
       (.I0(ram_reg_128_255_5_5_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_5_5_n_0),
        .O(dpo[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[6]_INST_0 
       (.I0(ram_reg_128_255_6_6_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_6_6_n_0),
        .O(dpo[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[7]_INST_0 
       (.I0(ram_reg_128_255_7_7_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_7_7_n_0),
        .O(dpo[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[8]_INST_0 
       (.I0(ram_reg_128_255_8_8_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_8_8_n_0),
        .O(dpo[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[9]_INST_0 
       (.I0(ram_reg_128_255_9_9_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_9_9_n_0),
        .O(dpo[9]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[0]),
        .Q(qdpo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[10]),
        .Q(qdpo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[11]),
        .Q(qdpo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[12]),
        .Q(qdpo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[13]),
        .Q(qdpo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[14]),
        .Q(qdpo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[15]),
        .Q(qdpo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[16]),
        .Q(qdpo_int[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[17]),
        .Q(qdpo_int[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[18]),
        .Q(qdpo_int[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[19]),
        .Q(qdpo_int[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[1]),
        .Q(qdpo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[20]),
        .Q(qdpo_int[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[21]),
        .Q(qdpo_int[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[22]),
        .Q(qdpo_int[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[23]),
        .Q(qdpo_int[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[24]),
        .Q(qdpo_int[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[25]),
        .Q(qdpo_int[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[26]),
        .Q(qdpo_int[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[27]),
        .Q(qdpo_int[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[28]),
        .Q(qdpo_int[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[29]),
        .Q(qdpo_int[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[2]),
        .Q(qdpo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[30]),
        .Q(qdpo_int[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[31]),
        .Q(qdpo_int[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[3]),
        .Q(qdpo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[4]),
        .Q(qdpo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[5]),
        .Q(qdpo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[6]),
        .Q(qdpo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[7]),
        .Q(qdpo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[8]),
        .Q(qdpo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[9]),
        .Q(qdpo_int[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[0]),
        .Q(qspo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[10]),
        .Q(qspo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[11]),
        .Q(qspo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[12]),
        .Q(qspo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[13]),
        .Q(qspo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[14]),
        .Q(qspo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[15]),
        .Q(qspo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[16]),
        .Q(qspo_int[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[17]),
        .Q(qspo_int[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[18]),
        .Q(qspo_int[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[19]),
        .Q(qspo_int[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[1]),
        .Q(qspo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[20]),
        .Q(qspo_int[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[21]),
        .Q(qspo_int[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[22]),
        .Q(qspo_int[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[23]),
        .Q(qspo_int[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[24]),
        .Q(qspo_int[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[25]),
        .Q(qspo_int[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[26]),
        .Q(qspo_int[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[27]),
        .Q(qspo_int[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[28]),
        .Q(qspo_int[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[29]),
        .Q(qspo_int[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[2]),
        .Q(qspo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[30]),
        .Q(qspo_int[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[31]),
        .Q(qspo_int[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[3]),
        .Q(qspo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[4]),
        .Q(qspo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[5]),
        .Q(qspo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[6]),
        .Q(qspo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[7]),
        .Q(qspo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[8]),
        .Q(qspo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[9]),
        .Q(qspo_int[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000080)) 
    ram_reg_0_127_0_0
       (.A(a[6:0]),
        .D(d[0]),
        .DPO(ram_reg_0_127_0_0_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_0_0_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_127_0_0_i_1
       (.I0(we),
        .I1(a[7]),
        .O(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_10_10
       (.A(a[6:0]),
        .D(d[10]),
        .DPO(ram_reg_0_127_10_10_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_10_10_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_11_11
       (.A(a[6:0]),
        .D(d[11]),
        .DPO(ram_reg_0_127_11_11_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_11_11_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_12_12
       (.A(a[6:0]),
        .D(d[12]),
        .DPO(ram_reg_0_127_12_12_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_12_12_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_13_13
       (.A(a[6:0]),
        .D(d[13]),
        .DPO(ram_reg_0_127_13_13_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_13_13_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_14_14
       (.A(a[6:0]),
        .D(d[14]),
        .DPO(ram_reg_0_127_14_14_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_14_14_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_15_15
       (.A(a[6:0]),
        .D(d[15]),
        .DPO(ram_reg_0_127_15_15_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_15_15_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_16_16
       (.A(a[6:0]),
        .D(d[16]),
        .DPO(ram_reg_0_127_16_16_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_16_16_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_17_17
       (.A(a[6:0]),
        .D(d[17]),
        .DPO(ram_reg_0_127_17_17_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_17_17_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_18_18
       (.A(a[6:0]),
        .D(d[18]),
        .DPO(ram_reg_0_127_18_18_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_18_18_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_19_19
       (.A(a[6:0]),
        .D(d[19]),
        .DPO(ram_reg_0_127_19_19_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_19_19_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000002)) 
    ram_reg_0_127_1_1
       (.A(a[6:0]),
        .D(d[1]),
        .DPO(ram_reg_0_127_1_1_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_1_1_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_20_20
       (.A(a[6:0]),
        .D(d[20]),
        .DPO(ram_reg_0_127_20_20_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_20_20_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_21_21
       (.A(a[6:0]),
        .D(d[21]),
        .DPO(ram_reg_0_127_21_21_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_21_21_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_22_22
       (.A(a[6:0]),
        .D(d[22]),
        .DPO(ram_reg_0_127_22_22_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_22_22_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_23_23
       (.A(a[6:0]),
        .D(d[23]),
        .DPO(ram_reg_0_127_23_23_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_23_23_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_24_24
       (.A(a[6:0]),
        .D(d[24]),
        .DPO(ram_reg_0_127_24_24_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_24_24_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_25_25
       (.A(a[6:0]),
        .D(d[25]),
        .DPO(ram_reg_0_127_25_25_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_25_25_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_26_26
       (.A(a[6:0]),
        .D(d[26]),
        .DPO(ram_reg_0_127_26_26_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_26_26_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_27_27
       (.A(a[6:0]),
        .D(d[27]),
        .DPO(ram_reg_0_127_27_27_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_27_27_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_28_28
       (.A(a[6:0]),
        .D(d[28]),
        .DPO(ram_reg_0_127_28_28_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_28_28_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_29_29
       (.A(a[6:0]),
        .D(d[29]),
        .DPO(ram_reg_0_127_29_29_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_29_29_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000082)) 
    ram_reg_0_127_2_2
       (.A(a[6:0]),
        .D(d[2]),
        .DPO(ram_reg_0_127_2_2_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_2_2_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_30_30
       (.A(a[6:0]),
        .D(d[30]),
        .DPO(ram_reg_0_127_30_30_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_30_30_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000030)) 
    ram_reg_0_127_31_31
       (.A(a[6:0]),
        .D(d[31]),
        .DPO(ram_reg_0_127_31_31_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_31_31_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000008)) 
    ram_reg_0_127_3_3
       (.A(a[6:0]),
        .D(d[3]),
        .DPO(ram_reg_0_127_3_3_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_3_3_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_4_4
       (.A(a[6:0]),
        .D(d[4]),
        .DPO(ram_reg_0_127_4_4_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_4_4_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_5_5
       (.A(a[6:0]),
        .D(d[5]),
        .DPO(ram_reg_0_127_5_5_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_5_5_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_6_6
       (.A(a[6:0]),
        .D(d[6]),
        .DPO(ram_reg_0_127_6_6_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_6_6_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_7_7
       (.A(a[6:0]),
        .D(d[7]),
        .DPO(ram_reg_0_127_7_7_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_7_7_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000060)) 
    ram_reg_0_127_8_8
       (.A(a[6:0]),
        .D(d[8]),
        .DPO(ram_reg_0_127_8_8_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_8_8_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_0_127_9_9
       (.A(a[6:0]),
        .D(d[9]),
        .DPO(ram_reg_0_127_9_9_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_9_9_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_0_0
       (.A(a[6:0]),
        .D(d[0]),
        .DPO(ram_reg_128_255_0_0_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_0_0_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_128_255_0_0_i_1
       (.I0(we),
        .I1(a[7]),
        .O(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_10_10
       (.A(a[6:0]),
        .D(d[10]),
        .DPO(ram_reg_128_255_10_10_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_10_10_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_11_11
       (.A(a[6:0]),
        .D(d[11]),
        .DPO(ram_reg_128_255_11_11_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_11_11_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_12_12
       (.A(a[6:0]),
        .D(d[12]),
        .DPO(ram_reg_128_255_12_12_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_12_12_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_13_13
       (.A(a[6:0]),
        .D(d[13]),
        .DPO(ram_reg_128_255_13_13_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_13_13_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_14_14
       (.A(a[6:0]),
        .D(d[14]),
        .DPO(ram_reg_128_255_14_14_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_14_14_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_15_15
       (.A(a[6:0]),
        .D(d[15]),
        .DPO(ram_reg_128_255_15_15_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_15_15_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_16_16
       (.A(a[6:0]),
        .D(d[16]),
        .DPO(ram_reg_128_255_16_16_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_16_16_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_17_17
       (.A(a[6:0]),
        .D(d[17]),
        .DPO(ram_reg_128_255_17_17_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_17_17_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_18_18
       (.A(a[6:0]),
        .D(d[18]),
        .DPO(ram_reg_128_255_18_18_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_18_18_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_19_19
       (.A(a[6:0]),
        .D(d[19]),
        .DPO(ram_reg_128_255_19_19_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_19_19_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_1_1
       (.A(a[6:0]),
        .D(d[1]),
        .DPO(ram_reg_128_255_1_1_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_1_1_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_20_20
       (.A(a[6:0]),
        .D(d[20]),
        .DPO(ram_reg_128_255_20_20_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_20_20_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_21_21
       (.A(a[6:0]),
        .D(d[21]),
        .DPO(ram_reg_128_255_21_21_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_21_21_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_22_22
       (.A(a[6:0]),
        .D(d[22]),
        .DPO(ram_reg_128_255_22_22_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_22_22_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_23_23
       (.A(a[6:0]),
        .D(d[23]),
        .DPO(ram_reg_128_255_23_23_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_23_23_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_24_24
       (.A(a[6:0]),
        .D(d[24]),
        .DPO(ram_reg_128_255_24_24_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_24_24_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_25_25
       (.A(a[6:0]),
        .D(d[25]),
        .DPO(ram_reg_128_255_25_25_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_25_25_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_26_26
       (.A(a[6:0]),
        .D(d[26]),
        .DPO(ram_reg_128_255_26_26_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_26_26_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_27_27
       (.A(a[6:0]),
        .D(d[27]),
        .DPO(ram_reg_128_255_27_27_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_27_27_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_28_28
       (.A(a[6:0]),
        .D(d[28]),
        .DPO(ram_reg_128_255_28_28_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_28_28_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_29_29
       (.A(a[6:0]),
        .D(d[29]),
        .DPO(ram_reg_128_255_29_29_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_29_29_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_2_2
       (.A(a[6:0]),
        .D(d[2]),
        .DPO(ram_reg_128_255_2_2_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_2_2_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_30_30
       (.A(a[6:0]),
        .D(d[30]),
        .DPO(ram_reg_128_255_30_30_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_30_30_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_31_31
       (.A(a[6:0]),
        .D(d[31]),
        .DPO(ram_reg_128_255_31_31_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_31_31_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_3_3
       (.A(a[6:0]),
        .D(d[3]),
        .DPO(ram_reg_128_255_3_3_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_3_3_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_4_4
       (.A(a[6:0]),
        .D(d[4]),
        .DPO(ram_reg_128_255_4_4_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_4_4_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_5_5
       (.A(a[6:0]),
        .D(d[5]),
        .DPO(ram_reg_128_255_5_5_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_5_5_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_6_6
       (.A(a[6:0]),
        .D(d[6]),
        .DPO(ram_reg_128_255_6_6_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_6_6_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_7_7
       (.A(a[6:0]),
        .D(d[7]),
        .DPO(ram_reg_128_255_7_7_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_7_7_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_8_8
       (.A(a[6:0]),
        .D(d[8]),
        .DPO(ram_reg_128_255_8_8_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_8_8_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_dp_ram.dpram_inst/ram" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_9_9
       (.A(a[6:0]),
        .D(d[9]),
        .DPO(ram_reg_128_255_9_9_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_9_9_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[0]_INST_0 
       (.I0(ram_reg_128_255_0_0_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_0_0_n_1),
        .O(spo[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0 
       (.I0(ram_reg_128_255_10_10_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_10_10_n_1),
        .O(spo[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[11]_INST_0 
       (.I0(ram_reg_128_255_11_11_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_11_11_n_1),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[12]_INST_0 
       (.I0(ram_reg_128_255_12_12_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_12_12_n_1),
        .O(spo[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[13]_INST_0 
       (.I0(ram_reg_128_255_13_13_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_13_13_n_1),
        .O(spo[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[14]_INST_0 
       (.I0(ram_reg_128_255_14_14_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_14_14_n_1),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[15]_INST_0 
       (.I0(ram_reg_128_255_15_15_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_15_15_n_1),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[16]_INST_0 
       (.I0(ram_reg_128_255_16_16_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_16_16_n_1),
        .O(spo[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[17]_INST_0 
       (.I0(ram_reg_128_255_17_17_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_17_17_n_1),
        .O(spo[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[18]_INST_0 
       (.I0(ram_reg_128_255_18_18_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_18_18_n_1),
        .O(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[19]_INST_0 
       (.I0(ram_reg_128_255_19_19_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_19_19_n_1),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[1]_INST_0 
       (.I0(ram_reg_128_255_1_1_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_1_1_n_1),
        .O(spo[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[20]_INST_0 
       (.I0(ram_reg_128_255_20_20_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_20_20_n_1),
        .O(spo[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[21]_INST_0 
       (.I0(ram_reg_128_255_21_21_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_21_21_n_1),
        .O(spo[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[22]_INST_0 
       (.I0(ram_reg_128_255_22_22_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_22_22_n_1),
        .O(spo[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[23]_INST_0 
       (.I0(ram_reg_128_255_23_23_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_23_23_n_1),
        .O(spo[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[24]_INST_0 
       (.I0(ram_reg_128_255_24_24_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_24_24_n_1),
        .O(spo[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[25]_INST_0 
       (.I0(ram_reg_128_255_25_25_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_25_25_n_1),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[26]_INST_0 
       (.I0(ram_reg_128_255_26_26_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_26_26_n_1),
        .O(spo[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[27]_INST_0 
       (.I0(ram_reg_128_255_27_27_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_27_27_n_1),
        .O(spo[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[28]_INST_0 
       (.I0(ram_reg_128_255_28_28_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_28_28_n_1),
        .O(spo[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[29]_INST_0 
       (.I0(ram_reg_128_255_29_29_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_29_29_n_1),
        .O(spo[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[2]_INST_0 
       (.I0(ram_reg_128_255_2_2_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_2_2_n_1),
        .O(spo[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[30]_INST_0 
       (.I0(ram_reg_128_255_30_30_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_30_30_n_1),
        .O(spo[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[31]_INST_0 
       (.I0(ram_reg_128_255_31_31_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_31_31_n_1),
        .O(spo[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[3]_INST_0 
       (.I0(ram_reg_128_255_3_3_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_3_3_n_1),
        .O(spo[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[4]_INST_0 
       (.I0(ram_reg_128_255_4_4_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_4_4_n_1),
        .O(spo[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[5]_INST_0 
       (.I0(ram_reg_128_255_5_5_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_5_5_n_1),
        .O(spo[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[6]_INST_0 
       (.I0(ram_reg_128_255_6_6_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_6_6_n_1),
        .O(spo[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[7]_INST_0 
       (.I0(ram_reg_128_255_7_7_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_7_7_n_1),
        .O(spo[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[8]_INST_0 
       (.I0(ram_reg_128_255_8_8_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_8_8_n_1),
        .O(spo[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[9]_INST_0 
       (.I0(ram_reg_128_255_9_9_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_9_9_n_1),
        .O(spo[9]));
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
