-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 24 13:00:10 2023
-- Host        : winvdi1009 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               z:/ECC/Desktop/Winter2023/ELEN226/Assignment2/InnerProduct/solution4/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    ap_start_0 : out STD_LOGIC;
    \trunc_ln6_reg_371_reg[1]\ : out STD_LOGIC;
    \trunc_ln6_reg_371_reg[2]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    tmp_5_fu_262_p3 : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    trunc_ln6_reg_371 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    tmp_5_reg_376 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_flow_control_loop_pipe : entity is "inner_product_flow_control_loop_pipe";
end bd_0_hls_inst_0_inner_product_flow_control_loop_pipe;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_flow_control_loop_pipe is
  signal \^ap_loop_init\ : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^trunc_ln6_reg_371_reg[1]\ : STD_LOGIC;
  signal \^trunc_ln6_reg_371_reg[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair16";
begin
  ap_loop_init <= \^ap_loop_init\;
  \trunc_ln6_reg_371_reg[1]\ <= \^trunc_ln6_reg_371_reg[1]\;
  \trunc_ln6_reg_371_reg[2]\ <= \^trunc_ln6_reg_371_reg[2]\;
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAEEEE"
    )
        port map (
      I0 => ap_rst,
      I1 => \^ap_loop_init\,
      I2 => \^trunc_ln6_reg_371_reg[2]\,
      I3 => \^trunc_ln6_reg_371_reg[1]\,
      I4 => ap_start,
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
      Q => \^ap_loop_init\,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_start,
      I1 => \^trunc_ln6_reg_371_reg[1]\,
      I2 => \^trunc_ln6_reg_371_reg[2]\,
      O => ap_ready
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C0C"
    )
        port map (
      I0 => trunc_ln6_reg_371(1),
      I1 => Q(1),
      I2 => \^ap_loop_init\,
      I3 => tmp_5_reg_376,
      I4 => ap_enable_reg_pp0_iter1,
      O => \^trunc_ln6_reg_371_reg[2]\
    );
\b_1_address1[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C0C"
    )
        port map (
      I0 => trunc_ln6_reg_371(0),
      I1 => Q(0),
      I2 => \^ap_loop_init\,
      I3 => tmp_5_reg_376,
      I4 => ap_enable_reg_pp0_iter1,
      O => \^trunc_ln6_reg_371_reg[1]\
    );
\tmp_5_reg_376[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2722050000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => tmp_5_reg_376,
      I2 => \^ap_loop_init\,
      I3 => Q(1),
      I4 => trunc_ln6_reg_371(1),
      I5 => \^trunc_ln6_reg_371_reg[1]\,
      O => tmp_5_fu_262_p3
    );
\trunc_ln6_reg_371[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8DDFFFFFAFF0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => tmp_5_reg_376,
      I2 => \^ap_loop_init\,
      I3 => Q(0),
      I4 => ap_start,
      I5 => trunc_ln6_reg_371(0),
      O => ap_enable_reg_pp0_iter1_reg
    );
\trunc_ln6_reg_371[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \^trunc_ln6_reg_371_reg[1]\,
      I1 => \^trunc_ln6_reg_371_reg[2]\,
      I2 => ap_start,
      I3 => trunc_ln6_reg_371(1),
      O => ap_start_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_reg_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1 : entity is "inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1";
end bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1 is
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
      A(29) => p_reg_reg_0(15),
      A(28) => p_reg_reg_0(15),
      A(27) => p_reg_reg_0(15),
      A(26) => p_reg_reg_0(15),
      A(25) => p_reg_reg_0(15),
      A(24) => p_reg_reg_0(15),
      A(23) => p_reg_reg_0(15),
      A(22) => p_reg_reg_0(15),
      A(21) => p_reg_reg_0(15),
      A(20) => p_reg_reg_0(15),
      A(19) => p_reg_reg_0(15),
      A(18) => p_reg_reg_0(15),
      A(17) => p_reg_reg_0(15),
      A(16) => p_reg_reg_0(15),
      A(15 downto 0) => p_reg_reg_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(15),
      B(16) => Q(15),
      B(15 downto 0) => Q(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => P(15 downto 0),
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
      CEC => '1',
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
      P(15 downto 0) => D(15 downto 0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0 : entity is "inner_product_mul_mul_16s_16s_16_4_1_DSP48_0";
end bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0 is
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
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
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
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => P(15 downto 0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mux_21_16_1_1 is
  port (
    tmp_fu_270_p4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tmp_4_reg_323 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mux_21_16_1_1 : entity is "inner_product_mux_21_16_1_1";
end bd_0_hls_inst_0_inner_product_mux_21_16_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mux_21_16_1_1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp_reg_380[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_reg_380[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmp_reg_380[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmp_reg_380[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmp_reg_380[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmp_reg_380[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmp_reg_380[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmp_reg_380[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_reg_380[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmp_reg_380[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmp_reg_380[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmp_reg_380[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmp_reg_380[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmp_reg_380[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmp_reg_380[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_reg_380[9]_i_1\ : label is "soft_lutpair4";
begin
\tmp_reg_380[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(0),
      I1 => a_0_q1(0),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(0)
    );
\tmp_reg_380[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(10),
      I1 => a_0_q1(10),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(10)
    );
\tmp_reg_380[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(11),
      I1 => a_0_q1(11),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(11)
    );
\tmp_reg_380[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(12),
      I1 => a_0_q1(12),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(12)
    );
\tmp_reg_380[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(13),
      I1 => a_0_q1(13),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(13)
    );
\tmp_reg_380[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(14),
      I1 => a_0_q1(14),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(14)
    );
\tmp_reg_380[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(15),
      I1 => a_0_q1(15),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(15)
    );
\tmp_reg_380[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(1),
      I1 => a_0_q1(1),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(1)
    );
\tmp_reg_380[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(2),
      I1 => a_0_q1(2),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(2)
    );
\tmp_reg_380[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(3),
      I1 => a_0_q1(3),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(3)
    );
\tmp_reg_380[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(4),
      I1 => a_0_q1(4),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(4)
    );
\tmp_reg_380[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(5),
      I1 => a_0_q1(5),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(5)
    );
\tmp_reg_380[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(6),
      I1 => a_0_q1(6),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(6)
    );
\tmp_reg_380[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(7),
      I1 => a_0_q1(7),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(7)
    );
\tmp_reg_380[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(8),
      I1 => a_0_q1(8),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(8)
    );
\tmp_reg_380[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q1(9),
      I1 => a_0_q1(9),
      I2 => tmp_4_reg_323,
      O => tmp_fu_270_p4(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mux_21_16_1_1_0 is
  port (
    tmp_1_fu_279_p4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tmp_4_reg_323 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_0 : entity is "inner_product_mux_21_16_1_1";
end bd_0_hls_inst_0_inner_product_mux_21_16_1_1_0;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_0 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp_1_reg_385[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmp_1_reg_385[9]_i_1\ : label is "soft_lutpair12";
begin
\tmp_1_reg_385[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(0),
      I1 => b_0_q1(0),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(0)
    );
\tmp_1_reg_385[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(10),
      I1 => b_0_q1(10),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(10)
    );
\tmp_1_reg_385[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(11),
      I1 => b_0_q1(11),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(11)
    );
\tmp_1_reg_385[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(12),
      I1 => b_0_q1(12),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(12)
    );
\tmp_1_reg_385[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(13),
      I1 => b_0_q1(13),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(13)
    );
\tmp_1_reg_385[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(14),
      I1 => b_0_q1(14),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(14)
    );
\tmp_1_reg_385[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(15),
      I1 => b_0_q1(15),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(15)
    );
\tmp_1_reg_385[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(1),
      I1 => b_0_q1(1),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(1)
    );
\tmp_1_reg_385[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(2),
      I1 => b_0_q1(2),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(2)
    );
\tmp_1_reg_385[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(3),
      I1 => b_0_q1(3),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(3)
    );
\tmp_1_reg_385[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(4),
      I1 => b_0_q1(4),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(4)
    );
\tmp_1_reg_385[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(5),
      I1 => b_0_q1(5),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(5)
    );
\tmp_1_reg_385[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(6),
      I1 => b_0_q1(6),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(6)
    );
\tmp_1_reg_385[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(7),
      I1 => b_0_q1(7),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(7)
    );
\tmp_1_reg_385[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(8),
      I1 => b_0_q1(8),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(8)
    );
\tmp_1_reg_385[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q1(9),
      I1 => b_0_q1(9),
      I2 => tmp_4_reg_323,
      O => tmp_1_fu_279_p4(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mux_21_16_1_1_1 is
  port (
    B : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tmp_4_reg_323 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_1 : entity is "inner_product_mux_21_16_1_1";
end bd_0_hls_inst_0_inner_product_mux_21_16_1_1_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_1 is
begin
p_reg_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(15),
      I1 => a_0_q0(15),
      I2 => tmp_4_reg_323,
      O => B(15)
    );
p_reg_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(6),
      I1 => a_0_q0(6),
      I2 => tmp_4_reg_323,
      O => B(6)
    );
p_reg_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(5),
      I1 => a_0_q0(5),
      I2 => tmp_4_reg_323,
      O => B(5)
    );
p_reg_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(4),
      I1 => a_0_q0(4),
      I2 => tmp_4_reg_323,
      O => B(4)
    );
p_reg_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(3),
      I1 => a_0_q0(3),
      I2 => tmp_4_reg_323,
      O => B(3)
    );
p_reg_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(2),
      I1 => a_0_q0(2),
      I2 => tmp_4_reg_323,
      O => B(2)
    );
p_reg_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(1),
      I1 => a_0_q0(1),
      I2 => tmp_4_reg_323,
      O => B(1)
    );
p_reg_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(0),
      I1 => a_0_q0(0),
      I2 => tmp_4_reg_323,
      O => B(0)
    );
p_reg_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(14),
      I1 => a_0_q0(14),
      I2 => tmp_4_reg_323,
      O => B(14)
    );
p_reg_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(13),
      I1 => a_0_q0(13),
      I2 => tmp_4_reg_323,
      O => B(13)
    );
p_reg_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(12),
      I1 => a_0_q0(12),
      I2 => tmp_4_reg_323,
      O => B(12)
    );
p_reg_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(11),
      I1 => a_0_q0(11),
      I2 => tmp_4_reg_323,
      O => B(11)
    );
p_reg_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(10),
      I1 => a_0_q0(10),
      I2 => tmp_4_reg_323,
      O => B(10)
    );
p_reg_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(9),
      I1 => a_0_q0(9),
      I2 => tmp_4_reg_323,
      O => B(9)
    );
p_reg_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(8),
      I1 => a_0_q0(8),
      I2 => tmp_4_reg_323,
      O => B(8)
    );
p_reg_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_1_q0(7),
      I1 => a_0_q0(7),
      I2 => tmp_4_reg_323,
      O => B(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mux_21_16_1_1_2 is
  port (
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tmp_4_reg_323 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_2 : entity is "inner_product_mux_21_16_1_1";
end bd_0_hls_inst_0_inner_product_mux_21_16_1_1_2;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mux_21_16_1_1_2 is
begin
p_reg_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(15),
      I1 => b_0_q0(15),
      I2 => tmp_4_reg_323,
      O => A(15)
    );
p_reg_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(14),
      I1 => b_0_q0(14),
      I2 => tmp_4_reg_323,
      O => A(14)
    );
p_reg_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(13),
      I1 => b_0_q0(13),
      I2 => tmp_4_reg_323,
      O => A(13)
    );
p_reg_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(12),
      I1 => b_0_q0(12),
      I2 => tmp_4_reg_323,
      O => A(12)
    );
p_reg_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(11),
      I1 => b_0_q0(11),
      I2 => tmp_4_reg_323,
      O => A(11)
    );
p_reg_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(10),
      I1 => b_0_q0(10),
      I2 => tmp_4_reg_323,
      O => A(10)
    );
p_reg_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(9),
      I1 => b_0_q0(9),
      I2 => tmp_4_reg_323,
      O => A(9)
    );
p_reg_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(8),
      I1 => b_0_q0(8),
      I2 => tmp_4_reg_323,
      O => A(8)
    );
p_reg_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(7),
      I1 => b_0_q0(7),
      I2 => tmp_4_reg_323,
      O => A(7)
    );
p_reg_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(6),
      I1 => b_0_q0(6),
      I2 => tmp_4_reg_323,
      O => A(6)
    );
p_reg_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(5),
      I1 => b_0_q0(5),
      I2 => tmp_4_reg_323,
      O => A(5)
    );
p_reg_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(4),
      I1 => b_0_q0(4),
      I2 => tmp_4_reg_323,
      O => A(4)
    );
p_reg_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(3),
      I1 => b_0_q0(3),
      I2 => tmp_4_reg_323,
      O => A(3)
    );
p_reg_reg_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(2),
      I1 => b_0_q0(2),
      I2 => tmp_4_reg_323,
      O => A(2)
    );
p_reg_reg_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(1),
      I1 => b_0_q0(1),
      I2 => tmp_4_reg_323,
      O => A(1)
    );
p_reg_reg_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b_1_q0(0),
      I1 => b_0_q0(0),
      I2 => tmp_4_reg_323,
      O => A(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_reg_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 : entity is "inner_product_mac_muladd_16s_16s_16ns_16_4_1";
end bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1 is
begin
inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U: entity work.bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1
     port map (
      D(15 downto 0) => D(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      ap_clk => ap_clk,
      p_reg_reg_0(15 downto 0) => p_reg_reg(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1 : entity is "inner_product_mul_mul_16s_16s_16_4_1";
end bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1 is
begin
inner_product_mul_mul_16s_16s_16_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1_DSP48_0
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
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
    a_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_ce0 : out STD_LOGIC;
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_ce1 : out STD_LOGIC;
    a_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_ce0 : out STD_LOGIC;
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_ce1 : out STD_LOGIC;
    a_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0_ce0 : out STD_LOGIC;
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0_ce1 : out STD_LOGIC;
    b_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1_ce0 : out STD_LOGIC;
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1_ce1 : out STD_LOGIC;
    b_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_inner_product : entity is "inner_product";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_inner_product : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_inner_product : entity is "yes";
end bd_0_hls_inst_0_inner_product;

architecture STRUCTURE of bd_0_hls_inst_0_inner_product is
  signal \<const0>\ : STD_LOGIC;
  signal \^a_0_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal acc_V2_reg_200 : STD_LOGIC;
  signal \acc_V2_reg_200[0]_i_3_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[0]_i_4_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[0]_i_5_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[0]_i_6_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[12]_i_2_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[12]_i_3_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[12]_i_4_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[12]_i_5_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[4]_i_3_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[4]_i_4_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[4]_i_5_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[8]_i_3_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[8]_i_4_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200[8]_i_5_n_0\ : STD_LOGIC;
  signal acc_V2_reg_200_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \acc_V2_reg_200_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \acc_V2_reg_200_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal add_ln859_reg_405 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter5 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter6 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter7 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter8 : STD_LOGIC;
  signal ap_idle_INST_0_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_pp0_iter7_reg_reg_srl7_n_0 : STD_LOGIC;
  signal ap_loop_init_pp0_iter8_reg : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_4 : STD_LOGIC;
  signal i1_reg_187 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_16ns_16_4_1_U6_n_9 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_0 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_1 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_10 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_11 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_12 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_13 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_14 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_15 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_2 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_3 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_4 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_5 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_6 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_7 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_8 : STD_LOGIC;
  signal mul_mul_16s_16s_16_4_1_U5_n_9 : STD_LOGIC;
  signal \s[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s[0]_INST_0_n_0\ : STD_LOGIC;
  signal \s[0]_INST_0_n_1\ : STD_LOGIC;
  signal \s[0]_INST_0_n_2\ : STD_LOGIC;
  signal \s[0]_INST_0_n_3\ : STD_LOGIC;
  signal \s[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s[12]_INST_0_n_1\ : STD_LOGIC;
  signal \s[12]_INST_0_n_2\ : STD_LOGIC;
  signal \s[12]_INST_0_n_3\ : STD_LOGIC;
  signal \s[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s[4]_INST_0_n_0\ : STD_LOGIC;
  signal \s[4]_INST_0_n_1\ : STD_LOGIC;
  signal \s[4]_INST_0_n_2\ : STD_LOGIC;
  signal \s[4]_INST_0_n_3\ : STD_LOGIC;
  signal \s[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s[8]_INST_0_n_0\ : STD_LOGIC;
  signal \s[8]_INST_0_n_1\ : STD_LOGIC;
  signal \s[8]_INST_0_n_2\ : STD_LOGIC;
  signal \s[8]_INST_0_n_3\ : STD_LOGIC;
  signal tmp_1_fu_279_p4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_1_reg_385 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_1_reg_385_pp0_iter2_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_2_fu_288_p4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_3_fu_297_p4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_4_reg_323 : STD_LOGIC;
  signal tmp_5_fu_262_p3 : STD_LOGIC;
  signal tmp_5_reg_376 : STD_LOGIC;
  signal \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0\ : STD_LOGIC;
  signal tmp_5_reg_376_pp0_iter7_reg : STD_LOGIC;
  signal tmp_fu_270_p4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_reg_380 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_reg_380_pp0_iter2_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal trunc_ln6_reg_371 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_acc_V2_reg_200_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s[12]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_V2_reg_200_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_V2_reg_200_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_V2_reg_200_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \acc_V2_reg_200_reg[8]_i_1\ : label is 11;
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter7_reg_reg_srl7 : label is "inst/ap_loop_exit_ready_pp0_iter7_reg_reg_srl7";
  attribute srl_name of ap_loop_init_pp0_iter7_reg_reg_srl7 : label is "inst/ap_loop_init_pp0_iter7_reg_reg_srl7";
  attribute ADDER_THRESHOLD of \s[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \s[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \s[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \s[8]_INST_0\ : label is 35;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6\ : label is "inst/\tmp_5_reg_376_pp0_iter6_reg_reg ";
  attribute srl_name of \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6\ : label is "inst/\tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6 ";
begin
  \^ap_start\ <= ap_start;
  a_0_address0(1) <= \^a_0_address0\(1);
  a_0_address0(0) <= \<const0>\;
  a_0_address1(1) <= \^a_0_address0\(1);
  a_0_address1(0) <= \<const0>\;
  a_0_ce0 <= \^ap_start\;
  a_0_ce1 <= \^ap_start\;
  a_1_address0(1) <= \^a_0_address0\(1);
  a_1_address0(0) <= \<const0>\;
  a_1_address1(1) <= \^a_0_address0\(1);
  a_1_address1(0) <= \<const0>\;
  a_1_ce0 <= \^ap_start\;
  a_1_ce1 <= \^ap_start\;
  ap_ready <= \^ap_ready\;
  b_0_address0(1) <= \^a_0_address0\(1);
  b_0_address0(0) <= \<const0>\;
  b_0_address1(1) <= \^a_0_address0\(1);
  b_0_address1(0) <= \<const0>\;
  b_0_ce0 <= \^ap_start\;
  b_0_ce1 <= \^ap_start\;
  b_1_address0(1) <= \^a_0_address0\(1);
  b_1_address0(0) <= \<const0>\;
  b_1_address1(1) <= \^a_0_address0\(1);
  b_1_address1(0) <= \<const0>\;
  b_1_ce0 <= \^ap_start\;
  b_1_ce1 <= \^ap_start\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\acc_V2_reg_200[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter8,
      I1 => tmp_5_reg_376_pp0_iter7_reg,
      O => acc_V2_reg_200
    );
\acc_V2_reg_200[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(3),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(3),
      O => \acc_V2_reg_200[0]_i_3_n_0\
    );
\acc_V2_reg_200[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(2),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(2),
      O => \acc_V2_reg_200[0]_i_4_n_0\
    );
\acc_V2_reg_200[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(1),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(1),
      O => \acc_V2_reg_200[0]_i_5_n_0\
    );
\acc_V2_reg_200[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(0),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(0),
      O => \acc_V2_reg_200[0]_i_6_n_0\
    );
\acc_V2_reg_200[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => acc_V2_reg_200_reg(15),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => add_ln859_reg_405(15),
      O => \acc_V2_reg_200[12]_i_2_n_0\
    );
\acc_V2_reg_200[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(14),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(14),
      O => \acc_V2_reg_200[12]_i_3_n_0\
    );
\acc_V2_reg_200[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(13),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(13),
      O => \acc_V2_reg_200[12]_i_4_n_0\
    );
\acc_V2_reg_200[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(12),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(12),
      O => \acc_V2_reg_200[12]_i_5_n_0\
    );
\acc_V2_reg_200[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(7),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(7),
      O => \acc_V2_reg_200[4]_i_2_n_0\
    );
\acc_V2_reg_200[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(6),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(6),
      O => \acc_V2_reg_200[4]_i_3_n_0\
    );
\acc_V2_reg_200[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(5),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(5),
      O => \acc_V2_reg_200[4]_i_4_n_0\
    );
\acc_V2_reg_200[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(4),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(4),
      O => \acc_V2_reg_200[4]_i_5_n_0\
    );
\acc_V2_reg_200[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(11),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(11),
      O => \acc_V2_reg_200[8]_i_2_n_0\
    );
\acc_V2_reg_200[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(10),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(10),
      O => \acc_V2_reg_200[8]_i_3_n_0\
    );
\acc_V2_reg_200[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(9),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(9),
      O => \acc_V2_reg_200[8]_i_4_n_0\
    );
\acc_V2_reg_200[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => add_ln859_reg_405(8),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => acc_V2_reg_200_reg(8),
      O => \acc_V2_reg_200[8]_i_5_n_0\
    );
\acc_V2_reg_200_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[0]_i_2_n_7\,
      Q => acc_V2_reg_200_reg(0),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_V2_reg_200_reg[0]_i_2_n_0\,
      CO(2) => \acc_V2_reg_200_reg[0]_i_2_n_1\,
      CO(1) => \acc_V2_reg_200_reg[0]_i_2_n_2\,
      CO(0) => \acc_V2_reg_200_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(3 downto 0),
      O(3) => \acc_V2_reg_200_reg[0]_i_2_n_4\,
      O(2) => \acc_V2_reg_200_reg[0]_i_2_n_5\,
      O(1) => \acc_V2_reg_200_reg[0]_i_2_n_6\,
      O(0) => \acc_V2_reg_200_reg[0]_i_2_n_7\,
      S(3) => \acc_V2_reg_200[0]_i_3_n_0\,
      S(2) => \acc_V2_reg_200[0]_i_4_n_0\,
      S(1) => \acc_V2_reg_200[0]_i_5_n_0\,
      S(0) => \acc_V2_reg_200[0]_i_6_n_0\
    );
\acc_V2_reg_200_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[8]_i_1_n_5\,
      Q => acc_V2_reg_200_reg(10),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[8]_i_1_n_4\,
      Q => acc_V2_reg_200_reg(11),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[12]_i_1_n_7\,
      Q => acc_V2_reg_200_reg(12),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_V2_reg_200_reg[8]_i_1_n_0\,
      CO(3) => \NLW_acc_V2_reg_200_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \acc_V2_reg_200_reg[12]_i_1_n_1\,
      CO(1) => \acc_V2_reg_200_reg[12]_i_1_n_2\,
      CO(0) => \acc_V2_reg_200_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => add_ln859_reg_405(14 downto 12),
      O(3) => \acc_V2_reg_200_reg[12]_i_1_n_4\,
      O(2) => \acc_V2_reg_200_reg[12]_i_1_n_5\,
      O(1) => \acc_V2_reg_200_reg[12]_i_1_n_6\,
      O(0) => \acc_V2_reg_200_reg[12]_i_1_n_7\,
      S(3) => \acc_V2_reg_200[12]_i_2_n_0\,
      S(2) => \acc_V2_reg_200[12]_i_3_n_0\,
      S(1) => \acc_V2_reg_200[12]_i_4_n_0\,
      S(0) => \acc_V2_reg_200[12]_i_5_n_0\
    );
\acc_V2_reg_200_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[12]_i_1_n_6\,
      Q => acc_V2_reg_200_reg(13),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[12]_i_1_n_5\,
      Q => acc_V2_reg_200_reg(14),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[12]_i_1_n_4\,
      Q => acc_V2_reg_200_reg(15),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[0]_i_2_n_6\,
      Q => acc_V2_reg_200_reg(1),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[0]_i_2_n_5\,
      Q => acc_V2_reg_200_reg(2),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[0]_i_2_n_4\,
      Q => acc_V2_reg_200_reg(3),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[4]_i_1_n_7\,
      Q => acc_V2_reg_200_reg(4),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_V2_reg_200_reg[0]_i_2_n_0\,
      CO(3) => \acc_V2_reg_200_reg[4]_i_1_n_0\,
      CO(2) => \acc_V2_reg_200_reg[4]_i_1_n_1\,
      CO(1) => \acc_V2_reg_200_reg[4]_i_1_n_2\,
      CO(0) => \acc_V2_reg_200_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(7 downto 4),
      O(3) => \acc_V2_reg_200_reg[4]_i_1_n_4\,
      O(2) => \acc_V2_reg_200_reg[4]_i_1_n_5\,
      O(1) => \acc_V2_reg_200_reg[4]_i_1_n_6\,
      O(0) => \acc_V2_reg_200_reg[4]_i_1_n_7\,
      S(3) => \acc_V2_reg_200[4]_i_2_n_0\,
      S(2) => \acc_V2_reg_200[4]_i_3_n_0\,
      S(1) => \acc_V2_reg_200[4]_i_4_n_0\,
      S(0) => \acc_V2_reg_200[4]_i_5_n_0\
    );
\acc_V2_reg_200_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[4]_i_1_n_6\,
      Q => acc_V2_reg_200_reg(5),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[4]_i_1_n_5\,
      Q => acc_V2_reg_200_reg(6),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[4]_i_1_n_4\,
      Q => acc_V2_reg_200_reg(7),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[8]_i_1_n_7\,
      Q => acc_V2_reg_200_reg(8),
      R => acc_V2_reg_200
    );
\acc_V2_reg_200_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_V2_reg_200_reg[4]_i_1_n_0\,
      CO(3) => \acc_V2_reg_200_reg[8]_i_1_n_0\,
      CO(2) => \acc_V2_reg_200_reg[8]_i_1_n_1\,
      CO(1) => \acc_V2_reg_200_reg[8]_i_1_n_2\,
      CO(0) => \acc_V2_reg_200_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(11 downto 8),
      O(3) => \acc_V2_reg_200_reg[8]_i_1_n_4\,
      O(2) => \acc_V2_reg_200_reg[8]_i_1_n_5\,
      O(1) => \acc_V2_reg_200_reg[8]_i_1_n_6\,
      O(0) => \acc_V2_reg_200_reg[8]_i_1_n_7\,
      S(3) => \acc_V2_reg_200[8]_i_2_n_0\,
      S(2) => \acc_V2_reg_200[8]_i_3_n_0\,
      S(1) => \acc_V2_reg_200[8]_i_4_n_0\,
      S(0) => \acc_V2_reg_200[8]_i_5_n_0\
    );
\acc_V2_reg_200_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter8,
      D => \acc_V2_reg_200_reg[8]_i_1_n_6\,
      Q => acc_V2_reg_200_reg(9),
      R => acc_V2_reg_200
    );
\add_ln859_reg_405_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_15,
      Q => add_ln859_reg_405(0),
      R => '0'
    );
\add_ln859_reg_405_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_5,
      Q => add_ln859_reg_405(10),
      R => '0'
    );
\add_ln859_reg_405_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_4,
      Q => add_ln859_reg_405(11),
      R => '0'
    );
\add_ln859_reg_405_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_3,
      Q => add_ln859_reg_405(12),
      R => '0'
    );
\add_ln859_reg_405_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_2,
      Q => add_ln859_reg_405(13),
      R => '0'
    );
\add_ln859_reg_405_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_1,
      Q => add_ln859_reg_405(14),
      R => '0'
    );
\add_ln859_reg_405_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_0,
      Q => add_ln859_reg_405(15),
      R => '0'
    );
\add_ln859_reg_405_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_14,
      Q => add_ln859_reg_405(1),
      R => '0'
    );
\add_ln859_reg_405_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_13,
      Q => add_ln859_reg_405(2),
      R => '0'
    );
\add_ln859_reg_405_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_12,
      Q => add_ln859_reg_405(3),
      R => '0'
    );
\add_ln859_reg_405_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_11,
      Q => add_ln859_reg_405(4),
      R => '0'
    );
\add_ln859_reg_405_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_10,
      Q => add_ln859_reg_405(5),
      R => '0'
    );
\add_ln859_reg_405_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_9,
      Q => add_ln859_reg_405(6),
      R => '0'
    );
\add_ln859_reg_405_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_8,
      Q => add_ln859_reg_405(7),
      R => '0'
    );
\add_ln859_reg_405_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_7,
      Q => add_ln859_reg_405(8),
      R => '0'
    );
\add_ln859_reg_405_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter7,
      D => mac_muladd_16s_16s_16ns_16_4_1_U6_n_6,
      Q => add_ln859_reg_405(9),
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_start\,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
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
      Q => ap_enable_reg_pp0_iter8,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => ap_idle_INST_0_i_1_n_0,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_enable_reg_pp0_iter3,
      I3 => ap_enable_reg_pp0_iter4,
      O => ap_idle
    );
ap_idle_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter5,
      I1 => ap_enable_reg_pp0_iter6,
      I2 => ap_enable_reg_pp0_iter7,
      I3 => \^ap_start\,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_enable_reg_pp0_iter8,
      O => ap_idle_INST_0_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter7_reg_reg_srl7: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^ap_ready\,
      Q => ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0
    );
ap_loop_exit_ready_pp0_iter8_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter7_reg_reg_srl7_n_0,
      Q => ap_done,
      R => '0'
    );
ap_loop_init_pp0_iter7_reg_reg_srl7: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => ap_loop_init,
      Q => ap_loop_init_pp0_iter7_reg_reg_srl7_n_0
    );
ap_loop_init_pp0_iter8_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_pp0_iter7_reg_reg_srl7_n_0,
      Q => ap_loop_init_pp0_iter8_reg,
      R => '0'
    );
flow_control_loop_pipe_U: entity work.bd_0_hls_inst_0_inner_product_flow_control_loop_pipe
     port map (
      Q(1 downto 0) => i1_reg_187(2 downto 1),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => flow_control_loop_pipe_U_n_4,
      ap_loop_init => ap_loop_init,
      ap_ready => \^ap_ready\,
      ap_rst => ap_rst,
      ap_start => \^ap_start\,
      ap_start_0 => flow_control_loop_pipe_U_n_1,
      tmp_5_fu_262_p3 => tmp_5_fu_262_p3,
      tmp_5_reg_376 => tmp_5_reg_376,
      trunc_ln6_reg_371(1 downto 0) => trunc_ln6_reg_371(2 downto 1),
      \trunc_ln6_reg_371_reg[1]\ => \^a_0_address0\(1),
      \trunc_ln6_reg_371_reg[2]\ => flow_control_loop_pipe_U_n_3
    );
\i1_reg_187_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^a_0_address0\(1),
      Q => i1_reg_187(1),
      R => '0'
    );
\i1_reg_187_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_3,
      Q => i1_reg_187(2),
      R => '0'
    );
mac_muladd_16s_16s_16ns_16_4_1_U6: entity work.bd_0_hls_inst_0_inner_product_mac_muladd_16s_16s_16ns_16_4_1
     port map (
      D(15) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_0,
      D(14) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_1,
      D(13) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_2,
      D(12) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_3,
      D(11) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_4,
      D(10) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_5,
      D(9) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_6,
      D(8) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_7,
      D(7) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_8,
      D(6) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_9,
      D(5) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_10,
      D(4) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_11,
      D(3) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_12,
      D(2) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_13,
      D(1) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_14,
      D(0) => mac_muladd_16s_16s_16ns_16_4_1_U6_n_15,
      P(15) => mul_mul_16s_16s_16_4_1_U5_n_0,
      P(14) => mul_mul_16s_16s_16_4_1_U5_n_1,
      P(13) => mul_mul_16s_16s_16_4_1_U5_n_2,
      P(12) => mul_mul_16s_16s_16_4_1_U5_n_3,
      P(11) => mul_mul_16s_16s_16_4_1_U5_n_4,
      P(10) => mul_mul_16s_16s_16_4_1_U5_n_5,
      P(9) => mul_mul_16s_16s_16_4_1_U5_n_6,
      P(8) => mul_mul_16s_16s_16_4_1_U5_n_7,
      P(7) => mul_mul_16s_16s_16_4_1_U5_n_8,
      P(6) => mul_mul_16s_16s_16_4_1_U5_n_9,
      P(5) => mul_mul_16s_16s_16_4_1_U5_n_10,
      P(4) => mul_mul_16s_16s_16_4_1_U5_n_11,
      P(3) => mul_mul_16s_16s_16_4_1_U5_n_12,
      P(2) => mul_mul_16s_16s_16_4_1_U5_n_13,
      P(1) => mul_mul_16s_16s_16_4_1_U5_n_14,
      P(0) => mul_mul_16s_16s_16_4_1_U5_n_15,
      Q(15 downto 0) => tmp_reg_380_pp0_iter2_reg(15 downto 0),
      ap_clk => ap_clk,
      p_reg_reg(15 downto 0) => tmp_1_reg_385_pp0_iter2_reg(15 downto 0)
    );
mul_mul_16s_16s_16_4_1_U5: entity work.bd_0_hls_inst_0_inner_product_mul_mul_16s_16s_16_4_1
     port map (
      A(15 downto 0) => tmp_3_fu_297_p4(15 downto 0),
      B(15 downto 0) => tmp_2_fu_288_p4(15 downto 0),
      P(15) => mul_mul_16s_16s_16_4_1_U5_n_0,
      P(14) => mul_mul_16s_16s_16_4_1_U5_n_1,
      P(13) => mul_mul_16s_16s_16_4_1_U5_n_2,
      P(12) => mul_mul_16s_16s_16_4_1_U5_n_3,
      P(11) => mul_mul_16s_16s_16_4_1_U5_n_4,
      P(10) => mul_mul_16s_16s_16_4_1_U5_n_5,
      P(9) => mul_mul_16s_16s_16_4_1_U5_n_6,
      P(8) => mul_mul_16s_16s_16_4_1_U5_n_7,
      P(7) => mul_mul_16s_16s_16_4_1_U5_n_8,
      P(6) => mul_mul_16s_16s_16_4_1_U5_n_9,
      P(5) => mul_mul_16s_16s_16_4_1_U5_n_10,
      P(4) => mul_mul_16s_16s_16_4_1_U5_n_11,
      P(3) => mul_mul_16s_16s_16_4_1_U5_n_12,
      P(2) => mul_mul_16s_16s_16_4_1_U5_n_13,
      P(1) => mul_mul_16s_16s_16_4_1_U5_n_14,
      P(0) => mul_mul_16s_16s_16_4_1_U5_n_15,
      ap_clk => ap_clk
    );
mux_21_16_1_1_U1: entity work.bd_0_hls_inst_0_inner_product_mux_21_16_1_1
     port map (
      a_0_q1(15 downto 0) => a_0_q1(15 downto 0),
      a_1_q1(15 downto 0) => a_1_q1(15 downto 0),
      tmp_4_reg_323 => tmp_4_reg_323,
      tmp_fu_270_p4(15 downto 0) => tmp_fu_270_p4(15 downto 0)
    );
mux_21_16_1_1_U2: entity work.bd_0_hls_inst_0_inner_product_mux_21_16_1_1_0
     port map (
      b_0_q1(15 downto 0) => b_0_q1(15 downto 0),
      b_1_q1(15 downto 0) => b_1_q1(15 downto 0),
      tmp_1_fu_279_p4(15 downto 0) => tmp_1_fu_279_p4(15 downto 0),
      tmp_4_reg_323 => tmp_4_reg_323
    );
mux_21_16_1_1_U3: entity work.bd_0_hls_inst_0_inner_product_mux_21_16_1_1_1
     port map (
      B(15 downto 0) => tmp_2_fu_288_p4(15 downto 0),
      a_0_q0(15 downto 0) => a_0_q0(15 downto 0),
      a_1_q0(15 downto 0) => a_1_q0(15 downto 0),
      tmp_4_reg_323 => tmp_4_reg_323
    );
mux_21_16_1_1_U4: entity work.bd_0_hls_inst_0_inner_product_mux_21_16_1_1_2
     port map (
      A(15 downto 0) => tmp_3_fu_297_p4(15 downto 0),
      b_0_q0(15 downto 0) => b_0_q0(15 downto 0),
      b_1_q0(15 downto 0) => b_1_q0(15 downto 0),
      tmp_4_reg_323 => tmp_4_reg_323
    );
\s[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s[0]_INST_0_n_0\,
      CO(2) => \s[0]_INST_0_n_1\,
      CO(1) => \s[0]_INST_0_n_2\,
      CO(0) => \s[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(3 downto 0),
      O(3 downto 0) => s(3 downto 0),
      S(3) => \s[0]_INST_0_i_1_n_0\,
      S(2) => \s[0]_INST_0_i_2_n_0\,
      S(1) => \s[0]_INST_0_i_3_n_0\,
      S(0) => \s[0]_INST_0_i_4_n_0\
    );
\s[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(3),
      I2 => add_ln859_reg_405(3),
      O => \s[0]_INST_0_i_1_n_0\
    );
\s[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(2),
      I2 => add_ln859_reg_405(2),
      O => \s[0]_INST_0_i_2_n_0\
    );
\s[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(1),
      I2 => add_ln859_reg_405(1),
      O => \s[0]_INST_0_i_3_n_0\
    );
\s[0]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(0),
      I2 => add_ln859_reg_405(0),
      O => \s[0]_INST_0_i_4_n_0\
    );
\s[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s[8]_INST_0_n_0\,
      CO(3) => \NLW_s[12]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \s[12]_INST_0_n_1\,
      CO(1) => \s[12]_INST_0_n_2\,
      CO(0) => \s[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => add_ln859_reg_405(14 downto 12),
      O(3 downto 0) => s(15 downto 12),
      S(3) => \s[12]_INST_0_i_1_n_0\,
      S(2) => \s[12]_INST_0_i_2_n_0\,
      S(1) => \s[12]_INST_0_i_3_n_0\,
      S(0) => \s[12]_INST_0_i_4_n_0\
    );
\s[12]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => acc_V2_reg_200_reg(15),
      I1 => ap_loop_init_pp0_iter8_reg,
      I2 => add_ln859_reg_405(15),
      O => \s[12]_INST_0_i_1_n_0\
    );
\s[12]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(14),
      I2 => add_ln859_reg_405(14),
      O => \s[12]_INST_0_i_2_n_0\
    );
\s[12]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(13),
      I2 => add_ln859_reg_405(13),
      O => \s[12]_INST_0_i_3_n_0\
    );
\s[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(12),
      I2 => add_ln859_reg_405(12),
      O => \s[12]_INST_0_i_4_n_0\
    );
\s[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s[0]_INST_0_n_0\,
      CO(3) => \s[4]_INST_0_n_0\,
      CO(2) => \s[4]_INST_0_n_1\,
      CO(1) => \s[4]_INST_0_n_2\,
      CO(0) => \s[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(7 downto 4),
      O(3 downto 0) => s(7 downto 4),
      S(3) => \s[4]_INST_0_i_1_n_0\,
      S(2) => \s[4]_INST_0_i_2_n_0\,
      S(1) => \s[4]_INST_0_i_3_n_0\,
      S(0) => \s[4]_INST_0_i_4_n_0\
    );
\s[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(7),
      I2 => add_ln859_reg_405(7),
      O => \s[4]_INST_0_i_1_n_0\
    );
\s[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(6),
      I2 => add_ln859_reg_405(6),
      O => \s[4]_INST_0_i_2_n_0\
    );
\s[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(5),
      I2 => add_ln859_reg_405(5),
      O => \s[4]_INST_0_i_3_n_0\
    );
\s[4]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(4),
      I2 => add_ln859_reg_405(4),
      O => \s[4]_INST_0_i_4_n_0\
    );
\s[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s[4]_INST_0_n_0\,
      CO(3) => \s[8]_INST_0_n_0\,
      CO(2) => \s[8]_INST_0_n_1\,
      CO(1) => \s[8]_INST_0_n_2\,
      CO(0) => \s[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => add_ln859_reg_405(11 downto 8),
      O(3 downto 0) => s(11 downto 8),
      S(3) => \s[8]_INST_0_i_1_n_0\,
      S(2) => \s[8]_INST_0_i_2_n_0\,
      S(1) => \s[8]_INST_0_i_3_n_0\,
      S(0) => \s[8]_INST_0_i_4_n_0\
    );
\s[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(11),
      I2 => add_ln859_reg_405(11),
      O => \s[8]_INST_0_i_1_n_0\
    );
\s[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(10),
      I2 => add_ln859_reg_405(10),
      O => \s[8]_INST_0_i_2_n_0\
    );
\s[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(9),
      I2 => add_ln859_reg_405(9),
      O => \s[8]_INST_0_i_3_n_0\
    );
\s[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ap_loop_init_pp0_iter8_reg,
      I1 => acc_V2_reg_200_reg(8),
      I2 => add_ln859_reg_405(8),
      O => \s[8]_INST_0_i_4_n_0\
    );
s_ap_vld_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tmp_5_reg_376_pp0_iter7_reg,
      I1 => ap_enable_reg_pp0_iter8,
      O => s_ap_vld
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(0),
      Q => tmp_1_reg_385_pp0_iter2_reg(0),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(10),
      Q => tmp_1_reg_385_pp0_iter2_reg(10),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(11),
      Q => tmp_1_reg_385_pp0_iter2_reg(11),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(12),
      Q => tmp_1_reg_385_pp0_iter2_reg(12),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(13),
      Q => tmp_1_reg_385_pp0_iter2_reg(13),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(14),
      Q => tmp_1_reg_385_pp0_iter2_reg(14),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(15),
      Q => tmp_1_reg_385_pp0_iter2_reg(15),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(1),
      Q => tmp_1_reg_385_pp0_iter2_reg(1),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(2),
      Q => tmp_1_reg_385_pp0_iter2_reg(2),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(3),
      Q => tmp_1_reg_385_pp0_iter2_reg(3),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(4),
      Q => tmp_1_reg_385_pp0_iter2_reg(4),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(5),
      Q => tmp_1_reg_385_pp0_iter2_reg(5),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(6),
      Q => tmp_1_reg_385_pp0_iter2_reg(6),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(7),
      Q => tmp_1_reg_385_pp0_iter2_reg(7),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(8),
      Q => tmp_1_reg_385_pp0_iter2_reg(8),
      R => '0'
    );
\tmp_1_reg_385_pp0_iter2_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_reg_385(9),
      Q => tmp_1_reg_385_pp0_iter2_reg(9),
      R => '0'
    );
\tmp_1_reg_385_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(0),
      Q => tmp_1_reg_385(0),
      R => '0'
    );
\tmp_1_reg_385_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(10),
      Q => tmp_1_reg_385(10),
      R => '0'
    );
\tmp_1_reg_385_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(11),
      Q => tmp_1_reg_385(11),
      R => '0'
    );
\tmp_1_reg_385_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(12),
      Q => tmp_1_reg_385(12),
      R => '0'
    );
\tmp_1_reg_385_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(13),
      Q => tmp_1_reg_385(13),
      R => '0'
    );
\tmp_1_reg_385_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(14),
      Q => tmp_1_reg_385(14),
      R => '0'
    );
\tmp_1_reg_385_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(15),
      Q => tmp_1_reg_385(15),
      R => '0'
    );
\tmp_1_reg_385_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(1),
      Q => tmp_1_reg_385(1),
      R => '0'
    );
\tmp_1_reg_385_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(2),
      Q => tmp_1_reg_385(2),
      R => '0'
    );
\tmp_1_reg_385_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(3),
      Q => tmp_1_reg_385(3),
      R => '0'
    );
\tmp_1_reg_385_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(4),
      Q => tmp_1_reg_385(4),
      R => '0'
    );
\tmp_1_reg_385_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(5),
      Q => tmp_1_reg_385(5),
      R => '0'
    );
\tmp_1_reg_385_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(6),
      Q => tmp_1_reg_385(6),
      R => '0'
    );
\tmp_1_reg_385_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(7),
      Q => tmp_1_reg_385(7),
      R => '0'
    );
\tmp_1_reg_385_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(8),
      Q => tmp_1_reg_385(8),
      R => '0'
    );
\tmp_1_reg_385_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_1_fu_279_p4(9),
      Q => tmp_1_reg_385(9),
      R => '0'
    );
\tmp_4_reg_323_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_3,
      Q => tmp_4_reg_323,
      R => '0'
    );
\tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => tmp_5_reg_376,
      Q => \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0\
    );
\tmp_5_reg_376_pp0_iter7_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_5_reg_376_pp0_iter6_reg_reg[0]_srl6_n_0\,
      Q => tmp_5_reg_376_pp0_iter7_reg,
      R => '0'
    );
\tmp_5_reg_376_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_5_fu_262_p3,
      Q => tmp_5_reg_376,
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(0),
      Q => tmp_reg_380_pp0_iter2_reg(0),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(10),
      Q => tmp_reg_380_pp0_iter2_reg(10),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(11),
      Q => tmp_reg_380_pp0_iter2_reg(11),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(12),
      Q => tmp_reg_380_pp0_iter2_reg(12),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(13),
      Q => tmp_reg_380_pp0_iter2_reg(13),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(14),
      Q => tmp_reg_380_pp0_iter2_reg(14),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(15),
      Q => tmp_reg_380_pp0_iter2_reg(15),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(1),
      Q => tmp_reg_380_pp0_iter2_reg(1),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(2),
      Q => tmp_reg_380_pp0_iter2_reg(2),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(3),
      Q => tmp_reg_380_pp0_iter2_reg(3),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(4),
      Q => tmp_reg_380_pp0_iter2_reg(4),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(5),
      Q => tmp_reg_380_pp0_iter2_reg(5),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(6),
      Q => tmp_reg_380_pp0_iter2_reg(6),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(7),
      Q => tmp_reg_380_pp0_iter2_reg(7),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(8),
      Q => tmp_reg_380_pp0_iter2_reg(8),
      R => '0'
    );
\tmp_reg_380_pp0_iter2_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_reg_380(9),
      Q => tmp_reg_380_pp0_iter2_reg(9),
      R => '0'
    );
\tmp_reg_380_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(0),
      Q => tmp_reg_380(0),
      R => '0'
    );
\tmp_reg_380_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(10),
      Q => tmp_reg_380(10),
      R => '0'
    );
\tmp_reg_380_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(11),
      Q => tmp_reg_380(11),
      R => '0'
    );
\tmp_reg_380_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(12),
      Q => tmp_reg_380(12),
      R => '0'
    );
\tmp_reg_380_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(13),
      Q => tmp_reg_380(13),
      R => '0'
    );
\tmp_reg_380_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(14),
      Q => tmp_reg_380(14),
      R => '0'
    );
\tmp_reg_380_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(15),
      Q => tmp_reg_380(15),
      R => '0'
    );
\tmp_reg_380_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(1),
      Q => tmp_reg_380(1),
      R => '0'
    );
\tmp_reg_380_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(2),
      Q => tmp_reg_380(2),
      R => '0'
    );
\tmp_reg_380_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(3),
      Q => tmp_reg_380(3),
      R => '0'
    );
\tmp_reg_380_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(4),
      Q => tmp_reg_380(4),
      R => '0'
    );
\tmp_reg_380_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(5),
      Q => tmp_reg_380(5),
      R => '0'
    );
\tmp_reg_380_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(6),
      Q => tmp_reg_380(6),
      R => '0'
    );
\tmp_reg_380_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(7),
      Q => tmp_reg_380(7),
      R => '0'
    );
\tmp_reg_380_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(8),
      Q => tmp_reg_380(8),
      R => '0'
    );
\tmp_reg_380_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_fu_270_p4(9),
      Q => tmp_reg_380(9),
      R => '0'
    );
\trunc_ln6_reg_371_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_4,
      Q => trunc_ln6_reg_371(1),
      R => '0'
    );
\trunc_ln6_reg_371_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_1,
      Q => trunc_ln6_reg_371(2),
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
    a_0_ce1 : out STD_LOGIC;
    a_1_ce0 : out STD_LOGIC;
    a_1_ce1 : out STD_LOGIC;
    b_0_ce0 : out STD_LOGIC;
    b_0_ce1 : out STD_LOGIC;
    b_1_ce0 : out STD_LOGIC;
    b_1_ce1 : out STD_LOGIC;
    s_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_0_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    b_1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^a_0_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^a_0_address1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^a_1_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^a_1_address1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^b_0_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^b_0_address1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^b_1_address0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^b_1_address1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_a_0_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_a_0_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_a_1_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_a_1_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_0_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_0_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_1_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_b_1_address1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute X_INTERFACE_INFO of a_0_address1 : signal is "xilinx.com:signal:data:1.0 a_0_address1 DATA";
  attribute X_INTERFACE_PARAMETER of a_0_address1 : signal is "XIL_INTERFACENAME a_0_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_0_q0 : signal is "xilinx.com:signal:data:1.0 a_0_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_0_q0 : signal is "XIL_INTERFACENAME a_0_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_0_q1 : signal is "xilinx.com:signal:data:1.0 a_0_q1 DATA";
  attribute X_INTERFACE_PARAMETER of a_0_q1 : signal is "XIL_INTERFACENAME a_0_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_address0 : signal is "xilinx.com:signal:data:1.0 a_1_address0 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_address0 : signal is "XIL_INTERFACENAME a_1_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_address1 : signal is "xilinx.com:signal:data:1.0 a_1_address1 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_address1 : signal is "XIL_INTERFACENAME a_1_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_q0 : signal is "xilinx.com:signal:data:1.0 a_1_q0 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_q0 : signal is "XIL_INTERFACENAME a_1_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a_1_q1 : signal is "xilinx.com:signal:data:1.0 a_1_q1 DATA";
  attribute X_INTERFACE_PARAMETER of a_1_q1 : signal is "XIL_INTERFACENAME a_1_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_address0 : signal is "xilinx.com:signal:data:1.0 b_0_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_address0 : signal is "XIL_INTERFACENAME b_0_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_address1 : signal is "xilinx.com:signal:data:1.0 b_0_address1 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_address1 : signal is "XIL_INTERFACENAME b_0_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_q0 : signal is "xilinx.com:signal:data:1.0 b_0_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_q0 : signal is "XIL_INTERFACENAME b_0_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_0_q1 : signal is "xilinx.com:signal:data:1.0 b_0_q1 DATA";
  attribute X_INTERFACE_PARAMETER of b_0_q1 : signal is "XIL_INTERFACENAME b_0_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_address0 : signal is "xilinx.com:signal:data:1.0 b_1_address0 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_address0 : signal is "XIL_INTERFACENAME b_1_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_address1 : signal is "xilinx.com:signal:data:1.0 b_1_address1 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_address1 : signal is "XIL_INTERFACENAME b_1_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_q0 : signal is "xilinx.com:signal:data:1.0 b_1_q0 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_q0 : signal is "XIL_INTERFACENAME b_1_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b_1_q1 : signal is "xilinx.com:signal:data:1.0 b_1_q1 DATA";
  attribute X_INTERFACE_PARAMETER of b_1_q1 : signal is "XIL_INTERFACENAME b_1_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s : signal is "xilinx.com:signal:data:1.0 s DATA";
  attribute X_INTERFACE_PARAMETER of s : signal is "XIL_INTERFACENAME s, LAYERED_METADATA undef";
begin
  a_0_address0(1) <= \^a_0_address0\(1);
  a_0_address0(0) <= \<const1>\;
  a_0_address1(1) <= \^a_0_address1\(1);
  a_0_address1(0) <= \<const0>\;
  a_1_address0(1) <= \^a_1_address0\(1);
  a_1_address0(0) <= \<const1>\;
  a_1_address1(1) <= \^a_1_address1\(1);
  a_1_address1(0) <= \<const0>\;
  b_0_address0(1) <= \^b_0_address0\(1);
  b_0_address0(0) <= \<const1>\;
  b_0_address1(1) <= \^b_0_address1\(1);
  b_0_address1(0) <= \<const0>\;
  b_1_address0(1) <= \^b_1_address0\(1);
  b_1_address0(0) <= \<const1>\;
  b_1_address1(1) <= \^b_1_address1\(1);
  b_1_address1(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.bd_0_hls_inst_0_inner_product
     port map (
      a_0_address0(1) => \^a_0_address0\(1),
      a_0_address0(0) => NLW_inst_a_0_address0_UNCONNECTED(0),
      a_0_address1(1) => \^a_0_address1\(1),
      a_0_address1(0) => NLW_inst_a_0_address1_UNCONNECTED(0),
      a_0_ce0 => a_0_ce0,
      a_0_ce1 => a_0_ce1,
      a_0_q0(15 downto 0) => a_0_q0(15 downto 0),
      a_0_q1(15 downto 0) => a_0_q1(15 downto 0),
      a_1_address0(1) => \^a_1_address0\(1),
      a_1_address0(0) => NLW_inst_a_1_address0_UNCONNECTED(0),
      a_1_address1(1) => \^a_1_address1\(1),
      a_1_address1(0) => NLW_inst_a_1_address1_UNCONNECTED(0),
      a_1_ce0 => a_1_ce0,
      a_1_ce1 => a_1_ce1,
      a_1_q0(15 downto 0) => a_1_q0(15 downto 0),
      a_1_q1(15 downto 0) => a_1_q1(15 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_0_address0(1) => \^b_0_address0\(1),
      b_0_address0(0) => NLW_inst_b_0_address0_UNCONNECTED(0),
      b_0_address1(1) => \^b_0_address1\(1),
      b_0_address1(0) => NLW_inst_b_0_address1_UNCONNECTED(0),
      b_0_ce0 => b_0_ce0,
      b_0_ce1 => b_0_ce1,
      b_0_q0(15 downto 0) => b_0_q0(15 downto 0),
      b_0_q1(15 downto 0) => b_0_q1(15 downto 0),
      b_1_address0(1) => \^b_1_address0\(1),
      b_1_address0(0) => NLW_inst_b_1_address0_UNCONNECTED(0),
      b_1_address1(1) => \^b_1_address1\(1),
      b_1_address1(0) => NLW_inst_b_1_address1_UNCONNECTED(0),
      b_1_ce0 => b_1_ce0,
      b_1_ce1 => b_1_ce1,
      b_1_q0(15 downto 0) => b_1_q0(15 downto 0),
      b_1_q1(15 downto 0) => b_1_q1(15 downto 0),
      s(15 downto 0) => s(15 downto 0),
      s_ap_vld => s_ap_vld
    );
end STRUCTURE;
