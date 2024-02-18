// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="loop_perfect_loop_perfect,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.009500,HLS_SYN_LAT=409,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=559,HLS_SYN_LUT=481,HLS_VERSION=2022_1}" *)

module loop_perfect (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        B_address0,
        B_ce0,
        B_we0,
        B_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] A_address0;
output   A_ce0;
input  [4:0] A_q0;
output  [4:0] B_address0;
output   B_ce0;
output   B_we0;
output  [5:0] B_d0;

reg ap_idle;
reg A_ce0;
reg B_ce0;
reg B_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_142_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln23_reg_358;
reg   [0:0] icmp_ln23_reg_358_pp0_iter1_reg;
reg   [0:0] icmp_ln23_reg_358_pp0_iter2_reg;
reg   [0:0] icmp_ln23_reg_358_pp0_iter3_reg;
reg   [0:0] icmp_ln23_reg_358_pp0_iter4_reg;
reg   [0:0] icmp_ln23_reg_358_pp0_iter5_reg;
reg   [0:0] icmp_ln23_reg_358_pp0_iter6_reg;
wire   [0:0] icmp_ln24_fu_157_p2;
reg   [0:0] icmp_ln24_reg_362;
reg   [0:0] icmp_ln24_reg_362_pp0_iter1_reg;
reg   [0:0] icmp_ln24_reg_362_pp0_iter2_reg;
reg   [0:0] icmp_ln24_reg_362_pp0_iter3_reg;
wire   [4:0] select_ln23_fu_163_p3;
reg   [4:0] select_ln23_reg_367;
reg   [4:0] select_ln23_reg_367_pp0_iter1_reg;
reg   [4:0] select_ln23_reg_367_pp0_iter2_reg;
wire   [0:0] icmp_ln27_fu_176_p2;
reg   [0:0] icmp_ln27_reg_378;
reg   [0:0] icmp_ln27_reg_378_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter3_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter4_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter5_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter6_reg;
reg   [0:0] icmp_ln27_reg_378_pp0_iter7_reg;
wire   [4:0] select_ln23_1_fu_230_p3;
reg   [4:0] select_ln23_1_reg_397;
reg   [4:0] select_ln23_1_reg_397_pp0_iter5_reg;
reg   [4:0] select_ln23_1_reg_397_pp0_iter6_reg;
reg   [4:0] select_ln23_1_reg_397_pp0_iter7_reg;
wire   [0:0] trunc_ln23_fu_237_p1;
reg   [0:0] trunc_ln23_reg_402;
reg   [0:0] trunc_ln23_reg_402_pp0_iter5_reg;
reg   [0:0] trunc_ln23_reg_402_pp0_iter6_reg;
reg   [0:0] tmp_reg_411;
reg   [0:0] tmp_reg_411_pp0_iter5_reg;
reg   [0:0] tmp_reg_411_pp0_iter6_reg;
wire   [5:0] select_ln1559_1_fu_301_p3;
wire   [5:0] ap_phi_reg_pp0_iter0_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter1_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter2_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter3_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter4_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter5_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter6_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter7_storemerge_reg_112;
reg   [5:0] ap_phi_reg_pp0_iter8_storemerge_reg_112;
wire   [63:0] zext_ln24_fu_171_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln23_fu_308_p1;
reg   [11:0] acc_V_1_fu_70;
wire  signed [11:0] grp_fu_312_p3;
reg   [11:0] ap_sig_allocacmp_acc_V_1_load;
reg   [4:0] j_fu_74;
wire   [4:0] add_ln24_fu_182_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [4:0] i_fu_78;
reg   [8:0] indvar_flatten_fu_82;
wire   [8:0] add_ln23_fu_148_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln25_fu_208_p2;
wire   [4:0] add_ln23_1_fu_224_p2;
wire  signed [25:0] grp_fu_323_p2;
wire   [24:0] trunc_ln1559_fu_260_p1;
wire   [24:0] sub_ln1559_fu_263_p2;
wire   [5:0] tmp_1_fu_269_p4;
wire   [5:0] tmp_2_fu_279_p4;
wire   [5:0] select_ln1559_fu_288_p3;
wire   [5:0] sub_ln1559_1_fu_295_p2;
wire   [4:0] grp_fu_312_p0;
wire  signed [11:0] grp_fu_312_p2;
wire   [12:0] grp_fu_323_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [9:0] grp_fu_312_p00;
reg    ap_condition_214;
reg    ap_condition_179;
reg    ap_condition_240;
reg    ap_condition_186;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_done_reg = 1'b0;
end

loop_perfect_mac_muladd_5ns_5s_12s_12_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 5 ),
    .din2_WIDTH( 12 ),
    .dout_WIDTH( 12 ))
mac_muladd_5ns_5s_12s_12_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_312_p0),
    .din1(A_q0),
    .din2(grp_fu_312_p2),
    .ce(1'b1),
    .dout(grp_fu_312_p3)
);

loop_perfect_mul_mul_12s_13ns_26_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 26 ))
mul_mul_12s_13ns_26_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_312_p3),
    .din1(grp_fu_323_p1),
    .ce(1'b1),
    .dout(grp_fu_323_p2)
);

loop_perfect_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        if ((1'b1 == ap_condition_214)) begin
            ap_phi_reg_pp0_iter5_storemerge_reg_112 <= 6'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter5_storemerge_reg_112 <= ap_phi_reg_pp0_iter4_storemerge_reg_112;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        if ((1'b1 == ap_condition_179)) begin
            ap_phi_reg_pp0_iter8_storemerge_reg_112 <= select_ln1559_1_fu_301_p3;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter8_storemerge_reg_112 <= ap_phi_reg_pp0_iter7_storemerge_reg_112;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((1'b1 == ap_condition_240)) begin
            i_fu_78 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            i_fu_78 <= select_ln23_1_fu_230_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_186)) begin
        if ((icmp_ln23_fu_142_p2 == 1'd0)) begin
            indvar_flatten_fu_82 <= add_ln23_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_82 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_186)) begin
        if ((icmp_ln23_fu_142_p2 == 1'd0)) begin
            j_fu_74 <= add_ln24_fu_182_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_74 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        acc_V_1_fu_70 <= grp_fu_312_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln23_reg_358 <= icmp_ln23_fu_142_p2;
        icmp_ln23_reg_358_pp0_iter1_reg <= icmp_ln23_reg_358;
        icmp_ln24_reg_362_pp0_iter1_reg <= icmp_ln24_reg_362;
        icmp_ln27_reg_378_pp0_iter1_reg <= icmp_ln27_reg_378;
        select_ln23_reg_367_pp0_iter1_reg <= select_ln23_reg_367;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        icmp_ln23_reg_358_pp0_iter2_reg <= icmp_ln23_reg_358_pp0_iter1_reg;
        icmp_ln23_reg_358_pp0_iter3_reg <= icmp_ln23_reg_358_pp0_iter2_reg;
        icmp_ln23_reg_358_pp0_iter4_reg <= icmp_ln23_reg_358_pp0_iter3_reg;
        icmp_ln23_reg_358_pp0_iter5_reg <= icmp_ln23_reg_358_pp0_iter4_reg;
        icmp_ln23_reg_358_pp0_iter6_reg <= icmp_ln23_reg_358_pp0_iter5_reg;
        icmp_ln24_reg_362_pp0_iter2_reg <= icmp_ln24_reg_362_pp0_iter1_reg;
        icmp_ln24_reg_362_pp0_iter3_reg <= icmp_ln24_reg_362_pp0_iter2_reg;
        icmp_ln27_reg_378_pp0_iter2_reg <= icmp_ln27_reg_378_pp0_iter1_reg;
        icmp_ln27_reg_378_pp0_iter3_reg <= icmp_ln27_reg_378_pp0_iter2_reg;
        icmp_ln27_reg_378_pp0_iter4_reg <= icmp_ln27_reg_378_pp0_iter3_reg;
        icmp_ln27_reg_378_pp0_iter5_reg <= icmp_ln27_reg_378_pp0_iter4_reg;
        icmp_ln27_reg_378_pp0_iter6_reg <= icmp_ln27_reg_378_pp0_iter5_reg;
        icmp_ln27_reg_378_pp0_iter7_reg <= icmp_ln27_reg_378_pp0_iter6_reg;
        select_ln23_1_reg_397_pp0_iter5_reg <= select_ln23_1_reg_397;
        select_ln23_1_reg_397_pp0_iter6_reg <= select_ln23_1_reg_397_pp0_iter5_reg;
        select_ln23_1_reg_397_pp0_iter7_reg <= select_ln23_1_reg_397_pp0_iter6_reg;
        select_ln23_reg_367_pp0_iter2_reg <= select_ln23_reg_367_pp0_iter1_reg;
        tmp_reg_411_pp0_iter5_reg <= tmp_reg_411;
        tmp_reg_411_pp0_iter6_reg <= tmp_reg_411_pp0_iter5_reg;
        trunc_ln23_reg_402_pp0_iter5_reg <= trunc_ln23_reg_402;
        trunc_ln23_reg_402_pp0_iter6_reg <= trunc_ln23_reg_402_pp0_iter5_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_storemerge_reg_112 <= ap_phi_reg_pp0_iter0_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_storemerge_reg_112 <= ap_phi_reg_pp0_iter1_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_reg_pp0_iter3_storemerge_reg_112 <= ap_phi_reg_pp0_iter2_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_reg_pp0_iter4_storemerge_reg_112 <= ap_phi_reg_pp0_iter3_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        ap_phi_reg_pp0_iter6_storemerge_reg_112 <= ap_phi_reg_pp0_iter5_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        ap_phi_reg_pp0_iter7_storemerge_reg_112 <= ap_phi_reg_pp0_iter6_storemerge_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln23_fu_142_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln24_reg_362 <= icmp_ln24_fu_157_p2;
        icmp_ln27_reg_378 <= icmp_ln27_fu_176_p2;
        select_ln23_reg_367 <= select_ln23_fu_163_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_reg_358_pp0_iter3_reg == 1'd0))) begin
        select_ln23_1_reg_397 <= select_ln23_1_fu_230_p3;
        trunc_ln23_reg_402 <= trunc_ln23_fu_237_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln23_fu_237_p1 == 1'd0) & (icmp_ln27_reg_378_pp0_iter3_reg == 1'd1) & (icmp_ln23_reg_358_pp0_iter3_reg == 1'd0))) begin
        tmp_reg_411 <= grp_fu_312_p3[32'd11];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln27_reg_378_pp0_iter7_reg == 1'd1))) begin
        B_we0 = 1'b1;
    end else begin
        B_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln23_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_sig_allocacmp_acc_V_1_load = grp_fu_312_p3;
    end else begin
        ap_sig_allocacmp_acc_V_1_load = acc_V_1_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_74;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = zext_ln24_fu_171_p1;

assign B_address0 = zext_ln23_fu_308_p1;

assign B_d0 = ap_phi_reg_pp0_iter8_storemerge_reg_112;

assign add_ln23_1_fu_224_p2 = (i_fu_78 + 5'd1);

assign add_ln23_fu_148_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln24_fu_182_p2 = (select_ln23_fu_163_p3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_179 = ((trunc_ln23_reg_402_pp0_iter6_reg == 1'd0) & (icmp_ln27_reg_378_pp0_iter6_reg == 1'd1) & (icmp_ln23_reg_358_pp0_iter6_reg == 1'd0));
end

always @ (*) begin
    ap_condition_186 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_214 = ((trunc_ln23_fu_237_p1 == 1'd1) & (icmp_ln27_reg_378_pp0_iter3_reg == 1'd1) & (icmp_ln23_reg_358_pp0_iter3_reg == 1'd0));
end

always @ (*) begin
    ap_condition_240 = ((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter0_storemerge_reg_112 = 'bx;

assign grp_fu_312_p0 = grp_fu_312_p00;

assign grp_fu_312_p00 = select_ln23_reg_367;

assign grp_fu_312_p2 = ((icmp_ln25_fu_208_p2[0:0] == 1'b1) ? 12'd0 : ap_sig_allocacmp_acc_V_1_load);

assign grp_fu_323_p1 = 26'd6554;

assign icmp_ln23_fu_142_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd400) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_157_p2 = ((ap_sig_allocacmp_j_load == 5'd20) ? 1'b1 : 1'b0);

assign icmp_ln25_fu_208_p2 = ((select_ln23_reg_367_pp0_iter2_reg == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln27_fu_176_p2 = ((select_ln23_fu_163_p3 == 5'd19) ? 1'b1 : 1'b0);

assign select_ln1559_1_fu_301_p3 = ((tmp_reg_411_pp0_iter6_reg[0:0] == 1'b1) ? sub_ln1559_1_fu_295_p2 : tmp_2_fu_279_p4);

assign select_ln1559_fu_288_p3 = ((tmp_reg_411_pp0_iter6_reg[0:0] == 1'b1) ? tmp_1_fu_269_p4 : tmp_2_fu_279_p4);

assign select_ln23_1_fu_230_p3 = ((icmp_ln24_reg_362_pp0_iter3_reg[0:0] == 1'b1) ? add_ln23_1_fu_224_p2 : i_fu_78);

assign select_ln23_fu_163_p3 = ((icmp_ln24_fu_157_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_j_load);

assign sub_ln1559_1_fu_295_p2 = (6'd0 - select_ln1559_fu_288_p3);

assign sub_ln1559_fu_263_p2 = (25'd0 - trunc_ln1559_fu_260_p1);

assign tmp_1_fu_269_p4 = {{sub_ln1559_fu_263_p2[22:17]}};

assign tmp_2_fu_279_p4 = {{grp_fu_323_p2[22:17]}};

assign trunc_ln1559_fu_260_p1 = grp_fu_323_p2[24:0];

assign trunc_ln23_fu_237_p1 = select_ln23_1_fu_230_p3[0:0];

assign zext_ln23_fu_308_p1 = select_ln23_1_reg_397_pp0_iter7_reg;

assign zext_ln24_fu_171_p1 = select_ln23_fu_163_p3;

endmodule //loop_perfect
