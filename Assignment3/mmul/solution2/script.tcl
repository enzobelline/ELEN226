############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mmul
set_top mmul
add_files mmul.cpp
add_files mmul.h
add_files -tb tb_mmul.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xc7k160t-fbg676-2}
create_clock -period 4 -name default
config_compile -pipeline_loops 0
config_export -format ip_catalog -rtl verilog -vivado_clock 4
source "./mmul/solution2/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -flow impl -rtl verilog -format ip_catalog
