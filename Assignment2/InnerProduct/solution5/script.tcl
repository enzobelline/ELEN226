############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project InnerProduct
set_top inner_product
add_files inner_product.cpp
add_files -tb tb_inner_product.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution5" -flow_target vivado
set_part {xc7k160t-fbg676-2}
create_clock -period 4 -name default
config_compile -pipeline_loops 0
config_export -format ip_catalog -rtl verilog -vivado_clock 4
source "./InnerProduct/solution5/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -flow syn -rtl verilog -format ip_catalog
