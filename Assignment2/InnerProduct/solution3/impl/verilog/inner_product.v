// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="inner_product_inner_product,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg676-2,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.047000,HLS_SYN_LAT=7,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=440,HLS_SYN_LUT=57,HLS_VERSION=2022_1}" *)

module inner_product (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_0,
        a_1,
        a_2,
        a_3,
        a_4,
        a_5,
        a_6,
        a_7,
        b_0,
        b_1,
        b_2,
        b_3,
        b_4,
        b_5,
        b_6,
        b_7,
        s,
        s_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] a_0;
input  [15:0] a_1;
input  [15:0] a_2;
input  [15:0] a_3;
input  [15:0] a_4;
input  [15:0] a_5;
input  [15:0] a_6;
input  [15:0] a_7;
input  [15:0] b_0;
input  [15:0] b_1;
input  [15:0] b_2;
input  [15:0] b_3;
input  [15:0] b_4;
input  [15:0] b_5;
input  [15:0] b_6;
input  [15:0] b_7;
output  [15:0] s;
output   s_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_ap_vld;

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
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_pp0_stage0_subdone;
reg  signed [15:0] a_0_read_reg_217;
wire    ap_block_pp0_stage0_11001;
reg  signed [15:0] a_0_read_reg_217_pp0_iter1_reg;
reg  signed [15:0] b_0_read_reg_222;
reg  signed [15:0] b_0_read_reg_222_pp0_iter1_reg;
reg  signed [15:0] a_3_read_reg_247;
reg  signed [15:0] a_3_read_reg_247_pp0_iter1_reg;
reg  signed [15:0] b_3_read_reg_252;
reg  signed [15:0] b_3_read_reg_252_pp0_iter1_reg;
reg  signed [15:0] a_5_read_reg_267;
reg  signed [15:0] a_5_read_reg_267_pp0_iter1_reg;
reg  signed [15:0] b_5_read_reg_272;
reg  signed [15:0] b_5_read_reg_272_pp0_iter1_reg;
reg  signed [15:0] a_7_read_reg_287;
reg  signed [15:0] a_7_read_reg_287_pp0_iter1_reg;
reg  signed [15:0] b_7_read_reg_292;
reg  signed [15:0] b_7_read_reg_292_pp0_iter1_reg;
wire  signed [15:0] grp_fu_173_p2;
reg   [15:0] mul_ln859_reg_297;
wire  signed [15:0] grp_fu_179_p2;
reg   [15:0] mul_ln859_1_reg_302;
wire  signed [15:0] grp_fu_185_p2;
reg   [15:0] mul_ln859_3_reg_307;
wire  signed [15:0] grp_fu_191_p2;
reg   [15:0] mul_ln859_5_reg_312;
wire   [15:0] grp_fu_197_p3;
reg  signed [15:0] add_ln859_reg_317;
reg  signed [15:0] add_ln859_reg_317_pp0_iter6_reg;
wire   [15:0] grp_fu_202_p3;
reg  signed [15:0] add_ln859_1_reg_322;
reg  signed [15:0] add_ln859_1_reg_322_pp0_iter6_reg;
wire   [15:0] grp_fu_207_p3;
reg  signed [15:0] add_ln859_3_reg_327;
wire   [15:0] grp_fu_212_p3;
reg  signed [15:0] add_ln859_4_reg_332;
(* use_dsp48 = "no" *) wire   [15:0] add_ln859_5_fu_159_p2;
reg   [15:0] add_ln859_5_reg_337;
wire    ap_block_pp0_stage0_01001;
wire    ap_block_pp0_stage0;
(* use_dsp48 = "no" *) wire   [15:0] add_ln859_2_fu_163_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to6;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
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
end

inner_product_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_1),
    .din1(a_1),
    .ce(1'b1),
    .dout(grp_fu_173_p2)
);

inner_product_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_2),
    .din1(a_2),
    .ce(1'b1),
    .dout(grp_fu_179_p2)
);

inner_product_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_4),
    .din1(a_4),
    .ce(1'b1),
    .dout(grp_fu_185_p2)
);

inner_product_mul_mul_16s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_16s_16_4_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_6),
    .din1(a_6),
    .ce(1'b1),
    .dout(grp_fu_191_p2)
);

inner_product_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_0_read_reg_222_pp0_iter1_reg),
    .din1(a_0_read_reg_217_pp0_iter1_reg),
    .din2(mul_ln859_reg_297),
    .ce(1'b1),
    .dout(grp_fu_197_p3)
);

inner_product_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_3_read_reg_252_pp0_iter1_reg),
    .din1(a_3_read_reg_247_pp0_iter1_reg),
    .din2(mul_ln859_1_reg_302),
    .ce(1'b1),
    .dout(grp_fu_202_p3)
);

inner_product_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_5_read_reg_272_pp0_iter1_reg),
    .din1(a_5_read_reg_267_pp0_iter1_reg),
    .din2(mul_ln859_3_reg_307),
    .ce(1'b1),
    .dout(grp_fu_207_p3)
);

inner_product_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_7_read_reg_292_pp0_iter1_reg),
    .din1(a_7_read_reg_287_pp0_iter1_reg),
    .din2(mul_ln859_5_reg_312),
    .ce(1'b1),
    .dout(grp_fu_212_p3)
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_read_reg_217 <= a_0;
        a_0_read_reg_217_pp0_iter1_reg <= a_0_read_reg_217;
        a_3_read_reg_247 <= a_3;
        a_3_read_reg_247_pp0_iter1_reg <= a_3_read_reg_247;
        a_5_read_reg_267 <= a_5;
        a_5_read_reg_267_pp0_iter1_reg <= a_5_read_reg_267;
        a_7_read_reg_287 <= a_7;
        a_7_read_reg_287_pp0_iter1_reg <= a_7_read_reg_287;
        b_0_read_reg_222 <= b_0;
        b_0_read_reg_222_pp0_iter1_reg <= b_0_read_reg_222;
        b_3_read_reg_252 <= b_3;
        b_3_read_reg_252_pp0_iter1_reg <= b_3_read_reg_252;
        b_5_read_reg_272 <= b_5;
        b_5_read_reg_272_pp0_iter1_reg <= b_5_read_reg_272;
        b_7_read_reg_292 <= b_7;
        b_7_read_reg_292_pp0_iter1_reg <= b_7_read_reg_292;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        add_ln859_1_reg_322 <= grp_fu_202_p3;
        add_ln859_3_reg_327 <= grp_fu_207_p3;
        add_ln859_4_reg_332 <= grp_fu_212_p3;
        add_ln859_reg_317 <= grp_fu_197_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln859_1_reg_322_pp0_iter6_reg <= add_ln859_1_reg_322;
        add_ln859_5_reg_337 <= add_ln859_5_fu_159_p2;
        add_ln859_reg_317_pp0_iter6_reg <= add_ln859_reg_317;
        mul_ln859_1_reg_302 <= grp_fu_179_p2;
        mul_ln859_3_reg_307 <= grp_fu_185_p2;
        mul_ln859_5_reg_312 <= grp_fu_191_p2;
        mul_ln859_reg_297 <= grp_fu_173_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        s_ap_vld = 1'b1;
    end else begin
        s_ap_vld = 1'b0;
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

assign add_ln859_2_fu_163_p2 = ($signed(add_ln859_1_reg_322_pp0_iter6_reg) + $signed(add_ln859_reg_317_pp0_iter6_reg));

assign add_ln859_5_fu_159_p2 = ($signed(add_ln859_4_reg_332) + $signed(add_ln859_3_reg_327));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

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

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign s = (add_ln859_5_reg_337 + add_ln859_2_fu_163_p2);

endmodule //inner_product
