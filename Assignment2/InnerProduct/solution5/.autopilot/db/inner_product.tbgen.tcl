set moduleName inner_product
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {inner_product}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ a_1 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ a_2 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ a_3 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ b_0 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ b_1 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ b_2 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ b_3 int 16 regular {array 2 { 1 1 } 1 1 }  }
	{ s int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0_address0 sc_out sc_lv 1 signal 0 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_0_q0 sc_in sc_lv 16 signal 0 } 
	{ a_0_address1 sc_out sc_lv 1 signal 0 } 
	{ a_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_0_q1 sc_in sc_lv 16 signal 0 } 
	{ a_1_address0 sc_out sc_lv 1 signal 1 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_1_q0 sc_in sc_lv 16 signal 1 } 
	{ a_1_address1 sc_out sc_lv 1 signal 1 } 
	{ a_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_1_q1 sc_in sc_lv 16 signal 1 } 
	{ a_2_address0 sc_out sc_lv 1 signal 2 } 
	{ a_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_2_q0 sc_in sc_lv 16 signal 2 } 
	{ a_2_address1 sc_out sc_lv 1 signal 2 } 
	{ a_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_2_q1 sc_in sc_lv 16 signal 2 } 
	{ a_3_address0 sc_out sc_lv 1 signal 3 } 
	{ a_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_3_q0 sc_in sc_lv 16 signal 3 } 
	{ a_3_address1 sc_out sc_lv 1 signal 3 } 
	{ a_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ a_3_q1 sc_in sc_lv 16 signal 3 } 
	{ b_0_address0 sc_out sc_lv 1 signal 4 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_0_q0 sc_in sc_lv 16 signal 4 } 
	{ b_0_address1 sc_out sc_lv 1 signal 4 } 
	{ b_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_0_q1 sc_in sc_lv 16 signal 4 } 
	{ b_1_address0 sc_out sc_lv 1 signal 5 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_1_q0 sc_in sc_lv 16 signal 5 } 
	{ b_1_address1 sc_out sc_lv 1 signal 5 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ b_1_q1 sc_in sc_lv 16 signal 5 } 
	{ b_2_address0 sc_out sc_lv 1 signal 6 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ b_2_q0 sc_in sc_lv 16 signal 6 } 
	{ b_2_address1 sc_out sc_lv 1 signal 6 } 
	{ b_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ b_2_q1 sc_in sc_lv 16 signal 6 } 
	{ b_3_address0 sc_out sc_lv 1 signal 7 } 
	{ b_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ b_3_q0 sc_in sc_lv 16 signal 7 } 
	{ b_3_address1 sc_out sc_lv 1 signal 7 } 
	{ b_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ b_3_q1 sc_in sc_lv 16 signal 7 } 
	{ s sc_out sc_lv 16 signal 8 } 
	{ s_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0", "role": "q0" }} , 
 	{ "name": "a_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "address1" }} , 
 	{ "name": "a_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce1" }} , 
 	{ "name": "a_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0", "role": "q1" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1", "role": "q0" }} , 
 	{ "name": "a_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "address1" }} , 
 	{ "name": "a_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce1" }} , 
 	{ "name": "a_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1", "role": "q1" }} , 
 	{ "name": "a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "address0" }} , 
 	{ "name": "a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce0" }} , 
 	{ "name": "a_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2", "role": "q0" }} , 
 	{ "name": "a_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "address1" }} , 
 	{ "name": "a_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce1" }} , 
 	{ "name": "a_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2", "role": "q1" }} , 
 	{ "name": "a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "address0" }} , 
 	{ "name": "a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "ce0" }} , 
 	{ "name": "a_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_3", "role": "q0" }} , 
 	{ "name": "a_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "address1" }} , 
 	{ "name": "a_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "ce1" }} , 
 	{ "name": "a_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_3", "role": "q1" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "address1" }} , 
 	{ "name": "b_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce1" }} , 
 	{ "name": "b_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0", "role": "q1" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2", "role": "q0" }} , 
 	{ "name": "b_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "address1" }} , 
 	{ "name": "b_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce1" }} , 
 	{ "name": "b_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2", "role": "q1" }} , 
 	{ "name": "b_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "address0" }} , 
 	{ "name": "b_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce0" }} , 
 	{ "name": "b_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3", "role": "q0" }} , 
 	{ "name": "b_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "address1" }} , 
 	{ "name": "b_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce1" }} , 
 	{ "name": "b_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3", "role": "q1" }} , 
 	{ "name": "s", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "inner_product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "inner_product_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inner_product {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_2 {Type I LastRead 1 FirstWrite -1}
		a_3 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		b_2 {Type I LastRead 1 FirstWrite -1}
		b_3 {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_memory {  { a_0_address0 mem_address 1 1 }  { a_0_ce0 mem_ce 1 1 }  { a_0_q0 in_data 0 16 }  { a_0_address1 MemPortADDR2 1 1 }  { a_0_ce1 MemPortCE2 1 1 }  { a_0_q1 in_data 0 16 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 1 }  { a_1_ce0 mem_ce 1 1 }  { a_1_q0 in_data 0 16 }  { a_1_address1 MemPortADDR2 1 1 }  { a_1_ce1 MemPortCE2 1 1 }  { a_1_q1 in_data 0 16 } } }
	a_2 { ap_memory {  { a_2_address0 mem_address 1 1 }  { a_2_ce0 mem_ce 1 1 }  { a_2_q0 in_data 0 16 }  { a_2_address1 MemPortADDR2 1 1 }  { a_2_ce1 MemPortCE2 1 1 }  { a_2_q1 in_data 0 16 } } }
	a_3 { ap_memory {  { a_3_address0 mem_address 1 1 }  { a_3_ce0 mem_ce 1 1 }  { a_3_q0 in_data 0 16 }  { a_3_address1 MemPortADDR2 1 1 }  { a_3_ce1 MemPortCE2 1 1 }  { a_3_q1 in_data 0 16 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 1 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 in_data 0 16 }  { b_0_address1 MemPortADDR2 1 1 }  { b_0_ce1 MemPortCE2 1 1 }  { b_0_q1 in_data 0 16 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 1 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 16 }  { b_1_address1 MemPortADDR2 1 1 }  { b_1_ce1 MemPortCE2 1 1 }  { b_1_q1 in_data 0 16 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 1 }  { b_2_ce0 mem_ce 1 1 }  { b_2_q0 in_data 0 16 }  { b_2_address1 MemPortADDR2 1 1 }  { b_2_ce1 MemPortCE2 1 1 }  { b_2_q1 in_data 0 16 } } }
	b_3 { ap_memory {  { b_3_address0 mem_address 1 1 }  { b_3_ce0 mem_ce 1 1 }  { b_3_q0 in_data 0 16 }  { b_3_address1 MemPortADDR2 1 1 }  { b_3_ce1 MemPortCE2 1 1 }  { b_3_q1 in_data 0 16 } } }
	s { ap_vld {  { s out_data 1 16 }  { s_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
