//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Feb 24 12:46:39 2023
//Host        : winvdi1009 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (a_address0,
    a_ce0,
    a_q0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    b_address0,
    b_ce0,
    b_q0,
    s,
    s_ap_vld);
  output [2:0]a_address0;
  output a_ce0;
  input [15:0]a_q0;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [2:0]b_address0;
  output b_ce0;
  input [15:0]b_q0;
  output [15:0]s;
  output s_ap_vld;

  wire [2:0]a_address0;
  wire a_ce0;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [2:0]b_address0;
  wire b_ce0;
  wire [15:0]b_q0;
  wire [15:0]s;
  wire s_ap_vld;

  bd_0 bd_0_i
       (.a_address0(a_address0),
        .a_ce0(a_ce0),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .b_address0(b_address0),
        .b_ce0(b_ce0),
        .b_q0(b_q0),
        .s(s),
        .s_ap_vld(s_ap_vld));
endmodule
