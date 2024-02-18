// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb 17 15:19:08 2023
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
   (a_ce0,
    b_ce0,
    c_ce0,
    c_we0,
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
    c_address0,
    c_d0);
  output a_ce0;
  output b_ce0;
  output c_ce0;
  output c_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [3:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [15:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [4:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [15:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef" *) output [4:0]c_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_d0, LAYERED_METADATA undef" *) output [15:0]c_d0;

  wire [3:0]a_address0;
  wire a_ce0;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [4:0]b_address0;
  wire b_ce0;
  wire [15:0]b_q0;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [15:0]c_d0;
  wire c_we0;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "10'b0000000001" *) 
  (* ap_ST_fsm_state10 = "10'b1000000000" *) 
  (* ap_ST_fsm_state2 = "10'b0000000010" *) 
  (* ap_ST_fsm_state3 = "10'b0000000100" *) 
  (* ap_ST_fsm_state4 = "10'b0000001000" *) 
  (* ap_ST_fsm_state5 = "10'b0000010000" *) 
  (* ap_ST_fsm_state6 = "10'b0000100000" *) 
  (* ap_ST_fsm_state7 = "10'b0001000000" *) 
  (* ap_ST_fsm_state8 = "10'b0010000000" *) 
  (* ap_ST_fsm_state9 = "10'b0100000000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul inst
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
        .c_address0(c_address0),
        .c_ce0(c_ce0),
        .c_d0(c_d0),
        .c_we0(c_we0));
endmodule

(* ap_ST_fsm_state1 = "10'b0000000001" *) (* ap_ST_fsm_state10 = "10'b1000000000" *) (* ap_ST_fsm_state2 = "10'b0000000010" *) 
(* ap_ST_fsm_state3 = "10'b0000000100" *) (* ap_ST_fsm_state4 = "10'b0000001000" *) (* ap_ST_fsm_state5 = "10'b0000010000" *) 
(* ap_ST_fsm_state6 = "10'b0000100000" *) (* ap_ST_fsm_state7 = "10'b0001000000" *) (* ap_ST_fsm_state8 = "10'b0010000000" *) 
(* ap_ST_fsm_state9 = "10'b0100000000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul
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
  output [3:0]a_address0;
  output a_ce0;
  input [15:0]a_q0;
  output [4:0]b_address0;
  output b_ce0;
  input [15:0]b_q0;
  output [4:0]c_address0;
  output c_ce0;
  output c_we0;
  output [15:0]c_d0;

  wire [3:0]a_address0;
  wire a_ce0;
  wire [15:0]a_q0;
  wire [2:0]add_ln10_fu_215_p2;
  wire [2:0]add_ln10_reg_370;
  wire [2:1]add_ln12_fu_285_p2;
  wire [2:0]add_ln12_reg_388;
  wire \add_ln12_reg_388[0]_i_1_n_0 ;
  wire [3:2]add_ln1317_fu_233_p2;
  wire [4:1]add_ln1319_fu_269_p2;
  wire [4:1]add_ln16_fu_199_p2;
  wire [1:0]add_ln8_fu_189_p2;
  wire [1:0]add_ln8_reg_352;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[0]_i_3_n_0 ;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state9;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [4:0]b_address0;
  wire [15:0]b_q0;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [15:0]c_d0;
  wire c_we0;
  wire \i_fu_70[0]_i_1_n_0 ;
  wire \i_fu_70[1]_i_1_n_0 ;
  wire \icmp_ln14_reg_393[0]_i_1_n_0 ;
  wire \icmp_ln14_reg_393_reg_n_0_[0] ;
  wire \icmp_ln16_reg_398[0]_i_1_n_0 ;
  wire \icmp_ln16_reg_398_reg_n_0_[0] ;
  wire [2:0]j_reg_114;
  wire \j_reg_114[0]_i_1_n_0 ;
  wire \j_reg_114[1]_i_1_n_0 ;
  wire \j_reg_114[2]_i_1_n_0 ;
  wire \k_reg_125[0]_i_1_n_0 ;
  wire \k_reg_125[1]_i_1_n_0 ;
  wire \k_reg_125[2]_i_1_n_0 ;
  wire \k_reg_125[2]_i_2_n_0 ;
  wire \k_reg_125_reg_n_0_[2] ;
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
  wire [3:2]p_0_in;
  wire [4:3]sub_ln16_reg_344;
  wire [4:3]tmp_1_fu_157_p3;
  wire [4:3]tmp_3_fu_243_p3;
  wire [3:2]tmp_reg_339;
  wire [2:1]zext_ln16_1_reg_357_reg;

  assign ap_done = ap_ready;
  assign b_ce0 = a_ce0;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_addr_reg_375[2]_i_1 
       (.I0(tmp_reg_339[2]),
        .I1(\k_reg_125_reg_n_0_[2] ),
        .O(add_ln1317_fu_233_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_addr_reg_375[3]_i_1 
       (.I0(\k_reg_125_reg_n_0_[2] ),
        .I1(tmp_reg_339[2]),
        .I2(tmp_reg_339[3]),
        .O(add_ln1317_fu_233_p2[3]));
  FDRE \a_addr_reg_375_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(tmp_3_fu_243_p3[3]),
        .Q(a_address0[0]),
        .R(1'b0));
  FDRE \a_addr_reg_375_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(tmp_3_fu_243_p3[4]),
        .Q(a_address0[1]),
        .R(1'b0));
  FDRE \a_addr_reg_375_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1317_fu_233_p2[2]),
        .Q(a_address0[2]),
        .R(1'b0));
  FDRE \a_addr_reg_375_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1317_fu_233_p2[3]),
        .Q(a_address0[3]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_15),
        .Q(c_d0[0]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_5),
        .Q(c_d0[10]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_4),
        .Q(c_d0[11]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_3),
        .Q(c_d0[12]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_2),
        .Q(c_d0[13]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_1),
        .Q(c_d0[14]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_0),
        .Q(c_d0[15]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_14),
        .Q(c_d0[1]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_13),
        .Q(c_d0[2]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_12),
        .Q(c_d0[3]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_11),
        .Q(c_d0[4]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_10),
        .Q(c_d0[5]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_9),
        .Q(c_d0[6]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_8),
        .Q(c_d0[7]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_7),
        .Q(c_d0[8]),
        .R(1'b0));
  FDRE \acc_V_3_reg_417_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(mac_muladd_16s_16s_16ns_16_4_1_U1_n_6),
        .Q(c_d0[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln10_reg_370[0]_i_1 
       (.I0(j_reg_114[0]),
        .O(add_ln10_fu_215_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln10_reg_370[1]_i_1 
       (.I0(j_reg_114[0]),
        .I1(j_reg_114[1]),
        .O(add_ln10_fu_215_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \add_ln10_reg_370[2]_i_1 
       (.I0(j_reg_114[1]),
        .I1(j_reg_114[0]),
        .I2(j_reg_114[2]),
        .O(add_ln10_fu_215_p2[2]));
  FDRE \add_ln10_reg_370_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln10_fu_215_p2[0]),
        .Q(add_ln10_reg_370[0]),
        .R(1'b0));
  FDRE \add_ln10_reg_370_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln10_fu_215_p2[1]),
        .Q(add_ln10_reg_370[1]),
        .R(1'b0));
  FDRE \add_ln10_reg_370_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln10_fu_215_p2[2]),
        .Q(add_ln10_reg_370[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln12_reg_388[0]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .O(\add_ln12_reg_388[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln12_reg_388[1]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(tmp_3_fu_243_p3[4]),
        .O(add_ln12_fu_285_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \add_ln12_reg_388[2]_i_1 
       (.I0(tmp_3_fu_243_p3[4]),
        .I1(tmp_3_fu_243_p3[3]),
        .I2(\k_reg_125_reg_n_0_[2] ),
        .O(add_ln12_fu_285_p2[2]));
  FDRE \add_ln12_reg_388_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln12_reg_388[0]_i_1_n_0 ),
        .Q(add_ln12_reg_388[0]),
        .R(1'b0));
  FDRE \add_ln12_reg_388_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln12_fu_285_p2[1]),
        .Q(add_ln12_reg_388[1]),
        .R(1'b0));
  FDRE \add_ln12_reg_388_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln12_fu_285_p2[2]),
        .Q(add_ln12_reg_388[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln8_reg_352[0]_i_1 
       (.I0(tmp_1_fu_157_p3[3]),
        .O(add_ln8_fu_189_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln8_reg_352[1]_i_1 
       (.I0(tmp_1_fu_157_p3[3]),
        .I1(tmp_1_fu_157_p3[4]),
        .O(add_ln8_fu_189_p2[1]));
  FDRE \add_ln8_reg_352_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln8_fu_189_p2[0]),
        .Q(add_ln8_reg_352[0]),
        .R(1'b0));
  FDRE \add_ln8_reg_352_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(add_ln8_fu_189_p2[1]),
        .Q(add_ln8_reg_352[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[0]_i_2_n_0 ),
        .I3(\ap_CS_fsm[0]_i_3_n_0 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[6] ),
        .I1(\ap_CS_fsm_reg_n_0_[7] ),
        .I2(a_ce0),
        .I3(\ap_CS_fsm_reg_n_0_[5] ),
        .I4(c_ce0),
        .I5(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state4),
        .I2(ap_CS_fsm_state2),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(tmp_1_fu_157_p3[4]),
        .I5(tmp_1_fu_157_p3[3]),
        .O(\ap_CS_fsm[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0C000000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(j_reg_114[2]),
        .I2(j_reg_114[0]),
        .I3(j_reg_114[1]),
        .I4(ap_CS_fsm_state3),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77770F00)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(tmp_1_fu_157_p3[3]),
        .I1(tmp_1_fu_157_p3[4]),
        .I2(\ap_CS_fsm[2]_i_2_n_0 ),
        .I3(ap_CS_fsm_state4),
        .I4(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\k_reg_125_reg_n_0_[2] ),
        .I1(tmp_3_fu_243_p3[4]),
        .I2(tmp_3_fu_243_p3[3]),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFA2AA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(j_reg_114[2]),
        .I2(j_reg_114[0]),
        .I3(j_reg_114[1]),
        .I4(c_ce0),
        .O(ap_NS_fsm[3]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(tmp_3_fu_243_p3[4]),
        .I2(\k_reg_125_reg_n_0_[2] ),
        .I3(ap_CS_fsm_state4),
        .O(ap_NS_fsm[4]));
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
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(a_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(a_ce0),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[5] ),
        .Q(\ap_CS_fsm_reg_n_0_[6] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(\ap_CS_fsm_reg_n_0_[7] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state9),
        .Q(c_ce0),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(tmp_1_fu_157_p3[4]),
        .I2(tmp_1_fu_157_p3[3]),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_addr_reg_380[1]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(zext_ln16_1_reg_357_reg[1]),
        .O(add_ln1319_fu_269_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b_addr_reg_380[2]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(zext_ln16_1_reg_357_reg[1]),
        .I2(tmp_3_fu_243_p3[4]),
        .I3(zext_ln16_1_reg_357_reg[2]),
        .O(add_ln1319_fu_269_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h718ECF30)) 
    \b_addr_reg_380[3]_i_1 
       (.I0(zext_ln16_1_reg_357_reg[1]),
        .I1(zext_ln16_1_reg_357_reg[2]),
        .I2(tmp_3_fu_243_p3[4]),
        .I3(\k_reg_125_reg_n_0_[2] ),
        .I4(tmp_3_fu_243_p3[3]),
        .O(add_ln1319_fu_269_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h801FFC00)) 
    \b_addr_reg_380[4]_i_1 
       (.I0(zext_ln16_1_reg_357_reg[1]),
        .I1(zext_ln16_1_reg_357_reg[2]),
        .I2(tmp_3_fu_243_p3[3]),
        .I3(tmp_3_fu_243_p3[4]),
        .I4(\k_reg_125_reg_n_0_[2] ),
        .O(add_ln1319_fu_269_p2[4]));
  FDRE \b_addr_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c_address0[0]),
        .Q(b_address0[0]),
        .R(1'b0));
  FDRE \b_addr_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1319_fu_269_p2[1]),
        .Q(b_address0[1]),
        .R(1'b0));
  FDRE \b_addr_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1319_fu_269_p2[2]),
        .Q(b_address0[2]),
        .R(1'b0));
  FDRE \b_addr_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1319_fu_269_p2[3]),
        .Q(b_address0[3]),
        .R(1'b0));
  FDRE \b_addr_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1319_fu_269_p2[4]),
        .Q(b_address0[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \c_addr_reg_362[1]_i_1 
       (.I0(tmp_reg_339[2]),
        .I1(j_reg_114[1]),
        .O(add_ln16_fu_199_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \c_addr_reg_362[2]_i_1 
       (.I0(j_reg_114[2]),
        .I1(add_ln8_reg_352[1]),
        .I2(j_reg_114[1]),
        .I3(tmp_reg_339[2]),
        .O(add_ln16_fu_199_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    \c_addr_reg_362[3]_i_1 
       (.I0(sub_ln16_reg_344[3]),
        .I1(tmp_reg_339[2]),
        .I2(j_reg_114[1]),
        .I3(j_reg_114[2]),
        .I4(add_ln8_reg_352[1]),
        .O(add_ln16_fu_199_p2[3]));
  LUT6 #(
    .INIT(64'h1777FFFFE8880000)) 
    \c_addr_reg_362[4]_i_1 
       (.I0(add_ln8_reg_352[1]),
        .I1(j_reg_114[2]),
        .I2(j_reg_114[1]),
        .I3(tmp_reg_339[2]),
        .I4(sub_ln16_reg_344[3]),
        .I5(sub_ln16_reg_344[4]),
        .O(add_ln16_fu_199_p2[4]));
  FDRE \c_addr_reg_362_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_reg_114[0]),
        .Q(c_address0[0]),
        .R(1'b0));
  FDRE \c_addr_reg_362_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln16_fu_199_p2[1]),
        .Q(c_address0[1]),
        .R(1'b0));
  FDRE \c_addr_reg_362_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln16_fu_199_p2[2]),
        .Q(c_address0[2]),
        .R(1'b0));
  FDRE \c_addr_reg_362_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln16_fu_199_p2[3]),
        .Q(c_address0[3]),
        .R(1'b0));
  FDRE \c_addr_reg_362_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln16_fu_199_p2[4]),
        .Q(c_address0[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    c_we0_INST_0
       (.I0(\icmp_ln16_reg_398_reg_n_0_[0] ),
        .I1(c_ce0),
        .O(c_we0));
  LUT6 #(
    .INIT(64'h0000BA8ABA8ABA8A)) 
    \i_fu_70[0]_i_1 
       (.I0(tmp_1_fu_157_p3[3]),
        .I1(\k_reg_125[2]_i_2_n_0 ),
        .I2(ap_CS_fsm_state3),
        .I3(add_ln8_reg_352[0]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_start),
        .O(\i_fu_70[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000BA8ABA8ABA8A)) 
    \i_fu_70[1]_i_1 
       (.I0(tmp_1_fu_157_p3[4]),
        .I1(\k_reg_125[2]_i_2_n_0 ),
        .I2(ap_CS_fsm_state3),
        .I3(add_ln8_reg_352[1]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_start),
        .O(\i_fu_70[1]_i_1_n_0 ));
  FDRE \i_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_70[0]_i_1_n_0 ),
        .Q(tmp_1_fu_157_p3[3]),
        .R(1'b0));
  FDRE \i_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_70[1]_i_1_n_0 ),
        .Q(tmp_1_fu_157_p3[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h11FF0100)) 
    \icmp_ln14_reg_393[0]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(tmp_3_fu_243_p3[4]),
        .I2(\k_reg_125_reg_n_0_[2] ),
        .I3(ap_CS_fsm_state4),
        .I4(\icmp_ln14_reg_393_reg_n_0_[0] ),
        .O(\icmp_ln14_reg_393[0]_i_1_n_0 ));
  FDRE \icmp_ln14_reg_393_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln14_reg_393[0]_i_1_n_0 ),
        .Q(\icmp_ln14_reg_393_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h18FF0800)) 
    \icmp_ln16_reg_398[0]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(tmp_3_fu_243_p3[4]),
        .I2(\k_reg_125_reg_n_0_[2] ),
        .I3(ap_CS_fsm_state4),
        .I4(\icmp_ln16_reg_398_reg_n_0_[0] ),
        .O(\icmp_ln16_reg_398[0]_i_1_n_0 ));
  FDRE \icmp_ln16_reg_398_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln16_reg_398[0]_i_1_n_0 ),
        .Q(\icmp_ln16_reg_398_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE2E200E200E200E2)) 
    \j_reg_114[0]_i_1 
       (.I0(j_reg_114[0]),
        .I1(ap_NS_fsm1),
        .I2(add_ln10_reg_370[0]),
        .I3(ap_CS_fsm_state2),
        .I4(tmp_1_fu_157_p3[3]),
        .I5(tmp_1_fu_157_p3[4]),
        .O(\j_reg_114[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E200E200E200E2)) 
    \j_reg_114[1]_i_1 
       (.I0(j_reg_114[1]),
        .I1(ap_NS_fsm1),
        .I2(add_ln10_reg_370[1]),
        .I3(ap_CS_fsm_state2),
        .I4(tmp_1_fu_157_p3[3]),
        .I5(tmp_1_fu_157_p3[4]),
        .O(\j_reg_114[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E200E200E200E2)) 
    \j_reg_114[2]_i_1 
       (.I0(j_reg_114[2]),
        .I1(ap_NS_fsm1),
        .I2(add_ln10_reg_370[2]),
        .I3(ap_CS_fsm_state2),
        .I4(tmp_1_fu_157_p3[3]),
        .I5(tmp_1_fu_157_p3[4]),
        .O(\j_reg_114[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \j_reg_114[2]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(tmp_3_fu_243_p3[3]),
        .I2(tmp_3_fu_243_p3[4]),
        .I3(\k_reg_125_reg_n_0_[2] ),
        .O(ap_NS_fsm1));
  FDRE \j_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_114[0]_i_1_n_0 ),
        .Q(j_reg_114[0]),
        .R(1'b0));
  FDRE \j_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_114[1]_i_1_n_0 ),
        .Q(j_reg_114[1]),
        .R(1'b0));
  FDRE \j_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_114[2]_i_1_n_0 ),
        .Q(j_reg_114[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCC0AAA)) 
    \k_reg_125[0]_i_1 
       (.I0(tmp_3_fu_243_p3[3]),
        .I1(add_ln12_reg_388[0]),
        .I2(\k_reg_125[2]_i_2_n_0 ),
        .I3(ap_CS_fsm_state3),
        .I4(c_ce0),
        .O(\k_reg_125[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC0AAA)) 
    \k_reg_125[1]_i_1 
       (.I0(tmp_3_fu_243_p3[4]),
        .I1(add_ln12_reg_388[1]),
        .I2(\k_reg_125[2]_i_2_n_0 ),
        .I3(ap_CS_fsm_state3),
        .I4(c_ce0),
        .O(\k_reg_125[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC0AAA)) 
    \k_reg_125[2]_i_1 
       (.I0(\k_reg_125_reg_n_0_[2] ),
        .I1(add_ln12_reg_388[2]),
        .I2(\k_reg_125[2]_i_2_n_0 ),
        .I3(ap_CS_fsm_state3),
        .I4(c_ce0),
        .O(\k_reg_125[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \k_reg_125[2]_i_2 
       (.I0(j_reg_114[2]),
        .I1(j_reg_114[0]),
        .I2(j_reg_114[1]),
        .O(\k_reg_125[2]_i_2_n_0 ));
  FDRE \k_reg_125_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_reg_125[0]_i_1_n_0 ),
        .Q(tmp_3_fu_243_p3[3]),
        .R(1'b0));
  FDRE \k_reg_125_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_reg_125[1]_i_1_n_0 ),
        .Q(tmp_3_fu_243_p3[4]),
        .R(1'b0));
  FDRE \k_reg_125_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_reg_125[2]_i_1_n_0 ),
        .Q(\k_reg_125_reg_n_0_[2] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1 mac_muladd_16s_16s_16ns_16_4_1_U1
       (.D({mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,mac_muladd_16s_16s_16ns_16_4_1_U1_n_15}),
        .Q({c_ce0,\ap_CS_fsm_reg_n_0_[0] }),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .c_d0(c_d0),
        .p_reg_reg(\icmp_ln14_reg_393_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sub_ln16_reg_344[3]_i_1 
       (.I0(tmp_1_fu_157_p3[4]),
        .I1(tmp_1_fu_157_p3[3]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sub_ln16_reg_344[4]_i_1 
       (.I0(tmp_1_fu_157_p3[4]),
        .I1(tmp_1_fu_157_p3[3]),
        .O(p_0_in[3]));
  FDRE \sub_ln16_reg_344_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in[2]),
        .Q(sub_ln16_reg_344[3]),
        .R(1'b0));
  FDRE \sub_ln16_reg_344_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in[3]),
        .Q(sub_ln16_reg_344[4]),
        .R(1'b0));
  FDRE \tmp_reg_339_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(tmp_1_fu_157_p3[3]),
        .Q(tmp_reg_339[2]),
        .R(1'b0));
  FDRE \tmp_reg_339_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(tmp_1_fu_157_p3[4]),
        .Q(tmp_reg_339[3]),
        .R(1'b0));
  FDRE \zext_ln16_1_reg_357_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_reg_114[1]),
        .Q(zext_ln16_1_reg_357_reg[1]),
        .R(1'b0));
  FDRE \zext_ln16_1_reg_357_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_reg_114[2]),
        .Q(zext_ln16_1_reg_357_reg[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1
   (D,
    Q,
    ap_clk,
    a_q0,
    b_q0,
    c_d0,
    ap_start,
    p_reg_reg);
  output [15:0]D;
  input [1:0]Q;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input [15:0]c_d0;
  input ap_start;
  input p_reg_reg;

  wire [15:0]D;
  wire [1:0]Q;
  wire [15:0]a_q0;
  wire ap_clk;
  wire ap_start;
  wire [15:0]b_q0;
  wire [15:0]c_d0;
  wire p_reg_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U
       (.D(D),
        .Q(Q),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .b_q0(b_q0),
        .c_d0(c_d0),
        .p_reg_reg_0(p_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
   (D,
    Q,
    ap_clk,
    a_q0,
    b_q0,
    c_d0,
    ap_start,
    p_reg_reg_0);
  output [15:0]D;
  input [1:0]Q;
  input ap_clk;
  input [15:0]a_q0;
  input [15:0]b_q0;
  input [15:0]c_d0;
  input ap_start;
  input p_reg_reg_0;

  wire [15:0]D;
  wire [1:0]Q;
  wire [15:0]a_q0;
  wire ap_NS_fsm14_out;
  wire ap_clk;
  wire ap_start;
  wire [15:0]b_q0;
  wire [15:0]c_d0;
  wire p_reg_reg_0;
  wire p_reg_reg_i_2_n_0;
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
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,c_d0}),
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
        .OPMODE({1'b0,p_reg_reg_i_2_n_0,p_reg_reg_i_2_n_0,1'b0,1'b1,1'b0,1'b1}),
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
        .RSTC(ap_NS_fsm14_out),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .O(ap_NS_fsm14_out));
  LUT1 #(
    .INIT(2'h1)) 
    p_reg_reg_i_2
       (.I0(p_reg_reg_0),
        .O(p_reg_reg_i_2_n_0));
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
