// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 17 17:09:09 2023
// Host        : winvdi1008 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mmul,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(c_ce0, c_we0, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, a_0_0, a_0_1, a_0_2, a_0_3, a_1_0, a_1_1, a_1_2, a_1_3, a_2_0, a_2_1, a_2_2, a_2_3, b_0_0, 
  b_0_1, b_0_2, b_0_3, b_0_4, b_0_5, b_1_0, b_1_1, b_1_2, b_1_3, b_1_4, b_1_5, b_2_0, b_2_1, b_2_2, b_2_3, b_2_4, 
  b_2_5, b_3_0, b_3_1, b_3_2, b_3_3, b_3_4, b_3_5, c_address0, c_d0)
/* synthesis syn_black_box black_box_pad_pin="c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_0[15:0],a_0_1[15:0],a_0_2[15:0],a_0_3[15:0],a_1_0[15:0],a_1_1[15:0],a_1_2[15:0],a_1_3[15:0],a_2_0[15:0],a_2_1[15:0],a_2_2[15:0],a_2_3[15:0],b_0_0[15:0],b_0_1[15:0],b_0_2[15:0],b_0_3[15:0],b_0_4[15:0],b_0_5[15:0],b_1_0[15:0],b_1_1[15:0],b_1_2[15:0],b_1_3[15:0],b_1_4[15:0],b_1_5[15:0],b_2_0[15:0],b_2_1[15:0],b_2_2[15:0],b_2_3[15:0],b_2_4[15:0],b_2_5[15:0],b_3_0[15:0],b_3_1[15:0],b_3_2[15:0],b_3_3[15:0],b_3_4[15:0],b_3_5[15:0],c_address0[4:0],c_d0[15:0]" */;
  output c_ce0;
  output c_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
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
  output [15:0]c_d0;
endmodule
