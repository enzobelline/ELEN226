// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 17 15:19:10 2023
// Host        : winvdi1008 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mmul,Vivado 2022.1" *)
module bd_0_hls_inst_0(a_ce0, b_ce0, c_ce0, c_we0, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, a_address0, a_q0, b_address0, b_q0, c_address0, c_d0)
/* synthesis syn_black_box black_box_pad_pin="a_ce0,b_ce0,c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0[3:0],a_q0[15:0],b_address0[4:0],b_q0[15:0],c_address0[4:0],c_d0[15:0]" */;
  output a_ce0;
  output b_ce0;
  output c_ce0;
  output c_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [3:0]a_address0;
  input [15:0]a_q0;
  output [4:0]b_address0;
  input [15:0]b_q0;
  output [4:0]c_address0;
  output [15:0]c_d0;
endmodule
