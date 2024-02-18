//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Feb 17 17:07:42 2023
//Host        : winvdi1008 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (a_0_0,
    a_0_1,
    a_0_2,
    a_0_3,
    a_1_0,
    a_1_1,
    a_1_2,
    a_1_3,
    a_2_0,
    a_2_1,
    a_2_2,
    a_2_3,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    b_0_0,
    b_0_1,
    b_0_2,
    b_0_3,
    b_0_4,
    b_0_5,
    b_1_0,
    b_1_1,
    b_1_2,
    b_1_3,
    b_1_4,
    b_1_5,
    b_2_0,
    b_2_1,
    b_2_2,
    b_2_3,
    b_2_4,
    b_2_5,
    b_3_0,
    b_3_1,
    b_3_2,
    b_3_3,
    b_3_4,
    b_3_5,
    c_address0,
    c_ce0,
    c_d0,
    c_we0);
  input [15:0]a_0_0;
  input [15:0]a_0_1;
  input [15:0]a_0_2;
  input [15:0]a_0_3;
  input [15:0]a_1_0;
  input [15:0]a_1_1;
  input [15:0]a_1_2;
  input [15:0]a_1_3;
  input [15:0]a_2_0;
  input [15:0]a_2_1;
  input [15:0]a_2_2;
  input [15:0]a_2_3;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input [15:0]b_0_0;
  input [15:0]b_0_1;
  input [15:0]b_0_2;
  input [15:0]b_0_3;
  input [15:0]b_0_4;
  input [15:0]b_0_5;
  input [15:0]b_1_0;
  input [15:0]b_1_1;
  input [15:0]b_1_2;
  input [15:0]b_1_3;
  input [15:0]b_1_4;
  input [15:0]b_1_5;
  input [15:0]b_2_0;
  input [15:0]b_2_1;
  input [15:0]b_2_2;
  input [15:0]b_2_3;
  input [15:0]b_2_4;
  input [15:0]b_2_5;
  input [15:0]b_3_0;
  input [15:0]b_3_1;
  input [15:0]b_3_2;
  input [15:0]b_3_3;
  input [15:0]b_3_4;
  input [15:0]b_3_5;
  output [4:0]c_address0;
  output c_ce0;
  output [15:0]c_d0;
  output c_we0;

  wire [15:0]a_0_0;
  wire [15:0]a_0_1;
  wire [15:0]a_0_2;
  wire [15:0]a_0_3;
  wire [15:0]a_1_0;
  wire [15:0]a_1_1;
  wire [15:0]a_1_2;
  wire [15:0]a_1_3;
  wire [15:0]a_2_0;
  wire [15:0]a_2_1;
  wire [15:0]a_2_2;
  wire [15:0]a_2_3;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [15:0]b_0_0;
  wire [15:0]b_0_1;
  wire [15:0]b_0_2;
  wire [15:0]b_0_3;
  wire [15:0]b_0_4;
  wire [15:0]b_0_5;
  wire [15:0]b_1_0;
  wire [15:0]b_1_1;
  wire [15:0]b_1_2;
  wire [15:0]b_1_3;
  wire [15:0]b_1_4;
  wire [15:0]b_1_5;
  wire [15:0]b_2_0;
  wire [15:0]b_2_1;
  wire [15:0]b_2_2;
  wire [15:0]b_2_3;
  wire [15:0]b_2_4;
  wire [15:0]b_2_5;
  wire [15:0]b_3_0;
  wire [15:0]b_3_1;
  wire [15:0]b_3_2;
  wire [15:0]b_3_3;
  wire [15:0]b_3_4;
  wire [15:0]b_3_5;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [15:0]c_d0;
  wire c_we0;

  bd_0 bd_0_i
       (.a_0_0(a_0_0),
        .a_0_1(a_0_1),
        .a_0_2(a_0_2),
        .a_0_3(a_0_3),
        .a_1_0(a_1_0),
        .a_1_1(a_1_1),
        .a_1_2(a_1_2),
        .a_1_3(a_1_3),
        .a_2_0(a_2_0),
        .a_2_1(a_2_1),
        .a_2_2(a_2_2),
        .a_2_3(a_2_3),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .b_0_0(b_0_0),
        .b_0_1(b_0_1),
        .b_0_2(b_0_2),
        .b_0_3(b_0_3),
        .b_0_4(b_0_4),
        .b_0_5(b_0_5),
        .b_1_0(b_1_0),
        .b_1_1(b_1_1),
        .b_1_2(b_1_2),
        .b_1_3(b_1_3),
        .b_1_4(b_1_4),
        .b_1_5(b_1_5),
        .b_2_0(b_2_0),
        .b_2_1(b_2_1),
        .b_2_2(b_2_2),
        .b_2_3(b_2_3),
        .b_2_4(b_2_4),
        .b_2_5(b_2_5),
        .b_3_0(b_3_0),
        .b_3_1(b_3_1),
        .b_3_2(b_3_2),
        .b_3_3(b_3_3),
        .b_3_4(b_3_4),
        .b_3_5(b_3_5),
        .c_address0(c_address0),
        .c_ce0(c_ce0),
        .c_d0(c_d0),
        .c_we0(c_we0));
endmodule
