############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name mmul "mmul"
set_directive_pipeline "mmul/prod"
set_directive_array_partition -dim 1 -factor 4 -type block "mmul" a
set_directive_array_partition -dim 1 -factor 4 -type block "mmul" b
