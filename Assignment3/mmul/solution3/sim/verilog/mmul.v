// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mmul_mmul,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg676-2,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.787500,HLS_SYN_LAT=81,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=323,HLS_SYN_LUT=407,HLS_VERSION=2022_1}" *)

module mmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_0_address0,
        a_0_ce0,
        a_0_q0,
        a_1_address0,
        a_1_ce0,
        a_1_q0,
        a_2_address0,
        a_2_ce0,
        a_2_q0,
        a_3_address0,
        a_3_ce0,
        a_3_we0,
        a_3_d0,
        a_3_q0,
        a_3_address1,
        a_3_ce1,
        a_3_we1,
        a_3_d1,
        a_3_q1,
        b_0_address0,
        b_0_ce0,
        b_0_q0,
        b_1_address0,
        b_1_ce0,
        b_1_q0,
        b_2_address0,
        b_2_ce0,
        b_2_q0,
        b_3_address0,
        b_3_ce0,
        b_3_q0,
        c_address0,
        c_ce0,
        c_we0,
        c_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] a_0_address0;
output   a_0_ce0;
input  [15:0] a_0_q0;
output  [1:0] a_1_address0;
output   a_1_ce0;
input  [15:0] a_1_q0;
output  [1:0] a_2_address0;
output   a_2_ce0;
input  [15:0] a_2_q0;
output  [1:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [15:0] a_3_d0;
input  [15:0] a_3_q0;
output  [1:0] a_3_address1;
output   a_3_ce1;
output   a_3_we1;
output  [15:0] a_3_d1;
input  [15:0] a_3_q1;
output  [2:0] b_0_address0;
output   b_0_ce0;
input  [15:0] b_0_q0;
output  [2:0] b_1_address0;
output   b_1_ce0;
input  [15:0] b_1_q0;
output  [2:0] b_2_address0;
output   b_2_ce0;
input  [15:0] b_2_q0;
output  [2:0] b_3_address0;
output   b_3_ce0;
input  [15:0] b_3_q0;
output  [4:0] c_address0;
output   c_ce0;
output   c_we0;
output  [15:0] c_d0;

reg ap_idle;
reg a_0_ce0;
reg a_1_ce0;
reg a_2_ce0;
reg b_0_ce0;
reg b_1_ce0;
reg b_2_ce0;
reg b_3_ce0;
reg c_ce0;
reg c_we0;

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
wire   [0:0] icmp_ln8_fu_250_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln10_fu_265_p2;
reg   [0:0] icmp_ln10_reg_545;
wire   [1:0] select_ln8_1_fu_320_p3;
reg   [1:0] select_ln8_1_reg_553;
reg   [1:0] select_ln8_1_reg_553_pp0_iter2_reg;
wire   [2:0] select_ln10_fu_355_p3;
reg   [2:0] select_ln10_reg_560;
reg   [2:0] select_ln10_reg_560_pp0_iter2_reg;
wire   [2:0] select_ln10_1_fu_363_p3;
reg   [2:0] select_ln10_1_reg_566;
wire   [0:0] icmp_ln14_fu_371_p2;
reg   [0:0] icmp_ln14_reg_572;
reg   [0:0] icmp_ln14_reg_572_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_572_pp0_iter3_reg;
reg   [0:0] icmp_ln14_reg_572_pp0_iter4_reg;
reg   [0:0] icmp_ln14_reg_572_pp0_iter5_reg;
wire   [0:0] icmp_ln16_fu_377_p2;
reg   [0:0] icmp_ln16_reg_577;
reg   [0:0] icmp_ln16_reg_577_pp0_iter2_reg;
reg   [0:0] icmp_ln16_reg_577_pp0_iter3_reg;
reg   [0:0] icmp_ln16_reg_577_pp0_iter4_reg;
reg   [0:0] icmp_ln16_reg_577_pp0_iter5_reg;
reg   [0:0] icmp_ln16_reg_577_pp0_iter6_reg;
reg   [0:0] icmp_ln16_reg_577_pp0_iter7_reg;
wire   [2:0] add_ln12_fu_383_p2;
reg   [2:0] add_ln12_reg_581;
wire   [4:0] add_ln16_fu_433_p2;
reg   [4:0] add_ln16_reg_586;
reg   [4:0] add_ln16_reg_586_pp0_iter3_reg;
reg   [4:0] add_ln16_reg_586_pp0_iter4_reg;
reg   [4:0] add_ln16_reg_586_pp0_iter5_reg;
reg   [4:0] add_ln16_reg_586_pp0_iter6_reg;
wire  signed [15:0] tmp_fu_449_p5;
reg  signed [15:0] tmp_reg_626;
wire  signed [15:0] tmp_1_fu_460_p6;
reg  signed [15:0] tmp_1_reg_631;
reg   [4:0] c_addr_reg_641;
wire   [15:0] grp_fu_491_p3;
reg  signed [15:0] acc_V_reg_646;
wire   [63:0] zext_ln16_1_fu_423_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_439_p1;
wire   [63:0] zext_ln16_3_fu_483_p1;
reg   [15:0] acc_V_1_fu_90;
reg   [15:0] ap_sig_allocacmp_acc_V_1_load;
wire    ap_loop_init;
reg   [2:0] k_fu_94;
reg   [2:0] ap_sig_allocacmp_k_load;
reg   [2:0] j_fu_98;
reg   [5:0] indvar_flatten_fu_102;
wire   [5:0] select_ln10_2_fu_280_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load_1;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [1:0] i_fu_106;
reg   [6:0] indvar_flatten36_fu_110;
wire   [6:0] add_ln8_1_fu_256_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten36_load;
wire   [5:0] add_ln10_1_fu_274_p2;
wire   [1:0] add_ln8_fu_307_p2;
wire   [0:0] icmp_ln12_fu_332_p2;
wire   [0:0] xor_ln8_fu_327_p2;
wire   [2:0] select_ln8_fu_313_p3;
wire   [0:0] and_ln8_fu_338_p2;
wire   [0:0] or_ln10_fu_350_p2;
wire   [2:0] add_ln10_fu_344_p2;
wire   [2:0] tmp_3_fu_406_p3;
wire   [4:0] tmp_2_fu_399_p3;
wire   [4:0] zext_ln16_fu_413_p1;
wire   [4:0] sub_ln16_fu_417_p2;
wire   [4:0] zext_ln16_2_fu_430_p1;
wire   [15:0] grp_fu_491_p2;
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
reg    ap_condition_240;
reg    ap_condition_242;
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

mmul_mux_32_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
mux_32_16_1_1_U1(
    .din0(a_0_q0),
    .din1(a_1_q0),
    .din2(a_2_q0),
    .din3(select_ln8_1_reg_553_pp0_iter2_reg),
    .dout(tmp_fu_449_p5)
);

mmul_mux_43_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 3 ),
    .dout_WIDTH( 16 ))
mux_43_16_1_1_U2(
    .din0(b_0_q0),
    .din1(b_1_q0),
    .din2(b_2_q0),
    .din3(b_3_q0),
    .din4(select_ln10_reg_560_pp0_iter2_reg),
    .dout(tmp_1_fu_460_p6)
);

mmul_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_1_reg_631),
    .din1(tmp_reg_626),
    .din2(grp_fu_491_p2),
    .ce(1'b1),
    .dout(grp_fu_491_p3)
);

mmul_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((1'b1 == ap_condition_240)) begin
            acc_V_1_fu_90 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            acc_V_1_fu_90 <= grp_fu_491_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_106 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_106 <= select_ln8_1_fu_320_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_242)) begin
        if ((icmp_ln8_fu_250_p2 == 1'd0)) begin
            indvar_flatten36_fu_110 <= add_ln8_1_fu_256_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten36_fu_110 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_242)) begin
        if ((icmp_ln8_fu_250_p2 == 1'd0)) begin
            indvar_flatten_fu_102 <= select_ln10_2_fu_280_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_98 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_98 <= select_ln10_1_fu_363_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((1'b1 == ap_condition_240)) begin
            k_fu_94 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            k_fu_94 <= add_ln12_reg_581;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        acc_V_reg_646 <= grp_fu_491_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_reg_581 <= add_ln12_fu_383_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln14_reg_572 <= icmp_ln14_fu_371_p2;
        icmp_ln16_reg_577 <= icmp_ln16_fu_377_p2;
        select_ln10_1_reg_566 <= select_ln10_1_fu_363_p3;
        select_ln10_reg_560 <= select_ln10_fu_355_p3;
        select_ln8_1_reg_553 <= select_ln8_1_fu_320_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln16_reg_586 <= add_ln16_fu_433_p2;
        add_ln16_reg_586_pp0_iter3_reg <= add_ln16_reg_586;
        add_ln16_reg_586_pp0_iter4_reg <= add_ln16_reg_586_pp0_iter3_reg;
        add_ln16_reg_586_pp0_iter5_reg <= add_ln16_reg_586_pp0_iter4_reg;
        add_ln16_reg_586_pp0_iter6_reg <= add_ln16_reg_586_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        c_addr_reg_641 <= zext_ln16_3_fu_483_p1;
        icmp_ln14_reg_572_pp0_iter2_reg <= icmp_ln14_reg_572;
        icmp_ln14_reg_572_pp0_iter3_reg <= icmp_ln14_reg_572_pp0_iter2_reg;
        icmp_ln14_reg_572_pp0_iter4_reg <= icmp_ln14_reg_572_pp0_iter3_reg;
        icmp_ln14_reg_572_pp0_iter5_reg <= icmp_ln14_reg_572_pp0_iter4_reg;
        icmp_ln16_reg_577_pp0_iter2_reg <= icmp_ln16_reg_577;
        icmp_ln16_reg_577_pp0_iter3_reg <= icmp_ln16_reg_577_pp0_iter2_reg;
        icmp_ln16_reg_577_pp0_iter4_reg <= icmp_ln16_reg_577_pp0_iter3_reg;
        icmp_ln16_reg_577_pp0_iter5_reg <= icmp_ln16_reg_577_pp0_iter4_reg;
        icmp_ln16_reg_577_pp0_iter6_reg <= icmp_ln16_reg_577_pp0_iter5_reg;
        icmp_ln16_reg_577_pp0_iter7_reg <= icmp_ln16_reg_577_pp0_iter6_reg;
        select_ln10_reg_560_pp0_iter2_reg <= select_ln10_reg_560;
        select_ln8_1_reg_553_pp0_iter2_reg <= select_ln8_1_reg_553;
        tmp_1_reg_631 <= tmp_1_fu_460_p6;
        tmp_reg_626 <= tmp_fu_449_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_250_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10_reg_545 <= icmp_ln10_fu_265_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        a_0_ce0 = 1'b1;
    end else begin
        a_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        a_1_ce0 = 1'b1;
    end else begin
        a_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        a_2_ce0 = 1'b1;
    end else begin
        a_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln8_fu_250_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_acc_V_1_load = grp_fu_491_p3;
    end else begin
        ap_sig_allocacmp_acc_V_1_load = acc_V_1_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten36_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten36_load = indvar_flatten36_fu_110;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load_1 = indvar_flatten_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_k_load = add_ln12_reg_581;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        b_0_ce0 = 1'b1;
    end else begin
        b_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        b_1_ce0 = 1'b1;
    end else begin
        b_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        b_2_ce0 = 1'b1;
    end else begin
        b_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        b_3_ce0 = 1'b1;
    end else begin
        b_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln16_reg_577_pp0_iter7_reg == 1'd1))) begin
        c_we0 = 1'b1;
    end else begin
        c_we0 = 1'b0;
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

assign a_0_address0 = zext_ln12_fu_439_p1;

assign a_1_address0 = zext_ln12_fu_439_p1;

assign a_2_address0 = zext_ln12_fu_439_p1;

assign a_3_address0 = 2'd0;

assign a_3_address1 = 2'd0;

assign a_3_ce0 = 1'b0;

assign a_3_ce1 = 1'b0;

assign a_3_d0 = 16'd0;

assign a_3_d1 = 16'd0;

assign a_3_we0 = 1'b0;

assign a_3_we1 = 1'b0;

assign add_ln10_1_fu_274_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);

assign add_ln10_fu_344_p2 = (select_ln8_fu_313_p3 + 3'd1);

assign add_ln12_fu_383_p2 = (select_ln10_fu_355_p3 + 3'd1);

assign add_ln16_fu_433_p2 = (sub_ln16_fu_417_p2 + zext_ln16_2_fu_430_p1);

assign add_ln8_1_fu_256_p2 = (ap_sig_allocacmp_indvar_flatten36_load + 7'd1);

assign add_ln8_fu_307_p2 = (i_fu_106 + 2'd1);

assign and_ln8_fu_338_p2 = (xor_ln8_fu_327_p2 & icmp_ln12_fu_332_p2);

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
    ap_condition_240 = ((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_242 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign b_0_address0 = zext_ln16_1_fu_423_p1;

assign b_1_address0 = zext_ln16_1_fu_423_p1;

assign b_2_address0 = zext_ln16_1_fu_423_p1;

assign b_3_address0 = zext_ln16_1_fu_423_p1;

assign c_address0 = c_addr_reg_641;

assign c_d0 = acc_V_reg_646;

assign grp_fu_491_p2 = ((icmp_ln14_reg_572_pp0_iter5_reg[0:0] == 1'b1) ? 16'd0 : ap_sig_allocacmp_acc_V_1_load);

assign icmp_ln10_fu_265_p2 = ((ap_sig_allocacmp_indvar_flatten_load_1 == 6'd24) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_332_p2 = ((ap_sig_allocacmp_k_load == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln14_fu_371_p2 = ((select_ln10_fu_355_p3 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln16_fu_377_p2 = ((select_ln10_fu_355_p3 == 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_250_p2 = ((ap_sig_allocacmp_indvar_flatten36_load == 7'd72) ? 1'b1 : 1'b0);

assign or_ln10_fu_350_p2 = (icmp_ln10_reg_545 | and_ln8_fu_338_p2);

assign select_ln10_1_fu_363_p3 = ((and_ln8_fu_338_p2[0:0] == 1'b1) ? add_ln10_fu_344_p2 : select_ln8_fu_313_p3);

assign select_ln10_2_fu_280_p3 = ((icmp_ln10_fu_265_p2[0:0] == 1'b1) ? 6'd1 : add_ln10_1_fu_274_p2);

assign select_ln10_fu_355_p3 = ((or_ln10_fu_350_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_k_load);

assign select_ln8_1_fu_320_p3 = ((icmp_ln10_reg_545[0:0] == 1'b1) ? add_ln8_fu_307_p2 : i_fu_106);

assign select_ln8_fu_313_p3 = ((icmp_ln10_reg_545[0:0] == 1'b1) ? 3'd0 : j_fu_98);

assign sub_ln16_fu_417_p2 = (tmp_2_fu_399_p3 - zext_ln16_fu_413_p1);

assign tmp_2_fu_399_p3 = {{select_ln8_1_reg_553}, {3'd0}};

assign tmp_3_fu_406_p3 = {{select_ln8_1_reg_553}, {1'd0}};

assign xor_ln8_fu_327_p2 = (icmp_ln10_reg_545 ^ 1'd1);

assign zext_ln12_fu_439_p1 = select_ln10_reg_560;

assign zext_ln16_1_fu_423_p1 = select_ln10_1_reg_566;

assign zext_ln16_2_fu_430_p1 = select_ln10_1_reg_566;

assign zext_ln16_3_fu_483_p1 = add_ln16_reg_586_pp0_iter6_reg;

assign zext_ln16_fu_413_p1 = tmp_3_fu_406_p3;

endmodule //mmul
