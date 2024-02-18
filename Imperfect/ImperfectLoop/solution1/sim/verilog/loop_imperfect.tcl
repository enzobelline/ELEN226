
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/B_d0 -into $return_group -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/B_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/B_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/B_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_q1 -into $return_group -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_address1 -into $return_group -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_q0 -into $return_group -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/A_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_start -into $blocksiggroup
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_done -into $blocksiggroup
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_idle -into $blocksiggroup
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_loop_imperfect_top/AESL_inst_loop_imperfect/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_loop_imperfect_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_loop_imperfect_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_loop_imperfect_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_loop_imperfect_top/LENGTH_A -into $tb_portdepth_group -radix hex
add_wave /apatb_loop_imperfect_top/LENGTH_B -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_loop_imperfect_top/B_d0 -into $tb_return_group -radix hex
add_wave /apatb_loop_imperfect_top/B_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/B_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/B_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_loop_imperfect_top/A_q1 -into $tb_return_group -radix hex
add_wave /apatb_loop_imperfect_top/A_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/A_address1 -into $tb_return_group -radix hex
add_wave /apatb_loop_imperfect_top/A_q0 -into $tb_return_group -radix hex
add_wave /apatb_loop_imperfect_top/A_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_loop_imperfect_top/A_address0 -into $tb_return_group -radix hex
save_wave_config loop_imperfect.wcfg
run all
quit

