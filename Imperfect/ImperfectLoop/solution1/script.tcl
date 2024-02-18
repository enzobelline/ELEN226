############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ImperfectLoop
set_top loop_imperfect
add_files loop_imperfect.cpp
add_files loop_imperfect.h
add_files -tb loop_imperfect_test.cpp
add_files -tb result.goldenImperfect.dat
open_solution "solution1" -flow_target vivado
set_part {xc7k70tfbg676-2}
create_clock -period 4 -name default
config_compile -pipeline_loops 0
#source "./ImperfectLoop/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
