#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_0_address0", 4, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("A_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("A_0_q0", 5, hls_in, 0, "ap_memory", "in_data", 1),
	Port_Property("A_1_address0", 4, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("A_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("A_1_q0", 5, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("B_0_address0", 4, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("B_0_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("B_0_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("B_0_d0", 6, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("B_1_address0", 4, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("B_1_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("B_1_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("B_1_d0", 6, hls_out, 3, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "loop_perfect";
