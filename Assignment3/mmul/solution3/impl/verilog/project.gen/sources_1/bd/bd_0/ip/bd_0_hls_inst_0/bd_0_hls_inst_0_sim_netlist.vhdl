-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 17 16:49:53 2023
-- Host        : winvdi1008 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution3/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_flow_control_loop_pipe is
  port (
    \k_fu_94_reg[2]\ : out STD_LOGIC;
    \k_fu_94_reg[1]\ : out STD_LOGIC;
    \k_fu_94_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in : out STD_LOGIC;
    select_ln10_2_fu_280_p3 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    indvar_flatten36_fu_110 : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    \indvar_flatten36_fu_110_reg[3]\ : out STD_LOGIC;
    \indvar_flatten36_fu_110_reg[3]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    k_fu_94 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \k_fu_94_reg[2]_0\ : in STD_LOGIC;
    add_ln12_reg_581 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \indvar_flatten_fu_102_reg[3]\ : in STD_LOGIC;
    \indvar_flatten_fu_102_reg[3]_0\ : in STD_LOGIC;
    \indvar_flatten_fu_102_reg[3]_1\ : in STD_LOGIC;
    \indvar_flatten_fu_102_reg[3]_2\ : in STD_LOGIC;
    \indvar_flatten_fu_102_reg[5]\ : in STD_LOGIC;
    \indvar_flatten_fu_102_reg[5]_0\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    icmp_ln10_reg_545 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_flow_control_loop_pipe : entity is "mmul_flow_control_loop_pipe";
end bd_0_hls_inst_0_mmul_flow_control_loop_pipe;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_flow_control_loop_pipe is
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal ap_ready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \indvar_flatten36_fu_110[5]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110[6]_i_3_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_102[4]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_102[4]_i_3_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_102[5]_i_2_n_0\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \indvar_flatten36_fu_110[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_102[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_102[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_102[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_102[4]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_102[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j_fu_98[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \k_fu_94[2]_i_1\ : label is "soft_lutpair2";
begin
  p_1_in <= \^p_1_in\;
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F070"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => ap_start,
      I3 => ap_loop_init,
      I4 => ap_rst,
      O => \indvar_flatten36_fu_110_reg[3]\
    );
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0F80"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => ap_start,
      I3 => ap_loop_init,
      I4 => ap_rst,
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
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => ap_start,
      I3 => ap_loop_init,
      O => ap_ready
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(6),
      O => ap_ready_INST_0_i_1_n_0
    );
\icmp_ln10_reg_545[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08880000FFFFF777"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => ap_start,
      I3 => ap_loop_init,
      I4 => icmp_ln10_reg_545,
      I5 => \indvar_flatten_fu_102[4]_i_2_n_0\,
      O => \indvar_flatten36_fu_110_reg[3]_0\
    );
\indvar_flatten36_fu_110[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      O => D(0)
    );
\indvar_flatten36_fu_110[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => ap_loop_init,
      O => D(1)
    );
\indvar_flatten36_fu_110[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => ap_loop_init,
      I3 => Q(0),
      O => D(2)
    );
\indvar_flatten36_fu_110[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0800"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^p_1_in\,
      I3 => Q(0),
      I4 => Q(3),
      O => D(3)
    );
\indvar_flatten36_fu_110[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1222222222222222"
    )
        port map (
      I0 => Q(4),
      I1 => \^p_1_in\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => D(4)
    );
\indvar_flatten36_fu_110[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => Q(4),
      I1 => \indvar_flatten36_fu_110[5]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(5),
      I4 => ap_loop_init,
      O => D(5)
    );
\indvar_flatten36_fu_110[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => ap_loop_init,
      I3 => ap_start,
      I4 => Q(0),
      O => \indvar_flatten36_fu_110[5]_i_2_n_0\
    );
\indvar_flatten36_fu_110[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F070"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => ap_start,
      I3 => ap_loop_init,
      O => indvar_flatten36_fu_110
    );
\indvar_flatten36_fu_110[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B04"
    )
        port map (
      I0 => \indvar_flatten36_fu_110[6]_i_3_n_0\,
      I1 => Q(5),
      I2 => ap_loop_init,
      I3 => Q(6),
      O => D(6)
    );
\indvar_flatten36_fu_110[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(4),
      O => \indvar_flatten36_fu_110[6]_i_3_n_0\
    );
\indvar_flatten_fu_102[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \indvar_flatten_fu_102_reg[3]_1\,
      O => select_ln10_2_fu_280_p3(0)
    );
\indvar_flatten_fu_102[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \indvar_flatten_fu_102_reg[3]_2\,
      I2 => \indvar_flatten_fu_102_reg[3]_1\,
      O => select_ln10_2_fu_280_p3(1)
    );
\indvar_flatten_fu_102[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => \indvar_flatten_fu_102_reg[3]_0\,
      I1 => \indvar_flatten_fu_102_reg[3]_2\,
      I2 => ap_loop_init,
      I3 => \indvar_flatten_fu_102_reg[3]_1\,
      O => select_ln10_2_fu_280_p3(2)
    );
\indvar_flatten_fu_102[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000288800008888"
    )
        port map (
      I0 => \indvar_flatten_fu_102[4]_i_2_n_0\,
      I1 => \indvar_flatten_fu_102_reg[3]\,
      I2 => \indvar_flatten_fu_102_reg[3]_0\,
      I3 => \indvar_flatten_fu_102_reg[3]_1\,
      I4 => \^p_1_in\,
      I5 => \indvar_flatten_fu_102_reg[3]_2\,
      O => select_ln10_2_fu_280_p3(3)
    );
\indvar_flatten_fu_102[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4484"
    )
        port map (
      I0 => \indvar_flatten_fu_102[5]_i_2_n_0\,
      I1 => \indvar_flatten_fu_102[4]_i_2_n_0\,
      I2 => \indvar_flatten_fu_102_reg[5]\,
      I3 => ap_loop_init,
      O => select_ln10_2_fu_280_p3(4)
    );
\indvar_flatten_fu_102[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \indvar_flatten_fu_102_reg[3]_0\,
      I1 => \indvar_flatten_fu_102_reg[5]\,
      I2 => \indvar_flatten_fu_102_reg[3]_1\,
      I3 => \indvar_flatten_fu_102_reg[5]_0\,
      I4 => \indvar_flatten_fu_102[4]_i_3_n_0\,
      I5 => \indvar_flatten_fu_102_reg[3]_2\,
      O => \indvar_flatten_fu_102[4]_i_2_n_0\
    );
\indvar_flatten_fu_102[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => ap_loop_init,
      I1 => ap_start,
      I2 => \indvar_flatten_fu_102_reg[3]\,
      O => \indvar_flatten_fu_102[4]_i_3_n_0\
    );
\indvar_flatten_fu_102[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22D2"
    )
        port map (
      I0 => \indvar_flatten_fu_102_reg[5]\,
      I1 => \indvar_flatten_fu_102[5]_i_2_n_0\,
      I2 => \indvar_flatten_fu_102_reg[5]_0\,
      I3 => ap_loop_init,
      O => select_ln10_2_fu_280_p3(5)
    );
\indvar_flatten_fu_102[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF7FFF7FFF"
    )
        port map (
      I0 => \indvar_flatten_fu_102_reg[3]_0\,
      I1 => \indvar_flatten_fu_102_reg[3]_1\,
      I2 => \indvar_flatten_fu_102_reg[3]_2\,
      I3 => \indvar_flatten_fu_102_reg[3]\,
      I4 => ap_start,
      I5 => ap_loop_init,
      O => \indvar_flatten_fu_102[5]_i_2_n_0\
    );
\j_fu_98[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => ap_loop_init,
      O => \^p_1_in\
    );
\k_fu_94[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E2E2E2"
    )
        port map (
      I0 => k_fu_94(0),
      I1 => \k_fu_94_reg[2]_0\,
      I2 => add_ln12_reg_581(0),
      I3 => ap_loop_init,
      I4 => ap_start,
      O => \k_fu_94_reg[0]\
    );
\k_fu_94[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E2E2E2"
    )
        port map (
      I0 => k_fu_94(1),
      I1 => \k_fu_94_reg[2]_0\,
      I2 => add_ln12_reg_581(1),
      I3 => ap_loop_init,
      I4 => ap_start,
      O => \k_fu_94_reg[1]\
    );
\k_fu_94[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E2E2E2"
    )
        port map (
      I0 => k_fu_94(2),
      I1 => \k_fu_94_reg[2]_0\,
      I2 => add_ln12_reg_581(2),
      I3 => ap_loop_init,
      I4 => ap_start,
      O => \k_fu_94_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    acc_V_1_fu_90 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln14_reg_572_pp0_iter5_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 : entity is "mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0";
end bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_fu_491_p2 : STD_LOGIC_VECTOR ( 15 downto 0 );
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
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
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
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => grp_fu_491_p2(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
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
      P(15 downto 0) => \^d\(15 downto 0),
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
p_reg_reg_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(15),
      I1 => acc_V_1_fu_90(15),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(15)
    );
p_reg_reg_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(14),
      I1 => acc_V_1_fu_90(14),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(14)
    );
p_reg_reg_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(13),
      I1 => acc_V_1_fu_90(13),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(13)
    );
p_reg_reg_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(12),
      I1 => acc_V_1_fu_90(12),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(12)
    );
p_reg_reg_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(11),
      I1 => acc_V_1_fu_90(11),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(11)
    );
p_reg_reg_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(10),
      I1 => acc_V_1_fu_90(10),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(10)
    );
p_reg_reg_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(9),
      I1 => acc_V_1_fu_90(9),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(9)
    );
p_reg_reg_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(8),
      I1 => acc_V_1_fu_90(8),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(8)
    );
p_reg_reg_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(7),
      I1 => acc_V_1_fu_90(7),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(7)
    );
p_reg_reg_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(6),
      I1 => acc_V_1_fu_90(6),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(6)
    );
p_reg_reg_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(5),
      I1 => acc_V_1_fu_90(5),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(5)
    );
p_reg_reg_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(4),
      I1 => acc_V_1_fu_90(4),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(4)
    );
p_reg_reg_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(3),
      I1 => acc_V_1_fu_90(3),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(3)
    );
p_reg_reg_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(2),
      I1 => acc_V_1_fu_90(2),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(2)
    );
p_reg_reg_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(1),
      I1 => acc_V_1_fu_90(1),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(1)
    );
p_reg_reg_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \^d\(0),
      I1 => acc_V_1_fu_90(0),
      I2 => icmp_ln14_reg_572_pp0_iter5_reg,
      I3 => ap_enable_reg_pp0_iter7,
      O => grp_fu_491_p2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mux_32_16_1_1 is
  port (
    B : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mux_32_16_1_1 : entity is "mmul_mux_32_16_1_1";
end bd_0_hls_inst_0_mmul_mux_32_16_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mux_32_16_1_1 is
begin
p_reg_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(15),
      I1 => Q(1),
      I2 => a_1_q0(15),
      I3 => Q(0),
      I4 => a_0_q0(15),
      O => B(15)
    );
p_reg_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(6),
      I1 => Q(1),
      I2 => a_1_q0(6),
      I3 => Q(0),
      I4 => a_0_q0(6),
      O => B(6)
    );
p_reg_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(5),
      I1 => Q(1),
      I2 => a_1_q0(5),
      I3 => Q(0),
      I4 => a_0_q0(5),
      O => B(5)
    );
p_reg_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(4),
      I1 => Q(1),
      I2 => a_1_q0(4),
      I3 => Q(0),
      I4 => a_0_q0(4),
      O => B(4)
    );
p_reg_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(3),
      I1 => Q(1),
      I2 => a_1_q0(3),
      I3 => Q(0),
      I4 => a_0_q0(3),
      O => B(3)
    );
p_reg_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(2),
      I1 => Q(1),
      I2 => a_1_q0(2),
      I3 => Q(0),
      I4 => a_0_q0(2),
      O => B(2)
    );
p_reg_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(1),
      I1 => Q(1),
      I2 => a_1_q0(1),
      I3 => Q(0),
      I4 => a_0_q0(1),
      O => B(1)
    );
p_reg_reg_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(0),
      I1 => Q(1),
      I2 => a_1_q0(0),
      I3 => Q(0),
      I4 => a_0_q0(0),
      O => B(0)
    );
p_reg_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(14),
      I1 => Q(1),
      I2 => a_1_q0(14),
      I3 => Q(0),
      I4 => a_0_q0(14),
      O => B(14)
    );
p_reg_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(13),
      I1 => Q(1),
      I2 => a_1_q0(13),
      I3 => Q(0),
      I4 => a_0_q0(13),
      O => B(13)
    );
p_reg_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(12),
      I1 => Q(1),
      I2 => a_1_q0(12),
      I3 => Q(0),
      I4 => a_0_q0(12),
      O => B(12)
    );
p_reg_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(11),
      I1 => Q(1),
      I2 => a_1_q0(11),
      I3 => Q(0),
      I4 => a_0_q0(11),
      O => B(11)
    );
p_reg_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(10),
      I1 => Q(1),
      I2 => a_1_q0(10),
      I3 => Q(0),
      I4 => a_0_q0(10),
      O => B(10)
    );
p_reg_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(9),
      I1 => Q(1),
      I2 => a_1_q0(9),
      I3 => Q(0),
      I4 => a_0_q0(9),
      O => B(9)
    );
p_reg_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(8),
      I1 => Q(1),
      I2 => a_1_q0(8),
      I3 => Q(0),
      I4 => a_0_q0(8),
      O => B(8)
    );
p_reg_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_2_q0(7),
      I1 => Q(1),
      I2 => a_1_q0(7),
      I3 => Q(0),
      I4 => a_0_q0(7),
      O => B(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mux_43_16_1_1 is
  port (
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mux_43_16_1_1 : entity is "mmul_mux_43_16_1_1";
end bd_0_hls_inst_0_mmul_mux_43_16_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mux_43_16_1_1 is
begin
p_reg_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(15),
      I1 => b_2_q0(15),
      I2 => Q(1),
      I3 => b_1_q0(15),
      I4 => Q(0),
      I5 => b_0_q0(15),
      O => A(15)
    );
p_reg_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(14),
      I1 => b_2_q0(14),
      I2 => Q(1),
      I3 => b_1_q0(14),
      I4 => Q(0),
      I5 => b_0_q0(14),
      O => A(14)
    );
p_reg_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(13),
      I1 => b_2_q0(13),
      I2 => Q(1),
      I3 => b_1_q0(13),
      I4 => Q(0),
      I5 => b_0_q0(13),
      O => A(13)
    );
p_reg_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(12),
      I1 => b_2_q0(12),
      I2 => Q(1),
      I3 => b_1_q0(12),
      I4 => Q(0),
      I5 => b_0_q0(12),
      O => A(12)
    );
p_reg_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(11),
      I1 => b_2_q0(11),
      I2 => Q(1),
      I3 => b_1_q0(11),
      I4 => Q(0),
      I5 => b_0_q0(11),
      O => A(11)
    );
p_reg_reg_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(10),
      I1 => b_2_q0(10),
      I2 => Q(1),
      I3 => b_1_q0(10),
      I4 => Q(0),
      I5 => b_0_q0(10),
      O => A(10)
    );
p_reg_reg_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(9),
      I1 => b_2_q0(9),
      I2 => Q(1),
      I3 => b_1_q0(9),
      I4 => Q(0),
      I5 => b_0_q0(9),
      O => A(9)
    );
p_reg_reg_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(8),
      I1 => b_2_q0(8),
      I2 => Q(1),
      I3 => b_1_q0(8),
      I4 => Q(0),
      I5 => b_0_q0(8),
      O => A(8)
    );
p_reg_reg_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(7),
      I1 => b_2_q0(7),
      I2 => Q(1),
      I3 => b_1_q0(7),
      I4 => Q(0),
      I5 => b_0_q0(7),
      O => A(7)
    );
p_reg_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(6),
      I1 => b_2_q0(6),
      I2 => Q(1),
      I3 => b_1_q0(6),
      I4 => Q(0),
      I5 => b_0_q0(6),
      O => A(6)
    );
p_reg_reg_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(5),
      I1 => b_2_q0(5),
      I2 => Q(1),
      I3 => b_1_q0(5),
      I4 => Q(0),
      I5 => b_0_q0(5),
      O => A(5)
    );
p_reg_reg_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(4),
      I1 => b_2_q0(4),
      I2 => Q(1),
      I3 => b_1_q0(4),
      I4 => Q(0),
      I5 => b_0_q0(4),
      O => A(4)
    );
p_reg_reg_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(3),
      I1 => b_2_q0(3),
      I2 => Q(1),
      I3 => b_1_q0(3),
      I4 => Q(0),
      I5 => b_0_q0(3),
      O => A(3)
    );
p_reg_reg_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(2),
      I1 => b_2_q0(2),
      I2 => Q(1),
      I3 => b_1_q0(2),
      I4 => Q(0),
      I5 => b_0_q0(2),
      O => A(2)
    );
p_reg_reg_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(1),
      I1 => b_2_q0(1),
      I2 => Q(1),
      I3 => b_1_q0(1),
      I4 => Q(0),
      I5 => b_0_q0(1),
      O => A(1)
    );
p_reg_reg_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => b_3_q0(0),
      I1 => b_2_q0(0),
      I2 => Q(1),
      I3 => b_1_q0(0),
      I4 => Q(0),
      I5 => b_0_q0(0),
      O => A(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    acc_V_1_fu_90 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln14_reg_572_pp0_iter5_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 : entity is "mmul_mac_muladd_16s_16s_16ns_16_4_1";
end bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 is
begin
mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      D(15 downto 0) => D(15 downto 0),
      acc_V_1_fu_90(15 downto 0) => acc_V_1_fu_90(15 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter7 => ap_enable_reg_pp0_iter7,
      icmp_ln14_reg_572_pp0_iter5_reg => icmp_ln14_reg_572_pp0_iter5_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_ce0 : out STD_LOGIC;
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_ce0 : out STD_LOGIC;
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_2_ce0 : out STD_LOGIC;
    a_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_3_ce0 : out STD_LOGIC;
    a_3_we0 : out STD_LOGIC;
    a_3_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_3_ce1 : out STD_LOGIC;
    a_3_we1 : out STD_LOGIC;
    a_3_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_0_ce0 : out STD_LOGIC;
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_1_ce0 : out STD_LOGIC;
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_2_ce0 : out STD_LOGIC;
    b_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_3_ce0 : out STD_LOGIC;
    b_3_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    c_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul : entity is "mmul";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_mmul : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_mmul : entity is "yes";
end bd_0_hls_inst_0_mmul;

architecture STRUCTURE of bd_0_hls_inst_0_mmul is
  signal \<const0>\ : STD_LOGIC;
  signal \^a_0_address0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal acc_V_1_fu_90 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal add_ln12_fu_383_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln12_reg_581 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln12_reg_581[1]_i_2_n_0\ : STD_LOGIC;
  signal add_ln16_fu_433_p2 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0\ : STD_LOGIC;
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0\ : STD_LOGIC;
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0\ : STD_LOGIC;
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0\ : STD_LOGIC;
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0\ : STD_LOGIC;
  signal \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter5 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter6 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter7 : STD_LOGIC;
  signal ap_idle_INST_0_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_sig_allocacmp_k_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^b_0_address0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^b_3_address0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^b_3_ce0\ : STD_LOGIC;
  signal \^c_ce0\ : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_20 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_4 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_7 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal \i_fu_106_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_106_reg_n_0_[1]\ : STD_LOGIC;
  signal icmp_ln10_reg_545 : STD_LOGIC;
  signal \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal icmp_ln14_reg_572_pp0_iter5_reg : STD_LOGIC;
  signal \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0\ : STD_LOGIC;
  signal icmp_ln16_reg_577_pp0_iter7_reg : STD_LOGIC;
  signal indvar_flatten36_fu_110 : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[3]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[4]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[5]\ : STD_LOGIC;
  signal \indvar_flatten36_fu_110_reg_n_0_[6]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[3]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[4]\ : STD_LOGIC;
  signal \indvar_flatten_fu_102_reg_n_0_[5]\ : STD_LOGIC;
  signal j_fu_98 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal k_fu_94 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U3_n_9 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal select_ln10_1_fu_363_p3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \select_ln10_1_reg_566[0]_i_2_n_0\ : STD_LOGIC;
  signal select_ln10_2_fu_280_p3 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal select_ln10_fu_355_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \select_ln10_reg_560[1]_i_2_n_0\ : STD_LOGIC;
  signal select_ln10_reg_560_pp0_iter2_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln8_1_fu_320_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln8_1_reg_553_pp0_iter2_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tmp_1_fu_460_p6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_2_fu_399_p3 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal tmp_fu_449_p5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln12_reg_581[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \add_ln12_reg_581[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \add_ln12_reg_581[2]_i_3\ : label is "soft_lutpair10";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5 ";
  attribute srl_bus_name of \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg ";
  attribute srl_name of \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5 ";
  attribute SOFT_HLUTNM of \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1\ : label is "soft_lutpair13";
  attribute srl_bus_name of \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg ";
  attribute srl_name of \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5 ";
  attribute SOFT_HLUTNM of \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_i_1\ : label is "soft_lutpair12";
  attribute srl_bus_name of \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg ";
  attribute srl_name of \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5 ";
  attribute SOFT_HLUTNM of \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_i_1\ : label is "soft_lutpair12";
  attribute srl_bus_name of \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg ";
  attribute srl_name of \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5\ : label is "inst/\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5 ";
  attribute SOFT_HLUTNM of \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_i_1\ : label is "soft_lutpair13";
  attribute srl_name of ap_loop_exit_ready_pp0_iter6_reg_reg_srl6 : label is "inst/ap_loop_exit_ready_pp0_iter6_reg_reg_srl6";
  attribute SOFT_HLUTNM of \i_fu_106[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_fu_106[1]_i_1\ : label is "soft_lutpair14";
  attribute srl_bus_name of \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4\ : label is "inst/\icmp_ln14_reg_572_pp0_iter4_reg_reg ";
  attribute srl_name of \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4\ : label is "inst/\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4 ";
  attribute srl_bus_name of \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6\ : label is "inst/\icmp_ln16_reg_577_pp0_iter6_reg_reg ";
  attribute srl_name of \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6\ : label is "inst/\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6 ";
  attribute SOFT_HLUTNM of \select_ln10_1_reg_566[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \select_ln10_1_reg_566[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \select_ln10_1_reg_566[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \select_ln10_reg_560[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \select_ln10_reg_560[1]_i_1\ : label is "soft_lutpair10";
begin
  a_0_address0(1 downto 0) <= \^a_0_address0\(1 downto 0);
  a_0_ce0 <= \^b_3_ce0\;
  a_1_address0(1 downto 0) <= \^a_0_address0\(1 downto 0);
  a_1_ce0 <= \^b_3_ce0\;
  a_2_address0(1 downto 0) <= \^a_0_address0\(1 downto 0);
  a_2_ce0 <= \^b_3_ce0\;
  a_3_address0(1) <= \<const0>\;
  a_3_address0(0) <= \<const0>\;
  a_3_address1(1) <= \<const0>\;
  a_3_address1(0) <= \<const0>\;
  a_3_ce0 <= \<const0>\;
  a_3_ce1 <= \<const0>\;
  a_3_d0(15) <= \<const0>\;
  a_3_d0(14) <= \<const0>\;
  a_3_d0(13) <= \<const0>\;
  a_3_d0(12) <= \<const0>\;
  a_3_d0(11) <= \<const0>\;
  a_3_d0(10) <= \<const0>\;
  a_3_d0(9) <= \<const0>\;
  a_3_d0(8) <= \<const0>\;
  a_3_d0(7) <= \<const0>\;
  a_3_d0(6) <= \<const0>\;
  a_3_d0(5) <= \<const0>\;
  a_3_d0(4) <= \<const0>\;
  a_3_d0(3) <= \<const0>\;
  a_3_d0(2) <= \<const0>\;
  a_3_d0(1) <= \<const0>\;
  a_3_d0(0) <= \<const0>\;
  a_3_d1(15) <= \<const0>\;
  a_3_d1(14) <= \<const0>\;
  a_3_d1(13) <= \<const0>\;
  a_3_d1(12) <= \<const0>\;
  a_3_d1(11) <= \<const0>\;
  a_3_d1(10) <= \<const0>\;
  a_3_d1(9) <= \<const0>\;
  a_3_d1(8) <= \<const0>\;
  a_3_d1(7) <= \<const0>\;
  a_3_d1(6) <= \<const0>\;
  a_3_d1(5) <= \<const0>\;
  a_3_d1(4) <= \<const0>\;
  a_3_d1(3) <= \<const0>\;
  a_3_d1(2) <= \<const0>\;
  a_3_d1(1) <= \<const0>\;
  a_3_d1(0) <= \<const0>\;
  a_3_we0 <= \<const0>\;
  a_3_we1 <= \<const0>\;
  ap_ready <= \^ap_ready\;
  b_0_address0(2 downto 1) <= \^b_0_address0\(2 downto 1);
  b_0_address0(0) <= \^b_3_address0\(0);
  b_0_ce0 <= \^b_3_ce0\;
  b_1_address0(2 downto 1) <= \^b_0_address0\(2 downto 1);
  b_1_address0(0) <= \^b_3_address0\(0);
  b_1_ce0 <= \^b_3_ce0\;
  b_2_address0(2 downto 1) <= \^b_0_address0\(2 downto 1);
  b_2_address0(0) <= \^b_3_address0\(0);
  b_2_ce0 <= \^b_3_ce0\;
  b_3_address0(2 downto 1) <= \^b_0_address0\(2 downto 1);
  b_3_address0(0) <= \^b_3_address0\(0);
  b_3_ce0 <= \^b_3_ce0\;
  c_ce0 <= \^c_ce0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\acc_V_1_fu_90_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_15,
      Q => acc_V_1_fu_90(0),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_5,
      Q => acc_V_1_fu_90(10),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_4,
      Q => acc_V_1_fu_90(11),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_3,
      Q => acc_V_1_fu_90(12),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_2,
      Q => acc_V_1_fu_90(13),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_1,
      Q => acc_V_1_fu_90(14),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_0,
      Q => acc_V_1_fu_90(15),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_14,
      Q => acc_V_1_fu_90(1),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_13,
      Q => acc_V_1_fu_90(2),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_12,
      Q => acc_V_1_fu_90(3),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_11,
      Q => acc_V_1_fu_90(4),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_10,
      Q => acc_V_1_fu_90(5),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_9,
      Q => acc_V_1_fu_90(6),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_8,
      Q => acc_V_1_fu_90(7),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_7,
      Q => acc_V_1_fu_90(8),
      R => p_1_in
    );
\acc_V_1_fu_90_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_6,
      Q => acc_V_1_fu_90(9),
      R => p_1_in
    );
\acc_V_reg_646_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_15,
      Q => c_d0(0),
      R => '0'
    );
\acc_V_reg_646_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_5,
      Q => c_d0(10),
      R => '0'
    );
\acc_V_reg_646_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_4,
      Q => c_d0(11),
      R => '0'
    );
\acc_V_reg_646_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_3,
      Q => c_d0(12),
      R => '0'
    );
\acc_V_reg_646_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_2,
      Q => c_d0(13),
      R => '0'
    );
\acc_V_reg_646_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_1,
      Q => c_d0(14),
      R => '0'
    );
\acc_V_reg_646_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_0,
      Q => c_d0(15),
      R => '0'
    );
\acc_V_reg_646_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_14,
      Q => c_d0(1),
      R => '0'
    );
\acc_V_reg_646_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_13,
      Q => c_d0(2),
      R => '0'
    );
\acc_V_reg_646_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_12,
      Q => c_d0(3),
      R => '0'
    );
\acc_V_reg_646_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_11,
      Q => c_d0(4),
      R => '0'
    );
\acc_V_reg_646_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_10,
      Q => c_d0(5),
      R => '0'
    );
\acc_V_reg_646_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_9,
      Q => c_d0(6),
      R => '0'
    );
\acc_V_reg_646_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_8,
      Q => c_d0(7),
      R => '0'
    );
\acc_V_reg_646_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_7,
      Q => c_d0(8),
      R => '0'
    );
\acc_V_reg_646_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U3_n_6,
      Q => c_d0(9),
      R => '0'
    );
\add_ln12_reg_581[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBBFFF"
    )
        port map (
      I0 => icmp_ln10_reg_545,
      I1 => \select_ln10_reg_560[1]_i_2_n_0\,
      I2 => add_ln12_reg_581(0),
      I3 => \^b_3_ce0\,
      I4 => k_fu_94(0),
      O => add_ln12_fu_383_p2(0)
    );
\add_ln12_reg_581[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050A0303050A0C0C"
    )
        port map (
      I0 => add_ln12_reg_581(1),
      I1 => k_fu_94(1),
      I2 => \add_ln12_reg_581[1]_i_2_n_0\,
      I3 => add_ln12_reg_581(0),
      I4 => \^b_3_ce0\,
      I5 => k_fu_94(0),
      O => add_ln12_fu_383_p2(1)
    );
\add_ln12_reg_581[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEFEA"
    )
        port map (
      I0 => icmp_ln10_reg_545,
      I1 => add_ln12_reg_581(2),
      I2 => \^b_3_ce0\,
      I3 => k_fu_94(2),
      I4 => \select_ln10_1_reg_566[0]_i_2_n_0\,
      O => \add_ln12_reg_581[1]_i_2_n_0\
    );
\add_ln12_reg_581[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066688868"
    )
        port map (
      I0 => ap_sig_allocacmp_k_load(0),
      I1 => ap_sig_allocacmp_k_load(1),
      I2 => k_fu_94(2),
      I3 => \^b_3_ce0\,
      I4 => add_ln12_reg_581(2),
      I5 => icmp_ln10_reg_545,
      O => add_ln12_fu_383_p2(2)
    );
\add_ln12_reg_581[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln12_reg_581(0),
      I1 => \^b_3_ce0\,
      I2 => k_fu_94(0),
      O => ap_sig_allocacmp_k_load(0)
    );
\add_ln12_reg_581[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln12_reg_581(1),
      I1 => \^b_3_ce0\,
      I2 => k_fu_94(1),
      O => ap_sig_allocacmp_k_load(1)
    );
\add_ln12_reg_581_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => add_ln12_fu_383_p2(0),
      Q => add_ln12_reg_581(0),
      R => '0'
    );
\add_ln12_reg_581_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => add_ln12_fu_383_p2(1),
      Q => add_ln12_reg_581(1),
      R => '0'
    );
\add_ln12_reg_581_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => add_ln12_fu_383_p2(2),
      Q => add_ln12_reg_581(2),
      R => '0'
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^b_3_address0\(0),
      Q => \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0\,
      Q => \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^b_0_address0\(1),
      I1 => tmp_2_fu_399_p3(3),
      O => \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_i_1_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => add_ln16_fu_433_p2(2),
      Q => \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => tmp_2_fu_399_p3(3),
      I1 => \^b_0_address0\(1),
      I2 => tmp_2_fu_399_p3(4),
      I3 => \^b_0_address0\(2),
      O => add_ln16_fu_433_p2(2)
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => add_ln16_fu_433_p2(3),
      Q => \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"83C8"
    )
        port map (
      I0 => \^b_0_address0\(1),
      I1 => tmp_2_fu_399_p3(3),
      I2 => \^b_0_address0\(2),
      I3 => tmp_2_fu_399_p3(4),
      O => add_ln16_fu_433_p2(3)
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => add_ln16_fu_433_p2(4),
      Q => \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0\
    );
\add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^b_0_address0\(2),
      I1 => tmp_2_fu_399_p3(4),
      I2 => tmp_2_fu_399_p3(3),
      O => add_ln16_fu_433_p2(4)
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_19,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => \^b_3_ce0\,
      R => ap_rst
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^b_3_ce0\,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => ap_rst
    );
ap_enable_reg_pp0_iter5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter4,
      Q => ap_enable_reg_pp0_iter5,
      R => ap_rst
    );
ap_enable_reg_pp0_iter6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter5,
      Q => ap_enable_reg_pp0_iter6,
      R => ap_rst
    );
ap_enable_reg_pp0_iter7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter6,
      Q => ap_enable_reg_pp0_iter7,
      R => ap_rst
    );
ap_enable_reg_pp0_iter8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter7,
      Q => \^c_ce0\,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => ap_idle_INST_0_i_1_n_0,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter4,
      O => ap_idle
    );
ap_idle_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter7,
      I1 => ap_enable_reg_pp0_iter6,
      I2 => ap_enable_reg_pp0_iter5,
      I3 => \^b_3_ce0\,
      I4 => ap_start,
      I5 => \^c_ce0\,
      O => ap_idle_INST_0_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter6_reg_reg_srl6: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^ap_ready\,
      Q => ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0
    );
ap_loop_exit_ready_pp0_iter7_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter6_reg_reg_srl6_n_0,
      Q => ap_done,
      R => '0'
    );
\c_addr_reg_641_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[0]_srl5_n_0\,
      Q => c_address0(0),
      R => '0'
    );
\c_addr_reg_641_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[1]_srl5_n_0\,
      Q => c_address0(1),
      R => '0'
    );
\c_addr_reg_641_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[2]_srl5_n_0\,
      Q => c_address0(2),
      R => '0'
    );
\c_addr_reg_641_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[3]_srl5_n_0\,
      Q => c_address0(3),
      R => '0'
    );
\c_addr_reg_641_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \add_ln16_reg_586_pp0_iter6_reg_reg[4]_srl5_n_0\,
      Q => c_address0(4),
      R => '0'
    );
c_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_ce0\,
      I1 => icmp_ln16_reg_577_pp0_iter7_reg,
      O => c_we0
    );
flow_control_loop_pipe_U: entity work.bd_0_hls_inst_0_mmul_flow_control_loop_pipe
     port map (
      D(6) => flow_control_loop_pipe_U_n_3,
      D(5) => flow_control_loop_pipe_U_n_4,
      D(4) => flow_control_loop_pipe_U_n_5,
      D(3) => flow_control_loop_pipe_U_n_6,
      D(2) => flow_control_loop_pipe_U_n_7,
      D(1) => flow_control_loop_pipe_U_n_8,
      D(0) => flow_control_loop_pipe_U_n_9,
      Q(6) => \indvar_flatten36_fu_110_reg_n_0_[6]\,
      Q(5) => \indvar_flatten36_fu_110_reg_n_0_[5]\,
      Q(4) => \indvar_flatten36_fu_110_reg_n_0_[4]\,
      Q(3) => \indvar_flatten36_fu_110_reg_n_0_[3]\,
      Q(2) => \indvar_flatten36_fu_110_reg_n_0_[2]\,
      Q(1) => \indvar_flatten36_fu_110_reg_n_0_[1]\,
      Q(0) => \indvar_flatten36_fu_110_reg_n_0_[0]\,
      add_ln12_reg_581(2 downto 0) => add_ln12_reg_581(2 downto 0),
      ap_clk => ap_clk,
      ap_ready => \^ap_ready\,
      ap_rst => ap_rst,
      ap_start => ap_start,
      icmp_ln10_reg_545 => icmp_ln10_reg_545,
      indvar_flatten36_fu_110 => indvar_flatten36_fu_110,
      \indvar_flatten36_fu_110_reg[3]\ => flow_control_loop_pipe_U_n_19,
      \indvar_flatten36_fu_110_reg[3]_0\ => flow_control_loop_pipe_U_n_20,
      \indvar_flatten_fu_102_reg[3]\ => \indvar_flatten_fu_102_reg_n_0_[3]\,
      \indvar_flatten_fu_102_reg[3]_0\ => \indvar_flatten_fu_102_reg_n_0_[2]\,
      \indvar_flatten_fu_102_reg[3]_1\ => \indvar_flatten_fu_102_reg_n_0_[0]\,
      \indvar_flatten_fu_102_reg[3]_2\ => \indvar_flatten_fu_102_reg_n_0_[1]\,
      \indvar_flatten_fu_102_reg[5]\ => \indvar_flatten_fu_102_reg_n_0_[4]\,
      \indvar_flatten_fu_102_reg[5]_0\ => \indvar_flatten_fu_102_reg_n_0_[5]\,
      k_fu_94(2 downto 0) => k_fu_94(2 downto 0),
      \k_fu_94_reg[0]\ => flow_control_loop_pipe_U_n_2,
      \k_fu_94_reg[1]\ => flow_control_loop_pipe_U_n_1,
      \k_fu_94_reg[2]\ => flow_control_loop_pipe_U_n_0,
      \k_fu_94_reg[2]_0\ => \^b_3_ce0\,
      p_1_in => p_1_in,
      select_ln10_2_fu_280_p3(5 downto 0) => select_ln10_2_fu_280_p3(5 downto 0)
    );
\i_fu_106[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => icmp_ln10_reg_545,
      I1 => \i_fu_106_reg_n_0_[0]\,
      O => select_ln8_1_fu_320_p3(0)
    );
\i_fu_106[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => icmp_ln10_reg_545,
      I1 => \i_fu_106_reg_n_0_[0]\,
      I2 => \i_fu_106_reg_n_0_[1]\,
      O => select_ln8_1_fu_320_p3(1)
    );
\i_fu_106_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1,
      D => select_ln8_1_fu_320_p3(0),
      Q => \i_fu_106_reg_n_0_[0]\,
      R => p_1_in
    );
\i_fu_106_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1,
      D => select_ln8_1_fu_320_p3(1),
      Q => \i_fu_106_reg_n_0_[1]\,
      R => p_1_in
    );
\icmp_ln10_reg_545_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_20,
      Q => icmp_ln10_reg_545,
      R => '0'
    );
\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0\,
      Q => \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0\
    );
\icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABAAAAFBABF"
    )
        port map (
      I0 => icmp_ln10_reg_545,
      I1 => add_ln12_reg_581(1),
      I2 => \^b_3_ce0\,
      I3 => k_fu_94(1),
      I4 => add_ln12_reg_581(0),
      I5 => k_fu_94(0),
      O => \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_i_1_n_0\
    );
\icmp_ln14_reg_572_pp0_iter5_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln14_reg_572_pp0_iter4_reg_reg[0]_srl4_n_0\,
      Q => icmp_ln14_reg_572_pp0_iter5_reg,
      R => '0'
    );
\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0\,
      Q => \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0\
    );
\icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088808"
    )
        port map (
      I0 => ap_sig_allocacmp_k_load(0),
      I1 => ap_sig_allocacmp_k_load(1),
      I2 => k_fu_94(2),
      I3 => \^b_3_ce0\,
      I4 => add_ln12_reg_581(2),
      I5 => icmp_ln10_reg_545,
      O => \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_i_1_n_0\
    );
\icmp_ln16_reg_577_pp0_iter7_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln16_reg_577_pp0_iter6_reg_reg[0]_srl6_n_0\,
      Q => icmp_ln16_reg_577_pp0_iter7_reg,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_9,
      Q => \indvar_flatten36_fu_110_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_8,
      Q => \indvar_flatten36_fu_110_reg_n_0_[1]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_7,
      Q => \indvar_flatten36_fu_110_reg_n_0_[2]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_6,
      Q => \indvar_flatten36_fu_110_reg_n_0_[3]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_5,
      Q => \indvar_flatten36_fu_110_reg_n_0_[4]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_4,
      Q => \indvar_flatten36_fu_110_reg_n_0_[5]\,
      R => '0'
    );
\indvar_flatten36_fu_110_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => flow_control_loop_pipe_U_n_3,
      Q => \indvar_flatten36_fu_110_reg_n_0_[6]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(0),
      Q => \indvar_flatten_fu_102_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(1),
      Q => \indvar_flatten_fu_102_reg_n_0_[1]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(2),
      Q => \indvar_flatten_fu_102_reg_n_0_[2]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(3),
      Q => \indvar_flatten_fu_102_reg_n_0_[3]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(4),
      Q => \indvar_flatten_fu_102_reg_n_0_[4]\,
      R => '0'
    );
\indvar_flatten_fu_102_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten36_fu_110,
      D => select_ln10_2_fu_280_p3(5),
      Q => \indvar_flatten_fu_102_reg_n_0_[5]\,
      R => '0'
    );
\j_fu_98_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1,
      D => select_ln10_1_fu_363_p3(0),
      Q => j_fu_98(0),
      R => p_1_in
    );
\j_fu_98_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1,
      D => select_ln10_1_fu_363_p3(1),
      Q => j_fu_98(1),
      R => p_1_in
    );
\j_fu_98_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1,
      D => select_ln10_1_fu_363_p3(2),
      Q => j_fu_98(2),
      R => p_1_in
    );
\k_fu_94_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_2,
      Q => k_fu_94(0),
      R => '0'
    );
\k_fu_94_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_1,
      Q => k_fu_94(1),
      R => '0'
    );
\k_fu_94_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_0,
      Q => k_fu_94(2),
      R => '0'
    );
mac_muladd_16s_16s_16ns_16_4_1_U3: entity work.bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1
     port map (
      A(15 downto 0) => tmp_1_fu_460_p6(15 downto 0),
      B(15 downto 0) => tmp_fu_449_p5(15 downto 0),
      D(15) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_0,
      D(14) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_1,
      D(13) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_2,
      D(12) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_3,
      D(11) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_4,
      D(10) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_5,
      D(9) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_6,
      D(8) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_7,
      D(7) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_8,
      D(6) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_9,
      D(5) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_10,
      D(4) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_11,
      D(3) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_12,
      D(2) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_13,
      D(1) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_14,
      D(0) => mac_muladd_16s_16s_16ns_16_4_1_U3_n_15,
      acc_V_1_fu_90(15 downto 0) => acc_V_1_fu_90(15 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter7 => ap_enable_reg_pp0_iter7,
      icmp_ln14_reg_572_pp0_iter5_reg => icmp_ln14_reg_572_pp0_iter5_reg
    );
mux_32_16_1_1_U1: entity work.bd_0_hls_inst_0_mmul_mux_32_16_1_1
     port map (
      B(15 downto 0) => tmp_fu_449_p5(15 downto 0),
      Q(1 downto 0) => select_ln8_1_reg_553_pp0_iter2_reg(1 downto 0),
      a_0_q0(15 downto 0) => a_0_q0(15 downto 0),
      a_1_q0(15 downto 0) => a_1_q0(15 downto 0),
      a_2_q0(15 downto 0) => a_2_q0(15 downto 0)
    );
mux_43_16_1_1_U2: entity work.bd_0_hls_inst_0_mmul_mux_43_16_1_1
     port map (
      A(15 downto 0) => tmp_1_fu_460_p6(15 downto 0),
      Q(1 downto 0) => select_ln10_reg_560_pp0_iter2_reg(1 downto 0),
      b_0_q0(15 downto 0) => b_0_q0(15 downto 0),
      b_1_q0(15 downto 0) => b_1_q0(15 downto 0),
      b_2_q0(15 downto 0) => b_2_q0(15 downto 0),
      b_3_q0(15 downto 0) => b_3_q0(15 downto 0)
    );
\select_ln10_1_reg_566[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABFB5404"
    )
        port map (
      I0 => \select_ln10_1_reg_566[0]_i_2_n_0\,
      I1 => k_fu_94(2),
      I2 => \^b_3_ce0\,
      I3 => add_ln12_reg_581(2),
      I4 => j_fu_98(0),
      I5 => icmp_ln10_reg_545,
      O => select_ln10_1_fu_363_p3(0)
    );
\select_ln10_1_reg_566[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => k_fu_94(0),
      I1 => add_ln12_reg_581(0),
      I2 => k_fu_94(1),
      I3 => \^b_3_ce0\,
      I4 => add_ln12_reg_581(1),
      O => \select_ln10_1_reg_566[0]_i_2_n_0\
    );
\select_ln10_1_reg_566[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
        port map (
      I0 => j_fu_98(1),
      I1 => \select_ln10_reg_560[1]_i_2_n_0\,
      I2 => j_fu_98(0),
      I3 => icmp_ln10_reg_545,
      O => select_ln10_1_fu_363_p3(1)
    );
\select_ln10_1_reg_566[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => j_fu_98(0),
      I1 => \select_ln10_reg_560[1]_i_2_n_0\,
      I2 => j_fu_98(1),
      I3 => j_fu_98(2),
      I4 => icmp_ln10_reg_545,
      O => select_ln10_1_fu_363_p3(2)
    );
\select_ln10_1_reg_566_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln10_1_fu_363_p3(0),
      Q => \^b_3_address0\(0),
      R => '0'
    );
\select_ln10_1_reg_566_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln10_1_fu_363_p3(1),
      Q => \^b_0_address0\(1),
      R => '0'
    );
\select_ln10_1_reg_566_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln10_1_fu_363_p3(2),
      Q => \^b_0_address0\(2),
      R => '0'
    );
\select_ln10_reg_560[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => k_fu_94(0),
      I1 => \^b_3_ce0\,
      I2 => add_ln12_reg_581(0),
      I3 => \select_ln10_reg_560[1]_i_2_n_0\,
      I4 => icmp_ln10_reg_545,
      O => select_ln10_fu_355_p3(0)
    );
\select_ln10_reg_560[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => add_ln12_reg_581(1),
      I1 => \^b_3_ce0\,
      I2 => k_fu_94(1),
      I3 => icmp_ln10_reg_545,
      I4 => \select_ln10_reg_560[1]_i_2_n_0\,
      O => select_ln10_fu_355_p3(1)
    );
\select_ln10_reg_560[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFAFFFFFFFAFF"
    )
        port map (
      I0 => ap_sig_allocacmp_k_load(1),
      I1 => add_ln12_reg_581(0),
      I2 => k_fu_94(0),
      I3 => k_fu_94(2),
      I4 => \^b_3_ce0\,
      I5 => add_ln12_reg_581(2),
      O => \select_ln10_reg_560[1]_i_2_n_0\
    );
\select_ln10_reg_560_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^a_0_address0\(0),
      Q => select_ln10_reg_560_pp0_iter2_reg(0),
      R => '0'
    );
\select_ln10_reg_560_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^a_0_address0\(1),
      Q => select_ln10_reg_560_pp0_iter2_reg(1),
      R => '0'
    );
\select_ln10_reg_560_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln10_fu_355_p3(0),
      Q => \^a_0_address0\(0),
      R => '0'
    );
\select_ln10_reg_560_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln10_fu_355_p3(1),
      Q => \^a_0_address0\(1),
      R => '0'
    );
\select_ln8_1_reg_553_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_2_fu_399_p3(3),
      Q => select_ln8_1_reg_553_pp0_iter2_reg(0),
      R => '0'
    );
\select_ln8_1_reg_553_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_2_fu_399_p3(4),
      Q => select_ln8_1_reg_553_pp0_iter2_reg(1),
      R => '0'
    );
\select_ln8_1_reg_553_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln8_1_fu_320_p3(0),
      Q => tmp_2_fu_399_p3(3),
      R => '0'
    );
\select_ln8_1_reg_553_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln8_1_fu_320_p3(1),
      Q => tmp_2_fu_399_p3(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    a_0_ce0 : out STD_LOGIC;
    a_1_ce0 : out STD_LOGIC;
    a_2_ce0 : out STD_LOGIC;
    a_3_ce0 : out STD_LOGIC;
    a_3_we0 : out STD_LOGIC;
    a_3_ce1 : out STD_LOGIC;
    a_3_we1 : out STD_LOGIC;
    b_0_ce0 : out STD_LOGIC;
    b_1_ce0 : out STD_LOGIC;
    b_2_ce0 : out STD_LOGIC;
    b_3_ce0 : out STD_LOGIC;
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_3_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_3_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_3_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_3_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,mmul,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "mmul,Vivado 2022.1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_a_3_ce0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_a_3_ce1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_a_3_we0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_a_3_we1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_a_3_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_a_3_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_a_3_d0_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_a_3_d1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute X_INTERFACE_INFO of a_0_address0 : signal is "xilinx.com:signal:data:1.0 a_0_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_0_address0 : signal is "XIL_INTERFACENAME a_0_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_0_q0 : signal is "xilinx.com:signal:data:1.0 a_0_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_0_q0 : signal is "XIL_INTERFACENAME a_0_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_address0 : signal is "xilinx.com:signal:data:1.0 a_1_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_address0 : signal is "XIL_INTERFACENAME a_1_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_q0 : signal is "xilinx.com:signal:data:1.0 a_1_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_q0 : signal is "XIL_INTERFACENAME a_1_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_2_address0 : signal is "xilinx.com:signal:data:1.0 a_2_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_2_address0 : signal is "XIL_INTERFACENAME a_2_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_2_q0 : signal is "xilinx.com:signal:data:1.0 a_2_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_2_q0 : signal is "XIL_INTERFACENAME a_2_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_address0 : signal is "xilinx.com:signal:data:1.0 a_3_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_address0 : signal is "XIL_INTERFACENAME a_3_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_address1 : signal is "xilinx.com:signal:data:1.0 a_3_address1 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_address1 : signal is "XIL_INTERFACENAME a_3_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_d0 : signal is "xilinx.com:signal:data:1.0 a_3_d0 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_d0 : signal is "XIL_INTERFACENAME a_3_d0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_d1 : signal is "xilinx.com:signal:data:1.0 a_3_d1 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_d1 : signal is "XIL_INTERFACENAME a_3_d1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_q0 : signal is "xilinx.com:signal:data:1.0 a_3_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_q0 : signal is "XIL_INTERFACENAME a_3_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_3_q1 : signal is "xilinx.com:signal:data:1.0 a_3_q1 DATA";
  attribute X_INTERFACE_PARAMETER of a_3_q1 : signal is "XIL_INTERFACENAME a_3_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_address0 : signal is "xilinx.com:signal:data:1.0 b_0_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_address0 : signal is "XIL_INTERFACENAME b_0_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_q0 : signal is "xilinx.com:signal:data:1.0 b_0_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_q0 : signal is "XIL_INTERFACENAME b_0_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_address0 : signal is "xilinx.com:signal:data:1.0 b_1_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_address0 : signal is "XIL_INTERFACENAME b_1_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_q0 : signal is "xilinx.com:signal:data:1.0 b_1_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_q0 : signal is "XIL_INTERFACENAME b_1_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_2_address0 : signal is "xilinx.com:signal:data:1.0 b_2_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_2_address0 : signal is "XIL_INTERFACENAME b_2_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_2_q0 : signal is "xilinx.com:signal:data:1.0 b_2_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_2_q0 : signal is "XIL_INTERFACENAME b_2_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_3_address0 : signal is "xilinx.com:signal:data:1.0 b_3_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_3_address0 : signal is "XIL_INTERFACENAME b_3_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_3_q0 : signal is "xilinx.com:signal:data:1.0 b_3_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_3_q0 : signal is "XIL_INTERFACENAME b_3_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_address0 : signal is "xilinx.com:signal:data:1.0 c_address0 DATA";
  attribute X_INTERFACE_PARAMETER of c_address0 : signal is "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_d0 : signal is "xilinx.com:signal:data:1.0 c_d0 DATA";
  attribute X_INTERFACE_PARAMETER of c_d0 : signal is "XIL_INTERFACENAME c_d0, LAYERED_METADATA undef";
begin
  a_3_address0(1) <= \<const0>\;
  a_3_address0(0) <= \<const0>\;
  a_3_address1(1) <= \<const0>\;
  a_3_address1(0) <= \<const0>\;
  a_3_ce0 <= \<const0>\;
  a_3_ce1 <= \<const0>\;
  a_3_d0(15) <= \<const0>\;
  a_3_d0(14) <= \<const0>\;
  a_3_d0(13) <= \<const0>\;
  a_3_d0(12) <= \<const0>\;
  a_3_d0(11) <= \<const0>\;
  a_3_d0(10) <= \<const0>\;
  a_3_d0(9) <= \<const0>\;
  a_3_d0(8) <= \<const0>\;
  a_3_d0(7) <= \<const0>\;
  a_3_d0(6) <= \<const0>\;
  a_3_d0(5) <= \<const0>\;
  a_3_d0(4) <= \<const0>\;
  a_3_d0(3) <= \<const0>\;
  a_3_d0(2) <= \<const0>\;
  a_3_d0(1) <= \<const0>\;
  a_3_d0(0) <= \<const0>\;
  a_3_d1(15) <= \<const0>\;
  a_3_d1(14) <= \<const0>\;
  a_3_d1(13) <= \<const0>\;
  a_3_d1(12) <= \<const0>\;
  a_3_d1(11) <= \<const0>\;
  a_3_d1(10) <= \<const0>\;
  a_3_d1(9) <= \<const0>\;
  a_3_d1(8) <= \<const0>\;
  a_3_d1(7) <= \<const0>\;
  a_3_d1(6) <= \<const0>\;
  a_3_d1(5) <= \<const0>\;
  a_3_d1(4) <= \<const0>\;
  a_3_d1(3) <= \<const0>\;
  a_3_d1(2) <= \<const0>\;
  a_3_d1(1) <= \<const0>\;
  a_3_d1(0) <= \<const0>\;
  a_3_we0 <= \<const0>\;
  a_3_we1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bd_0_hls_inst_0_mmul
     port map (
      a_0_address0(1 downto 0) => a_0_address0(1 downto 0),
      a_0_ce0 => a_0_ce0,
      a_0_q0(15 downto 0) => a_0_q0(15 downto 0),
      a_1_address0(1 downto 0) => a_1_address0(1 downto 0),
      a_1_ce0 => a_1_ce0,
      a_1_q0(15 downto 0) => a_1_q0(15 downto 0),
      a_2_address0(1 downto 0) => a_2_address0(1 downto 0),
      a_2_ce0 => a_2_ce0,
      a_2_q0(15 downto 0) => a_2_q0(15 downto 0),
      a_3_address0(1 downto 0) => NLW_inst_a_3_address0_UNCONNECTED(1 downto 0),
      a_3_address1(1 downto 0) => NLW_inst_a_3_address1_UNCONNECTED(1 downto 0),
      a_3_ce0 => NLW_inst_a_3_ce0_UNCONNECTED,
      a_3_ce1 => NLW_inst_a_3_ce1_UNCONNECTED,
      a_3_d0(15 downto 0) => NLW_inst_a_3_d0_UNCONNECTED(15 downto 0),
      a_3_d1(15 downto 0) => NLW_inst_a_3_d1_UNCONNECTED(15 downto 0),
      a_3_q0(15 downto 0) => B"0000000000000000",
      a_3_q1(15 downto 0) => B"0000000000000000",
      a_3_we0 => NLW_inst_a_3_we0_UNCONNECTED,
      a_3_we1 => NLW_inst_a_3_we1_UNCONNECTED,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_0_address0(2 downto 0) => b_0_address0(2 downto 0),
      b_0_ce0 => b_0_ce0,
      b_0_q0(15 downto 0) => b_0_q0(15 downto 0),
      b_1_address0(2 downto 0) => b_1_address0(2 downto 0),
      b_1_ce0 => b_1_ce0,
      b_1_q0(15 downto 0) => b_1_q0(15 downto 0),
      b_2_address0(2 downto 0) => b_2_address0(2 downto 0),
      b_2_ce0 => b_2_ce0,
      b_2_q0(15 downto 0) => b_2_q0(15 downto 0),
      b_3_address0(2 downto 0) => b_3_address0(2 downto 0),
      b_3_ce0 => b_3_ce0,
      b_3_q0(15 downto 0) => b_3_q0(15 downto 0),
      c_address0(4 downto 0) => c_address0(4 downto 0),
      c_ce0 => c_ce0,
      c_d0(15 downto 0) => c_d0(15 downto 0),
      c_we0 => c_we0
    );
end STRUCTURE;
