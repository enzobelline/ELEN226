// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:mmul:1.0
// IP Revision: 2112906666

(* X_CORE_INFO = "mmul,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,mmul,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,mmul,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=mmul,x_ipVersion=1.0,x_ipCoreRevision=2112906666,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  c_ce0,
  c_we0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  a_0_0,
  a_0_1,
  a_0_2,
  a_0_3,
  a_1_0,
  a_1_1,
  a_1_2,
  a_1_3,
  a_2_0,
  a_2_1,
  a_2_2,
  a_2_3,
  b_0_0,
  b_0_1,
  b_0_2,
  b_0_3,
  b_0_4,
  b_0_5,
  b_1_0,
  b_1_1,
  b_1_2,
  b_1_3,
  b_1_4,
  b_1_5,
  b_2_0,
  b_2_1,
  b_2_2,
  b_2_3,
  b_2_4,
  b_2_5,
  b_3_0,
  b_3_1,
  b_3_2,
  b_3_3,
  b_3_4,
  b_3_5,
  c_address0,
  c_d0
);

output wire c_ce0;
output wire c_we0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 250000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_0 DATA" *)
input wire [15 : 0] a_0_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_1 DATA" *)
input wire [15 : 0] a_0_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_2 DATA" *)
input wire [15 : 0] a_0_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_0_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_0_3 DATA" *)
input wire [15 : 0] a_0_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_0 DATA" *)
input wire [15 : 0] a_1_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_1 DATA" *)
input wire [15 : 0] a_1_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_2 DATA" *)
input wire [15 : 0] a_1_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_1_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_1_3 DATA" *)
input wire [15 : 0] a_1_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_0 DATA" *)
input wire [15 : 0] a_2_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_1 DATA" *)
input wire [15 : 0] a_2_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_2 DATA" *)
input wire [15 : 0] a_2_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_2_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_2_3 DATA" *)
input wire [15 : 0] a_2_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_0 DATA" *)
input wire [15 : 0] b_0_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_1 DATA" *)
input wire [15 : 0] b_0_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_2 DATA" *)
input wire [15 : 0] b_0_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_3 DATA" *)
input wire [15 : 0] b_0_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_4, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_4 DATA" *)
input wire [15 : 0] b_0_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_0_5, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_0_5 DATA" *)
input wire [15 : 0] b_0_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_0 DATA" *)
input wire [15 : 0] b_1_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_1 DATA" *)
input wire [15 : 0] b_1_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_2 DATA" *)
input wire [15 : 0] b_1_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_3 DATA" *)
input wire [15 : 0] b_1_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_4, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_4 DATA" *)
input wire [15 : 0] b_1_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_1_5, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_1_5 DATA" *)
input wire [15 : 0] b_1_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_0 DATA" *)
input wire [15 : 0] b_2_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_1 DATA" *)
input wire [15 : 0] b_2_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_2 DATA" *)
input wire [15 : 0] b_2_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_3 DATA" *)
input wire [15 : 0] b_2_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_4, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_4 DATA" *)
input wire [15 : 0] b_2_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_2_5, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_2_5 DATA" *)
input wire [15 : 0] b_2_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_0 DATA" *)
input wire [15 : 0] b_3_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_1 DATA" *)
input wire [15 : 0] b_3_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_2 DATA" *)
input wire [15 : 0] b_3_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_3 DATA" *)
input wire [15 : 0] b_3_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_4, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_4 DATA" *)
input wire [15 : 0] b_3_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_3_5, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_3_5 DATA" *)
input wire [15 : 0] b_3_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_address0 DATA" *)
output wire [4 : 0] c_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_d0 DATA" *)
output wire [15 : 0] c_d0;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  mmul inst (
    .c_ce0(c_ce0),
    .c_we0(c_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .a_0_0(a_0_0),
    .a_0_1(a_0_1),
    .a_0_2(a_0_2),
    .a_0_3(a_0_3),
    .a_1_0(a_1_0),
    .a_1_1(a_1_1),
    .a_1_2(a_1_2),
    .a_1_3(a_1_3),
    .a_2_0(a_2_0),
    .a_2_1(a_2_1),
    .a_2_2(a_2_2),
    .a_2_3(a_2_3),
    .b_0_0(b_0_0),
    .b_0_1(b_0_1),
    .b_0_2(b_0_2),
    .b_0_3(b_0_3),
    .b_0_4(b_0_4),
    .b_0_5(b_0_5),
    .b_1_0(b_1_0),
    .b_1_1(b_1_1),
    .b_1_2(b_1_2),
    .b_1_3(b_1_3),
    .b_1_4(b_1_4),
    .b_1_5(b_1_5),
    .b_2_0(b_2_0),
    .b_2_1(b_2_1),
    .b_2_2(b_2_2),
    .b_2_3(b_2_3),
    .b_2_4(b_2_4),
    .b_2_5(b_2_5),
    .b_3_0(b_3_0),
    .b_3_1(b_3_1),
    .b_3_2(b_3_2),
    .b_3_3(b_3_3),
    .b_3_4(b_3_4),
    .b_3_5(b_3_5),
    .c_address0(c_address0),
    .c_d0(c_d0)
  );
endmodule
