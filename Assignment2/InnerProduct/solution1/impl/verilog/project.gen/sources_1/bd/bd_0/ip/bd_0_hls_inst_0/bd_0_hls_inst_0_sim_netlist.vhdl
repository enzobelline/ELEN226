-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 24 12:39:26 2023
-- Host        : winvdi1009 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               z:/ECC/Desktop/Winter2023/ELEN226/Assignment2/InnerProduct/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 : entity is "inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0";
end bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  SR(0) <= \^sr\(0);
\i_fu_50[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      O => \^sr\(0)
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => b_q0(15),
      A(28) => b_q0(15),
      A(27) => b_q0(15),
      A(26) => b_q0(15),
      A(25) => b_q0(15),
      A(24) => b_q0(15),
      A(23) => b_q0(15),
      A(22) => b_q0(15),
      A(21) => b_q0(15),
      A(20) => b_q0(15),
      A(19) => b_q0(15),
      A(18) => b_q0(15),
      A(17) => b_q0(15),
      A(16) => b_q0(15),
      A(15 downto 0) => b_q0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a_q0(15),
      B(16) => a_q0(15),
      B(15 downto 0) => a_q0(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => \^d\(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => Q(1),
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \^d\(15 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => \^sr\(0),
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 : entity is "inner_product_mac_muladd_16s_16s_16ns_16_4_1";
end bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
begin
inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_start => ap_start,
      b_q0(15 downto 0) => b_q0(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a_ce0 : out STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_ce0 : out STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product : entity is "inner_product";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of bd_0_hls_inst_0_inner_product : entity is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of bd_0_hls_inst_0_inner_product : entity is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of bd_0_hls_inst_0_inner_product : entity is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of bd_0_hls_inst_0_inner_product : entity is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of bd_0_hls_inst_0_inner_product : entity is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of bd_0_hls_inst_0_inner_product : entity is "6'b100000";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_inner_product : entity is "yes";
end bd_0_hls_inst_0_inner_product;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product is
  signal \^a_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^a_ce0\ : STD_LOGIC;
  signal add_ln10_fu_116_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ap_CS_fsm[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[3]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[4]\ : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^b_address0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_fu_500 : STD_LOGIC;
  signal i_fu_50_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U1_n_9 : STD_LOGIC;
  signal \^s_ap_vld\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_50[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_50[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_50[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_ap_vld_INST_0 : label is "soft_lutpair0";
begin
  a_address0(2) <= \^b_address0\(2);
  a_address0(1) <= \^a_address0\(1);
  a_address0(0) <= \^b_address0\(0);
  a_ce0 <= \^a_ce0\;
  ap_done <= \^s_ap_vld\;
  ap_ready <= \^s_ap_vld\;
  b_address0(2) <= \^b_address0\(2);
  b_address0(1) <= \^a_address0\(1);
  b_address0(0) <= \^b_address0\(0);
  b_ce0 <= \^a_ce0\;
  s_ap_vld <= \^s_ap_vld\;
\acc_V_fu_46_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,
      Q => s(0),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,
      Q => s(10),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,
      Q => s(11),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,
      Q => s(12),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,
      Q => s(13),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,
      Q => s(14),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,
      Q => s(15),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,
      Q => s(1),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,
      Q => s(2),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,
      Q => s(3),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,
      Q => s(4),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,
      Q => s(5),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,
      Q => s(6),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,
      Q => s(7),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,
      Q => s(8),
      R => ap_NS_fsm1
    );
\acc_V_fu_46_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,
      Q => s(9),
      R => ap_NS_fsm1
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444744"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state6,
      I3 => \ap_CS_fsm[0]_i_2_n_0\,
      I4 => \ap_CS_fsm_reg_n_0_[3]\,
      I5 => \ap_CS_fsm_reg_n_0_[4]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \^a_ce0\,
      I1 => \^b_address0\(2),
      I2 => \^a_address0\(1),
      I3 => \^b_address0\(0),
      I4 => i_fu_50_reg(3),
      I5 => \ap_CS_fsm_reg_n_0_[2]\,
      O => \ap_CS_fsm[0]_i_2_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state6,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^a_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => i_fu_500,
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[2]\,
      Q => \ap_CS_fsm_reg_n_0_[3]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[3]\,
      Q => \ap_CS_fsm_reg_n_0_[4]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[4]\,
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
\i_fu_50[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^b_address0\(0),
      O => add_ln10_fu_116_p2(0)
    );
\i_fu_50[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_address0\(0),
      I1 => \^a_address0\(1),
      O => add_ln10_fu_116_p2(1)
    );
\i_fu_50[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => i_fu_50_reg(3),
      I1 => \^a_address0\(1),
      I2 => \^b_address0\(0),
      I3 => \^b_address0\(2),
      I4 => \^a_ce0\,
      O => i_fu_500
    );
\i_fu_50[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^b_address0\(2),
      I1 => \^b_address0\(0),
      I2 => \^a_address0\(1),
      O => add_ln10_fu_116_p2(2)
    );
\i_fu_50[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_fu_50_reg(3),
      I1 => \^b_address0\(0),
      I2 => \^a_address0\(1),
      I3 => \^b_address0\(2),
      O => add_ln10_fu_116_p2(3)
    );
\i_fu_50_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln10_fu_116_p2(0),
      Q => \^b_address0\(0),
      R => ap_NS_fsm1
    );
\i_fu_50_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln10_fu_116_p2(1),
      Q => \^a_address0\(1),
      R => ap_NS_fsm1
    );
\i_fu_50_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln10_fu_116_p2(2),
      Q => \^b_address0\(2),
      R => ap_NS_fsm1
    );
\i_fu_50_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln10_fu_116_p2(3),
      Q => i_fu_50_reg(3),
      R => ap_NS_fsm1
    );
mac_muladd_16s_16s_16ns_16_4_1_U1: entity work.bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1
     port map (
      D(15) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,
      D(14) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,
      D(13) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,
      D(12) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,
      D(11) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,
      D(10) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,
      D(9) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,
      D(8) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,
      D(7) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,
      D(6) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,
      D(5) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,
      D(4) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,
      D(3) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,
      D(2) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,
      D(1) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,
      D(0) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => ap_NS_fsm1,
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_start => ap_start,
      b_q0(15 downto 0) => b_q0(15 downto 0)
    );
s_ap_vld_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => i_fu_50_reg(3),
      I1 => \^b_address0\(0),
      I2 => \^a_address0\(1),
      I3 => \^b_address0\(2),
      I4 => \^a_ce0\,
      O => \^s_ap_vld\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    a_ce0 : out STD_LOGIC;
    b_ce0 : out STD_LOGIC;
    s_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,inner_product,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "inner_product,Vivado 2022.1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "6'b100000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a_address0 : signal is "xilinx.com:signal:data:1.0 a_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_address0 : signal is "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_q0 : signal is "xilinx.com:signal:data:1.0 a_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_q0 : signal is "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_address0 : signal is "xilinx.com:signal:data:1.0 b_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_address0 : signal is "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_q0 : signal is "xilinx.com:signal:data:1.0 b_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_q0 : signal is "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s : signal is "xilinx.com:signal:data:1.0 s DATA";
  attribute X_INTERFACE_PARAMETER of s : signal is "XIL_INTERFACENAME s, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_inner_product
     port map (
      a_address0(2 downto 0) => a_address0(2 downto 0),
      a_ce0 => a_ce0,
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address0(2 downto 0) => b_address0(2 downto 0),
      b_ce0 => b_ce0,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      s(15 downto 0) => s(15 downto 0),
      s_ap_vld => s_ap_vld
    );
end STRUCTURE;
