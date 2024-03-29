//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Feb 24 12:58:36 2023
//Host        : winvdi1009 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]a_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]a_0_address1;
  output a_0_ce0;
  output a_0_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_Q0, LAYERED_METADATA undef" *) input [15:0]a_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_Q1, LAYERED_METADATA undef" *) input [15:0]a_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]a_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]a_1_address1;
  output a_1_ce0;
  output a_1_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_Q0, LAYERED_METADATA undef" *) input [15:0]a_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_Q1, LAYERED_METADATA undef" *) input [15:0]a_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]b_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]b_0_address1;
  output b_0_ce0;
  output b_0_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_Q0, LAYERED_METADATA undef" *) input [15:0]b_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_Q1, LAYERED_METADATA undef" *) input [15:0]b_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]b_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]b_1_address1;
  output b_1_ce0;
  output b_1_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_Q0, LAYERED_METADATA undef" *) input [15:0]b_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_Q1, LAYERED_METADATA undef" *) input [15:0]b_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S, LAYERED_METADATA undef" *) output [15:0]s;
  output s_ap_vld;

  wire [15:0]a_0_q0_0_1;
  wire [15:0]a_0_q1_0_1;
  wire [15:0]a_1_q0_0_1;
  wire [15:0]a_1_q1_0_1;
  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [15:0]b_0_q0_0_1;
  wire [15:0]b_0_q1_0_1;
  wire [15:0]b_1_q0_0_1;
  wire [15:0]b_1_q1_0_1;
  wire [1:0]hls_inst_a_0_address0;
  wire [1:0]hls_inst_a_0_address1;
  wire hls_inst_a_0_ce0;
  wire hls_inst_a_0_ce1;
  wire [1:0]hls_inst_a_1_address0;
  wire [1:0]hls_inst_a_1_address1;
  wire hls_inst_a_1_ce0;
  wire hls_inst_a_1_ce1;
  wire [1:0]hls_inst_b_0_address0;
  wire [1:0]hls_inst_b_0_address1;
  wire hls_inst_b_0_ce0;
  wire hls_inst_b_0_ce1;
  wire [1:0]hls_inst_b_1_address0;
  wire [1:0]hls_inst_b_1_address1;
  wire hls_inst_b_1_ce0;
  wire hls_inst_b_1_ce1;
  wire [15:0]hls_inst_s;
  wire hls_inst_s_ap_vld;

  assign a_0_address0[1:0] = hls_inst_a_0_address0;
  assign a_0_address1[1:0] = hls_inst_a_0_address1;
  assign a_0_ce0 = hls_inst_a_0_ce0;
  assign a_0_ce1 = hls_inst_a_0_ce1;
  assign a_0_q0_0_1 = a_0_q0[15:0];
  assign a_0_q1_0_1 = a_0_q1[15:0];
  assign a_1_address0[1:0] = hls_inst_a_1_address0;
  assign a_1_address1[1:0] = hls_inst_a_1_address1;
  assign a_1_ce0 = hls_inst_a_1_ce0;
  assign a_1_ce1 = hls_inst_a_1_ce1;
  assign a_1_q0_0_1 = a_1_q0[15:0];
  assign a_1_q1_0_1 = a_1_q1[15:0];
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign b_0_address0[1:0] = hls_inst_b_0_address0;
  assign b_0_address1[1:0] = hls_inst_b_0_address1;
  assign b_0_ce0 = hls_inst_b_0_ce0;
  assign b_0_ce1 = hls_inst_b_0_ce1;
  assign b_0_q0_0_1 = b_0_q0[15:0];
  assign b_0_q1_0_1 = b_0_q1[15:0];
  assign b_1_address0[1:0] = hls_inst_b_1_address0;
  assign b_1_address1[1:0] = hls_inst_b_1_address1;
  assign b_1_ce0 = hls_inst_b_1_ce0;
  assign b_1_ce1 = hls_inst_b_1_ce1;
  assign b_1_q0_0_1 = b_1_q0[15:0];
  assign b_1_q1_0_1 = b_1_q1[15:0];
  assign s[15:0] = hls_inst_s;
  assign s_ap_vld = hls_inst_s_ap_vld;
  bd_0_hls_inst_0 hls_inst
       (.a_0_address0(hls_inst_a_0_address0),
        .a_0_address1(hls_inst_a_0_address1),
        .a_0_ce0(hls_inst_a_0_ce0),
        .a_0_ce1(hls_inst_a_0_ce1),
        .a_0_q0(a_0_q0_0_1),
        .a_0_q1(a_0_q1_0_1),
        .a_1_address0(hls_inst_a_1_address0),
        .a_1_address1(hls_inst_a_1_address1),
        .a_1_ce0(hls_inst_a_1_ce0),
        .a_1_ce1(hls_inst_a_1_ce1),
        .a_1_q0(a_1_q0_0_1),
        .a_1_q1(a_1_q1_0_1),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .b_0_address0(hls_inst_b_0_address0),
        .b_0_address1(hls_inst_b_0_address1),
        .b_0_ce0(hls_inst_b_0_ce0),
        .b_0_ce1(hls_inst_b_0_ce1),
        .b_0_q0(b_0_q0_0_1),
        .b_0_q1(b_0_q1_0_1),
        .b_1_address0(hls_inst_b_1_address0),
        .b_1_address1(hls_inst_b_1_address1),
        .b_1_ce0(hls_inst_b_1_ce0),
        .b_1_ce1(hls_inst_b_1_ce1),
        .b_1_q0(b_1_q0_0_1),
        .b_1_q1(b_1_q1_0_1),
        .s(hls_inst_s),
        .s_ap_vld(hls_inst_s_ap_vld));
endmodule
