-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mmul is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    c_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_we0 : OUT STD_LOGIC;
    c_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of mmul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mmul_mmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg676-2,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.168000,HLS_SYN_LAT=547,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=83,HLS_SYN_LUT=223,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_fu_149_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_reg_339 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sub_ln16_fu_177_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln16_reg_344 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln8_fu_189_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln8_reg_352 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln16_1_fu_195_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln16_1_reg_357 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal c_addr_reg_362 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln10_fu_215_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln10_reg_370 : STD_LOGIC_VECTOR (2 downto 0);
    signal a_addr_reg_375 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal b_addr_reg_380 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln12_fu_285_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln12_reg_388 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln14_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln14_reg_393 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln12_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln16_fu_297_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln16_reg_398 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_317_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal acc_V_3_reg_417 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal j_reg_114 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln8_fu_183_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_reg_125 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln10_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal zext_ln16_2_fu_204_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1317_1_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1319_1_fu_274_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_70 : STD_LOGIC_VECTOR (1 downto 0);
    signal acc_V_fu_74 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_2_fu_165_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_fu_157_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln16_fu_173_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln16_fu_199_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln1317_fu_229_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln1317_fu_233_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln12_fu_225_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_fu_251_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_fu_243_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln1319_fu_259_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln1319_fu_263_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln1319_fu_269_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_317_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component mmul_mac_muladd_16s_16s_16ns_16_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    mac_muladd_16s_16s_16ns_16_4_1_U1 : component mmul_mac_muladd_16s_16s_16ns_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b_q0,
        din1 => a_q0,
        din2 => grp_fu_317_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_317_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    acc_V_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                acc_V_fu_74 <= ap_const_lv16_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                acc_V_fu_74 <= acc_V_3_reg_417;
            end if; 
        end if;
    end process;

    i_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_fu_70 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln10_fu_209_p2 = ap_const_lv1_1))) then 
                i_fu_70 <= add_ln8_reg_352;
            end if; 
        end if;
    end process;

    j_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln8_fu_183_p2 = ap_const_lv1_0))) then 
                j_reg_114 <= ap_const_lv3_0;
            elsif (((icmp_ln12_fu_279_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                j_reg_114 <= add_ln10_reg_370;
            end if; 
        end if;
    end process;

    k_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                k_reg_125 <= add_ln12_reg_388;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln10_fu_209_p2 = ap_const_lv1_0))) then 
                k_reg_125 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                a_addr_reg_375 <= zext_ln1317_1_fu_238_p1(4 - 1 downto 0);
                add_ln12_reg_388 <= add_ln12_fu_285_p2;
                b_addr_reg_380 <= zext_ln1319_1_fu_274_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                acc_V_3_reg_417 <= grp_fu_317_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln10_reg_370 <= add_ln10_fu_215_p2;
                c_addr_reg_362 <= zext_ln16_2_fu_204_p1(5 - 1 downto 0);
                    zext_ln16_1_reg_357(2 downto 0) <= zext_ln16_1_fu_195_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln8_reg_352 <= add_ln8_fu_189_p2;
                    sub_ln16_reg_344(4 downto 1) <= sub_ln16_fu_177_p2(4 downto 1);
                    tmp_reg_339(3 downto 2) <= tmp_fu_149_p3(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln12_fu_279_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                icmp_ln14_reg_393 <= icmp_ln14_fu_291_p2;
                icmp_ln16_reg_398 <= icmp_ln16_fu_297_p2;
            end if;
        end if;
    end process;
    tmp_reg_339(1 downto 0) <= "00";
    sub_ln16_reg_344(0) <= '0';
    zext_ln16_1_reg_357(4 downto 3) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, icmp_ln12_fu_279_p2, icmp_ln8_fu_183_p2, icmp_ln10_fu_209_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln8_fu_183_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln10_fu_209_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln12_fu_279_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    a_address0 <= a_addr_reg_375;

    a_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln10_fu_215_p2 <= std_logic_vector(unsigned(j_reg_114) + unsigned(ap_const_lv3_1));
    add_ln12_fu_285_p2 <= std_logic_vector(unsigned(k_reg_125) + unsigned(ap_const_lv3_1));
    add_ln1317_fu_233_p2 <= std_logic_vector(unsigned(tmp_reg_339) + unsigned(zext_ln1317_fu_229_p1));
    add_ln1319_fu_269_p2 <= std_logic_vector(unsigned(sub_ln1319_fu_263_p2) + unsigned(zext_ln16_1_reg_357));
    add_ln16_fu_199_p2 <= std_logic_vector(unsigned(sub_ln16_reg_344) + unsigned(zext_ln16_1_fu_195_p1));
    add_ln8_fu_189_p2 <= std_logic_vector(unsigned(i_fu_70) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln8_fu_183_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln8_fu_183_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln8_fu_183_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln8_fu_183_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_address0 <= b_addr_reg_380;

    b_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= c_addr_reg_362;

    c_ce0_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    c_d0 <= acc_V_3_reg_417;

    c_we0_assign_proc : process(icmp_ln16_reg_398, ap_CS_fsm_state10)
    begin
        if (((icmp_ln16_reg_398 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            c_we0 <= ap_const_logic_1;
        else 
            c_we0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_317_p2 <= 
        ap_const_lv16_0 when (icmp_ln14_reg_393(0) = '1') else 
        acc_V_fu_74;
    icmp_ln10_fu_209_p2 <= "1" when (j_reg_114 = ap_const_lv3_6) else "0";
    icmp_ln12_fu_279_p2 <= "1" when (k_reg_125 = ap_const_lv3_4) else "0";
    icmp_ln14_fu_291_p2 <= "1" when (k_reg_125 = ap_const_lv3_0) else "0";
    icmp_ln16_fu_297_p2 <= "1" when (k_reg_125 = ap_const_lv3_3) else "0";
    icmp_ln8_fu_183_p2 <= "1" when (i_fu_70 = ap_const_lv2_3) else "0";
    sub_ln1319_fu_263_p2 <= std_logic_vector(unsigned(tmp_3_fu_243_p3) - unsigned(zext_ln1319_fu_259_p1));
    sub_ln16_fu_177_p2 <= std_logic_vector(unsigned(tmp_1_fu_157_p3) - unsigned(zext_ln16_fu_173_p1));
    tmp_1_fu_157_p3 <= (i_fu_70 & ap_const_lv3_0);
    tmp_2_fu_165_p3 <= (i_fu_70 & ap_const_lv1_0);
    tmp_3_fu_243_p3 <= (trunc_ln12_fu_225_p1 & ap_const_lv3_0);
    tmp_4_fu_251_p3 <= (k_reg_125 & ap_const_lv1_0);
    tmp_fu_149_p3 <= (i_fu_70 & ap_const_lv2_0);
    trunc_ln12_fu_225_p1 <= k_reg_125(2 - 1 downto 0);
    zext_ln1317_1_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1317_fu_233_p2),64));
    zext_ln1317_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_125),4));
    zext_ln1319_1_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1319_fu_269_p2),64));
    zext_ln1319_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_251_p3),5));
    zext_ln16_1_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_114),5));
    zext_ln16_2_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln16_fu_199_p2),64));
    zext_ln16_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_165_p3),5));
end behav;
