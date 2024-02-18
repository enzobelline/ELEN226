############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name loop_perfect "loop_perfect"
set_directive_array_partition -type block -factor 2 -dim 1 "loop_perfect" A
set_directive_array_partition -type block -factor 2 -dim 1 "loop_perfect" B
set_directive_pipeline "loop_perfect/LOOP_J"
