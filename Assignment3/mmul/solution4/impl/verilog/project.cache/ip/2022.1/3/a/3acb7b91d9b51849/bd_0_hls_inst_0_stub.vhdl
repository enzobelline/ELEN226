-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 17 17:09:09 2023
-- Host        : winvdi1008 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_0_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_0_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_1_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_2_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_0_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_1_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_2_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b_3_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_0[15:0],a_0_1[15:0],a_0_2[15:0],a_0_3[15:0],a_1_0[15:0],a_1_1[15:0],a_1_2[15:0],a_1_3[15:0],a_2_0[15:0],a_2_1[15:0],a_2_2[15:0],a_2_3[15:0],b_0_0[15:0],b_0_1[15:0],b_0_2[15:0],b_0_3[15:0],b_0_4[15:0],b_0_5[15:0],b_1_0[15:0],b_1_1[15:0],b_1_2[15:0],b_1_3[15:0],b_1_4[15:0],b_1_5[15:0],b_2_0[15:0],b_2_1[15:0],b_2_2[15:0],b_2_3[15:0],b_2_4[15:0],b_2_5[15:0],b_3_0[15:0],b_3_1[15:0],b_3_2[15:0],b_3_3[15:0],b_3_4[15:0],b_3_5[15:0],c_address0[4:0],c_d0[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mmul,Vivado 2022.1";
begin
end;
