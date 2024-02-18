//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Feb 24 12:58:36 2023
//Host        : winvdi1009 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (a_0_address0,
    a_0_address1,
    a_0_ce0,
    a_0_ce1,
    a_0_q0,
    a_0_q1,
    a_1_address0,
    a_1_address1,
    a_1_ce0,
    a_1_ce1,
    a_1_q0,
    a_1_q1,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    b_0_address0,
    b_0_address1,
    b_0_ce0,
    b_0_ce1,
    b_0_q0,
    b_0_q1,
    b_1_address0,
    b_1_address1,
    b_1_ce0,
    b_1_ce1,
    b_1_q0,
    b_1_q1,
    s,
    s_ap_vld);
  output [1:0]a_0_address0;
  output [1:0]a_0_address1;
  output a_0_ce0;
  output a_0_ce1;
  input [15:0]a_0_q0;
  input [15:0]a_0_q1;
  output [1:0]a_1_address0;
  output [1:0]a_1_address1;
  output a_1_ce0;
  output a_1_ce1;
  input [15:0]a_1_q0;
  input [15:0]a_1_q1;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [1:0]b_0_address0;
  output [1:0]b_0_address1;
  output b_0_ce0;
  output b_0_ce1;
  input [15:0]b_0_q0;
  input [15:0]b_0_q1;
  output [1:0]b_1_address0;
  output [1:0]b_1_address1;
  output b_1_ce0;
  output b_1_ce1;
  input [15:0]b_1_q0;
  input [15:0]b_1_q1;
  output [15:0]s;
  output s_ap_vld;

  wire [1:0]a_0_address0;
  wire [1:0]a_0_address1;
  wire a_0_ce0;
  wire a_0_ce1;
  wire [15:0]a_0_q0;
  wire [15:0]a_0_q1;
  wire [1:0]a_1_address0;
  wire [1:0]a_1_address1;
  wire a_1_ce0;
  wire a_1_ce1;
  wire [15:0]a_1_q0;
  wire [15:0]a_1_q1;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [1:0]b_0_address0;
  wire [1:0]b_0_address1;
  wire b_0_ce0;
  wire b_0_ce1;
  wire [15:0]b_0_q0;
  wire [15:0]b_0_q1;
  wire [1:0]b_1_address0;
  wire [1:0]b_1_address1;
  wire b_1_ce0;
  wire b_1_ce1;
  wire [15:0]b_1_q0;
  wire [15:0]b_1_q1;
  wire [15:0]s;
  wire s_ap_vld;

  bd_0 bd_0_i
       (.a_0_address0(a_0_address0),
        .a_0_address1(a_0_address1),
        .a_0_ce0(a_0_ce0),
        .a_0_ce1(a_0_ce1),
        .a_0_q0(a_0_q0),
        .a_0_q1(a_0_q1),
        .a_1_address0(a_1_address0),
        .a_1_address1(a_1_address1),
        .a_1_ce0(a_1_ce0),
        .a_1_ce1(a_1_ce1),
        .a_1_q0(a_1_q0),
        .a_1_q1(a_1_q1),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .b_0_address0(b_0_address0),
        .b_0_address1(b_0_address1),
        .b_0_ce0(b_0_ce0),
        .b_0_ce1(b_0_ce1),
        .b_0_q0(b_0_q0),
        .b_0_q1(b_0_q1),
        .b_1_address0(b_1_address0),
        .b_1_address1(b_1_address1),
        .b_1_ce0(b_1_ce0),
        .b_1_ce1(b_1_ce1),
        .b_1_q0(b_1_q0),
        .b_1_q1(b_1_q1),
        .s(s),
        .s_ap_vld(s_ap_vld));
endmodule
