// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 24 12:48:07 2023
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
   (a_ce0,
    b_ce0,
    s_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_q0,
    b_address0,
    b_q0,
    s);
  output a_ce0;
  output b_ce0;
  output s_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [2:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [15:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [2:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [15:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 s DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, LAYERED_METADATA undef" *) output [15:0]s;

  wire [2:0]a_address0;
  wire a_ce0;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]b_address0;
  wire b_ce0;
  wire [15:0]b_q0;
  wire [15:0]s;
  wire s_ap_vld;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product inst
       (.a_address0(a_address0),
        .a_ce0(a_ce0),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address0(b_address0),
        .b_ce0(b_ce0),
        .b_q0(b_q0),
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
    a_address0,
    a_ce0,
    a_q0,
    b_address0,
    b_ce0,
    b_q0,
    s,
    s_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [2:0]a_address0;
  output a_ce0;
  input [15:0]a_q0;
  output [2:0]b_address0;
  output b_ce0;
  input [15:0]b_q0;
  output [15:0]s;
  output s_ap_vld;

  wire [15:0]a_q0;
  wire [15:0]acc_V_fu_48;
  wire [3:0]add_ln10_fu_108_p2;
  wire ap_clk;
  wire ap_condition_114;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_i_1_n_0;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter4_i_1_n_0;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]b_address0;
  wire [15:0]b_q0;
  wire flow_control_loop_pipe_U_n_2;
  wire i_fu_52;
  wire \i_fu_52_reg_n_0_[0] ;
  wire \i_fu_52_reg_n_0_[1] ;
  wire \i_fu_52_reg_n_0_[2] ;
  wire \i_fu_52_reg_n_0_[3] ;
  wire icmp_ln10_fu_102_p2;
  wire \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0 ;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_0;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_1;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_10;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_11;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_12;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_13;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_14;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_15;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_2;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_3;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_4;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_5;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_6;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_7;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_8;
  wire mac_muladd_16s_16s_16ns_16_4_1_U1_n_9;
  wire [15:0]s;
  wire s_ap_vld;

  assign a_address0[2:0] = b_address0;
  assign a_ce0 = ap_start;
  assign b_ce0 = ap_start;
  FDRE \acc_V_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_15),
        .Q(acc_V_fu_48[0]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_5),
        .Q(acc_V_fu_48[10]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_4),
        .Q(acc_V_fu_48[11]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_3),
        .Q(acc_V_fu_48[12]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_2),
        .Q(acc_V_fu_48[13]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_1),
        .Q(acc_V_fu_48[14]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_0),
        .Q(acc_V_fu_48[15]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_14),
        .Q(acc_V_fu_48[1]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_13),
        .Q(acc_V_fu_48[2]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_12),
        .Q(acc_V_fu_48[3]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_11),
        .Q(acc_V_fu_48[4]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_10),
        .Q(acc_V_fu_48[5]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_9),
        .Q(acc_V_fu_48[6]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_8),
        .Q(acc_V_fu_48[7]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_7),
        .Q(acc_V_fu_48[8]),
        .R(ap_condition_114));
  FDRE \acc_V_fu_48_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter4),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_6),
        .Q(acc_V_fu_48[9]),
        .R(ap_condition_114));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_2),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_rst),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_rst),
        .O(ap_enable_reg_pp0_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_rst),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter4),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter4),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_enable_reg_pp0_iter2),
        .O(ap_idle));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2" *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_done),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe flow_control_loop_pipe_U
       (.add_ln10_fu_108_p2(add_ln10_fu_108_p2),
        .ap_clk(ap_clk),
        .ap_condition_114(ap_condition_114),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_start_0(flow_control_loop_pipe_U_n_2),
        .b_address0(b_address0),
        .i_fu_52(i_fu_52),
        .\i_fu_52_reg[0] (\i_fu_52_reg_n_0_[2] ),
        .\i_fu_52_reg[0]_0 (\i_fu_52_reg_n_0_[1] ),
        .\i_fu_52_reg[0]_1 (\i_fu_52_reg_n_0_[3] ),
        .\i_fu_52_reg[0]_2 (\i_fu_52_reg_n_0_[0] ),
        .icmp_ln10_fu_102_p2(icmp_ln10_fu_102_p2));
  FDRE \i_fu_52_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_52),
        .D(add_ln10_fu_108_p2[0]),
        .Q(\i_fu_52_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_fu_52_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_52),
        .D(add_ln10_fu_108_p2[1]),
        .Q(\i_fu_52_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_fu_52_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_52),
        .D(add_ln10_fu_108_p2[2]),
        .Q(\i_fu_52_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_fu_52_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_52),
        .D(add_ln10_fu_108_p2[3]),
        .Q(\i_fu_52_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\icmp_ln10_reg_160_pp0_iter1_reg_reg " *) 
  (* srl_name = "inst/\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2 " *) 
  SRL16E \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(icmp_ln10_fu_102_p2),
        .Q(\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0 ));
  FDRE \icmp_ln10_reg_160_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0 ),
        .Q(s_ap_vld),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.P({mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15}),
        .a_q0(a_q0),
        .acc_V_fu_48(acc_V_fu_48),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .b_q0(b_q0),
        .s(s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe
   (i_fu_52,
    icmp_ln10_fu_102_p2,
    ap_start_0,
    ap_ready,
    b_address0,
    ap_condition_114,
    add_ln10_fu_108_p2,
    ap_clk,
    \i_fu_52_reg[0] ,
    \i_fu_52_reg[0]_0 ,
    \i_fu_52_reg[0]_1 ,
    ap_start,
    \i_fu_52_reg[0]_2 ,
    ap_rst);
  output i_fu_52;
  output icmp_ln10_fu_102_p2;
  output ap_start_0;
  output ap_ready;
  output [2:0]b_address0;
  output ap_condition_114;
  output [3:0]add_ln10_fu_108_p2;
  input ap_clk;
  input \i_fu_52_reg[0] ;
  input \i_fu_52_reg[0]_0 ;
  input \i_fu_52_reg[0]_1 ;
  input ap_start;
  input \i_fu_52_reg[0]_2 ;
  input ap_rst;

  wire [3:0]add_ln10_fu_108_p2;
  wire ap_clk;
  wire ap_condition_114;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire ap_start_0;
  wire [2:0]b_address0;
  wire i_fu_52;
  wire \i_fu_52_reg[0] ;
  wire \i_fu_52_reg[0]_0 ;
  wire \i_fu_52_reg[0]_1 ;
  wire \i_fu_52_reg[0]_2 ;
  wire icmp_ln10_fu_102_p2;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \acc_V_fu_48[15]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .O(ap_condition_114));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(icmp_ln10_fu_102_p2),
        .I2(ap_rst),
        .O(ap_start_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    ap_loop_init_i_1
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(icmp_ln10_fu_102_p2),
        .I3(ap_rst),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    ap_ready_INST_0
       (.I0(\i_fu_52_reg[0]_2 ),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(\i_fu_52_reg[0]_1 ),
        .I4(\i_fu_52_reg[0]_0 ),
        .I5(\i_fu_52_reg[0] ),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \b_address0[0]_INST_0 
       (.I0(\i_fu_52_reg[0]_2 ),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(b_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \b_address0[1]_INST_0 
       (.I0(\i_fu_52_reg[0]_0 ),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(b_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \b_address0[2]_INST_0 
       (.I0(\i_fu_52_reg[0] ),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(b_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_52[0]_i_1 
       (.I0(ap_loop_init),
        .I1(\i_fu_52_reg[0]_2 ),
        .O(add_ln10_fu_108_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_52[1]_i_1 
       (.I0(\i_fu_52_reg[0]_2 ),
        .I1(ap_loop_init),
        .I2(\i_fu_52_reg[0]_0 ),
        .O(add_ln10_fu_108_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_52[2]_i_1 
       (.I0(\i_fu_52_reg[0]_2 ),
        .I1(\i_fu_52_reg[0]_0 ),
        .I2(ap_loop_init),
        .I3(\i_fu_52_reg[0] ),
        .O(add_ln10_fu_108_p2[2]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00EF00)) 
    \i_fu_52[3]_i_1 
       (.I0(\i_fu_52_reg[0] ),
        .I1(\i_fu_52_reg[0]_0 ),
        .I2(\i_fu_52_reg[0]_1 ),
        .I3(ap_start),
        .I4(ap_loop_init),
        .I5(\i_fu_52_reg[0]_2 ),
        .O(i_fu_52));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_52[3]_i_2 
       (.I0(\i_fu_52_reg[0]_0 ),
        .I1(\i_fu_52_reg[0]_2 ),
        .I2(\i_fu_52_reg[0] ),
        .I3(ap_loop_init),
        .I4(\i_fu_52_reg[0]_1 ),
        .O(add_ln10_fu_108_p2[3]));
  LUT6 #(
    .INIT(64'h0000000000101010)) 
    \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_i_1 
       (.I0(\i_fu_52_reg[0] ),
        .I1(\i_fu_52_reg[0]_0 ),
        .I2(\i_fu_52_reg[0]_1 ),
        .I3(ap_start),
        .I4(ap_loop_init),
        .I5(\i_fu_52_reg[0]_2 ),
        .O(icmp_ln10_fu_102_p2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1
   (P,
    s,
    ap_clk,
    a_q0,
    b_q0,
    acc_V_fu_48,
    ap_enable_reg_pp0_iter4);
  output [15:0]P;
  output [15:0]s;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input [15:0]acc_V_fu_48;
  input ap_enable_reg_pp0_iter4;

  wire [15:0]P;
  wire [15:0]a_q0;
  wire [15:0]acc_V_fu_48;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]b_q0;
  wire [15:0]s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.P(P),
        .a_q0(a_q0),
        .acc_V_fu_48(acc_V_fu_48),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .b_q0(b_q0),
        .s(s));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (P,
    s,
    ap_clk,
    a_q0,
    b_q0,
    acc_V_fu_48,
    ap_enable_reg_pp0_iter4);
  output [15:0]P;
  output [15:0]s;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input [15:0]acc_V_fu_48;
  input ap_enable_reg_pp0_iter4;

  wire [15:0]P;
  wire [15:0]a_q0;
  wire [15:0]acc_V_fu_48;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire [15:0]b_q0;
  wire [15:0]s;
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
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
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
       (.A({b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a_q0[15],a_q0[15],a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
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
  LUT3 #(
    .INIT(8'hAC)) 
    \s[0]_INST_0 
       (.I0(P[0]),
        .I1(acc_V_fu_48[0]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[10]_INST_0 
       (.I0(P[10]),
        .I1(acc_V_fu_48[10]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[11]_INST_0 
       (.I0(P[11]),
        .I1(acc_V_fu_48[11]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[12]_INST_0 
       (.I0(P[12]),
        .I1(acc_V_fu_48[12]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[13]_INST_0 
       (.I0(P[13]),
        .I1(acc_V_fu_48[13]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[14]_INST_0 
       (.I0(P[14]),
        .I1(acc_V_fu_48[14]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[15]_INST_0 
       (.I0(P[15]),
        .I1(acc_V_fu_48[15]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[1]_INST_0 
       (.I0(P[1]),
        .I1(acc_V_fu_48[1]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[2]_INST_0 
       (.I0(P[2]),
        .I1(acc_V_fu_48[2]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[3]_INST_0 
       (.I0(P[3]),
        .I1(acc_V_fu_48[3]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[4]_INST_0 
       (.I0(P[4]),
        .I1(acc_V_fu_48[4]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[5]_INST_0 
       (.I0(P[5]),
        .I1(acc_V_fu_48[5]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[6]_INST_0 
       (.I0(P[6]),
        .I1(acc_V_fu_48[6]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[7]_INST_0 
       (.I0(P[7]),
        .I1(acc_V_fu_48[7]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[8]_INST_0 
       (.I0(P[8]),
        .I1(acc_V_fu_48[8]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \s[9]_INST_0 
       (.I0(P[9]),
        .I1(acc_V_fu_48[9]),
        .I2(ap_enable_reg_pp0_iter4),
        .O(s[9]));
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
