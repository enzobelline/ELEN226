
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_mmul_top/AESL_inst_mmul/c_d0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/c_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/c_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/c_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_5 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_4 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_3_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_5 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_4 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_2_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_5 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_4 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_1_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_5 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_4 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/b_0_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_2_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_2_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_2_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_2_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_1_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_1_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_1_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_1_0 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_0_3 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_0_2 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_0_1 -into $return_group -radix hex
add_wave /apatb_mmul_top/AESL_inst_mmul/a_0_0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_start -into $blocksiggroup
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_done -into $blocksiggroup
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_idle -into $blocksiggroup
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_mmul_top/AESL_inst_mmul/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_mmul_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_mmul_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_mmul_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_0_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_0_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_0_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_0_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_1_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_1_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_1_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_1_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_2_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_2_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_2_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_a_2_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_0_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_1_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_2_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_b_3_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_mmul_top/LENGTH_c -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_mmul_top/c_d0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/c_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_mmul_top/c_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_mmul_top/c_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_mmul_top/b_3_5 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_3_4 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_3_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_3_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_3_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_3_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_5 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_4 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_2_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_5 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_4 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_1_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_5 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_4 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/b_0_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_2_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_2_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_2_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_2_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_1_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_1_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_1_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_1_0 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_0_3 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_0_2 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_0_1 -into $tb_return_group -radix hex
add_wave /apatb_mmul_top/a_0_0 -into $tb_return_group -radix hex
save_wave_config mmul.wcfg
run all
quit

