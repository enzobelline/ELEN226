-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 24 12:48:07 2023
-- Host        : winvdi1009 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe is
  port (
    i_fu_52 : out STD_LOGIC;
    icmp_ln10_fu_102_p2 : out STD_LOGIC;
    ap_start_0 : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    b_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_condition_114 : out STD_LOGIC;
    add_ln10_fu_108_p2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    \i_fu_52_reg[0]\ : in STD_LOGIC;
    \i_fu_52_reg[0]_0\ : in STD_LOGIC;
    \i_fu_52_reg[0]_1\ : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \i_fu_52_reg[0]_2\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe is
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^icmp_ln10_fu_102_p2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc_V_fu_48[15]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b_address0[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b_address0[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b_address0[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_52[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_52[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_52[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_fu_52[3]_i_2\ : label is "soft_lutpair0";
begin
  icmp_ln10_fu_102_p2 <= \^icmp_ln10_fu_102_p2\;
\acc_V_fu_48[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init,
      I1 => ap_start,
      O => ap_condition_114
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ap_start,
      I1 => \^icmp_ln10_fu_102_p2\,
      I2 => ap_rst,
      O => ap_start_0
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => ap_loop_init,
      I1 => ap_start,
      I2 => \^icmp_ln10_fu_102_p2\,
      I3 => ap_rst,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \i_fu_52_reg[0]_2\,
      I1 => ap_loop_init,
      I2 => ap_start,
      I3 => \i_fu_52_reg[0]_1\,
      I4 => \i_fu_52_reg[0]_0\,
      I5 => \i_fu_52_reg[0]\,
      O => ap_ready
    );
\b_address0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_52_reg[0]_2\,
      I1 => ap_start,
      I2 => ap_loop_init,
      O => b_address0(0)
    );
\b_address0[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_52_reg[0]_0\,
      I1 => ap_start,
      I2 => ap_loop_init,
      O => b_address0(1)
    );
\b_address0[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_52_reg[0]\,
      I1 => ap_start,
      I2 => ap_loop_init,
      O => b_address0(2)
    );
\i_fu_52[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \i_fu_52_reg[0]_2\,
      O => add_ln10_fu_108_p2(0)
    );
\i_fu_52[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_52_reg[0]_2\,
      I1 => ap_loop_init,
      I2 => \i_fu_52_reg[0]_0\,
      O => add_ln10_fu_108_p2(1)
    );
\i_fu_52[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_52_reg[0]_2\,
      I1 => \i_fu_52_reg[0]_0\,
      I2 => ap_loop_init,
      I3 => \i_fu_52_reg[0]\,
      O => add_ln10_fu_108_p2(2)
    );
\i_fu_52[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00EF00"
    )
        port map (
      I0 => \i_fu_52_reg[0]\,
      I1 => \i_fu_52_reg[0]_0\,
      I2 => \i_fu_52_reg[0]_1\,
      I3 => ap_start,
      I4 => ap_loop_init,
      I5 => \i_fu_52_reg[0]_2\,
      O => i_fu_52
    );
\i_fu_52[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_52_reg[0]_0\,
      I1 => \i_fu_52_reg[0]_2\,
      I2 => \i_fu_52_reg[0]\,
      I3 => ap_loop_init,
      I4 => \i_fu_52_reg[0]_1\,
      O => add_ln10_fu_108_p2(3)
    );
\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000101010"
    )
        port map (
      I0 => \i_fu_52_reg[0]\,
      I1 => \i_fu_52_reg[0]_0\,
      I2 => \i_fu_52_reg[0]_1\,
      I3 => ap_start,
      I4 => ap_loop_init,
      I5 => \i_fu_52_reg[0]_2\,
      O => \^icmp_ln10_fu_102_p2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    acc_V_fu_48 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter4 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  signal \^p\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s\ : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  P(15 downto 0) <= \^p\(15 downto 0);
  s(15 downto 0) <= \^s\(15 downto 0);
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
      CREG => 0,
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
      C(15 downto 0) => \^s\(15 downto 0),
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
      CEC => '0',
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
      P(15 downto 0) => \^p\(15 downto 0),
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
\s[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(0),
      I1 => acc_V_fu_48(0),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(0)
    );
\s[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(10),
      I1 => acc_V_fu_48(10),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(10)
    );
\s[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(11),
      I1 => acc_V_fu_48(11),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(11)
    );
\s[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(12),
      I1 => acc_V_fu_48(12),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(12)
    );
\s[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(13),
      I1 => acc_V_fu_48(13),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(13)
    );
\s[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(14),
      I1 => acc_V_fu_48(14),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(14)
    );
\s[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(15),
      I1 => acc_V_fu_48(15),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(15)
    );
\s[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(1),
      I1 => acc_V_fu_48(1),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(1)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(2),
      I1 => acc_V_fu_48(2),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(2)
    );
\s[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(3),
      I1 => acc_V_fu_48(3),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(3)
    );
\s[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(4),
      I1 => acc_V_fu_48(4),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(4)
    );
\s[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(5),
      I1 => acc_V_fu_48(5),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(5)
    );
\s[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(6),
      I1 => acc_V_fu_48(6),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(6)
    );
\s[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(7),
      I1 => acc_V_fu_48(7),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(7)
    );
\s[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(8),
      I1 => acc_V_fu_48(8),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(8)
    );
\s[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^p\(9),
      I1 => acc_V_fu_48(9),
      I2 => ap_enable_reg_pp0_iter4,
      O => \^s\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    acc_V_fu_48 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter4 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
begin
inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
     port map (
      P(15 downto 0) => P(15 downto 0),
      a_q0(15 downto 0) => a_q0(15 downto 0),
      acc_V_fu_48(15 downto 0) => acc_V_fu_48(15 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      s(15 downto 0) => s(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product is
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
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product is
  signal acc_V_fu_48 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal add_ln10_fu_108_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_condition_114 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal \^b_address0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal flow_control_loop_pipe_U_n_2 : STD_LOGIC;
  signal i_fu_52 : STD_LOGIC;
  signal \i_fu_52_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_52_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_52_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_52_reg_n_0_[3]\ : STD_LOGIC;
  signal icmp_ln10_fu_102_p2 : STD_LOGIC;
  signal \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter3_i_1 : label is "soft_lutpair5";
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 : label is "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\icmp_ln10_reg_160_pp0_iter1_reg_reg ";
  attribute srl_name of \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2 ";
begin
  \^ap_start\ <= ap_start;
  a_address0(2 downto 0) <= \^b_address0\(2 downto 0);
  a_ce0 <= \^ap_start\;
  ap_ready <= \^ap_ready\;
  b_address0(2 downto 0) <= \^b_address0\(2 downto 0);
  b_ce0 <= \^ap_start\;
\acc_V_fu_48_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,
      Q => acc_V_fu_48(0),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,
      Q => acc_V_fu_48(10),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,
      Q => acc_V_fu_48(11),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,
      Q => acc_V_fu_48(12),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,
      Q => acc_V_fu_48(13),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,
      Q => acc_V_fu_48(14),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,
      Q => acc_V_fu_48(15),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,
      Q => acc_V_fu_48(1),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,
      Q => acc_V_fu_48(2),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,
      Q => acc_V_fu_48(3),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,
      Q => acc_V_fu_48(4),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,
      Q => acc_V_fu_48(5),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,
      Q => acc_V_fu_48(6),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,
      Q => acc_V_fu_48(7),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,
      Q => acc_V_fu_48(8),
      R => ap_condition_114
    );
\acc_V_fu_48_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter4,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,
      Q => acc_V_fu_48(9),
      R => ap_condition_114
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_2,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => '0'
    );
ap_enable_reg_pp0_iter3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter3_i_1_n_0
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3_i_1_n_0,
      Q => ap_enable_reg_pp0_iter3,
      R => '0'
    );
ap_enable_reg_pp0_iter4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter4_i_1_n_0
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter4_i_1_n_0,
      Q => ap_enable_reg_pp0_iter4,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter4,
      I1 => \^ap_start\,
      I2 => ap_enable_reg_pp0_iter3,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_enable_reg_pp0_iter2,
      O => ap_idle
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^ap_ready\,
      Q => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0,
      Q => ap_done,
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_flow_control_loop_pipe
     port map (
      add_ln10_fu_108_p2(3 downto 0) => add_ln10_fu_108_p2(3 downto 0),
      ap_clk => ap_clk,
      ap_condition_114 => ap_condition_114,
      ap_ready => \^ap_ready\,
      ap_rst => ap_rst,
      ap_start => \^ap_start\,
      ap_start_0 => flow_control_loop_pipe_U_n_2,
      b_address0(2 downto 0) => \^b_address0\(2 downto 0),
      i_fu_52 => i_fu_52,
      \i_fu_52_reg[0]\ => \i_fu_52_reg_n_0_[2]\,
      \i_fu_52_reg[0]_0\ => \i_fu_52_reg_n_0_[1]\,
      \i_fu_52_reg[0]_1\ => \i_fu_52_reg_n_0_[3]\,
      \i_fu_52_reg[0]_2\ => \i_fu_52_reg_n_0_[0]\,
      icmp_ln10_fu_102_p2 => icmp_ln10_fu_102_p2
    );
\i_fu_52_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_52,
      D => add_ln10_fu_108_p2(0),
      Q => \i_fu_52_reg_n_0_[0]\,
      R => '0'
    );
\i_fu_52_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_52,
      D => add_ln10_fu_108_p2(1),
      Q => \i_fu_52_reg_n_0_[1]\,
      R => '0'
    );
\i_fu_52_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_52,
      D => add_ln10_fu_108_p2(2),
      Q => \i_fu_52_reg_n_0_[2]\,
      R => '0'
    );
\i_fu_52_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_52,
      D => add_ln10_fu_108_p2(3),
      Q => \i_fu_52_reg_n_0_[3]\,
      R => '0'
    );
\icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => icmp_ln10_fu_102_p2,
      Q => \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0\
    );
\icmp_ln10_reg_160_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln10_reg_160_pp0_iter1_reg_reg[0]_srl2_n_0\,
      Q => s_ap_vld,
      R => '0'
    );
mac_muladd_16s_16s_16ns_16_4_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product_mac_muladd_16s_16s_16ns_16_4_1
     port map (
      P(15) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,
      P(14) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,
      P(13) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,
      P(12) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,
      P(11) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,
      P(10) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,
      P(9) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,
      P(8) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,
      P(7) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,
      P(6) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,
      P(5) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,
      P(4) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,
      P(3) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,
      P(2) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,
      P(1) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,
      P(0) => mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,
      a_q0(15 downto 0) => a_q0(15 downto 0),
      acc_V_fu_48(15 downto 0) => acc_V_fu_48(15 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      s(15 downto 0) => s(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,inner_product,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "inner_product,Vivado 2022.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_inner_product
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
