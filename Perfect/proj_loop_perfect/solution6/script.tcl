############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_loop_perfect
set_top loop_perfect
add_files loop_perfect.cpp
add_files -tb result.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb loop_perfect_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution6" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 4 -name default
config_compile -pipeline_loops 0
source "./proj_loop_perfect/solution6/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
