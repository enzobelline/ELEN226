############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name inner_product "inner_product"
set_directive_pipeline -II 1 -rewind "inner_product/inner_product_loop"
set_directive_array_partition -type block -factor 2 -dim 1 "inner_product" a
set_directive_array_partition -type block -factor 2 -dim 1 "inner_product" b
set_directive_unroll -factor 2 "inner_product/inner_product_loop"
