// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __loop_perfect_mac_muladd_5s_5ns_5s_10_4_1__HH__
#define __loop_perfect_mac_muladd_5s_5ns_5s_10_4_1__HH__
#include "loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(loop_perfect_mac_muladd_5s_5ns_5s_10_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0 loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U;

    SC_CTOR(loop_perfect_mac_muladd_5s_5ns_5s_10_4_1):  loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U ("loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U") {
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.clk(clk);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.rst(reset);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.ce(ce);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.in0(din0);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.in1(din1);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.in2(din2);
        loop_perfect_mac_muladd_5s_5ns_5s_10_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
