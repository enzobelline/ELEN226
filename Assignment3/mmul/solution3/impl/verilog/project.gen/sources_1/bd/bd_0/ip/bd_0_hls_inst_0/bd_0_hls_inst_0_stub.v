// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 17 16:49:53 2023
// Host        : winvdi1008 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution3/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mmul,Vivado 2022.1" *)
module bd_0_hls_inst_0(a_0_ce0, a_1_ce0, a_2_ce0, a_3_ce0, a_3_we0, 
  a_3_ce1, a_3_we1, b_0_ce0, b_1_ce0, b_2_ce0, b_3_ce0, c_ce0, c_we0, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, a_0_address0, a_0_q0, a_1_address0, a_1_q0, a_2_address0, a_2_q0, 
  a_3_address0, a_3_d0, a_3_q0, a_3_address1, a_3_d1, a_3_q1, b_0_address0, b_0_q0, b_1_address0, 
  b_1_q0, b_2_address0, b_2_q0, b_3_address0, b_3_q0, c_address0, c_d0)
/* synthesis syn_black_box black_box_pad_pin="a_0_ce0,a_1_ce0,a_2_ce0,a_3_ce0,a_3_we0,a_3_ce1,a_3_we1,b_0_ce0,b_1_ce0,b_2_ce0,b_3_ce0,c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0[1:0],a_0_q0[15:0],a_1_address0[1:0],a_1_q0[15:0],a_2_address0[1:0],a_2_q0[15:0],a_3_address0[1:0],a_3_d0[15:0],a_3_q0[15:0],a_3_address1[1:0],a_3_d1[15:0],a_3_q1[15:0],b_0_address0[2:0],b_0_q0[15:0],b_1_address0[2:0],b_1_q0[15:0],b_2_address0[2:0],b_2_q0[15:0],b_3_address0[2:0],b_3_q0[15:0],c_address0[4:0],c_d0[15:0]" */;
  output a_0_ce0;
  output a_1_ce0;
  output a_2_ce0;
  output a_3_ce0;
  output a_3_we0;
  output a_3_ce1;
  output a_3_we1;
  output b_0_ce0;
  output b_1_ce0;
  output b_2_ce0;
  output b_3_ce0;
  output c_ce0;
  output c_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [1:0]a_0_address0;
  input [15:0]a_0_q0;
  output [1:0]a_1_address0;
  input [15:0]a_1_q0;
  output [1:0]a_2_address0;
  input [15:0]a_2_q0;
  output [1:0]a_3_address0;
  output [15:0]a_3_d0;
  input [15:0]a_3_q0;
  output [1:0]a_3_address1;
  output [15:0]a_3_d1;
  input [15:0]a_3_q1;
  output [2:0]b_0_address0;
  input [15:0]b_0_q0;
  output [2:0]b_1_address0;
  input [15:0]b_1_q0;
  output [2:0]b_2_address0;
  input [15:0]b_2_q0;
  output [2:0]b_3_address0;
  input [15:0]b_3_q0;
  output [4:0]c_address0;
  output [15:0]c_d0;
endmodule
