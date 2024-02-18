-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Feb 24 12:39:25 2023
-- Host        : winvdi1009 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               z:/ECC/Desktop/Winter2023/ELEN226/Assignment2/InnerProduct/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
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

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a_ce0,b_ce0,s_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0[2:0],a_q0[15:0],b_address0[2:0],b_q0[15:0],s[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "inner_product,Vivado 2022.1";
begin
end;
