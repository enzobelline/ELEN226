#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_address0", 5, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("A_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("A_q0", 5, hls_in, 0, "ap_memory", "in_data", 1),
	Port_Property("B_address0", 5, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("B_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("B_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("B_d0", 6, hls_out, 1, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "loop_perfect";