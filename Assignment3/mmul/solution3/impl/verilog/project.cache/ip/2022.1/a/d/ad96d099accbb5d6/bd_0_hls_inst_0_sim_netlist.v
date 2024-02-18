// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 17 16:49:51 2023
// Host        : winvdi1008 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,mmul,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "mmul,Vivado 2022.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a_0_ce0,
    a_1_ce0,
    a_2_ce0,
    a_3_ce0,
    a_3_we0,
    a_3_ce1,
    a_3_we1,
    b_0_ce0,
    b_1_ce0,
    b_2_ce0,
    b_3_ce0,
    c_ce0,
    c_we0,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_0_address0,
    a_0_q0,
    a_1_address0,
    a_1_q0,
    a_2_address0,
    a_2_q0,
    a_3_address0,
    a_3_d0,
    a_3_q0,
    a_3_address1,
    a_3_d1,
    a_3_q1,
    b_0_address0,
    b_0_q0,
    b_1_address0,
    b_1_q0,
    b_2_address0,
    b_2_q0,
    b_3_address0,
    b_3_q0,
    c_address0,
    c_d0);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_address0, LAYERED_METADATA undef" *) output [1:0]a_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_q0, LAYERED_METADATA undef" *) input [15:0]a_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_address0, LAYERED_METADATA undef" *) output [1:0]a_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_q0, LAYERED_METADATA undef" *) input [15:0]a_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_address0, LAYERED_METADATA undef" *) output [1:0]a_2_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_q0, LAYERED_METADATA undef" *) input [15:0]a_2_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_address0, LAYERED_METADATA undef" *) output [1:0]a_3_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_d0, LAYERED_METADATA undef" *) output [15:0]a_3_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_q0, LAYERED_METADATA undef" *) input [15:0]a_3_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_address1, LAYERED_METADATA undef" *) output [1:0]a_3_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_d1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_d1, LAYERED_METADATA undef" *) output [15:0]a_3_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_3_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_3_q1, LAYERED_METADATA undef" *) input [15:0]a_3_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_address0, LAYERED_METADATA undef" *) output [2:0]b_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_q0, LAYERED_METADATA undef" *) input [15:0]b_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_address0, LAYERED_METADATA undef" *) output [2:0]b_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_q0, LAYERED_METADATA undef" *) input [15:0]b_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_address0, LAYERED_METADATA undef" *) output [2:0]b_2_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_q0, LAYERED_METADATA undef" *) input [15:0]b_2_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_address0, LAYERED_METADATA undef" *) output [2:0]b_3_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_q0, LAYERED_METADATA undef" *) input [15:0]b_3_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef" *) output [4:0]c_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_d0, LAYERED_METADATA undef" *) output [15:0]c_d0;

  wire \<const0> ;
  wire [1:0]a_0_address0;
  wire a_0_ce0;
  wire [15:0]a_0_q0;
  wire [1:0]a_1_address0;
  wire a_1_ce0;
  wire [15:0]a_1_q0;
  wire [1:0]a_2_address0;
  wire a_2_ce0;
  wire [15:0]a_2_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]b_0_address0;
  wire b_0_ce0;
  wire [15:0]b_0_q0;
  wire [2:0]b_1_address0;
  wire b_1_ce0;
  wire [15:0]b_1_q0;
  wire [2:0]b_2_address0;
  wire b_2_ce0;
  wire [15:0]b_2_q0;
  wire [2:0]b_3_address0;
  wire b_3_ce0;
  wire [15:0]b_3_q0;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [15:0]c_d0;
  wire c_we0;
  wire NLW_inst_a_3_ce0_UNCONNECTED;
  wire NLW_inst_a_3_ce1_UNCONNECTED;
  wire NLW_inst_a_3_we0_UNCONNECTED;
  wire NLW_inst_a_3_we1_UNCONNECTED;
  wire [1:0]NLW_inst_a_3_address0_UNCONNECTED;
  wire [1:0]NLW_inst_a_3_address1_UNCONNECTED;
  wire [15:0]NLW_inst_a_3_d0_UNCONNECTED;
  wire [15:0]NLW_inst_a_3_d1_UNCONNECTED;

  assign a_3_address0[1] = \<const0> ;
  assign a_3_address0[0] = \<const0> ;
  assign a_3_address1[1] = \<const0> ;
  assign a_3_address1[0] = \<const0> ;
  assign a_3_ce0 = \<const0> ;
  assign a_3_ce1 = \<const0> ;
  assign a_3_d0[15] = \<const0> ;
  assign a_3_d0[14] = \<const0> ;
  assign a_3_d0[13] = \<const0> ;
  assign a_3_d0[12] = \<const0> ;
  assign a_3_d0[11] = \<const0> ;
  assign a_3_d0[10] = \<const0> ;
  assign a_3_d0[9] = \<const0> ;
  assign a_3_d0[8] = \<const0> ;
  assign a_3_d0[7] = \<const0> ;
  assign a_3_d0[6] = \<const0> ;
  assign a_3_d0[5] = \<const0> ;
  assign a_3_d0[4] = \<const0> ;
  assign a_3_d0[3] = \<const0> ;
  assign a_3_d0[2] = \<const0> ;
  assign a_3_d0[1] = \<const0> ;
  assign a_3_d0[0] = \<const0> ;
  assign a_3_d1[15] = \<const0> ;
  assign a_3_d1[14] = \<const0> ;
  assign a_3_d1[13] = \<const0> ;
  assign a_3_d1[12] = \<const0> ;
  assign a_3_d1[11] = \<const0> ;
  assign a_3_d1[10] = \<const0> ;
  assign a_3_d1[9] = \<const0> ;
  assign a_3_d1[8] = \<const0> ;
  assign a_3_d1[7] = \<const0> ;
  assign a_3_d1[6] = \<const0> ;
  assign a_3_d1[5] = \<const0> ;
  assign a_3_d1[4] = \<const0> ;
  assign a_3_d1[3] = \<const0> ;
  assign a_3_d1[2] = \<const0> ;
  assign a_3_d1[1] = \<const0> ;
  assign a_3_d1[0] = \<const0> ;
  assign a_3_we0 = \<const0> ;
  assign a_3_we1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul inst
       (.a_0_address0(a_0_address0),
        .a_0_ce0(a_0_ce0),
        .a_0_q0(a_0_q0),
        .a_1_address0(a_1_address0),
        .a_1_ce0(a_1_ce0),
        .a_1_q0(a_1_q0),
        .a_2_address0(a_2_address0),
        .a_2_ce0(a_2_ce0),
        .a_2_q0(a_2_q0),
        .a_3_address0(NLW_inst_a_3_address0_UNCONNECTED[1:0]),
        .a_3_address1(NLW_inst_a_3_address1_UNCONNECTED[1:0]),
        .a_3_ce0(NLW_inst_a_3_ce0_UNCONNECTED),
        .a_3_ce1(NLW_inst_a_3_ce1_UNCONNECTED),
        .a_3_d0(NLW_inst_a_3_d0_UNCONNECTED[15:0]),
        .a_3_d1(NLW_inst_a_3_d1_UNCONNECTED[15:0]),
        .a_3_q0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .a_3_q1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .a_3_we0(NLW_inst_a_3_we0_UNCONNECTED),
        .a_3_we1(NLW_inst_a_3_we1_UNCONNECTED),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_0_address0(b_0_address0),
        .b_0_ce0(b_0_ce0),
        .b_0_q0(b_0_q0),
        .b_1_address0(b_1_address0),
        .b_1_ce0(b_1_ce0),
        .b_1_q0(b_1_q0),
        .b_2_address0(b_2_address0),
        .b_2_ce0(b_2_ce0),
        .b_2_q0(b_2_q0),
        .b_3_address0(b_3_address0),
        .b_3_ce0(b_3_ce0),
        .b_3_q0(b_3_q0),
        .c_address0(c_address0),
        .c_ce0(c_ce0),
        .c_d0(c_d0),
        .c_we0(c_we0));
endmodule

(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_0_address0,
    a_0_ce0,
    a_0_q0,
    a_1_address0,
    a_1_ce0,
    a_1_q0,
    a_2_address0,
    a_2_ce0,
    a_2_q0,
    a_3_address0,
    a_3_ce0,
    a_3_we0,
    a_3_d0,
    a_3_q0,
    a_3_address1,
    a_3_ce1,
    a_3_we1,
    a_3_d1,
    a_3_q1,
    b_0_address0,
    b_0_ce0,
    b_0_q0,
    b_1_address0,
    b_1_ce0,
    b_1_q0,
    b_2_address0,
    b_2_ce0,
    b_2_q0,
    b_3_address0,
    b_3_ce0,
    b_3_q0,
    c_address0,
    c_ce0,
    c_we0,
    c_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [1:0]a_0_address0;
  output a_0_ce0;
  input [15:0]a_0_q0;
  output [1:0]a_1_address0;
  output a_1_ce0;
  input [15:0]a_1_q0;
  output [1:0]a_2_address0;
  output a_2_ce0;
  input [15:0]a_2_q0;
  output [1:0]a_3_address0;
  output a_3_ce0;
  output a_3_we0;
  output [15:0]a_3_d0;
  input [15:0]a_3_q0;
  output [1:0]a_3_address1;
  output a_3_ce1;
  output a_3_we1;
  output [15:0]a_3_d1;
  input [15:0]a_3_q1;
  output [2:0]b_0_address0;
  output b_0_ce0;
  input [15:0]b_0_q0;
  output [2:0]b_1_address0;
  output b_1_ce0;
  input [15:0]b_1_q0;
  output [2:0]b_2_address0;
  output b_2_ce0;
  input [15:0]b_2_q0;
  output [2:0]b_3_address0;
  output b_3_ce0;
  input [15:0]b_3_q0;
  output [4:0]c_address0;
  output c_ce0;
  output c_we0;
  output [15:0]c_d0;

  wire \<const0> ;
  wire [1:0]a_0_address0;
  wire [15:0]a_0_q0;
  wire [15:0]a_1_q0;
  wire [15:0]a_2_q0;
  wire [15:0]acc_V_1_fu_90;
  wire [2:0]add_ln12_fu_383_p2;
  wire [2:0]add_ln12_reg_581;
  wire \add_ln12_reg_581[1]_i_2_n_0 ;
  wire [4:2]add_ln16_fu_433_p2;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0 ;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0 ;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0 ;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0 ;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0 ;
  wire \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0 ;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_idle;
  wire ap_idle_INST_0_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0;
  wire ap_ready;
  wire ap_rst;
  wire [1:0]ap_sig_allocacmp_k_load;
  wire ap_start;
  wire [2:1]\^b_0_address0 ;
  wire [15:0]b_0_q0;
  wire [15:0]b_1_q0;
  wire [15:0]b_2_q0;
  wire [0:0]\^b_3_address0 ;
  wire b_3_ce0;
  wire [15:0]b_3_q0;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [15:0]c_d0;
  wire c_we0;
  wire flow_control_loop_pipe_U_n_0;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_19;
  wire flow_control_loop_pipe_U_n_2;
  wire flow_control_loop_pipe_U_n_20;
  wire flow_control_loop_pipe_U_n_3;
  wire flow_control_loop_pipe_U_n_4;
  wire flow_control_loop_pipe_U_n_5;
  wire flow_control_loop_pipe_U_n_6;
  wire flow_control_loop_pipe_U_n_7;
  wire flow_control_loop_pipe_U_n_8;
  wire flow_control_loop_pipe_U_n_9;
  wire \i_fu_106_reg_n_0_[0] ;
  wire \i_fu_106_reg_n_0_[1] ;
  wire icmp_ln10_reg_545;
  wire \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0 ;
  wire \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0 ;
  wire icmp_ln14_reg_572_pp0_iter5_reg;
  wire \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0 ;
  wire \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0 ;
  wire icmp_ln16_reg_577_pp0_iter7_reg;
  wire indvar_flatten36_fu_110;
  wire \indvar_flatten36_fu_110_reg_n_0_[0] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[1] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[2] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[3] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[4] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[5] ;
  wire \indvar_flatten36_fu_110_reg_n_0_[6] ;
  wire \indvar_flatten_fu_102_reg_n_0_[0] ;
  wire \indvar_flatten_fu_102_reg_n_0_[1] ;
  wire \indvar_flatten_fu_102_reg_n_0_[2] ;
  wire \indvar_flatten_fu_102_reg_n_0_[3] ;
  wire \indvar_flatten_fu_102_reg_n_0_[4] ;
  wire \indvar_flatten_fu_102_reg_n_0_[5] ;
  wire [2:0]j_fu_98;
  wire [2:0]k_fu_94;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_0;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_1;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_10;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_11;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_12;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_13;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_14;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_15;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_2;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_3;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_4;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_5;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_6;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_7;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_8;
  wire mac_muladd_16s_16s_16ns_16_4_1_U3_n_9;
  wire p_1_in;
  wire [2:0]select_ln10_1_fu_363_p3;
  wire \select_ln10_1_reg_566[0]_i_2_n_0 ;
  wire [5:0]select_ln10_2_fu_280_p3;
  wire [1:0]select_ln10_fu_355_p3;
  wire \select_ln10_reg_560[1]_i_2_n_0 ;
  wire [1:0]select_ln10_reg_560_pp0_iter2_reg;
  wire [1:0]select_ln8_1_fu_320_p3;
  wire [1:0]select_ln8_1_reg_553_pp0_iter2_reg;
  wire [15:0]tmp_1_fu_460_p6;
  wire [4:3]tmp_2_fu_399_p3;
  wire [15:0]tmp_fu_449_p5;

  assign a_0_ce0 = b_3_ce0;
  assign a_1_address0[1:0] = a_0_address0;
  assign a_1_ce0 = b_3_ce0;
  assign a_2_address0[1:0] = a_0_address0;
  assign a_2_ce0 = b_3_ce0;
  assign a_3_address0[1] = \<const0> ;
  assign a_3_address0[0] = \<const0> ;
  assign a_3_address1[1] = \<const0> ;
  assign a_3_address1[0] = \<const0> ;
  assign a_3_ce0 = \<const0> ;
  assign a_3_ce1 = \<const0> ;
  assign a_3_d0[15] = \<const0> ;
  assign a_3_d0[14] = \<const0> ;
  assign a_3_d0[13] = \<const0> ;
  assign a_3_d0[12] = \<const0> ;
  assign a_3_d0[11] = \<const0> ;
  assign a_3_d0[10] = \<const0> ;
  assign a_3_d0[9] = \<const0> ;
  assign a_3_d0[8] = \<const0> ;
  assign a_3_d0[7] = \<const0> ;
  assign a_3_d0[6] = \<const0> ;
  assign a_3_d0[5] = \<const0> ;
  assign a_3_d0[4] = \<const0> ;
  assign a_3_d0[3] = \<const0> ;
  assign a_3_d0[2] = \<const0> ;
  assign a_3_d0[1] = \<const0> ;
  assign a_3_d0[0] = \<const0> ;
  assign a_3_d1[15] = \<const0> ;
  assign a_3_d1[14] = \<const0> ;
  assign a_3_d1[13] = \<const0> ;
  assign a_3_d1[12] = \<const0> ;
  assign a_3_d1[11] = \<const0> ;
  assign a_3_d1[10] = \<const0> ;
  assign a_3_d1[9] = \<const0> ;
  assign a_3_d1[8] = \<const0> ;
  assign a_3_d1[7] = \<const0> ;
  assign a_3_d1[6] = \<const0> ;
  assign a_3_d1[5] = \<const0> ;
  assign a_3_d1[4] = \<const0> ;
  assign a_3_d1[3] = \<const0> ;
  assign a_3_d1[2] = \<const0> ;
  assign a_3_d1[1] = \<const0> ;
  assign a_3_d1[0] = \<const0> ;
  assign a_3_we0 = \<const0> ;
  assign a_3_we1 = \<const0> ;
  assign b_0_address0[2:1] = \^b_0_address0 [2:1];
  assign b_0_address0[0] = \^b_3_address0 [0];
  assign b_0_ce0 = b_3_ce0;
  assign b_1_address0[2:1] = \^b_0_address0 [2:1];
  assign b_1_address0[0] = \^b_3_address0 [0];
  assign b_1_ce0 = b_3_ce0;
  assign b_2_address0[2:1] = \^b_0_address0 [2:1];
  assign b_2_address0[0] = \^b_3_address0 [0];
  assign b_2_ce0 = b_3_ce0;
  assign b_3_address0[2:1] = \^b_0_address0 [2:1];
  assign b_3_address0[0] = \^b_3_address0 [0];
  GND GND
       (.G(\<const0> ));
  FDRE \acc_V_1_fu_90_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_15),
        .Q(acc_V_1_fu_90[0]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_5),
        .Q(acc_V_1_fu_90[10]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_4),
        .Q(acc_V_1_fu_90[11]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_3),
        .Q(acc_V_1_fu_90[12]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_2),
        .Q(acc_V_1_fu_90[13]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_1),
        .Q(acc_V_1_fu_90[14]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_0),
        .Q(acc_V_1_fu_90[15]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_14),
        .Q(acc_V_1_fu_90[1]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_13),
        .Q(acc_V_1_fu_90[2]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_12),
        .Q(acc_V_1_fu_90[3]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_11),
        .Q(acc_V_1_fu_90[4]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_10),
        .Q(acc_V_1_fu_90[5]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_9),
        .Q(acc_V_1_fu_90[6]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_8),
        .Q(acc_V_1_fu_90[7]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_7),
        .Q(acc_V_1_fu_90[8]),
        .R(p_1_in));
  FDRE \acc_V_1_fu_90_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_6),
        .Q(acc_V_1_fu_90[9]),
        .R(p_1_in));
  FDRE \acc_V_reg_646_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_15),
        .Q(c_d0[0]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_5),
        .Q(c_d0[10]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_4),
        .Q(c_d0[11]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_3),
        .Q(c_d0[12]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_2),
        .Q(c_d0[13]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_1),
        .Q(c_d0[14]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_0),
        .Q(c_d0[15]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_14),
        .Q(c_d0[1]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_13),
        .Q(c_d0[2]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_12),
        .Q(c_d0[3]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_11),
        .Q(c_d0[4]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_10),
        .Q(c_d0[5]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_9),
        .Q(c_d0[6]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_8),
        .Q(c_d0[7]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_7),
        .Q(c_d0[8]),
        .R(1'b0));
  FDRE \acc_V_reg_646_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter7),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U3_n_6),
        .Q(c_d0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFBBBFFF)) 
    \add_ln12_reg_581[0]_i_1 
       (.I0(icmp_ln10_reg_545),
        .I1(\select_ln10_reg_560[1]_i_2_n_0 ),
        .I2(add_ln12_reg_581[0]),
        .I3(b_3_ce0),
        .I4(k_fu_94[0]),
        .O(add_ln12_fu_383_p2[0]));
  LUT6 #(
    .INIT(64'h050A0303050A0C0C)) 
    \add_ln12_reg_581[1]_i_1 
       (.I0(add_ln12_reg_581[1]),
        .I1(k_fu_94[1]),
        .I2(\add_ln12_reg_581[1]_i_2_n_0 ),
        .I3(add_ln12_reg_581[0]),
        .I4(b_3_ce0),
        .I5(k_fu_94[0]),
        .O(add_ln12_fu_383_p2[1]));
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \add_ln12_reg_581[1]_i_2 
       (.I0(icmp_ln10_reg_545),
        .I1(add_ln12_reg_581[2]),
        .I2(b_3_ce0),
        .I3(k_fu_94[2]),
        .I4(\select_ln10_1_reg_566[0]_i_2_n_0 ),
        .O(\add_ln12_reg_581[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066688868)) 
    \add_ln12_reg_581[2]_i_1 
       (.I0(ap_sig_allocacmp_k_load[0]),
        .I1(ap_sig_allocacmp_k_load[1]),
        .I2(k_fu_94[2]),
        .I3(b_3_ce0),
        .I4(add_ln12_reg_581[2]),
        .I5(icmp_ln10_reg_545),
        .O(add_ln12_fu_383_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \add_ln12_reg_581[2]_i_2 
       (.I0(add_ln12_reg_581[0]),
        .I1(b_3_ce0),
        .I2(k_fu_94[0]),
        .O(ap_sig_allocacmp_k_load[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \add_ln12_reg_581[2]_i_3 
       (.I0(add_ln12_reg_581[1]),
        .I1(b_3_ce0),
        .I2(k_fu_94[1]),
        .O(ap_sig_allocacmp_k_load[1]));
  FDRE \add_ln12_reg_581_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln12_fu_383_p2[0]),
        .Q(add_ln12_reg_581[0]),
        .R(1'b0));
  FDRE \add_ln12_reg_581_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln12_fu_383_p2[1]),
        .Q(add_ln12_reg_581[1]),
        .R(1'b0));
  FDRE \add_ln12_reg_581_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln12_fu_383_p2[2]),
        .Q(add_ln12_reg_581[2]),
        .R(1'b0));
  (* srl_bus_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5 " *) 
  SRL16E \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\^b_3_address0 ),
        .Q(\add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0 ));
  (* srl_bus_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5 " *) 
  SRL16E \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0 ),
        .Q(\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1 
       (.I0(\^b_0_address0 [1]),
        .I1(tmp_2_fu_399_p3[3]),
        .O(\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0 ));
  (* srl_bus_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5 " *) 
  SRL16E \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(add_ln16_fu_433_p2[2]),
        .Q(\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_i_1 
       (.I0(tmp_2_fu_399_p3[3]),
        .I1(\^b_0_address0 [1]),
        .I2(tmp_2_fu_399_p3[4]),
        .I3(\^b_0_address0 [2]),
        .O(add_ln16_fu_433_p2[2]));
  (* srl_bus_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5 " *) 
  SRL16E \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(add_ln16_fu_433_p2[3]),
        .Q(\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h83C8)) 
    \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_i_1 
       (.I0(\^b_0_address0 [1]),
        .I1(tmp_2_fu_399_p3[3]),
        .I2(\^b_0_address0 [2]),
        .I3(tmp_2_fu_399_p3[4]),
        .O(add_ln16_fu_433_p2[3]));
  (* srl_bus_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5 " *) 
  SRL16E \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(add_ln16_fu_433_p2[4]),
        .Q(\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_i_1 
       (.I0(\^b_0_address0 [2]),
        .I1(tmp_2_fu_399_p3[4]),
        .I2(tmp_2_fu_399_p3[3]),
        .O(add_ln16_fu_433_p2[4]));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_19),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(b_3_ce0),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(b_3_ce0),
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
        .Q(c_ce0),
        .R(ap_rst));
  LUT4 #(
    .INIT(16'h0002)) 
    ap_idle_INST_0
       (.I0(ap_idle_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter4),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ap_idle_INST_0_i_1
       (.I0(ap_enable_reg_pp0_iter7),
        .I1(ap_enable_reg_pp0_iter6),
        .I2(ap_enable_reg_pp0_iter5),
        .I3(b_3_ce0),
        .I4(ap_start),
        .I5(c_ce0),
        .O(ap_idle_INST_0_i_1_n_0));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter6_reg_reg_srl6" *) 
  SRL16E ap_loop_exit_ready_pp0_iter6_reg_reg_srl6
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0));
  FDRE ap_loop_exit_ready_pp0_iter7_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0),
        .Q(ap_done),
        .R(1'b0));
  FDRE \c_addr_reg_641_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0 ),
        .Q(c_address0[0]),
        .R(1'b0));
  FDRE \c_addr_reg_641_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0 ),
        .Q(c_address0[1]),
        .R(1'b0));
  FDRE \c_addr_reg_641_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0 ),
        .Q(c_address0[2]),
        .R(1'b0));
  FDRE \c_addr_reg_641_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0 ),
        .Q(c_address0[3]),
        .R(1'b0));
  FDRE \c_addr_reg_641_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0 ),
        .Q(c_address0[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    c_we0_INST_0
       (.I0(c_ce0),
        .I1(icmp_ln16_reg_577_pp0_iter7_reg),
        .O(c_we0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D({flow_control_loop_pipe_U_n_3,flow_control_loop_pipe_U_n_4,flow_control_loop_pipe_U_n_5,flow_control_loop_pipe_U_n_6,flow_control_loop_pipe_U_n_7,flow_control_loop_pipe_U_n_8,flow_control_loop_pipe_U_n_9}),
        .Q({\indvar_flatten36_fu_110_reg_n_0_[6] ,\indvar_flatten36_fu_110_reg_n_0_[5] ,\indvar_flatten36_fu_110_reg_n_0_[4] ,\indvar_flatten36_fu_110_reg_n_0_[3] ,\indvar_flatten36_fu_110_reg_n_0_[2] ,\indvar_flatten36_fu_110_reg_n_0_[1] ,\indvar_flatten36_fu_110_reg_n_0_[0] }),
        .add_ln12_reg_581(add_ln12_reg_581),
        .ap_clk(ap_clk),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .icmp_ln10_reg_545(icmp_ln10_reg_545),
        .indvar_flatten36_fu_110(indvar_flatten36_fu_110),
        .\indvar_flatten36_fu_110_reg[3] (flow_control_loop_pipe_U_n_19),
        .\indvar_flatten36_fu_110_reg[3]_0 (flow_control_loop_pipe_U_n_20),
        .\indvar_flatten_fu_102_reg[3] (\indvar_flatten_fu_102_reg_n_0_[3] ),
        .\indvar_flatten_fu_102_reg[3]_0 (\indvar_flatten_fu_102_reg_n_0_[2] ),
        .\indvar_flatten_fu_102_reg[3]_1 (\indvar_flatten_fu_102_reg_n_0_[0] ),
        .\indvar_flatten_fu_102_reg[3]_2 (\indvar_flatten_fu_102_reg_n_0_[1] ),
        .\indvar_flatten_fu_102_reg[5] (\indvar_flatten_fu_102_reg_n_0_[4] ),
        .\indvar_flatten_fu_102_reg[5]_0 (\indvar_flatten_fu_102_reg_n_0_[5] ),
        .k_fu_94(k_fu_94),
        .\k_fu_94_reg[0] (flow_control_loop_pipe_U_n_2),
        .\k_fu_94_reg[1] (flow_control_loop_pipe_U_n_1),
        .\k_fu_94_reg[2] (flow_control_loop_pipe_U_n_0),
        .\k_fu_94_reg[2]_0 (b_3_ce0),
        .p_1_in(p_1_in),
        .select_ln10_2_fu_280_p3(select_ln10_2_fu_280_p3));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_106[0]_i_1 
       (.I0(icmp_ln10_reg_545),
        .I1(\i_fu_106_reg_n_0_[0] ),
        .O(select_ln8_1_fu_320_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_fu_106[1]_i_1 
       (.I0(icmp_ln10_reg_545),
        .I1(\i_fu_106_reg_n_0_[0] ),
        .I2(\i_fu_106_reg_n_0_[1] ),
        .O(select_ln8_1_fu_320_p3[1]));
  FDRE \i_fu_106_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1),
        .D(select_ln8_1_fu_320_p3[0]),
        .Q(\i_fu_106_reg_n_0_[0] ),
        .R(p_1_in));
  FDRE \i_fu_106_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1),
        .D(select_ln8_1_fu_320_p3[1]),
        .Q(\i_fu_106_reg_n_0_[1] ),
        .R(p_1_in));
  FDRE \icmp_ln10_reg_545_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_20),
        .Q(icmp_ln10_reg_545),
        .R(1'b0));
  (* srl_bus_name = "inst/\icmp_ln14_reg_572_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4 " *) 
  SRL16E \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0 ),
        .Q(\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1 
       (.I0(icmp_ln10_reg_545),
        .I1(add_ln12_reg_581[1]),
        .I2(b_3_ce0),
        .I3(k_fu_94[1]),
        .I4(add_ln12_reg_581[0]),
        .I5(k_fu_94[0]),
        .O(\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0 ));
  FDRE \icmp_ln14_reg_572_pp0_iter5_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0 ),
        .Q(icmp_ln14_reg_572_pp0_iter5_reg),
        .R(1'b0));
  (* srl_bus_name = "inst/\icmp_ln16_reg_577_pp0_iter6_reg_reg " *) 
  (* srl_name = "inst/\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6 " *) 
  SRL16E \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0 ),
        .Q(\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000088808)) 
    \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1 
       (.I0(ap_sig_allocacmp_k_load[0]),
        .I1(ap_sig_allocacmp_k_load[1]),
        .I2(k_fu_94[2]),
        .I3(b_3_ce0),
        .I4(add_ln12_reg_581[2]),
        .I5(icmp_ln10_reg_545),
        .O(\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0 ));
  FDRE \icmp_ln16_reg_577_pp0_iter7_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0 ),
        .Q(icmp_ln16_reg_577_pp0_iter7_reg),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_9),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_8),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_7),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_6),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_5),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_4),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \indvar_flatten36_fu_110_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(flow_control_loop_pipe_U_n_3),
        .Q(\indvar_flatten36_fu_110_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[0]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[1]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[2]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[3]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[4]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_102_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten36_fu_110),
        .D(select_ln10_2_fu_280_p3[5]),
        .Q(\indvar_flatten_fu_102_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \j_fu_98_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1),
        .D(select_ln10_1_fu_363_p3[0]),
        .Q(j_fu_98[0]),
        .R(p_1_in));
  FDRE \j_fu_98_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1),
        .D(select_ln10_1_fu_363_p3[1]),
        .Q(j_fu_98[1]),
        .R(p_1_in));
  FDRE \j_fu_98_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter1),
        .D(select_ln10_1_fu_363_p3[2]),
        .Q(j_fu_98[2]),
        .R(p_1_in));
  FDRE \k_fu_94_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_2),
        .Q(k_fu_94[0]),
        .R(1'b0));
  FDRE \k_fu_94_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_1),
        .Q(k_fu_94[1]),
        .R(1'b0));
  FDRE \k_fu_94_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_0),
        .Q(k_fu_94[2]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U3
       (.A(tmp_1_fu_460_p6),
        .B(tmp_fu_449_p5),
        .D({mac_muladd_16s_16s_16ns_16_4_1_U3_n_0,mac_muladd_16s_16s_16ns_16_4_1_U3_n_1,mac_muladd_16s_16s_16ns_16_4_1_U3_n_2,mac_muladd_16s_16s_16ns_16_4_1_U3_n_3,mac_muladd_16s_16s_16ns_16_4_1_U3_n_4,mac_muladd_16s_16s_16ns_16_4_1_U3_n_5,mac_muladd_16s_16s_16ns_16_4_1_U3_n_6,mac_muladd_16s_16s_16ns_16_4_1_U3_n_7,mac_muladd_16s_16s_16ns_16_4_1_U3_n_8,mac_muladd_16s_16s_16ns_16_4_1_U3_n_9,mac_muladd_16s_16s_16ns_16_4_1_U3_n_10,mac_muladd_16s_16s_16ns_16_4_1_U3_n_11,mac_muladd_16s_16s_16ns_16_4_1_U3_n_12,mac_muladd_16s_16s_16ns_16_4_1_U3_n_13,mac_muladd_16s_16s_16ns_16_4_1_U3_n_14,mac_muladd_16s_16s_16ns_16_4_1_U3_n_15}),
        .acc_V_1_fu_90(acc_V_1_fu_90),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter7(ap_enable_reg_pp0_iter7),
        .icmp_ln14_reg_572_pp0_iter5_reg(icmp_ln14_reg_572_pp0_iter5_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mux_32_16_1_1 mux_32_16_1_1_U1
       (.B(tmp_fu_449_p5),
        .Q(select_ln8_1_reg_553_pp0_iter2_reg),
        .a_0_q0(a_0_q0),
        .a_1_q0(a_1_q0),
        .a_2_q0(a_2_q0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mux_43_16_1_1 mux_43_16_1_1_U2
       (.A(tmp_1_fu_460_p6),
        .Q(select_ln10_reg_560_pp0_iter2_reg),
        .b_0_q0(b_0_q0),
        .b_1_q0(b_1_q0),
        .b_2_q0(b_2_q0),
        .b_3_q0(b_3_q0));
  LUT6 #(
    .INIT(64'h00000000ABFB5404)) 
    \select_ln10_1_reg_566[0]_i_1 
       (.I0(\select_ln10_1_reg_566[0]_i_2_n_0 ),
        .I1(k_fu_94[2]),
        .I2(b_3_ce0),
        .I3(add_ln12_reg_581[2]),
        .I4(j_fu_98[0]),
        .I5(icmp_ln10_reg_545),
        .O(select_ln10_1_fu_363_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \select_ln10_1_reg_566[0]_i_2 
       (.I0(k_fu_94[0]),
        .I1(add_ln12_reg_581[0]),
        .I2(k_fu_94[1]),
        .I3(b_3_ce0),
        .I4(add_ln12_reg_581[1]),
        .O(\select_ln10_1_reg_566[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h009A)) 
    \select_ln10_1_reg_566[1]_i_1 
       (.I0(j_fu_98[1]),
        .I1(\select_ln10_reg_560[1]_i_2_n_0 ),
        .I2(j_fu_98[0]),
        .I3(icmp_ln10_reg_545),
        .O(select_ln10_1_fu_363_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \select_ln10_1_reg_566[2]_i_1 
       (.I0(j_fu_98[0]),
        .I1(\select_ln10_reg_560[1]_i_2_n_0 ),
        .I2(j_fu_98[1]),
        .I3(j_fu_98[2]),
        .I4(icmp_ln10_reg_545),
        .O(select_ln10_1_fu_363_p3[2]));
  FDRE \select_ln10_1_reg_566_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln10_1_fu_363_p3[0]),
        .Q(\^b_3_address0 ),
        .R(1'b0));
  FDRE \select_ln10_1_reg_566_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln10_1_fu_363_p3[1]),
        .Q(\^b_0_address0 [1]),
        .R(1'b0));
  FDRE \select_ln10_1_reg_566_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln10_1_fu_363_p3[2]),
        .Q(\^b_0_address0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    \select_ln10_reg_560[0]_i_1 
       (.I0(k_fu_94[0]),
        .I1(b_3_ce0),
        .I2(add_ln12_reg_581[0]),
        .I3(\select_ln10_reg_560[1]_i_2_n_0 ),
        .I4(icmp_ln10_reg_545),
        .O(select_ln10_fu_355_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \select_ln10_reg_560[1]_i_1 
       (.I0(add_ln12_reg_581[1]),
        .I1(b_3_ce0),
        .I2(k_fu_94[1]),
        .I3(icmp_ln10_reg_545),
        .I4(\select_ln10_reg_560[1]_i_2_n_0 ),
        .O(select_ln10_fu_355_p3[1]));
  LUT6 #(
    .INIT(64'hEEEEFAFFFFFFFAFF)) 
    \select_ln10_reg_560[1]_i_2 
       (.I0(ap_sig_allocacmp_k_load[1]),
        .I1(add_ln12_reg_581[0]),
        .I2(k_fu_94[0]),
        .I3(k_fu_94[2]),
        .I4(b_3_ce0),
        .I5(add_ln12_reg_581[2]),
        .O(\select_ln10_reg_560[1]_i_2_n_0 ));
  FDRE \select_ln10_reg_560_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_0_address0[0]),
        .Q(select_ln10_reg_560_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \select_ln10_reg_560_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_0_address0[1]),
        .Q(select_ln10_reg_560_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \select_ln10_reg_560_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln10_fu_355_p3[0]),
        .Q(a_0_address0[0]),
        .R(1'b0));
  FDRE \select_ln10_reg_560_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln10_fu_355_p3[1]),
        .Q(a_0_address0[1]),
        .R(1'b0));
  FDRE \select_ln8_1_reg_553_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_2_fu_399_p3[3]),
        .Q(select_ln8_1_reg_553_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \select_ln8_1_reg_553_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_2_fu_399_p3[4]),
        .Q(select_ln8_1_reg_553_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \select_ln8_1_reg_553_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln8_1_fu_320_p3[0]),
        .Q(tmp_2_fu_399_p3[3]),
        .R(1'b0));
  FDRE \select_ln8_1_reg_553_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln8_1_fu_320_p3[1]),
        .Q(tmp_2_fu_399_p3[4]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_flow_control_loop_pipe
   (\k_fu_94_reg[2] ,
    \k_fu_94_reg[1] ,
    \k_fu_94_reg[0] ,
    D,
    p_1_in,
    select_ln10_2_fu_280_p3,
    indvar_flatten36_fu_110,
    ap_ready,
    \indvar_flatten36_fu_110_reg[3] ,
    \indvar_flatten36_fu_110_reg[3]_0 ,
    ap_clk,
    k_fu_94,
    \k_fu_94_reg[2]_0 ,
    add_ln12_reg_581,
    ap_start,
    Q,
    \indvar_flatten_fu_102_reg[3] ,
    \indvar_flatten_fu_102_reg[3]_0 ,
    \indvar_flatten_fu_102_reg[3]_1 ,
    \indvar_flatten_fu_102_reg[3]_2 ,
    \indvar_flatten_fu_102_reg[5] ,
    \indvar_flatten_fu_102_reg[5]_0 ,
    ap_rst,
    icmp_ln10_reg_545);
  output \k_fu_94_reg[2] ;
  output \k_fu_94_reg[1] ;
  output \k_fu_94_reg[0] ;
  output [6:0]D;
  output p_1_in;
  output [5:0]select_ln10_2_fu_280_p3;
  output indvar_flatten36_fu_110;
  output ap_ready;
  output \indvar_flatten36_fu_110_reg[3] ;
  output \indvar_flatten36_fu_110_reg[3]_0 ;
  input ap_clk;
  input [2:0]k_fu_94;
  input \k_fu_94_reg[2]_0 ;
  input [2:0]add_ln12_reg_581;
  input ap_start;
  input [6:0]Q;
  input \indvar_flatten_fu_102_reg[3] ;
  input \indvar_flatten_fu_102_reg[3]_0 ;
  input \indvar_flatten_fu_102_reg[3]_1 ;
  input \indvar_flatten_fu_102_reg[3]_2 ;
  input \indvar_flatten_fu_102_reg[5] ;
  input \indvar_flatten_fu_102_reg[5]_0 ;
  input ap_rst;
  input icmp_ln10_reg_545;

  wire [6:0]D;
  wire [6:0]Q;
  wire [2:0]add_ln12_reg_581;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_ready;
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_rst;
  wire ap_start;
  wire icmp_ln10_reg_545;
  wire indvar_flatten36_fu_110;
  wire \indvar_flatten36_fu_110[5]_i_2_n_0 ;
  wire \indvar_flatten36_fu_110[6]_i_3_n_0 ;
  wire \indvar_flatten36_fu_110_reg[3] ;
  wire \indvar_flatten36_fu_110_reg[3]_0 ;
  wire \indvar_flatten_fu_102[4]_i_2_n_0 ;
  wire \indvar_flatten_fu_102[4]_i_3_n_0 ;
  wire \indvar_flatten_fu_102[5]_i_2_n_0 ;
  wire \indvar_flatten_fu_102_reg[3] ;
  wire \indvar_flatten_fu_102_reg[3]_0 ;
  wire \indvar_flatten_fu_102_reg[3]_1 ;
  wire \indvar_flatten_fu_102_reg[3]_2 ;
  wire \indvar_flatten_fu_102_reg[5] ;
  wire \indvar_flatten_fu_102_reg[5]_0 ;
  wire [2:0]k_fu_94;
  wire \k_fu_94_reg[0] ;
  wire \k_fu_94_reg[1] ;
  wire \k_fu_94_reg[2] ;
  wire \k_fu_94_reg[2]_0 ;
  wire p_1_in;
  wire [5:0]select_ln10_2_fu_280_p3;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000F070)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(ap_rst),
        .O(\indvar_flatten36_fu_110_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0F80)) 
    ap_loop_init_i_1
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(ap_rst),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    ap_ready_INST_0
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ap_ready_INST_0_i_1
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(ap_ready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h08880000FFFFF777)) 
    \icmp_ln10_reg_545[0]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(icmp_ln10_reg_545),
        .I5(\indvar_flatten_fu_102[4]_i_2_n_0 ),
        .O(\indvar_flatten36_fu_110_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \indvar_flatten36_fu_110[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \indvar_flatten36_fu_110[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \indvar_flatten36_fu_110[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h070F0800)) 
    \indvar_flatten36_fu_110[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(p_1_in),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h1222222222222222)) 
    \indvar_flatten36_fu_110[4]_i_1 
       (.I0(Q[4]),
        .I1(p_1_in),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \indvar_flatten36_fu_110[5]_i_1 
       (.I0(Q[4]),
        .I1(\indvar_flatten36_fu_110[5]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(ap_loop_init),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08880000)) 
    \indvar_flatten36_fu_110[5]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .I4(Q[0]),
        .O(\indvar_flatten36_fu_110[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF070)) 
    \indvar_flatten36_fu_110[6]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(ap_start),
        .I3(ap_loop_init),
        .O(indvar_flatten36_fu_110));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0B04)) 
    \indvar_flatten36_fu_110[6]_i_2 
       (.I0(\indvar_flatten36_fu_110[6]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \indvar_flatten36_fu_110[6]_i_3 
       (.I0(p_1_in),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\indvar_flatten36_fu_110[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten_fu_102[0]_i_1 
       (.I0(ap_loop_init),
        .I1(\indvar_flatten_fu_102_reg[3]_1 ),
        .O(select_ln10_2_fu_280_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \indvar_flatten_fu_102[1]_i_1 
       (.I0(ap_loop_init),
        .I1(\indvar_flatten_fu_102_reg[3]_2 ),
        .I2(\indvar_flatten_fu_102_reg[3]_1 ),
        .O(select_ln10_2_fu_280_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \indvar_flatten_fu_102[2]_i_1 
       (.I0(\indvar_flatten_fu_102_reg[3]_0 ),
        .I1(\indvar_flatten_fu_102_reg[3]_2 ),
        .I2(ap_loop_init),
        .I3(\indvar_flatten_fu_102_reg[3]_1 ),
        .O(select_ln10_2_fu_280_p3[2]));
  LUT6 #(
    .INIT(64'h0000288800008888)) 
    \indvar_flatten_fu_102[3]_i_1 
       (.I0(\indvar_flatten_fu_102[4]_i_2_n_0 ),
        .I1(\indvar_flatten_fu_102_reg[3] ),
        .I2(\indvar_flatten_fu_102_reg[3]_0 ),
        .I3(\indvar_flatten_fu_102_reg[3]_1 ),
        .I4(p_1_in),
        .I5(\indvar_flatten_fu_102_reg[3]_2 ),
        .O(select_ln10_2_fu_280_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4484)) 
    \indvar_flatten_fu_102[4]_i_1 
       (.I0(\indvar_flatten_fu_102[5]_i_2_n_0 ),
        .I1(\indvar_flatten_fu_102[4]_i_2_n_0 ),
        .I2(\indvar_flatten_fu_102_reg[5] ),
        .I3(ap_loop_init),
        .O(select_ln10_2_fu_280_p3[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \indvar_flatten_fu_102[4]_i_2 
       (.I0(\indvar_flatten_fu_102_reg[3]_0 ),
        .I1(\indvar_flatten_fu_102_reg[5] ),
        .I2(\indvar_flatten_fu_102_reg[3]_1 ),
        .I3(\indvar_flatten_fu_102_reg[5]_0 ),
        .I4(\indvar_flatten_fu_102[4]_i_3_n_0 ),
        .I5(\indvar_flatten_fu_102_reg[3]_2 ),
        .O(\indvar_flatten_fu_102[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \indvar_flatten_fu_102[4]_i_3 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(\indvar_flatten_fu_102_reg[3] ),
        .O(\indvar_flatten_fu_102[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h22D2)) 
    \indvar_flatten_fu_102[5]_i_1 
       (.I0(\indvar_flatten_fu_102_reg[5] ),
        .I1(\indvar_flatten_fu_102[5]_i_2_n_0 ),
        .I2(\indvar_flatten_fu_102_reg[5]_0 ),
        .I3(ap_loop_init),
        .O(select_ln10_2_fu_280_p3[5]));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF7FFF)) 
    \indvar_flatten_fu_102[5]_i_2 
       (.I0(\indvar_flatten_fu_102_reg[3]_0 ),
        .I1(\indvar_flatten_fu_102_reg[3]_1 ),
        .I2(\indvar_flatten_fu_102_reg[3]_2 ),
        .I3(\indvar_flatten_fu_102_reg[3] ),
        .I4(ap_start),
        .I5(ap_loop_init),
        .O(\indvar_flatten_fu_102[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j_fu_98[2]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \k_fu_94[0]_i_1 
       (.I0(k_fu_94[0]),
        .I1(\k_fu_94_reg[2]_0 ),
        .I2(add_ln12_reg_581[0]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .O(\k_fu_94_reg[0] ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \k_fu_94[1]_i_1 
       (.I0(k_fu_94[1]),
        .I1(\k_fu_94_reg[2]_0 ),
        .I2(add_ln12_reg_581[1]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .O(\k_fu_94_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \k_fu_94[2]_i_1 
       (.I0(k_fu_94[2]),
        .I1(\k_fu_94_reg[2]_0 ),
        .I2(add_ln12_reg_581[2]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .O(\k_fu_94_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1
   (D,
    ap_clk,
    B,
    A,
    acc_V_1_fu_90,
    icmp_ln14_reg_572_pp0_iter5_reg,
    ap_enable_reg_pp0_iter7);
  output [15:0]D;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]acc_V_1_fu_90;
  input icmp_ln14_reg_572_pp0_iter5_reg;
  input ap_enable_reg_pp0_iter7;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [15:0]acc_V_1_fu_90;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter7;
  wire icmp_ln14_reg_572_pp0_iter5_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.A(A),
        .B(B),
        .D(D),
        .acc_V_1_fu_90(acc_V_1_fu_90),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter7(ap_enable_reg_pp0_iter7),
        .icmp_ln14_reg_572_pp0_iter5_reg(icmp_ln14_reg_572_pp0_iter5_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (D,
    ap_clk,
    B,
    A,
    acc_V_1_fu_90,
    icmp_ln14_reg_572_pp0_iter5_reg,
    ap_enable_reg_pp0_iter7);
  output [15:0]D;
  input ap_clk;
  input [15:0]B;
  input [15:0]A;
  input [15:0]acc_V_1_fu_90;
  input icmp_ln14_reg_572_pp0_iter5_reg;
  input ap_enable_reg_pp0_iter7;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]D;
  wire [15:0]acc_V_1_fu_90;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter7;
  wire [15:0]grp_fu_491_p2;
  wire icmp_ln14_reg_572_pp0_iter5_reg;
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
    .CREG(0),
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,grp_fu_491_p2}),
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
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_33
       (.I0(D[15]),
        .I1(acc_V_1_fu_90[15]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[15]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_34
       (.I0(D[14]),
        .I1(acc_V_1_fu_90[14]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[14]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_35
       (.I0(D[13]),
        .I1(acc_V_1_fu_90[13]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[13]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_36
       (.I0(D[12]),
        .I1(acc_V_1_fu_90[12]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[12]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_37
       (.I0(D[11]),
        .I1(acc_V_1_fu_90[11]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[11]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_38
       (.I0(D[10]),
        .I1(acc_V_1_fu_90[10]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[10]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_39
       (.I0(D[9]),
        .I1(acc_V_1_fu_90[9]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[9]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_40
       (.I0(D[8]),
        .I1(acc_V_1_fu_90[8]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[8]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_41
       (.I0(D[7]),
        .I1(acc_V_1_fu_90[7]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[7]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_42
       (.I0(D[6]),
        .I1(acc_V_1_fu_90[6]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[6]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_43
       (.I0(D[5]),
        .I1(acc_V_1_fu_90[5]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[5]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_44
       (.I0(D[4]),
        .I1(acc_V_1_fu_90[4]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[4]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_45
       (.I0(D[3]),
        .I1(acc_V_1_fu_90[3]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[3]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_46
       (.I0(D[2]),
        .I1(acc_V_1_fu_90[2]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[2]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_47
       (.I0(D[1]),
        .I1(acc_V_1_fu_90[1]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[1]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    p_reg_reg_i_48
       (.I0(D[0]),
        .I1(acc_V_1_fu_90[0]),
        .I2(icmp_ln14_reg_572_pp0_iter5_reg),
        .I3(ap_enable_reg_pp0_iter7),
        .O(grp_fu_491_p2[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mux_32_16_1_1
   (B,
    a_2_q0,
    Q,
    a_1_q0,
    a_0_q0);
  output [15:0]B;
  input [15:0]a_2_q0;
  input [1:0]Q;
  input [15:0]a_1_q0;
  input [15:0]a_0_q0;

  wire [15:0]B;
  wire [1:0]Q;
  wire [15:0]a_0_q0;
  wire [15:0]a_1_q0;
  wire [15:0]a_2_q0;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_1
       (.I0(a_2_q0[15]),
        .I1(Q[1]),
        .I2(a_1_q0[15]),
        .I3(Q[0]),
        .I4(a_0_q0[15]),
        .O(B[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_10
       (.I0(a_2_q0[6]),
        .I1(Q[1]),
        .I2(a_1_q0[6]),
        .I3(Q[0]),
        .I4(a_0_q0[6]),
        .O(B[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_11
       (.I0(a_2_q0[5]),
        .I1(Q[1]),
        .I2(a_1_q0[5]),
        .I3(Q[0]),
        .I4(a_0_q0[5]),
        .O(B[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_12
       (.I0(a_2_q0[4]),
        .I1(Q[1]),
        .I2(a_1_q0[4]),
        .I3(Q[0]),
        .I4(a_0_q0[4]),
        .O(B[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_13
       (.I0(a_2_q0[3]),
        .I1(Q[1]),
        .I2(a_1_q0[3]),
        .I3(Q[0]),
        .I4(a_0_q0[3]),
        .O(B[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_14
       (.I0(a_2_q0[2]),
        .I1(Q[1]),
        .I2(a_1_q0[2]),
        .I3(Q[0]),
        .I4(a_0_q0[2]),
        .O(B[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_15
       (.I0(a_2_q0[1]),
        .I1(Q[1]),
        .I2(a_1_q0[1]),
        .I3(Q[0]),
        .I4(a_0_q0[1]),
        .O(B[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_16
       (.I0(a_2_q0[0]),
        .I1(Q[1]),
        .I2(a_1_q0[0]),
        .I3(Q[0]),
        .I4(a_0_q0[0]),
        .O(B[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_2
       (.I0(a_2_q0[14]),
        .I1(Q[1]),
        .I2(a_1_q0[14]),
        .I3(Q[0]),
        .I4(a_0_q0[14]),
        .O(B[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_3
       (.I0(a_2_q0[13]),
        .I1(Q[1]),
        .I2(a_1_q0[13]),
        .I3(Q[0]),
        .I4(a_0_q0[13]),
        .O(B[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_4
       (.I0(a_2_q0[12]),
        .I1(Q[1]),
        .I2(a_1_q0[12]),
        .I3(Q[0]),
        .I4(a_0_q0[12]),
        .O(B[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_5
       (.I0(a_2_q0[11]),
        .I1(Q[1]),
        .I2(a_1_q0[11]),
        .I3(Q[0]),
        .I4(a_0_q0[11]),
        .O(B[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_6
       (.I0(a_2_q0[10]),
        .I1(Q[1]),
        .I2(a_1_q0[10]),
        .I3(Q[0]),
        .I4(a_0_q0[10]),
        .O(B[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_7
       (.I0(a_2_q0[9]),
        .I1(Q[1]),
        .I2(a_1_q0[9]),
        .I3(Q[0]),
        .I4(a_0_q0[9]),
        .O(B[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_8
       (.I0(a_2_q0[8]),
        .I1(Q[1]),
        .I2(a_1_q0[8]),
        .I3(Q[0]),
        .I4(a_0_q0[8]),
        .O(B[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_9
       (.I0(a_2_q0[7]),
        .I1(Q[1]),
        .I2(a_1_q0[7]),
        .I3(Q[0]),
        .I4(a_0_q0[7]),
        .O(B[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mux_43_16_1_1
   (A,
    b_3_q0,
    b_2_q0,
    Q,
    b_1_q0,
    b_0_q0);
  output [15:0]A;
  input [15:0]b_3_q0;
  input [15:0]b_2_q0;
  input [1:0]Q;
  input [15:0]b_1_q0;
  input [15:0]b_0_q0;

  wire [15:0]A;
  wire [1:0]Q;
  wire [15:0]b_0_q0;
  wire [15:0]b_1_q0;
  wire [15:0]b_2_q0;
  wire [15:0]b_3_q0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_17
       (.I0(b_3_q0[15]),
        .I1(b_2_q0[15]),
        .I2(Q[1]),
        .I3(b_1_q0[15]),
        .I4(Q[0]),
        .I5(b_0_q0[15]),
        .O(A[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_18
       (.I0(b_3_q0[14]),
        .I1(b_2_q0[14]),
        .I2(Q[1]),
        .I3(b_1_q0[14]),
        .I4(Q[0]),
        .I5(b_0_q0[14]),
        .O(A[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_19
       (.I0(b_3_q0[13]),
        .I1(b_2_q0[13]),
        .I2(Q[1]),
        .I3(b_1_q0[13]),
        .I4(Q[0]),
        .I5(b_0_q0[13]),
        .O(A[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_20
       (.I0(b_3_q0[12]),
        .I1(b_2_q0[12]),
        .I2(Q[1]),
        .I3(b_1_q0[12]),
        .I4(Q[0]),
        .I5(b_0_q0[12]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_21
       (.I0(b_3_q0[11]),
        .I1(b_2_q0[11]),
        .I2(Q[1]),
        .I3(b_1_q0[11]),
        .I4(Q[0]),
        .I5(b_0_q0[11]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_22
       (.I0(b_3_q0[10]),
        .I1(b_2_q0[10]),
        .I2(Q[1]),
        .I3(b_1_q0[10]),
        .I4(Q[0]),
        .I5(b_0_q0[10]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_23
       (.I0(b_3_q0[9]),
        .I1(b_2_q0[9]),
        .I2(Q[1]),
        .I3(b_1_q0[9]),
        .I4(Q[0]),
        .I5(b_0_q0[9]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_24
       (.I0(b_3_q0[8]),
        .I1(b_2_q0[8]),
        .I2(Q[1]),
        .I3(b_1_q0[8]),
        .I4(Q[0]),
        .I5(b_0_q0[8]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_25
       (.I0(b_3_q0[7]),
        .I1(b_2_q0[7]),
        .I2(Q[1]),
        .I3(b_1_q0[7]),
        .I4(Q[0]),
        .I5(b_0_q0[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_26
       (.I0(b_3_q0[6]),
        .I1(b_2_q0[6]),
        .I2(Q[1]),
        .I3(b_1_q0[6]),
        .I4(Q[0]),
        .I5(b_0_q0[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_27
       (.I0(b_3_q0[5]),
        .I1(b_2_q0[5]),
        .I2(Q[1]),
        .I3(b_1_q0[5]),
        .I4(Q[0]),
        .I5(b_0_q0[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_28
       (.I0(b_3_q0[4]),
        .I1(b_2_q0[4]),
        .I2(Q[1]),
        .I3(b_1_q0[4]),
        .I4(Q[0]),
        .I5(b_0_q0[4]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_29
       (.I0(b_3_q0[3]),
        .I1(b_2_q0[3]),
        .I2(Q[1]),
        .I3(b_1_q0[3]),
        .I4(Q[0]),
        .I5(b_0_q0[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_30
       (.I0(b_3_q0[2]),
        .I1(b_2_q0[2]),
        .I2(Q[1]),
        .I3(b_1_q0[2]),
        .I4(Q[0]),
        .I5(b_0_q0[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_31
       (.I0(b_3_q0[1]),
        .I1(b_2_q0[1]),
        .I2(Q[1]),
        .I3(b_1_q0[1]),
        .I4(Q[0]),
        .I5(b_0_q0[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_32
       (.I0(b_3_q0[0]),
        .I1(b_2_q0[0]),
        .I2(Q[1]),
        .I3(b_1_q0[0]),
        .I4(Q[0]),
        .I5(b_0_q0[0]),
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
