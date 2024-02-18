// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 24 12:39:23 2023
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
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  (* ap_ST_fsm_state5 = "6'b010000" *) 
  (* ap_ST_fsm_state6 = "6'b100000" *) 
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

(* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state2 = "6'b000010" *) (* ap_ST_fsm_state3 = "6'b000100" *) 
(* ap_ST_fsm_state4 = "6'b001000" *) (* ap_ST_fsm_state5 = "6'b010000" *) (* ap_ST_fsm_state6 = "6'b100000" *) 
(* hls_module = "yes" *) 
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

  wire [1:1]\^a_address0 ;
  wire a_ce0;
  wire [15:0]a_q0;
  wire [3:0]add_ln10_fu_116_p2;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire ap_CS_fsm_state6;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [2:0]\^b_address0 ;
  wire [15:0]b_q0;
  wire i_fu_500;
  wire [3:3]i_fu_50_reg;
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

  assign a_address0[2] = \^b_address0 [2];
  assign a_address0[1] = \^a_address0 [1];
  assign a_address0[0] = \^b_address0 [0];
  assign ap_done = s_ap_vld;
  assign ap_ready = s_ap_vld;
  assign b_address0[2] = \^b_address0 [2];
  assign b_address0[1] = \^a_address0 [1];
  assign b_address0[0] = \^b_address0 [0];
  assign b_ce0 = a_ce0;
  FDRE \acc_V_fu_46_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_15),
        .Q(s[0]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_5),
        .Q(s[10]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_4),
        .Q(s[11]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_3),
        .Q(s[12]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_2),
        .Q(s[13]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_1),
        .Q(s[14]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_0),
        .Q(s[15]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_14),
        .Q(s[1]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_13),
        .Q(s[2]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_12),
        .Q(s[3]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_11),
        .Q(s[4]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_10),
        .Q(s[5]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_9),
        .Q(s[6]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_8),
        .Q(s[7]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_7),
        .Q(s[8]),
        .R(ap_NS_fsm1));
  FDRE \acc_V_fu_46_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_6),
        .Q(s[9]),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h4444444444444744)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state6),
        .I3(\ap_CS_fsm[0]_i_2_n_0 ),
        .I4(\ap_CS_fsm_reg_n_0_[3] ),
        .I5(\ap_CS_fsm_reg_n_0_[4] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(a_ce0),
        .I1(\^b_address0 [2]),
        .I2(\^a_address0 ),
        .I3(\^b_address0 [0]),
        .I4(i_fu_50_reg),
        .I5(\ap_CS_fsm_reg_n_0_[2] ),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state6),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(a_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(i_fu_500),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_50[0]_i_1 
       (.I0(\^b_address0 [0]),
        .O(add_ln10_fu_116_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_50[1]_i_1 
       (.I0(\^b_address0 [0]),
        .I1(\^a_address0 ),
        .O(add_ln10_fu_116_p2[1]));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \i_fu_50[2]_i_2 
       (.I0(i_fu_50_reg),
        .I1(\^a_address0 ),
        .I2(\^b_address0 [0]),
        .I3(\^b_address0 [2]),
        .I4(a_ce0),
        .O(i_fu_500));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_fu_50[2]_i_3 
       (.I0(\^b_address0 [2]),
        .I1(\^b_address0 [0]),
        .I2(\^a_address0 ),
        .O(add_ln10_fu_116_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_fu_50[3]_i_1 
       (.I0(i_fu_50_reg),
        .I1(\^b_address0 [0]),
        .I2(\^a_address0 ),
        .I3(\^b_address0 [2]),
        .O(add_ln10_fu_116_p2[3]));
  FDRE \i_fu_50_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_500),
        .D(add_ln10_fu_116_p2[0]),
        .Q(\^b_address0 [0]),
        .R(ap_NS_fsm1));
  FDRE \i_fu_50_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_500),
        .D(add_ln10_fu_116_p2[1]),
        .Q(\^a_address0 ),
        .R(ap_NS_fsm1));
  FDRE \i_fu_50_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_500),
        .D(add_ln10_fu_116_p2[2]),
        .Q(\^b_address0 [2]),
        .R(ap_NS_fsm1));
  FDRE \i_fu_50_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_500),
        .D(add_ln10_fu_116_p2[3]),
        .Q(i_fu_50_reg),
        .R(ap_NS_fsm1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.D({mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15}),
        .Q({ap_CS_fsm_state6,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(ap_NS_fsm1),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .b_q0(b_q0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    s_ap_vld_INST_0
       (.I0(i_fu_50_reg),
        .I1(\^b_address0 [0]),
        .I2(\^a_address0 ),
        .I3(\^b_address0 [2]),
        .I4(a_ce0),
        .O(s_ap_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1
   (D,
    SR,
    Q,
    ap_clk,
    a_q0,
    b_q0,
    ap_start);
  output [15:0]D;
  output [0:0]SR;
  input [1:0]Q;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input ap_start;

  wire [15:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_start;
  wire [15:0]b_q0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.D(D),
        .Q(Q),
        .SR(SR),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .b_q0(b_q0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (D,
    SR,
    Q,
    ap_clk,
    a_q0,
    b_q0,
    ap_start);
  output [15:0]D;
  output [0:0]SR;
  input [1:0]Q;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input ap_start;

  wire [15:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_start;
  wire [15:0]b_q0;
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

  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_50[2]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(SR));
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
       (.A({b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0[15],b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a_q0[15],a_q0[15],a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
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
        .CEC(Q[1]),
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
        .RSTC(SR),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
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
