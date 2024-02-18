// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 24 13:00:08 2023
// Host        : winvdi1009 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,inner_product,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "inner_product,Vivado 2022.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a_0_ce0,
    a_0_ce1,
    a_1_ce0,
    a_1_ce1,
    b_0_ce0,
    b_0_ce1,
    b_1_ce0,
    b_1_ce1,
    s_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_0_address0,
    a_0_q0,
    a_0_address1,
    a_0_q1,
    a_1_address0,
    a_1_q0,
    a_1_address1,
    a_1_q1,
    b_0_address0,
    b_0_q0,
    b_0_address1,
    b_0_q1,
    b_1_address0,
    b_1_q0,
    b_1_address1,
    b_1_q1,
    s);
  output a_0_ce0;
  output a_0_ce1;
  output a_1_ce0;
  output a_1_ce1;
  output b_0_ce0;
  output b_0_ce1;
  output b_1_ce0;
  output b_1_ce1;
  output s_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_address0, LAYERED_METADATA undef" *) output [1:0]a_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_q0, LAYERED_METADATA undef" *) input [15:0]a_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_address1, LAYERED_METADATA undef" *) output [1:0]a_0_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_q1, LAYERED_METADATA undef" *) input [15:0]a_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_address0, LAYERED_METADATA undef" *) output [1:0]a_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_q0, LAYERED_METADATA undef" *) input [15:0]a_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_address1, LAYERED_METADATA undef" *) output [1:0]a_1_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_q1, LAYERED_METADATA undef" *) input [15:0]a_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_address0, LAYERED_METADATA undef" *) output [1:0]b_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_q0, LAYERED_METADATA undef" *) input [15:0]b_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_address1, LAYERED_METADATA undef" *) output [1:0]b_0_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_q1, LAYERED_METADATA undef" *) input [15:0]b_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_address0, LAYERED_METADATA undef" *) output [1:0]b_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_q0, LAYERED_METADATA undef" *) input [15:0]b_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_address1, LAYERED_METADATA undef" *) output [1:0]b_1_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_q1, LAYERED_METADATA undef" *) input [15:0]b_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 s DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, LAYERED_METADATA undef" *) output [15:0]s;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:1]\^a_0_address0 ;
  wire [1:1]\^a_0_address1 ;
  wire a_0_ce0;
  wire a_0_ce1;
  wire [15:0]a_0_q0;
  wire [15:0]a_0_q1;
  wire [1:1]\^a_1_address0 ;
  wire [1:1]\^a_1_address1 ;
  wire a_1_ce0;
  wire a_1_ce1;
  wire [15:0]a_1_q0;
  wire [15:0]a_1_q1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [1:1]\^b_0_address0 ;
  wire [1:1]\^b_0_address1 ;
  wire b_0_ce0;
  wire b_0_ce1;
  wire [15:0]b_0_q0;
  wire [15:0]b_0_q1;
  wire [1:1]\^b_1_address0 ;
  wire [1:1]\^b_1_address1 ;
  wire b_1_ce0;
  wire b_1_ce1;
  wire [15:0]b_1_q0;
  wire [15:0]b_1_q1;
  wire [15:0]s;
  wire s_ap_vld;
  wire [0:0]NLW_inst_a_0_address0_UNCONNECTED;
  wire [0:0]NLW_inst_a_0_address1_UNCONNECTED;
  wire [0:0]NLW_inst_a_1_address0_UNCONNECTED;
  wire [0:0]NLW_inst_a_1_address1_UNCONNECTED;
  wire [0:0]NLW_inst_b_0_address0_UNCONNECTED;
  wire [0:0]NLW_inst_b_0_address1_UNCONNECTED;
  wire [0:0]NLW_inst_b_1_address0_UNCONNECTED;
  wire [0:0]NLW_inst_b_1_address1_UNCONNECTED;

  assign a_0_address0[1] = \^a_0_address0 [1];
  assign a_0_address0[0] = \<const1> ;
  assign a_0_address1[1] = \^a_0_address1 [1];
  assign a_0_address1[0] = \<const0> ;
  assign a_1_address0[1] = \^a_1_address0 [1];
  assign a_1_address0[0] = \<const1> ;
  assign a_1_address1[1] = \^a_1_address1 [1];
  assign a_1_address1[0] = \<const0> ;
  assign b_0_address0[1] = \^b_0_address0 [1];
  assign b_0_address0[0] = \<const1> ;
  assign b_0_address1[1] = \^b_0_address1 [1];
  assign b_0_address1[0] = \<const0> ;
  assign b_1_address0[1] = \^b_1_address0 [1];
  assign b_1_address0[0] = \<const1> ;
  assign b_1_address1[1] = \^b_1_address1 [1];
  assign b_1_address1[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product inst
       (.a_0_address0({\^a_0_address0 ,NLW_inst_a_0_address0_UNCONNECTED[0]}),
        .a_0_address1({\^a_0_address1 ,NLW_inst_a_0_address1_UNCONNECTED[0]}),
        .a_0_ce0(a_0_ce0),
        .a_0_ce1(a_0_ce1),
        .a_0_q0(a_0_q0),
        .a_0_q1(a_0_q1),
        .a_1_address0({\^a_1_address0 ,NLW_inst_a_1_address0_UNCONNECTED[0]}),
        .a_1_address1({\^a_1_address1 ,NLW_inst_a_1_address1_UNCONNECTED[0]}),
        .a_1_ce0(a_1_ce0),
        .a_1_ce1(a_1_ce1),
        .a_1_q0(a_1_q0),
        .a_1_q1(a_1_q1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_0_address0({\^b_0_address0 ,NLW_inst_b_0_address0_UNCONNECTED[0]}),
        .b_0_address1({\^b_0_address1 ,NLW_inst_b_0_address1_UNCONNECTED[0]}),
        .b_0_ce0(b_0_ce0),
        .b_0_ce1(b_0_ce1),
        .b_0_q0(b_0_q0),
        .b_0_q1(b_0_q1),
        .b_1_address0({\^b_1_address0 ,NLW_inst_b_1_address0_UNCONNECTED[0]}),
        .b_1_address1({\^b_1_address1 ,NLW_inst_b_1_address1_UNCONNECTED[0]}),
        .b_1_ce0(b_1_ce0),
        .b_1_ce1(b_1_ce1),
        .b_1_q0(b_1_q0),
        .b_1_q1(b_1_q1),
        .s(s),
        .s_ap_vld(s_ap_vld));
endmodule

(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_0_address0,
    a_0_ce0,
    a_0_q0,
    a_0_address1,
    a_0_ce1,
    a_0_q1,
    a_1_address0,
    a_1_ce0,
    a_1_q0,
    a_1_address1,
    a_1_ce1,
    a_1_q1,
    b_0_address0,
    b_0_ce0,
    b_0_q0,
    b_0_address1,
    b_0_ce1,
    b_0_q1,
    b_1_address0,
    b_1_ce0,
    b_1_q0,
    b_1_address1,
    b_1_ce1,
    b_1_q1,
    s,
    s_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [1:0]a_0_address0;
  output a_0_ce0;
  input [15:0]a_0_q0;
  output [1:0]a_0_address1;
  output a_0_ce1;
  input [15:0]a_0_q1;
  output [1:0]a_1_address0;
  output a_1_ce0;
  input [15:0]a_1_q0;
  output [1:0]a_1_address1;
  output a_1_ce1;
  input [15:0]a_1_q1;
  output [1:0]b_0_address0;
  output b_0_ce0;
  input [15:0]b_0_q0;
  output [1:0]b_0_address1;
  output b_0_ce1;
  input [15:0]b_0_q1;
  output [1:0]b_1_address0;
  output b_1_ce0;
  input [15:0]b_1_q0;
  output [1:0]b_1_address1;
  output b_1_ce1;
  input [15:0]b_1_q1;
  output [15:0]s;
  output s_ap_vld;

  wire \<const0> ;
  wire [1:1]\^a_0_address0 ;
  wire [15:0]a_0_q0;
  wire [15:0]a_0_q1;
  wire [15:0]a_1_q0;
  wire [15:0]a_1_q1;
  wire acc_V2_reg_200;
  wire \acc_V2_reg_200[0]_i_3_n_0 ;
  wire \acc_V2_reg_200[0]_i_4_n_0 ;
  wire \acc_V2_reg_200[0]_i_5_n_0 ;
  wire \acc_V2_reg_200[0]_i_6_n_0 ;
  wire \acc_V2_reg_200[12]_i_2_n_0 ;
  wire \acc_V2_reg_200[12]_i_3_n_0 ;
  wire \acc_V2_reg_200[12]_i_4_n_0 ;
  wire \acc_V2_reg_200[12]_i_5_n_0 ;
  wire \acc_V2_reg_200[4]_i_2_n_0 ;
  wire \acc_V2_reg_200[4]_i_3_n_0 ;
  wire \acc_V2_reg_200[4]_i_4_n_0 ;
  wire \acc_V2_reg_200[4]_i_5_n_0 ;
  wire \acc_V2_reg_200[8]_i_2_n_0 ;
  wire \acc_V2_reg_200[8]_i_3_n_0 ;
  wire \acc_V2_reg_200[8]_i_4_n_0 ;
  wire \acc_V2_reg_200[8]_i_5_n_0 ;
  wire [15:0]acc_V2_reg_200_reg;
  wire \acc_V2_reg_200_reg[0]_i_2_n_0 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_1 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_2 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_3 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_4 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_5 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_6 ;
  wire \acc_V2_reg_200_reg[0]_i_2_n_7 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_1 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_2 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_3 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_4 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_5 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_6 ;
  wire \acc_V2_reg_200_reg[12]_i_1_n_7 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_0 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_1 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_2 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_3 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_4 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_5 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_6 ;
  wire \acc_V2_reg_200_reg[4]_i_1_n_7 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_0 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_1 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_2 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_3 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_4 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_5 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_6 ;
  wire \acc_V2_reg_200_reg[8]_i_1_n_7 ;
  wire [15:0]add_ln859_reg_405;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_idle;
  wire ap_idle_INST_0_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0;
  wire ap_loop_init;
  wire ap_loop_init_pp0_iter7_reg_reg_srl7_n_0;
  wire ap_loop_init_pp0_iter8_reg;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [15:0]b_0_q0;
  wire [15:0]b_0_q1;
  wire [15:0]b_1_q0;
  wire [15:0]b_1_q1;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_3;
  wire flow_control_loop_pipe_U_n_4;
  wire [2:1]i1_reg_187;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_0;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_1;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_10;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_11;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_12;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_13;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_14;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_15;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_2;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_3;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_4;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_5;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_6;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_7;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_8;
  wire mac_muladd_16s_16s_16ns_16_4_1_U6_n_9;
  wire mul_mul_16s_16s_16_4_1_U5_n_0;
  wire mul_mul_16s_16s_16_4_1_U5_n_1;
  wire mul_mul_16s_16s_16_4_1_U5_n_10;
  wire mul_mul_16s_16s_16_4_1_U5_n_11;
  wire mul_mul_16s_16s_16_4_1_U5_n_12;
  wire mul_mul_16s_16s_16_4_1_U5_n_13;
  wire mul_mul_16s_16s_16_4_1_U5_n_14;
  wire mul_mul_16s_16s_16_4_1_U5_n_15;
  wire mul_mul_16s_16s_16_4_1_U5_n_2;
  wire mul_mul_16s_16s_16_4_1_U5_n_3;
  wire mul_mul_16s_16s_16_4_1_U5_n_4;
  wire mul_mul_16s_16s_16_4_1_U5_n_5;
  wire mul_mul_16s_16s_16_4_1_U5_n_6;
  wire mul_mul_16s_16s_16_4_1_U5_n_7;
  wire mul_mul_16s_16s_16_4_1_U5_n_8;
  wire mul_mul_16s_16s_16_4_1_U5_n_9;
  wire [15:0]s;
  wire \s[0]_INST_0_i_1_n_0 ;
  wire \s[0]_INST_0_i_2_n_0 ;
  wire \s[0]_INST_0_i_3_n_0 ;
  wire \s[0]_INST_0_i_4_n_0 ;
  wire \s[0]_INST_0_n_0 ;
  wire \s[0]_INST_0_n_1 ;
  wire \s[0]_INST_0_n_2 ;
  wire \s[0]_INST_0_n_3 ;
  wire \s[12]_INST_0_i_1_n_0 ;
  wire \s[12]_INST_0_i_2_n_0 ;
  wire \s[12]_INST_0_i_3_n_0 ;
  wire \s[12]_INST_0_i_4_n_0 ;
  wire \s[12]_INST_0_n_1 ;
  wire \s[12]_INST_0_n_2 ;
  wire \s[12]_INST_0_n_3 ;
  wire \s[4]_INST_0_i_1_n_0 ;
  wire \s[4]_INST_0_i_2_n_0 ;
  wire \s[4]_INST_0_i_3_n_0 ;
  wire \s[4]_INST_0_i_4_n_0 ;
  wire \s[4]_INST_0_n_0 ;
  wire \s[4]_INST_0_n_1 ;
  wire \s[4]_INST_0_n_2 ;
  wire \s[4]_INST_0_n_3 ;
  wire \s[8]_INST_0_i_1_n_0 ;
  wire \s[8]_INST_0_i_2_n_0 ;
  wire \s[8]_INST_0_i_3_n_0 ;
  wire \s[8]_INST_0_i_4_n_0 ;
  wire \s[8]_INST_0_n_0 ;
  wire \s[8]_INST_0_n_1 ;
  wire \s[8]_INST_0_n_2 ;
  wire \s[8]_INST_0_n_3 ;
  wire s_ap_vld;
  wire [15:0]tmp_1_fu_279_p4;
  wire [15:0]tmp_1_reg_385;
  wire [15:0]tmp_1_reg_385_pp0_iter2_reg;
  wire [15:0]tmp_2_fu_288_p4;
  wire [15:0]tmp_3_fu_297_p4;
  wire tmp_4_reg_323;
  wire tmp_5_fu_262_p3;
  wire tmp_5_reg_376;
  wire \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0 ;
  wire tmp_5_reg_376_pp0_iter7_reg;
  wire [15:0]tmp_fu_270_p4;
  wire [15:0]tmp_reg_380;
  wire [15:0]tmp_reg_380_pp0_iter2_reg;
  wire [2:1]trunc_ln6_reg_371;
  wire [3:3]\NLW_acc_V2_reg_200_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_s[12]_INST_0_CO_UNCONNECTED ;

  assign a_0_address0[1] = \^a_0_address0 [1];
  assign a_0_address0[0] = \<const0> ;
  assign a_0_address1[1] = \^a_0_address0 [1];
  assign a_0_address1[0] = \<const0> ;
  assign a_0_ce0 = ap_start;
  assign a_0_ce1 = ap_start;
  assign a_1_address0[1] = \^a_0_address0 [1];
  assign a_1_address0[0] = \<const0> ;
  assign a_1_address1[1] = \^a_0_address0 [1];
  assign a_1_address1[0] = \<const0> ;
  assign a_1_ce0 = ap_start;
  assign a_1_ce1 = ap_start;
  assign b_0_address0[1] = \^a_0_address0 [1];
  assign b_0_address0[0] = \<const0> ;
  assign b_0_address1[1] = \^a_0_address0 [1];
  assign b_0_address1[0] = \<const0> ;
  assign b_0_ce0 = ap_start;
  assign b_0_ce1 = ap_start;
  assign b_1_address0[1] = \^a_0_address0 [1];
  assign b_1_address0[0] = \<const0> ;
  assign b_1_address1[1] = \^a_0_address0 [1];
  assign b_1_address1[0] = \<const0> ;
  assign b_1_ce0 = ap_start;
  assign b_1_ce1 = ap_start;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \acc_V2_reg_200[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter8),
        .I1(tmp_5_reg_376_pp0_iter7_reg),
        .O(acc_V2_reg_200));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[0]_i_3 
       (.I0(add_ln859_reg_405[3]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[3]),
        .O(\acc_V2_reg_200[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[0]_i_4 
       (.I0(add_ln859_reg_405[2]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[2]),
        .O(\acc_V2_reg_200[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[0]_i_5 
       (.I0(add_ln859_reg_405[1]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[1]),
        .O(\acc_V2_reg_200[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[0]_i_6 
       (.I0(add_ln859_reg_405[0]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[0]),
        .O(\acc_V2_reg_200[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \acc_V2_reg_200[12]_i_2 
       (.I0(acc_V2_reg_200_reg[15]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(add_ln859_reg_405[15]),
        .O(\acc_V2_reg_200[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[12]_i_3 
       (.I0(add_ln859_reg_405[14]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[14]),
        .O(\acc_V2_reg_200[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[12]_i_4 
       (.I0(add_ln859_reg_405[13]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[13]),
        .O(\acc_V2_reg_200[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[12]_i_5 
       (.I0(add_ln859_reg_405[12]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[12]),
        .O(\acc_V2_reg_200[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[4]_i_2 
       (.I0(add_ln859_reg_405[7]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[7]),
        .O(\acc_V2_reg_200[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[4]_i_3 
       (.I0(add_ln859_reg_405[6]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[6]),
        .O(\acc_V2_reg_200[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[4]_i_4 
       (.I0(add_ln859_reg_405[5]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[5]),
        .O(\acc_V2_reg_200[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[4]_i_5 
       (.I0(add_ln859_reg_405[4]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[4]),
        .O(\acc_V2_reg_200[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[8]_i_2 
       (.I0(add_ln859_reg_405[11]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[11]),
        .O(\acc_V2_reg_200[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[8]_i_3 
       (.I0(add_ln859_reg_405[10]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[10]),
        .O(\acc_V2_reg_200[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[8]_i_4 
       (.I0(add_ln859_reg_405[9]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[9]),
        .O(\acc_V2_reg_200[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \acc_V2_reg_200[8]_i_5 
       (.I0(add_ln859_reg_405[8]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(acc_V2_reg_200_reg[8]),
        .O(\acc_V2_reg_200[8]_i_5_n_0 ));
  FDRE \acc_V2_reg_200_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[0]_i_2_n_7 ),
        .Q(acc_V2_reg_200_reg[0]),
        .R(acc_V2_reg_200));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_V2_reg_200_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\acc_V2_reg_200_reg[0]_i_2_n_0 ,\acc_V2_reg_200_reg[0]_i_2_n_1 ,\acc_V2_reg_200_reg[0]_i_2_n_2 ,\acc_V2_reg_200_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[3:0]),
        .O({\acc_V2_reg_200_reg[0]_i_2_n_4 ,\acc_V2_reg_200_reg[0]_i_2_n_5 ,\acc_V2_reg_200_reg[0]_i_2_n_6 ,\acc_V2_reg_200_reg[0]_i_2_n_7 }),
        .S({\acc_V2_reg_200[0]_i_3_n_0 ,\acc_V2_reg_200[0]_i_4_n_0 ,\acc_V2_reg_200[0]_i_5_n_0 ,\acc_V2_reg_200[0]_i_6_n_0 }));
  FDRE \acc_V2_reg_200_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[8]_i_1_n_5 ),
        .Q(acc_V2_reg_200_reg[10]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[8]_i_1_n_4 ),
        .Q(acc_V2_reg_200_reg[11]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[12]_i_1_n_7 ),
        .Q(acc_V2_reg_200_reg[12]),
        .R(acc_V2_reg_200));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_V2_reg_200_reg[12]_i_1 
       (.CI(\acc_V2_reg_200_reg[8]_i_1_n_0 ),
        .CO({\NLW_acc_V2_reg_200_reg[12]_i_1_CO_UNCONNECTED [3],\acc_V2_reg_200_reg[12]_i_1_n_1 ,\acc_V2_reg_200_reg[12]_i_1_n_2 ,\acc_V2_reg_200_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,add_ln859_reg_405[14:12]}),
        .O({\acc_V2_reg_200_reg[12]_i_1_n_4 ,\acc_V2_reg_200_reg[12]_i_1_n_5 ,\acc_V2_reg_200_reg[12]_i_1_n_6 ,\acc_V2_reg_200_reg[12]_i_1_n_7 }),
        .S({\acc_V2_reg_200[12]_i_2_n_0 ,\acc_V2_reg_200[12]_i_3_n_0 ,\acc_V2_reg_200[12]_i_4_n_0 ,\acc_V2_reg_200[12]_i_5_n_0 }));
  FDRE \acc_V2_reg_200_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[12]_i_1_n_6 ),
        .Q(acc_V2_reg_200_reg[13]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[12]_i_1_n_5 ),
        .Q(acc_V2_reg_200_reg[14]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[12]_i_1_n_4 ),
        .Q(acc_V2_reg_200_reg[15]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[0]_i_2_n_6 ),
        .Q(acc_V2_reg_200_reg[1]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[0]_i_2_n_5 ),
        .Q(acc_V2_reg_200_reg[2]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[0]_i_2_n_4 ),
        .Q(acc_V2_reg_200_reg[3]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[4]_i_1_n_7 ),
        .Q(acc_V2_reg_200_reg[4]),
        .R(acc_V2_reg_200));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_V2_reg_200_reg[4]_i_1 
       (.CI(\acc_V2_reg_200_reg[0]_i_2_n_0 ),
        .CO({\acc_V2_reg_200_reg[4]_i_1_n_0 ,\acc_V2_reg_200_reg[4]_i_1_n_1 ,\acc_V2_reg_200_reg[4]_i_1_n_2 ,\acc_V2_reg_200_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[7:4]),
        .O({\acc_V2_reg_200_reg[4]_i_1_n_4 ,\acc_V2_reg_200_reg[4]_i_1_n_5 ,\acc_V2_reg_200_reg[4]_i_1_n_6 ,\acc_V2_reg_200_reg[4]_i_1_n_7 }),
        .S({\acc_V2_reg_200[4]_i_2_n_0 ,\acc_V2_reg_200[4]_i_3_n_0 ,\acc_V2_reg_200[4]_i_4_n_0 ,\acc_V2_reg_200[4]_i_5_n_0 }));
  FDRE \acc_V2_reg_200_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[4]_i_1_n_6 ),
        .Q(acc_V2_reg_200_reg[5]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[4]_i_1_n_5 ),
        .Q(acc_V2_reg_200_reg[6]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[4]_i_1_n_4 ),
        .Q(acc_V2_reg_200_reg[7]),
        .R(acc_V2_reg_200));
  FDRE \acc_V2_reg_200_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[8]_i_1_n_7 ),
        .Q(acc_V2_reg_200_reg[8]),
        .R(acc_V2_reg_200));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_V2_reg_200_reg[8]_i_1 
       (.CI(\acc_V2_reg_200_reg[4]_i_1_n_0 ),
        .CO({\acc_V2_reg_200_reg[8]_i_1_n_0 ,\acc_V2_reg_200_reg[8]_i_1_n_1 ,\acc_V2_reg_200_reg[8]_i_1_n_2 ,\acc_V2_reg_200_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[11:8]),
        .O({\acc_V2_reg_200_reg[8]_i_1_n_4 ,\acc_V2_reg_200_reg[8]_i_1_n_5 ,\acc_V2_reg_200_reg[8]_i_1_n_6 ,\acc_V2_reg_200_reg[8]_i_1_n_7 }),
        .S({\acc_V2_reg_200[8]_i_2_n_0 ,\acc_V2_reg_200[8]_i_3_n_0 ,\acc_V2_reg_200[8]_i_4_n_0 ,\acc_V2_reg_200[8]_i_5_n_0 }));
  FDRE \acc_V2_reg_200_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter8),
        .D(\acc_V2_reg_200_reg[8]_i_1_n_6 ),
        .Q(acc_V2_reg_200_reg[9]),
        .R(acc_V2_reg_200));
  FDRE \add_ln859_reg_405_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_15),
        .Q(add_ln859_reg_405[0]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_5),
        .Q(add_ln859_reg_405[10]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_4),
        .Q(add_ln859_reg_405[11]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_3),
        .Q(add_ln859_reg_405[12]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_2),
        .Q(add_ln859_reg_405[13]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_1),
        .Q(add_ln859_reg_405[14]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_0),
        .Q(add_ln859_reg_405[15]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_14),
        .Q(add_ln859_reg_405[1]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_13),
        .Q(add_ln859_reg_405[2]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_12),
        .Q(add_ln859_reg_405[3]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_11),
        .Q(add_ln859_reg_405[4]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_10),
        .Q(add_ln859_reg_405[5]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_9),
        .Q(add_ln859_reg_405[6]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_8),
        .Q(add_ln859_reg_405[7]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_7),
        .Q(add_ln859_reg_405[8]),
        .R(1'b0));
  FDRE \add_ln859_reg_405_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U6_n_6),
        .Q(add_ln859_reg_405[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter7_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter6),
        .Q(ap_enable_reg_pp0_iter7),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter7),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst));
  LUT4 #(
    .INIT(16'h0002)) 
    ap_idle_INST_0
       (.I0(ap_idle_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(ap_enable_reg_pp0_iter4),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ap_idle_INST_0_i_1
       (.I0(ap_enable_reg_pp0_iter5),
        .I1(ap_enable_reg_pp0_iter6),
        .I2(ap_enable_reg_pp0_iter7),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_enable_reg_pp0_iter8),
        .O(ap_idle_INST_0_i_1_n_0));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter7_reg_reg_srl7" *) 
  SRL16E ap_loop_exit_ready_pp0_iter7_reg_reg_srl7
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0));
  FDRE ap_loop_exit_ready_pp0_iter8_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0),
        .Q(ap_done),
        .R(1'b0));
  (* srl_name = "inst/ap_loop_init_pp0_iter7_reg_reg_srl7" *) 
  SRL16E ap_loop_init_pp0_iter7_reg_reg_srl7
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_loop_init),
        .Q(ap_loop_init_pp0_iter7_reg_reg_srl7_n_0));
  FDRE ap_loop_init_pp0_iter8_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_pp0_iter7_reg_reg_srl7_n_0),
        .Q(ap_loop_init_pp0_iter8_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe flow_control_loop_pipe_U
       (.Q(i1_reg_187),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(flow_control_loop_pipe_U_n_4),
        .ap_loop_init(ap_loop_init),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_start_0(flow_control_loop_pipe_U_n_1),
        .tmp_5_fu_262_p3(tmp_5_fu_262_p3),
        .tmp_5_reg_376(tmp_5_reg_376),
        .trunc_ln6_reg_371(trunc_ln6_reg_371),
        .\trunc_ln6_reg_371_reg[1] (\^a_0_address0 ),
        .\trunc_ln6_reg_371_reg[2] (flow_control_loop_pipe_U_n_3));
  FDRE \i1_reg_187_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\^a_0_address0 ),
        .Q(i1_reg_187[1]),
        .R(1'b0));
  FDRE \i1_reg_187_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_3),
        .Q(i1_reg_187[2]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U6
       (.D({mac_muladd_16s_16s_16ns_16_4_1_U6_n_0,mac_muladd_16s_16s_16ns_16_4_1_U6_n_1,mac_muladd_16s_16s_16ns_16_4_1_U6_n_2,mac_muladd_16s_16s_16ns_16_4_1_U6_n_3,mac_muladd_16s_16s_16ns_16_4_1_U6_n_4,mac_muladd_16s_16s_16ns_16_4_1_U6_n_5,mac_muladd_16s_16s_16ns_16_4_1_U6_n_6,mac_muladd_16s_16s_16ns_16_4_1_U6_n_7,mac_muladd_16s_16s_16ns_16_4_1_U6_n_8,mac_muladd_16s_16s_16ns_16_4_1_U6_n_9,mac_muladd_16s_16s_16ns_16_4_1_U6_n_10,mac_muladd_16s_16s_16ns_16_4_1_U6_n_11,mac_muladd_16s_16s_16ns_16_4_1_U6_n_12,mac_muladd_16s_16s_16ns_16_4_1_U6_n_13,mac_muladd_16s_16s_16ns_16_4_1_U6_n_14,mac_muladd_16s_16s_16ns_16_4_1_U6_n_15}),
        .P({mul_mul_16s_16s_16_4_1_U5_n_0,mul_mul_16s_16s_16_4_1_U5_n_1,mul_mul_16s_16s_16_4_1_U5_n_2,mul_mul_16s_16s_16_4_1_U5_n_3,mul_mul_16s_16s_16_4_1_U5_n_4,mul_mul_16s_16s_16_4_1_U5_n_5,mul_mul_16s_16s_16_4_1_U5_n_6,mul_mul_16s_16s_16_4_1_U5_n_7,mul_mul_16s_16s_16_4_1_U5_n_8,mul_mul_16s_16s_16_4_1_U5_n_9,mul_mul_16s_16s_16_4_1_U5_n_10,mul_mul_16s_16s_16_4_1_U5_n_11,mul_mul_16s_16s_16_4_1_U5_n_12,mul_mul_16s_16s_16_4_1_U5_n_13,mul_mul_16s_16s_16_4_1_U5_n_14,mul_mul_16s_16s_16_4_1_U5_n_15}),
        .Q(tmp_reg_380_pp0_iter2_reg),
        .ap_clk(ap_clk),
        .p_reg_reg(tmp_1_reg_385_pp0_iter2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mul_mul_16s_16s_16_4_1 mul_mul_16s_16s_16_4_1_U5
       (.A(tmp_3_fu_297_p4),
        .B(tmp_2_fu_288_p4),
        .P({mul_mul_16s_16s_16_4_1_U5_n_0,mul_mul_16s_16s_16_4_1_U5_n_1,mul_mul_16s_16s_16_4_1_U5_n_2,mul_mul_16s_16s_16_4_1_U5_n_3,mul_mul_16s_16s_16_4_1_U5_n_4,mul_mul_16s_16s_16_4_1_U5_n_5,mul_mul_16s_16s_16_4_1_U5_n_6,mul_mul_16s_16s_16_4_1_U5_n_7,mul_mul_16s_16s_16_4_1_U5_n_8,mul_mul_16s_16s_16_4_1_U5_n_9,mul_mul_16s_16s_16_4_1_U5_n_10,mul_mul_16s_16s_16_4_1_U5_n_11,mul_mul_16s_16s_16_4_1_U5_n_12,mul_mul_16s_16s_16_4_1_U5_n_13,mul_mul_16s_16s_16_4_1_U5_n_14,mul_mul_16s_16s_16_4_1_U5_n_15}),
        .ap_clk(ap_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1 mux_21_16_1_1_U1
       (.a_0_q1(a_0_q1),
        .a_1_q1(a_1_q1),
        .tmp_4_reg_323(tmp_4_reg_323),
        .tmp_fu_270_p4(tmp_fu_270_p4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_0 mux_21_16_1_1_U2
       (.b_0_q1(b_0_q1),
        .b_1_q1(b_1_q1),
        .tmp_1_fu_279_p4(tmp_1_fu_279_p4),
        .tmp_4_reg_323(tmp_4_reg_323));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_1 mux_21_16_1_1_U3
       (.B(tmp_2_fu_288_p4),
        .a_0_q0(a_0_q0),
        .a_1_q0(a_1_q0),
        .tmp_4_reg_323(tmp_4_reg_323));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_2 mux_21_16_1_1_U4
       (.A(tmp_3_fu_297_p4),
        .b_0_q0(b_0_q0),
        .b_1_q0(b_1_q0),
        .tmp_4_reg_323(tmp_4_reg_323));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s[0]_INST_0 
       (.CI(1'b0),
        .CO({\s[0]_INST_0_n_0 ,\s[0]_INST_0_n_1 ,\s[0]_INST_0_n_2 ,\s[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[3:0]),
        .O(s[3:0]),
        .S({\s[0]_INST_0_i_1_n_0 ,\s[0]_INST_0_i_2_n_0 ,\s[0]_INST_0_i_3_n_0 ,\s[0]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[0]_INST_0_i_1 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[3]),
        .I2(add_ln859_reg_405[3]),
        .O(\s[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[0]_INST_0_i_2 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[2]),
        .I2(add_ln859_reg_405[2]),
        .O(\s[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[0]_INST_0_i_3 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[1]),
        .I2(add_ln859_reg_405[1]),
        .O(\s[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[0]_INST_0_i_4 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[0]),
        .I2(add_ln859_reg_405[0]),
        .O(\s[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s[12]_INST_0 
       (.CI(\s[8]_INST_0_n_0 ),
        .CO({\NLW_s[12]_INST_0_CO_UNCONNECTED [3],\s[12]_INST_0_n_1 ,\s[12]_INST_0_n_2 ,\s[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,add_ln859_reg_405[14:12]}),
        .O(s[15:12]),
        .S({\s[12]_INST_0_i_1_n_0 ,\s[12]_INST_0_i_2_n_0 ,\s[12]_INST_0_i_3_n_0 ,\s[12]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'hD2)) 
    \s[12]_INST_0_i_1 
       (.I0(acc_V2_reg_200_reg[15]),
        .I1(ap_loop_init_pp0_iter8_reg),
        .I2(add_ln859_reg_405[15]),
        .O(\s[12]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[12]_INST_0_i_2 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[14]),
        .I2(add_ln859_reg_405[14]),
        .O(\s[12]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[12]_INST_0_i_3 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[13]),
        .I2(add_ln859_reg_405[13]),
        .O(\s[12]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[12]_INST_0_i_4 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[12]),
        .I2(add_ln859_reg_405[12]),
        .O(\s[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s[4]_INST_0 
       (.CI(\s[0]_INST_0_n_0 ),
        .CO({\s[4]_INST_0_n_0 ,\s[4]_INST_0_n_1 ,\s[4]_INST_0_n_2 ,\s[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[7:4]),
        .O(s[7:4]),
        .S({\s[4]_INST_0_i_1_n_0 ,\s[4]_INST_0_i_2_n_0 ,\s[4]_INST_0_i_3_n_0 ,\s[4]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[4]_INST_0_i_1 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[7]),
        .I2(add_ln859_reg_405[7]),
        .O(\s[4]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[4]_INST_0_i_2 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[6]),
        .I2(add_ln859_reg_405[6]),
        .O(\s[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[4]_INST_0_i_3 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[5]),
        .I2(add_ln859_reg_405[5]),
        .O(\s[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[4]_INST_0_i_4 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[4]),
        .I2(add_ln859_reg_405[4]),
        .O(\s[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s[8]_INST_0 
       (.CI(\s[4]_INST_0_n_0 ),
        .CO({\s[8]_INST_0_n_0 ,\s[8]_INST_0_n_1 ,\s[8]_INST_0_n_2 ,\s[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln859_reg_405[11:8]),
        .O(s[11:8]),
        .S({\s[8]_INST_0_i_1_n_0 ,\s[8]_INST_0_i_2_n_0 ,\s[8]_INST_0_i_3_n_0 ,\s[8]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[8]_INST_0_i_1 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[11]),
        .I2(add_ln859_reg_405[11]),
        .O(\s[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[8]_INST_0_i_2 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[10]),
        .I2(add_ln859_reg_405[10]),
        .O(\s[8]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[8]_INST_0_i_3 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[9]),
        .I2(add_ln859_reg_405[9]),
        .O(\s[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \s[8]_INST_0_i_4 
       (.I0(ap_loop_init_pp0_iter8_reg),
        .I1(acc_V2_reg_200_reg[8]),
        .I2(add_ln859_reg_405[8]),
        .O(\s[8]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_ap_vld_INST_0
       (.I0(tmp_5_reg_376_pp0_iter7_reg),
        .I1(ap_enable_reg_pp0_iter8),
        .O(s_ap_vld));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[0]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[10]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[10]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[11]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[11]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[12]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[12]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[13]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[13]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[14]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[14]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[15]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[15]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[1]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[2]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[3]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[4]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[5]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[6]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[7]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[7]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[8]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[8]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_pp0_iter2_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_reg_385[9]),
        .Q(tmp_1_reg_385_pp0_iter2_reg[9]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[0]),
        .Q(tmp_1_reg_385[0]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[10]),
        .Q(tmp_1_reg_385[10]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[11]),
        .Q(tmp_1_reg_385[11]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[12]),
        .Q(tmp_1_reg_385[12]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[13]),
        .Q(tmp_1_reg_385[13]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[14]),
        .Q(tmp_1_reg_385[14]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[15]),
        .Q(tmp_1_reg_385[15]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[1]),
        .Q(tmp_1_reg_385[1]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[2]),
        .Q(tmp_1_reg_385[2]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[3]),
        .Q(tmp_1_reg_385[3]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[4]),
        .Q(tmp_1_reg_385[4]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[5]),
        .Q(tmp_1_reg_385[5]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[6]),
        .Q(tmp_1_reg_385[6]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[7]),
        .Q(tmp_1_reg_385[7]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[8]),
        .Q(tmp_1_reg_385[8]),
        .R(1'b0));
  FDRE \tmp_1_reg_385_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_1_fu_279_p4[9]),
        .Q(tmp_1_reg_385[9]),
        .R(1'b0));
  FDRE \tmp_4_reg_323_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_3),
        .Q(tmp_4_reg_323),
        .R(1'b0));
  (* srl_bus_name = "inst/\tmp_5_reg_376_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6 " *) 
  SRL16E \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(tmp_5_reg_376),
        .Q(\tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0 ));
  FDRE \tmp_5_reg_376_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0 ),
        .Q(tmp_5_reg_376_pp0_iter7_reg),
        .R(1'b0));
  FDRE \tmp_5_reg_376_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_5_fu_262_p3),
        .Q(tmp_5_reg_376),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[0]),
        .Q(tmp_reg_380_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[10]),
        .Q(tmp_reg_380_pp0_iter2_reg[10]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[11]),
        .Q(tmp_reg_380_pp0_iter2_reg[11]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[12]),
        .Q(tmp_reg_380_pp0_iter2_reg[12]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[13]),
        .Q(tmp_reg_380_pp0_iter2_reg[13]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[14]),
        .Q(tmp_reg_380_pp0_iter2_reg[14]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[15]),
        .Q(tmp_reg_380_pp0_iter2_reg[15]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[1]),
        .Q(tmp_reg_380_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[2]),
        .Q(tmp_reg_380_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[3]),
        .Q(tmp_reg_380_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[4]),
        .Q(tmp_reg_380_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[5]),
        .Q(tmp_reg_380_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[6]),
        .Q(tmp_reg_380_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[7]),
        .Q(tmp_reg_380_pp0_iter2_reg[7]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[8]),
        .Q(tmp_reg_380_pp0_iter2_reg[8]),
        .R(1'b0));
  FDRE \tmp_reg_380_pp0_iter2_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_reg_380[9]),
        .Q(tmp_reg_380_pp0_iter2_reg[9]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[0]),
        .Q(tmp_reg_380[0]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[10]),
        .Q(tmp_reg_380[10]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[11]),
        .Q(tmp_reg_380[11]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[12]),
        .Q(tmp_reg_380[12]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[13]),
        .Q(tmp_reg_380[13]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[14]),
        .Q(tmp_reg_380[14]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[15]),
        .Q(tmp_reg_380[15]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[1]),
        .Q(tmp_reg_380[1]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[2]),
        .Q(tmp_reg_380[2]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[3]),
        .Q(tmp_reg_380[3]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[4]),
        .Q(tmp_reg_380[4]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[5]),
        .Q(tmp_reg_380[5]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[6]),
        .Q(tmp_reg_380[6]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[7]),
        .Q(tmp_reg_380[7]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[8]),
        .Q(tmp_reg_380[8]),
        .R(1'b0));
  FDRE \tmp_reg_380_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_fu_270_p4[9]),
        .Q(tmp_reg_380[9]),
        .R(1'b0));
  FDRE \trunc_ln6_reg_371_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_4),
        .Q(trunc_ln6_reg_371[1]),
        .R(1'b0));
  FDRE \trunc_ln6_reg_371_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_1),
        .Q(trunc_ln6_reg_371[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe
   (ap_loop_init,
    ap_start_0,
    \trunc_ln6_reg_371_reg[1] ,
    \trunc_ln6_reg_371_reg[2] ,
    ap_enable_reg_pp0_iter1_reg,
    tmp_5_fu_262_p3,
    ap_ready,
    ap_clk,
    ap_start,
    trunc_ln6_reg_371,
    ap_enable_reg_pp0_iter1,
    tmp_5_reg_376,
    Q,
    ap_rst);
  output ap_loop_init;
  output ap_start_0;
  output \trunc_ln6_reg_371_reg[1] ;
  output \trunc_ln6_reg_371_reg[2] ;
  output ap_enable_reg_pp0_iter1_reg;
  output tmp_5_fu_262_p3;
  output ap_ready;
  input ap_clk;
  input ap_start;
  input [1:0]trunc_ln6_reg_371;
  input ap_enable_reg_pp0_iter1;
  input tmp_5_reg_376;
  input [1:0]Q;
  input ap_rst;

  wire [1:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire ap_start_0;
  wire tmp_5_fu_262_p3;
  wire tmp_5_reg_376;
  wire [1:0]trunc_ln6_reg_371;
  wire \trunc_ln6_reg_371_reg[1] ;
  wire \trunc_ln6_reg_371_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFAAAEEEE)) 
    ap_loop_init_i_1
       (.I0(ap_rst),
        .I1(ap_loop_init),
        .I2(\trunc_ln6_reg_371_reg[2] ),
        .I3(\trunc_ln6_reg_371_reg[1] ),
        .I4(ap_start),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_ready_INST_0
       (.I0(ap_start),
        .I1(\trunc_ln6_reg_371_reg[1] ),
        .I2(\trunc_ln6_reg_371_reg[2] ),
        .O(ap_ready));
  LUT5 #(
    .INIT(32'h00AA0C0C)) 
    ap_ready_INST_0_i_1
       (.I0(trunc_ln6_reg_371[1]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(tmp_5_reg_376),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\trunc_ln6_reg_371_reg[2] ));
  LUT5 #(
    .INIT(32'h00AA0C0C)) 
    \b_1_address1[1]_INST_0 
       (.I0(trunc_ln6_reg_371[0]),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(tmp_5_reg_376),
        .I4(ap_enable_reg_pp0_iter1),
        .O(\trunc_ln6_reg_371_reg[1] ));
  LUT6 #(
    .INIT(64'h2722050000000000)) 
    \tmp_5_reg_376[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(tmp_5_reg_376),
        .I2(ap_loop_init),
        .I3(Q[1]),
        .I4(trunc_ln6_reg_371[1]),
        .I5(\trunc_ln6_reg_371_reg[1] ),
        .O(tmp_5_fu_262_p3));
  LUT6 #(
    .INIT(64'hD8DDFFFFFAFF0000)) 
    \trunc_ln6_reg_371[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(tmp_5_reg_376),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .I4(ap_start),
        .I5(trunc_ln6_reg_371[0]),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT4 #(
    .INIT(16'h6F60)) 
    \trunc_ln6_reg_371[2]_i_1 
       (.I0(\trunc_ln6_reg_371_reg[1] ),
        .I1(\trunc_ln6_reg_371_reg[2] ),
        .I2(ap_start),
        .I3(trunc_ln6_reg_371[1]),
        .O(ap_start_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1
   (D,
    ap_clk,
    Q,
    p_reg_reg,
    P);
  output [15:0]D;
  input ap_clk;
  input [15:0]Q;
  input [15:0]p_reg_reg;
  input [15:0]P;

  wire [15:0]D;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire [15:0]p_reg_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1 inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U
       (.D(D),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1
   (D,
    ap_clk,
    Q,
    p_reg_reg_0,
    P);
  output [15:0]D;
  input ap_clk;
  input [15:0]Q;
  input [15:0]p_reg_reg_0;
  input [15:0]P;

  wire [15:0]D;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire [15:0]p_reg_reg_0;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0[15],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[15],Q[15],Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:16],D}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mul_mul_16s_16s_16_4_1
   (P,
    ap_clk,
    B,
    A);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0 inner_product_mul_mul_16s_16s_16_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .P(P),
        .ap_clk(ap_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0
   (P,
    ap_clk,
    B,
    A);
  output [15:0]P;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]P;
  wire ap_clk;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:16],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1
   (tmp_fu_270_p4,
    a_1_q1,
    a_0_q1,
    tmp_4_reg_323);
  output [15:0]tmp_fu_270_p4;
  input [15:0]a_1_q1;
  input [15:0]a_0_q1;
  input tmp_4_reg_323;

  wire [15:0]a_0_q1;
  wire [15:0]a_1_q1;
  wire tmp_4_reg_323;
  wire [15:0]tmp_fu_270_p4;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[0]_i_1 
       (.I0(a_1_q1[0]),
        .I1(a_0_q1[0]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[10]_i_1 
       (.I0(a_1_q1[10]),
        .I1(a_0_q1[10]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[11]_i_1 
       (.I0(a_1_q1[11]),
        .I1(a_0_q1[11]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[12]_i_1 
       (.I0(a_1_q1[12]),
        .I1(a_0_q1[12]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[13]_i_1 
       (.I0(a_1_q1[13]),
        .I1(a_0_q1[13]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[14]_i_1 
       (.I0(a_1_q1[14]),
        .I1(a_0_q1[14]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[15]_i_1 
       (.I0(a_1_q1[15]),
        .I1(a_0_q1[15]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[1]_i_1 
       (.I0(a_1_q1[1]),
        .I1(a_0_q1[1]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[2]_i_1 
       (.I0(a_1_q1[2]),
        .I1(a_0_q1[2]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[3]_i_1 
       (.I0(a_1_q1[3]),
        .I1(a_0_q1[3]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[4]_i_1 
       (.I0(a_1_q1[4]),
        .I1(a_0_q1[4]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[5]_i_1 
       (.I0(a_1_q1[5]),
        .I1(a_0_q1[5]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[6]_i_1 
       (.I0(a_1_q1[6]),
        .I1(a_0_q1[6]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[7]_i_1 
       (.I0(a_1_q1[7]),
        .I1(a_0_q1[7]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[8]_i_1 
       (.I0(a_1_q1[8]),
        .I1(a_0_q1[8]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_reg_380[9]_i_1 
       (.I0(a_1_q1[9]),
        .I1(a_0_q1[9]),
        .I2(tmp_4_reg_323),
        .O(tmp_fu_270_p4[9]));
endmodule

(* ORIG_REF_NAME = "inner_product_mux_21_16_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_0
   (tmp_1_fu_279_p4,
    b_1_q1,
    b_0_q1,
    tmp_4_reg_323);
  output [15:0]tmp_1_fu_279_p4;
  input [15:0]b_1_q1;
  input [15:0]b_0_q1;
  input tmp_4_reg_323;

  wire [15:0]b_0_q1;
  wire [15:0]b_1_q1;
  wire [15:0]tmp_1_fu_279_p4;
  wire tmp_4_reg_323;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[0]_i_1 
       (.I0(b_1_q1[0]),
        .I1(b_0_q1[0]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[10]_i_1 
       (.I0(b_1_q1[10]),
        .I1(b_0_q1[10]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[11]_i_1 
       (.I0(b_1_q1[11]),
        .I1(b_0_q1[11]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[12]_i_1 
       (.I0(b_1_q1[12]),
        .I1(b_0_q1[12]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[13]_i_1 
       (.I0(b_1_q1[13]),
        .I1(b_0_q1[13]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[14]_i_1 
       (.I0(b_1_q1[14]),
        .I1(b_0_q1[14]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[15]_i_1 
       (.I0(b_1_q1[15]),
        .I1(b_0_q1[15]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[1]_i_1 
       (.I0(b_1_q1[1]),
        .I1(b_0_q1[1]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[2]_i_1 
       (.I0(b_1_q1[2]),
        .I1(b_0_q1[2]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[3]_i_1 
       (.I0(b_1_q1[3]),
        .I1(b_0_q1[3]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[4]_i_1 
       (.I0(b_1_q1[4]),
        .I1(b_0_q1[4]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[5]_i_1 
       (.I0(b_1_q1[5]),
        .I1(b_0_q1[5]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[6]_i_1 
       (.I0(b_1_q1[6]),
        .I1(b_0_q1[6]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[7]_i_1 
       (.I0(b_1_q1[7]),
        .I1(b_0_q1[7]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[8]_i_1 
       (.I0(b_1_q1[8]),
        .I1(b_0_q1[8]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_1_reg_385[9]_i_1 
       (.I0(b_1_q1[9]),
        .I1(b_0_q1[9]),
        .I2(tmp_4_reg_323),
        .O(tmp_1_fu_279_p4[9]));
endmodule

(* ORIG_REF_NAME = "inner_product_mux_21_16_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_1
   (B,
    a_1_q0,
    a_0_q0,
    tmp_4_reg_323);
  output [15:0]B;
  input [15:0]a_1_q0;
  input [15:0]a_0_q0;
  input tmp_4_reg_323;

  wire [15:0]B;
  wire [15:0]a_0_q0;
  wire [15:0]a_1_q0;
  wire tmp_4_reg_323;

  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_1
       (.I0(a_1_q0[15]),
        .I1(a_0_q0[15]),
        .I2(tmp_4_reg_323),
        .O(B[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_10
       (.I0(a_1_q0[6]),
        .I1(a_0_q0[6]),
        .I2(tmp_4_reg_323),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_11
       (.I0(a_1_q0[5]),
        .I1(a_0_q0[5]),
        .I2(tmp_4_reg_323),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_12
       (.I0(a_1_q0[4]),
        .I1(a_0_q0[4]),
        .I2(tmp_4_reg_323),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_13
       (.I0(a_1_q0[3]),
        .I1(a_0_q0[3]),
        .I2(tmp_4_reg_323),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_14
       (.I0(a_1_q0[2]),
        .I1(a_0_q0[2]),
        .I2(tmp_4_reg_323),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_15
       (.I0(a_1_q0[1]),
        .I1(a_0_q0[1]),
        .I2(tmp_4_reg_323),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_16
       (.I0(a_1_q0[0]),
        .I1(a_0_q0[0]),
        .I2(tmp_4_reg_323),
        .O(B[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_2
       (.I0(a_1_q0[14]),
        .I1(a_0_q0[14]),
        .I2(tmp_4_reg_323),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_3
       (.I0(a_1_q0[13]),
        .I1(a_0_q0[13]),
        .I2(tmp_4_reg_323),
        .O(B[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_4
       (.I0(a_1_q0[12]),
        .I1(a_0_q0[12]),
        .I2(tmp_4_reg_323),
        .O(B[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_5
       (.I0(a_1_q0[11]),
        .I1(a_0_q0[11]),
        .I2(tmp_4_reg_323),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_6
       (.I0(a_1_q0[10]),
        .I1(a_0_q0[10]),
        .I2(tmp_4_reg_323),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_7
       (.I0(a_1_q0[9]),
        .I1(a_0_q0[9]),
        .I2(tmp_4_reg_323),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_8
       (.I0(a_1_q0[8]),
        .I1(a_0_q0[8]),
        .I2(tmp_4_reg_323),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_9
       (.I0(a_1_q0[7]),
        .I1(a_0_q0[7]),
        .I2(tmp_4_reg_323),
        .O(B[7]));
endmodule

(* ORIG_REF_NAME = "inner_product_mux_21_16_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mux_21_16_1_1_2
   (A,
    b_1_q0,
    b_0_q0,
    tmp_4_reg_323);
  output [15:0]A;
  input [15:0]b_1_q0;
  input [15:0]b_0_q0;
  input tmp_4_reg_323;

  wire [15:0]A;
  wire [15:0]b_0_q0;
  wire [15:0]b_1_q0;
  wire tmp_4_reg_323;

  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_17
       (.I0(b_1_q0[15]),
        .I1(b_0_q0[15]),
        .I2(tmp_4_reg_323),
        .O(A[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_18
       (.I0(b_1_q0[14]),
        .I1(b_0_q0[14]),
        .I2(tmp_4_reg_323),
        .O(A[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_19
       (.I0(b_1_q0[13]),
        .I1(b_0_q0[13]),
        .I2(tmp_4_reg_323),
        .O(A[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_20
       (.I0(b_1_q0[12]),
        .I1(b_0_q0[12]),
        .I2(tmp_4_reg_323),
        .O(A[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_21
       (.I0(b_1_q0[11]),
        .I1(b_0_q0[11]),
        .I2(tmp_4_reg_323),
        .O(A[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_22
       (.I0(b_1_q0[10]),
        .I1(b_0_q0[10]),
        .I2(tmp_4_reg_323),
        .O(A[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_23
       (.I0(b_1_q0[9]),
        .I1(b_0_q0[9]),
        .I2(tmp_4_reg_323),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_24
       (.I0(b_1_q0[8]),
        .I1(b_0_q0[8]),
        .I2(tmp_4_reg_323),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_25
       (.I0(b_1_q0[7]),
        .I1(b_0_q0[7]),
        .I2(tmp_4_reg_323),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_26
       (.I0(b_1_q0[6]),
        .I1(b_0_q0[6]),
        .I2(tmp_4_reg_323),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_27
       (.I0(b_1_q0[5]),
        .I1(b_0_q0[5]),
        .I2(tmp_4_reg_323),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_28
       (.I0(b_1_q0[4]),
        .I1(b_0_q0[4]),
        .I2(tmp_4_reg_323),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_29
       (.I0(b_1_q0[3]),
        .I1(b_0_q0[3]),
        .I2(tmp_4_reg_323),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_30
       (.I0(b_1_q0[2]),
        .I1(b_0_q0[2]),
        .I2(tmp_4_reg_323),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_31
       (.I0(b_1_q0[1]),
        .I1(b_0_q0[1]),
        .I2(tmp_4_reg_323),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    p_reg_reg_i_32
       (.I0(b_1_q0[0]),
        .I1(b_0_q0[0]),
        .I2(tmp_4_reg_323),
        .O(A[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
