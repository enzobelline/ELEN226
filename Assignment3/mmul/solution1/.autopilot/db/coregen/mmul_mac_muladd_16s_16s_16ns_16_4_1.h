// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mmul_mac_muladd_16s_16s_16ns_16_4_1__HH__
#define __mmul_mac_muladd_16s_16s_16ns_16_4_1__HH__
#include "mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(mmul_mac_muladd_16s_16s_16ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U;

    SC_CTOR(mmul_mac_muladd_16s_16s_16ns_16_4_1):  mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U ("mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U") {
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.clk(clk);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.rst(reset);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.ce(ce);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in0(din0);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in1(din1);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in2(din2);
        mmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
