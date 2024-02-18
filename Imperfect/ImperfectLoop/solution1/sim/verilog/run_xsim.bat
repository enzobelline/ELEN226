
set PATH=
call C:/Apps/Xilinx/Vivado/2022.1/bin/xelab xil_defaultlib.apatb_loop_imperfect_top glbl -Oenable_linking_all_libraries  -prj loop_imperfect.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_14 --lib "ieee_proposed=./ieee_proposed" -s loop_imperfect -debug wave
call C:/Apps/Xilinx/Vivado/2022.1/bin/xsim --noieeewarnings loop_imperfect -tclbatch loop_imperfect.tcl -view loop_imperfect_dataflow_ana.wcfg -protoinst loop_imperfect.protoinst

