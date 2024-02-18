set moduleName inner_product
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {inner_product}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0 int 16 regular {pointer 0}  }
	{ a_1 int 16 regular {pointer 0}  }
	{ a_2 int 16 regular {pointer 0}  }
	{ a_3 int 16 regular {pointer 0}  }
	{ a_4 int 16 regular {pointer 0}  }
	{ a_5 int 16 regular {pointer 0}  }
	{ a_6 int 16 regular {pointer 0}  }
	{ a_7 int 16 regular {pointer 0}  }
	{ b_0 int 16 regular {pointer 0}  }
	{ b_1 int 16 regular {pointer 0}  }
	{ b_2 int 16 regular {pointer 0}  }
	{ b_3 int 16 regular {pointer 0}  }
	{ b_4 int 16 regular {pointer 0}  }
	{ b_5 int 16 regular {pointer 0}  }
	{ b_6 int 16 regular {pointer 0}  }
	{ b_7 int 16 regular {pointer 0}  }
	{ s int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0 sc_in sc_lv 16 signal 0 } 
	{ a_1 sc_in sc_lv 16 signal 1 } 
	{ a_2 sc_in sc_lv 16 signal 2 } 
	{ a_3 sc_in sc_lv 16 signal 3 } 
	{ a_4 sc_in sc_lv 16 signal 4 } 
	{ a_5 sc_in sc_lv 16 signal 5 } 
	{ a_6 sc_in sc_lv 16 signal 6 } 
	{ a_7 sc_in sc_lv 16 signal 7 } 
	{ b_0 sc_in sc_lv 16 signal 8 } 
	{ b_1 sc_in sc_lv 16 signal 9 } 
	{ b_2 sc_in sc_lv 16 signal 10 } 
	{ b_3 sc_in sc_lv 16 signal 11 } 
	{ b_4 sc_in sc_lv 16 signal 12 } 
	{ b_5 sc_in sc_lv 16 signal 13 } 
	{ b_6 sc_in sc_lv 16 signal 14 } 
	{ b_7 sc_in sc_lv 16 signal 15 } 
	{ s sc_out sc_lv 16 signal 16 } 
	{ s_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0", "role": "default" }} , 
 	{ "name": "a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1", "role": "default" }} , 
 	{ "name": "a_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2", "role": "default" }} , 
 	{ "name": "a_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_3", "role": "default" }} , 
 	{ "name": "a_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_4", "role": "default" }} , 
 	{ "name": "a_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_5", "role": "default" }} , 
 	{ "name": "a_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_6", "role": "default" }} , 
 	{ "name": "a_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_7", "role": "default" }} , 
 	{ "name": "b_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0", "role": "default" }} , 
 	{ "name": "b_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1", "role": "default" }} , 
 	{ "name": "b_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2", "role": "default" }} , 
 	{ "name": "b_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3", "role": "default" }} , 
 	{ "name": "b_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_4", "role": "default" }} , 
 	{ "name": "b_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_5", "role": "default" }} , 
 	{ "name": "b_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_6", "role": "default" }} , 
 	{ "name": "b_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_7", "role": "default" }} , 
 	{ "name": "s", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "inner_product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inner_product {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		a_2 {Type I LastRead 0 FirstWrite -1}
		a_3 {Type I LastRead 0 FirstWrite -1}
		a_4 {Type I LastRead 0 FirstWrite -1}
		a_5 {Type I LastRead 0 FirstWrite -1}
		a_6 {Type I LastRead 0 FirstWrite -1}
		a_7 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_2 {Type I LastRead 0 FirstWrite -1}
		b_3 {Type I LastRead 0 FirstWrite -1}
		b_4 {Type I LastRead 0 FirstWrite -1}
		b_5 {Type I LastRead 0 FirstWrite -1}
		b_6 {Type I LastRead 0 FirstWrite -1}
		b_7 {Type I LastRead 0 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_none {  { a_0 in_data 0 16 } } }
	a_1 { ap_none {  { a_1 in_data 0 16 } } }
	a_2 { ap_none {  { a_2 in_data 0 16 } } }
	a_3 { ap_none {  { a_3 in_data 0 16 } } }
	a_4 { ap_none {  { a_4 in_data 0 16 } } }
	a_5 { ap_none {  { a_5 in_data 0 16 } } }
	a_6 { ap_none {  { a_6 in_data 0 16 } } }
	a_7 { ap_none {  { a_7 in_data 0 16 } } }
	b_0 { ap_none {  { b_0 in_data 0 16 } } }
	b_1 { ap_none {  { b_1 in_data 0 16 } } }
	b_2 { ap_none {  { b_2 in_data 0 16 } } }
	b_3 { ap_none {  { b_3 in_data 0 16 } } }
	b_4 { ap_none {  { b_4 in_data 0 16 } } }
	b_5 { ap_none {  { b_5 in_data 0 16 } } }
	b_6 { ap_none {  { b_6 in_data 0 16 } } }
	b_7 { ap_none {  { b_7 in_data 0 16 } } }
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
