//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Feb 17 17:07:42 2023
//Host        : winvdi1008 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_0, LAYERED_METADATA undef" *) input [15:0]a_0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_1, LAYERED_METADATA undef" *) input [15:0]a_0_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_2, LAYERED_METADATA undef" *) input [15:0]a_0_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0_3, LAYERED_METADATA undef" *) input [15:0]a_0_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_0, LAYERED_METADATA undef" *) input [15:0]a_1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_1, LAYERED_METADATA undef" *) input [15:0]a_1_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_2, LAYERED_METADATA undef" *) input [15:0]a_1_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_1_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_1_3, LAYERED_METADATA undef" *) input [15:0]a_1_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_2_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_2_0, LAYERED_METADATA undef" *) input [15:0]a_2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_2_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_2_1, LAYERED_METADATA undef" *) input [15:0]a_2_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_2_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_2_2, LAYERED_METADATA undef" *) input [15:0]a_2_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_2_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_2_3, LAYERED_METADATA undef" *) input [15:0]a_2_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_0, LAYERED_METADATA undef" *) input [15:0]b_0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_1, LAYERED_METADATA undef" *) input [15:0]b_0_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_2, LAYERED_METADATA undef" *) input [15:0]b_0_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_3, LAYERED_METADATA undef" *) input [15:0]b_0_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_4, LAYERED_METADATA undef" *) input [15:0]b_0_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0_5, LAYERED_METADATA undef" *) input [15:0]b_0_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_0, LAYERED_METADATA undef" *) input [15:0]b_1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_1, LAYERED_METADATA undef" *) input [15:0]b_1_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_2, LAYERED_METADATA undef" *) input [15:0]b_1_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_3, LAYERED_METADATA undef" *) input [15:0]b_1_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_4, LAYERED_METADATA undef" *) input [15:0]b_1_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_1_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_1_5, LAYERED_METADATA undef" *) input [15:0]b_1_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_0, LAYERED_METADATA undef" *) input [15:0]b_2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_1, LAYERED_METADATA undef" *) input [15:0]b_2_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_2, LAYERED_METADATA undef" *) input [15:0]b_2_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_3, LAYERED_METADATA undef" *) input [15:0]b_2_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_4, LAYERED_METADATA undef" *) input [15:0]b_2_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_2_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_2_5, LAYERED_METADATA undef" *) input [15:0]b_2_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_0, LAYERED_METADATA undef" *) input [15:0]b_3_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_1, LAYERED_METADATA undef" *) input [15:0]b_3_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_2, LAYERED_METADATA undef" *) input [15:0]b_3_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_3, LAYERED_METADATA undef" *) input [15:0]b_3_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_4, LAYERED_METADATA undef" *) input [15:0]b_3_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_3_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_3_5, LAYERED_METADATA undef" *) input [15:0]b_3_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C_ADDRESS0, LAYERED_METADATA undef" *) output [4:0]c_address0;
  output c_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C_D0, LAYERED_METADATA undef" *) output [15:0]c_d0;
  output c_we0;

  wire [15:0]a_0_0_0_1;
  wire [15:0]a_0_1_0_1;
  wire [15:0]a_0_2_0_1;
  wire [15:0]a_0_3_0_1;
  wire [15:0]a_1_0_0_1;
  wire [15:0]a_1_1_0_1;
  wire [15:0]a_1_2_0_1;
  wire [15:0]a_1_3_0_1;
  wire [15:0]a_2_0_0_1;
  wire [15:0]a_2_1_0_1;
  wire [15:0]a_2_2_0_1;
  wire [15:0]a_2_3_0_1;
  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [15:0]b_0_0_0_1;
  wire [15:0]b_0_1_0_1;
  wire [15:0]b_0_2_0_1;
  wire [15:0]b_0_3_0_1;
  wire [15:0]b_0_4_0_1;
  wire [15:0]b_0_5_0_1;
  wire [15:0]b_1_0_0_1;
  wire [15:0]b_1_1_0_1;
  wire [15:0]b_1_2_0_1;
  wire [15:0]b_1_3_0_1;
  wire [15:0]b_1_4_0_1;
  wire [15:0]b_1_5_0_1;
  wire [15:0]b_2_0_0_1;
  wire [15:0]b_2_1_0_1;
  wire [15:0]b_2_2_0_1;
  wire [15:0]b_2_3_0_1;
  wire [15:0]b_2_4_0_1;
  wire [15:0]b_2_5_0_1;
  wire [15:0]b_3_0_0_1;
  wire [15:0]b_3_1_0_1;
  wire [15:0]b_3_2_0_1;
  wire [15:0]b_3_3_0_1;
  wire [15:0]b_3_4_0_1;
  wire [15:0]b_3_5_0_1;
  wire [4:0]hls_inst_c_address0;
  wire hls_inst_c_ce0;
  wire [15:0]hls_inst_c_d0;
  wire hls_inst_c_we0;

  assign a_0_0_0_1 = a_0_0[15:0];
  assign a_0_1_0_1 = a_0_1[15:0];
  assign a_0_2_0_1 = a_0_2[15:0];
  assign a_0_3_0_1 = a_0_3[15:0];
  assign a_1_0_0_1 = a_1_0[15:0];
  assign a_1_1_0_1 = a_1_1[15:0];
  assign a_1_2_0_1 = a_1_2[15:0];
  assign a_1_3_0_1 = a_1_3[15:0];
  assign a_2_0_0_1 = a_2_0[15:0];
  assign a_2_1_0_1 = a_2_1[15:0];
  assign a_2_2_0_1 = a_2_2[15:0];
  assign a_2_3_0_1 = a_2_3[15:0];
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign b_0_0_0_1 = b_0_0[15:0];
  assign b_0_1_0_1 = b_0_1[15:0];
  assign b_0_2_0_1 = b_0_2[15:0];
  assign b_0_3_0_1 = b_0_3[15:0];
  assign b_0_4_0_1 = b_0_4[15:0];
  assign b_0_5_0_1 = b_0_5[15:0];
  assign b_1_0_0_1 = b_1_0[15:0];
  assign b_1_1_0_1 = b_1_1[15:0];
  assign b_1_2_0_1 = b_1_2[15:0];
  assign b_1_3_0_1 = b_1_3[15:0];
  assign b_1_4_0_1 = b_1_4[15:0];
  assign b_1_5_0_1 = b_1_5[15:0];
  assign b_2_0_0_1 = b_2_0[15:0];
  assign b_2_1_0_1 = b_2_1[15:0];
  assign b_2_2_0_1 = b_2_2[15:0];
  assign b_2_3_0_1 = b_2_3[15:0];
  assign b_2_4_0_1 = b_2_4[15:0];
  assign b_2_5_0_1 = b_2_5[15:0];
  assign b_3_0_0_1 = b_3_0[15:0];
  assign b_3_1_0_1 = b_3_1[15:0];
  assign b_3_2_0_1 = b_3_2[15:0];
  assign b_3_3_0_1 = b_3_3[15:0];
  assign b_3_4_0_1 = b_3_4[15:0];
  assign b_3_5_0_1 = b_3_5[15:0];
  assign c_address0[4:0] = hls_inst_c_address0;
  assign c_ce0 = hls_inst_c_ce0;
  assign c_d0[15:0] = hls_inst_c_d0;
  assign c_we0 = hls_inst_c_we0;
  bd_0_hls_inst_0 hls_inst
       (.a_0_0(a_0_0_0_1),
        .a_0_1(a_0_1_0_1),
        .a_0_2(a_0_2_0_1),
        .a_0_3(a_0_3_0_1),
        .a_1_0(a_1_0_0_1),
        .a_1_1(a_1_1_0_1),
        .a_1_2(a_1_2_0_1),
        .a_1_3(a_1_3_0_1),
        .a_2_0(a_2_0_0_1),
        .a_2_1(a_2_1_0_1),
        .a_2_2(a_2_2_0_1),
        .a_2_3(a_2_3_0_1),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .b_0_0(b_0_0_0_1),
        .b_0_1(b_0_1_0_1),
        .b_0_2(b_0_2_0_1),
        .b_0_3(b_0_3_0_1),
        .b_0_4(b_0_4_0_1),
        .b_0_5(b_0_5_0_1),
        .b_1_0(b_1_0_0_1),
        .b_1_1(b_1_1_0_1),
        .b_1_2(b_1_2_0_1),
        .b_1_3(b_1_3_0_1),
        .b_1_4(b_1_4_0_1),
        .b_1_5(b_1_5_0_1),
        .b_2_0(b_2_0_0_1),
        .b_2_1(b_2_1_0_1),
        .b_2_2(b_2_2_0_1),
        .b_2_3(b_2_3_0_1),
        .b_2_4(b_2_4_0_1),
        .b_2_5(b_2_5_0_1),
        .b_3_0(b_3_0_0_1),
        .b_3_1(b_3_1_0_1),
        .b_3_2(b_3_2_0_1),
        .b_3_3(b_3_3_0_1),
        .b_3_4(b_3_4_0_1),
        .b_3_5(b_3_5_0_1),
        .c_address0(hls_inst_c_address0),
        .c_ce0(hls_inst_c_ce0),
        .c_d0(hls_inst_c_d0),
        .c_we0(hls_inst_c_we0));
endmodule
