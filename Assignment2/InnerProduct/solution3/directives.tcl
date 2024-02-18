############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name inner_product "inner_product"
set_directive_pipeline "inner_product/inner_product_loop"
set_directive_pipeline "inner_product"
set_directive_array_partition -dim 1 -type complete "inner_product" a
set_directive_array_partition -dim 1 -type complete "inner_product" b
