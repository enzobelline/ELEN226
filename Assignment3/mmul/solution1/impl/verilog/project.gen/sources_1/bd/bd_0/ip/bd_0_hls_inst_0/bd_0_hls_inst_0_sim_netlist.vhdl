-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 17 15:19:10 2023
-- Host        : winvdi1008 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               z:/ECC/Desktop/Winter2023/ELEN226/Assignment3/mmul/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_d0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_start : in STD_LOGIC;
    p_reg_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 : entity is "mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0";
end bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 is
  signal ap_NS_fsm14_out : STD_LOGIC;
  signal p_reg_reg_i_2_n_0 : STD_LOGIC;
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
      C(15 downto 0) => c_d0(15 downto 0),
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
      OPMODE(6) => '0',
      OPMODE(5) => p_reg_reg_i_2_n_0,
      OPMODE(4) => p_reg_reg_i_2_n_0,
      OPMODE(3 downto 0) => B"0101",
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
      RSTC => ap_NS_fsm14_out,
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
p_reg_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      O => ap_NS_fsm14_out
    );
p_reg_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_reg_reg_0,
      O => p_reg_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_d0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_start : in STD_LOGIC;
    p_reg_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 : entity is "mmul_mac_muladd_16s_16s_16ns_16_4_1";
end bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1 is
begin
mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_start => ap_start,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      c_d0(15 downto 0) => c_d0(15 downto 0),
      p_reg_reg_0 => p_reg_reg
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
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_ce0 : out STD_LOGIC;
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b_ce0 : out STD_LOGIC;
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    c_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_mmul : entity is "mmul";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of bd_0_hls_inst_0_mmul : entity is "10'b0000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of bd_0_hls_inst_0_mmul : entity is "10'b1000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of bd_0_hls_inst_0_mmul : entity is "10'b0000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of bd_0_hls_inst_0_mmul : entity is "10'b0000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of bd_0_hls_inst_0_mmul : entity is "10'b0000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of bd_0_hls_inst_0_mmul : entity is "10'b0000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of bd_0_hls_inst_0_mmul : entity is "10'b0000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of bd_0_hls_inst_0_mmul : entity is "10'b0001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of bd_0_hls_inst_0_mmul : entity is "10'b0010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of bd_0_hls_inst_0_mmul : entity is "10'b0100000000";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_mmul : entity is "yes";
end bd_0_hls_inst_0_mmul;

architecture STRUCTURE of bd_0_hls_inst_0_mmul is
  signal \^a_ce0\ : STD_LOGIC;
  signal add_ln10_fu_215_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln10_reg_370 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln12_fu_285_p2 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal add_ln12_reg_388 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln12_reg_388[0]_i_1_n_0\ : STD_LOGIC;
  signal add_ln1317_fu_233_p2 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal add_ln1319_fu_269_p2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal add_ln16_fu_199_p2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal add_ln8_fu_189_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln8_reg_352 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ap_CS_fsm[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[5]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[6]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[7]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^c_address0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^c_ce0\ : STD_LOGIC;
  signal \^c_d0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i_fu_70[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_fu_70[1]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln14_reg_393[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln14_reg_393_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln16_reg_398[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_398_reg_n_0_[0]\ : STD_LOGIC;
  signal j_reg_114 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \j_reg_114[0]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg_114[1]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg_114[2]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_125[0]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_125[1]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_125[2]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_125[2]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg_125_reg_n_0_[2]\ : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal sub_ln16_reg_344 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal tmp_1_fu_157_p3 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal tmp_3_fu_243_p3 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal tmp_reg_339 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal zext_ln16_1_reg_357_reg : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_addr_reg_375[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \a_addr_reg_375[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \add_ln10_reg_370[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \add_ln10_reg_370[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \add_ln12_reg_388[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \add_ln12_reg_388[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \add_ln8_reg_352[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \add_ln8_reg_352[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b_addr_reg_380[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \b_addr_reg_380[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \b_addr_reg_380[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b_addr_reg_380[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c_addr_reg_362[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \c_addr_reg_362[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icmp_ln14_reg_393[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \icmp_ln16_reg_398[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \j_reg_114[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \k_reg_125[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sub_ln16_reg_344[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sub_ln16_reg_344[4]_i_1\ : label is "soft_lutpair11";
begin
  a_ce0 <= \^a_ce0\;
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  b_ce0 <= \^a_ce0\;
  c_address0(4 downto 0) <= \^c_address0\(4 downto 0);
  c_ce0 <= \^c_ce0\;
  c_d0(15 downto 0) <= \^c_d0\(15 downto 0);
\a_addr_reg_375[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_reg_339(2),
      I1 => \k_reg_125_reg_n_0_[2]\,
      O => add_ln1317_fu_233_p2(2)
    );
\a_addr_reg_375[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \k_reg_125_reg_n_0_[2]\,
      I1 => tmp_reg_339(2),
      I2 => tmp_reg_339(3),
      O => add_ln1317_fu_233_p2(3)
    );
\a_addr_reg_375_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => tmp_3_fu_243_p3(3),
      Q => a_address0(0),
      R => '0'
    );
\a_addr_reg_375_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => tmp_3_fu_243_p3(4),
      Q => a_address0(1),
      R => '0'
    );
\a_addr_reg_375_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1317_fu_233_p2(2),
      Q => a_address0(2),
      R => '0'
    );
\a_addr_reg_375_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1317_fu_233_p2(3),
      Q => a_address0(3),
      R => '0'
    );
\acc_V_3_reg_417_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_15,
      Q => \^c_d0\(0),
      R => '0'
    );
\acc_V_3_reg_417_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_5,
      Q => \^c_d0\(10),
      R => '0'
    );
\acc_V_3_reg_417_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_4,
      Q => \^c_d0\(11),
      R => '0'
    );
\acc_V_3_reg_417_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_3,
      Q => \^c_d0\(12),
      R => '0'
    );
\acc_V_3_reg_417_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_2,
      Q => \^c_d0\(13),
      R => '0'
    );
\acc_V_3_reg_417_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_1,
      Q => \^c_d0\(14),
      R => '0'
    );
\acc_V_3_reg_417_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_0,
      Q => \^c_d0\(15),
      R => '0'
    );
\acc_V_3_reg_417_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_14,
      Q => \^c_d0\(1),
      R => '0'
    );
\acc_V_3_reg_417_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_13,
      Q => \^c_d0\(2),
      R => '0'
    );
\acc_V_3_reg_417_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_12,
      Q => \^c_d0\(3),
      R => '0'
    );
\acc_V_3_reg_417_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_11,
      Q => \^c_d0\(4),
      R => '0'
    );
\acc_V_3_reg_417_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_10,
      Q => \^c_d0\(5),
      R => '0'
    );
\acc_V_3_reg_417_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_9,
      Q => \^c_d0\(6),
      R => '0'
    );
\acc_V_3_reg_417_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_8,
      Q => \^c_d0\(7),
      R => '0'
    );
\acc_V_3_reg_417_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_7,
      Q => \^c_d0\(8),
      R => '0'
    );
\acc_V_3_reg_417_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => mac_muladd_16s_16s_16ns_16_4_1_U1_n_6,
      Q => \^c_d0\(9),
      R => '0'
    );
\add_ln10_reg_370[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg_114(0),
      O => add_ln10_fu_215_p2(0)
    );
\add_ln10_reg_370[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg_114(0),
      I1 => j_reg_114(1),
      O => add_ln10_fu_215_p2(1)
    );
\add_ln10_reg_370[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => j_reg_114(1),
      I1 => j_reg_114(0),
      I2 => j_reg_114(2),
      O => add_ln10_fu_215_p2(2)
    );
\add_ln10_reg_370_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln10_fu_215_p2(0),
      Q => add_ln10_reg_370(0),
      R => '0'
    );
\add_ln10_reg_370_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln10_fu_215_p2(1),
      Q => add_ln10_reg_370(1),
      R => '0'
    );
\add_ln10_reg_370_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln10_fu_215_p2(2),
      Q => add_ln10_reg_370(2),
      R => '0'
    );
\add_ln12_reg_388[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      O => \add_ln12_reg_388[0]_i_1_n_0\
    );
\add_ln12_reg_388[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => tmp_3_fu_243_p3(4),
      O => add_ln12_fu_285_p2(1)
    );
\add_ln12_reg_388[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp_3_fu_243_p3(4),
      I1 => tmp_3_fu_243_p3(3),
      I2 => \k_reg_125_reg_n_0_[2]\,
      O => add_ln12_fu_285_p2(2)
    );
\add_ln12_reg_388_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => \add_ln12_reg_388[0]_i_1_n_0\,
      Q => add_ln12_reg_388(0),
      R => '0'
    );
\add_ln12_reg_388_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln12_fu_285_p2(1),
      Q => add_ln12_reg_388(1),
      R => '0'
    );
\add_ln12_reg_388_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln12_fu_285_p2(2),
      Q => add_ln12_reg_388(2),
      R => '0'
    );
\add_ln8_reg_352[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_1_fu_157_p3(3),
      O => add_ln8_fu_189_p2(0)
    );
\add_ln8_reg_352[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_1_fu_157_p3(3),
      I1 => tmp_1_fu_157_p3(4),
      O => add_ln8_fu_189_p2(1)
    );
\add_ln8_reg_352_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => add_ln8_fu_189_p2(0),
      Q => add_ln8_reg_352(0),
      R => '0'
    );
\add_ln8_reg_352_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => add_ln8_fu_189_p2(1),
      Q => add_ln8_reg_352(1),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \ap_CS_fsm[0]_i_2_n_0\,
      I3 => \ap_CS_fsm[0]_i_3_n_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[6]\,
      I1 => \ap_CS_fsm_reg_n_0_[7]\,
      I2 => \^a_ce0\,
      I3 => \ap_CS_fsm_reg_n_0_[5]\,
      I4 => \^c_ce0\,
      I5 => ap_CS_fsm_state9,
      O => \ap_CS_fsm[0]_i_2_n_0\
    );
\ap_CS_fsm[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state4,
      I2 => ap_CS_fsm_state2,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => tmp_1_fu_157_p3(4),
      I5 => tmp_1_fu_157_p3(3),
      O => \ap_CS_fsm[0]_i_3_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0C000000"
    )
        port map (
      I0 => ap_start,
      I1 => j_reg_114(2),
      I2 => j_reg_114(0),
      I3 => j_reg_114(1),
      I4 => ap_CS_fsm_state3,
      I5 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77770F00"
    )
        port map (
      I0 => tmp_1_fu_157_p3(3),
      I1 => tmp_1_fu_157_p3(4),
      I2 => \ap_CS_fsm[2]_i_2_n_0\,
      I3 => ap_CS_fsm_state4,
      I4 => ap_CS_fsm_state2,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \k_reg_125_reg_n_0_[2]\,
      I1 => tmp_3_fu_243_p3(4),
      I2 => tmp_3_fu_243_p3(3),
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA2AA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => j_reg_114(2),
      I2 => j_reg_114(0),
      I3 => j_reg_114(1),
      I4 => \^c_ce0\,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => tmp_3_fu_243_p3(4),
      I2 => \k_reg_125_reg_n_0_[2]\,
      I3 => ap_CS_fsm_state4,
      O => ap_NS_fsm(4)
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
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => \^a_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^a_ce0\,
      Q => \ap_CS_fsm_reg_n_0_[5]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[5]\,
      Q => \ap_CS_fsm_reg_n_0_[6]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[6]\,
      Q => \ap_CS_fsm_reg_n_0_[7]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[7]\,
      Q => ap_CS_fsm_state9,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state9,
      Q => \^c_ce0\,
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
ap_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => tmp_1_fu_157_p3(4),
      I2 => tmp_1_fu_157_p3(3),
      O => \^ap_ready\
    );
\b_addr_reg_380[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => zext_ln16_1_reg_357_reg(1),
      O => add_ln1319_fu_269_p2(1)
    );
\b_addr_reg_380[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => zext_ln16_1_reg_357_reg(1),
      I2 => tmp_3_fu_243_p3(4),
      I3 => zext_ln16_1_reg_357_reg(2),
      O => add_ln1319_fu_269_p2(2)
    );
\b_addr_reg_380[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718ECF30"
    )
        port map (
      I0 => zext_ln16_1_reg_357_reg(1),
      I1 => zext_ln16_1_reg_357_reg(2),
      I2 => tmp_3_fu_243_p3(4),
      I3 => \k_reg_125_reg_n_0_[2]\,
      I4 => tmp_3_fu_243_p3(3),
      O => add_ln1319_fu_269_p2(3)
    );
\b_addr_reg_380[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"801FFC00"
    )
        port map (
      I0 => zext_ln16_1_reg_357_reg(1),
      I1 => zext_ln16_1_reg_357_reg(2),
      I2 => tmp_3_fu_243_p3(3),
      I3 => tmp_3_fu_243_p3(4),
      I4 => \k_reg_125_reg_n_0_[2]\,
      O => add_ln1319_fu_269_p2(4)
    );
\b_addr_reg_380_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => \^c_address0\(0),
      Q => b_address0(0),
      R => '0'
    );
\b_addr_reg_380_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1319_fu_269_p2(1),
      Q => b_address0(1),
      R => '0'
    );
\b_addr_reg_380_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1319_fu_269_p2(2),
      Q => b_address0(2),
      R => '0'
    );
\b_addr_reg_380_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1319_fu_269_p2(3),
      Q => b_address0(3),
      R => '0'
    );
\b_addr_reg_380_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => add_ln1319_fu_269_p2(4),
      Q => b_address0(4),
      R => '0'
    );
\c_addr_reg_362[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_reg_339(2),
      I1 => j_reg_114(1),
      O => add_ln16_fu_199_p2(1)
    );
\c_addr_reg_362[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => j_reg_114(2),
      I1 => add_ln8_reg_352(1),
      I2 => j_reg_114(1),
      I3 => tmp_reg_339(2),
      O => add_ln16_fu_199_p2(2)
    );
\c_addr_reg_362[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556A6AAA"
    )
        port map (
      I0 => sub_ln16_reg_344(3),
      I1 => tmp_reg_339(2),
      I2 => j_reg_114(1),
      I3 => j_reg_114(2),
      I4 => add_ln8_reg_352(1),
      O => add_ln16_fu_199_p2(3)
    );
\c_addr_reg_362[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777FFFFE8880000"
    )
        port map (
      I0 => add_ln8_reg_352(1),
      I1 => j_reg_114(2),
      I2 => j_reg_114(1),
      I3 => tmp_reg_339(2),
      I4 => sub_ln16_reg_344(3),
      I5 => sub_ln16_reg_344(4),
      O => add_ln16_fu_199_p2(4)
    );
\c_addr_reg_362_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => j_reg_114(0),
      Q => \^c_address0\(0),
      R => '0'
    );
\c_addr_reg_362_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln16_fu_199_p2(1),
      Q => \^c_address0\(1),
      R => '0'
    );
\c_addr_reg_362_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln16_fu_199_p2(2),
      Q => \^c_address0\(2),
      R => '0'
    );
\c_addr_reg_362_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln16_fu_199_p2(3),
      Q => \^c_address0\(3),
      R => '0'
    );
\c_addr_reg_362_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => add_ln16_fu_199_p2(4),
      Q => \^c_address0\(4),
      R => '0'
    );
c_we0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln16_reg_398_reg_n_0_[0]\,
      I1 => \^c_ce0\,
      O => c_we0
    );
\i_fu_70[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BA8ABA8ABA8A"
    )
        port map (
      I0 => tmp_1_fu_157_p3(3),
      I1 => \k_reg_125[2]_i_2_n_0\,
      I2 => ap_CS_fsm_state3,
      I3 => add_ln8_reg_352(0),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_start,
      O => \i_fu_70[0]_i_1_n_0\
    );
\i_fu_70[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BA8ABA8ABA8A"
    )
        port map (
      I0 => tmp_1_fu_157_p3(4),
      I1 => \k_reg_125[2]_i_2_n_0\,
      I2 => ap_CS_fsm_state3,
      I3 => add_ln8_reg_352(1),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_start,
      O => \i_fu_70[1]_i_1_n_0\
    );
\i_fu_70_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_fu_70[0]_i_1_n_0\,
      Q => tmp_1_fu_157_p3(3),
      R => '0'
    );
\i_fu_70_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_fu_70[1]_i_1_n_0\,
      Q => tmp_1_fu_157_p3(4),
      R => '0'
    );
\icmp_ln14_reg_393[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FF0100"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => tmp_3_fu_243_p3(4),
      I2 => \k_reg_125_reg_n_0_[2]\,
      I3 => ap_CS_fsm_state4,
      I4 => \icmp_ln14_reg_393_reg_n_0_[0]\,
      O => \icmp_ln14_reg_393[0]_i_1_n_0\
    );
\icmp_ln14_reg_393_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln14_reg_393[0]_i_1_n_0\,
      Q => \icmp_ln14_reg_393_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln16_reg_398[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18FF0800"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => tmp_3_fu_243_p3(4),
      I2 => \k_reg_125_reg_n_0_[2]\,
      I3 => ap_CS_fsm_state4,
      I4 => \icmp_ln16_reg_398_reg_n_0_[0]\,
      O => \icmp_ln16_reg_398[0]_i_1_n_0\
    );
\icmp_ln16_reg_398_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln16_reg_398[0]_i_1_n_0\,
      Q => \icmp_ln16_reg_398_reg_n_0_[0]\,
      R => '0'
    );
\j_reg_114[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E200E200E200E2"
    )
        port map (
      I0 => j_reg_114(0),
      I1 => ap_NS_fsm1,
      I2 => add_ln10_reg_370(0),
      I3 => ap_CS_fsm_state2,
      I4 => tmp_1_fu_157_p3(3),
      I5 => tmp_1_fu_157_p3(4),
      O => \j_reg_114[0]_i_1_n_0\
    );
\j_reg_114[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E200E200E200E2"
    )
        port map (
      I0 => j_reg_114(1),
      I1 => ap_NS_fsm1,
      I2 => add_ln10_reg_370(1),
      I3 => ap_CS_fsm_state2,
      I4 => tmp_1_fu_157_p3(3),
      I5 => tmp_1_fu_157_p3(4),
      O => \j_reg_114[1]_i_1_n_0\
    );
\j_reg_114[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E200E200E200E2"
    )
        port map (
      I0 => j_reg_114(2),
      I1 => ap_NS_fsm1,
      I2 => add_ln10_reg_370(2),
      I3 => ap_CS_fsm_state2,
      I4 => tmp_1_fu_157_p3(3),
      I5 => tmp_1_fu_157_p3(4),
      O => \j_reg_114[2]_i_1_n_0\
    );
\j_reg_114[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => tmp_3_fu_243_p3(3),
      I2 => tmp_3_fu_243_p3(4),
      I3 => \k_reg_125_reg_n_0_[2]\,
      O => ap_NS_fsm1
    );
\j_reg_114_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_114[0]_i_1_n_0\,
      Q => j_reg_114(0),
      R => '0'
    );
\j_reg_114_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_114[1]_i_1_n_0\,
      Q => j_reg_114(1),
      R => '0'
    );
\j_reg_114_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_114[2]_i_1_n_0\,
      Q => j_reg_114(2),
      R => '0'
    );
\k_reg_125[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => tmp_3_fu_243_p3(3),
      I1 => add_ln12_reg_388(0),
      I2 => \k_reg_125[2]_i_2_n_0\,
      I3 => ap_CS_fsm_state3,
      I4 => \^c_ce0\,
      O => \k_reg_125[0]_i_1_n_0\
    );
\k_reg_125[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => tmp_3_fu_243_p3(4),
      I1 => add_ln12_reg_388(1),
      I2 => \k_reg_125[2]_i_2_n_0\,
      I3 => ap_CS_fsm_state3,
      I4 => \^c_ce0\,
      O => \k_reg_125[1]_i_1_n_0\
    );
\k_reg_125[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => \k_reg_125_reg_n_0_[2]\,
      I1 => add_ln12_reg_388(2),
      I2 => \k_reg_125[2]_i_2_n_0\,
      I3 => ap_CS_fsm_state3,
      I4 => \^c_ce0\,
      O => \k_reg_125[2]_i_1_n_0\
    );
\k_reg_125[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => j_reg_114(2),
      I1 => j_reg_114(0),
      I2 => j_reg_114(1),
      O => \k_reg_125[2]_i_2_n_0\
    );
\k_reg_125_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_reg_125[0]_i_1_n_0\,
      Q => tmp_3_fu_243_p3(3),
      R => '0'
    );
\k_reg_125_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_reg_125[1]_i_1_n_0\,
      Q => tmp_3_fu_243_p3(4),
      R => '0'
    );
\k_reg_125_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_reg_125[2]_i_1_n_0\,
      Q => \k_reg_125_reg_n_0_[2]\,
      R => '0'
    );
mac_muladd_16s_16s_16ns_16_4_1_U1: entity work.bd_0_hls_inst_0_mmul_mac_muladd_16s_16s_16ns_16_4_1
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
      Q(1) => \^c_ce0\,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_start => ap_start,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      c_d0(15 downto 0) => \^c_d0\(15 downto 0),
      p_reg_reg => \icmp_ln14_reg_393_reg_n_0_[0]\
    );
\sub_ln16_reg_344[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_1_fu_157_p3(4),
      I1 => tmp_1_fu_157_p3(3),
      O => p_0_in(2)
    );
\sub_ln16_reg_344[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tmp_1_fu_157_p3(4),
      I1 => tmp_1_fu_157_p3(3),
      O => p_0_in(3)
    );
\sub_ln16_reg_344_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_0_in(2),
      Q => sub_ln16_reg_344(3),
      R => '0'
    );
\sub_ln16_reg_344_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_0_in(3),
      Q => sub_ln16_reg_344(4),
      R => '0'
    );
\tmp_reg_339_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => tmp_1_fu_157_p3(3),
      Q => tmp_reg_339(2),
      R => '0'
    );
\tmp_reg_339_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => tmp_1_fu_157_p3(4),
      Q => tmp_reg_339(3),
      R => '0'
    );
\zext_ln16_1_reg_357_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => j_reg_114(1),
      Q => zext_ln16_1_reg_357_reg(1),
      R => '0'
    );
\zext_ln16_1_reg_357_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => j_reg_114(2),
      Q => zext_ln16_1_reg_357_reg(2),
      R => '0'
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
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "10'b0000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "10'b1000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "10'b0000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "10'b0000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "10'b0000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "10'b0000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "10'b0000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "10'b0001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "10'b0010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "10'b0100000000";
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
  attribute X_INTERFACE_INFO of c_address0 : signal is "xilinx.com:signal:data:1.0 c_address0 DATA";
  attribute X_INTERFACE_PARAMETER of c_address0 : signal is "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_d0 : signal is "xilinx.com:signal:data:1.0 c_d0 DATA";
  attribute X_INTERFACE_PARAMETER of c_d0 : signal is "XIL_INTERFACENAME c_d0, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_mmul
     port map (
      a_address0(3 downto 0) => a_address0(3 downto 0),
      a_ce0 => a_ce0,
      a_q0(15 downto 0) => a_q0(15 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_address0(4 downto 0) => b_address0(4 downto 0),
      b_ce0 => b_ce0,
      b_q0(15 downto 0) => b_q0(15 downto 0),
      c_address0(4 downto 0) => c_address0(4 downto 0),
      c_ce0 => c_ce0,
      c_d0(15 downto 0) => c_d0(15 downto 0),
      c_we0 => c_we0
    );
end STRUCTURE;
