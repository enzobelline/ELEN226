set moduleName mmul
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mmul}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0_0 int 16 regular {pointer 0}  }
	{ a_0_1 int 16 regular {pointer 0}  }
	{ a_0_2 int 16 regular {pointer 0}  }
	{ a_0_3 int 16 regular {pointer 0}  }
	{ a_1_0 int 16 regular {pointer 0}  }
	{ a_1_1 int 16 regular {pointer 0}  }
	{ a_1_2 int 16 regular {pointer 0}  }
	{ a_1_3 int 16 regular {pointer 0}  }
	{ a_2_0 int 16 regular {pointer 0}  }
	{ a_2_1 int 16 regular {pointer 0}  }
	{ a_2_2 int 16 regular {pointer 0}  }
	{ a_2_3 int 16 regular {pointer 0}  }
	{ b_0_0 int 16 regular {pointer 0}  }
	{ b_0_1 int 16 regular {pointer 0}  }
	{ b_0_2 int 16 regular {pointer 0}  }
	{ b_0_3 int 16 regular {pointer 0}  }
	{ b_0_4 int 16 regular {pointer 0}  }
	{ b_0_5 int 16 regular {pointer 0}  }
	{ b_1_0 int 16 regular {pointer 0}  }
	{ b_1_1 int 16 regular {pointer 0}  }
	{ b_1_2 int 16 regular {pointer 0}  }
	{ b_1_3 int 16 regular {pointer 0}  }
	{ b_1_4 int 16 regular {pointer 0}  }
	{ b_1_5 int 16 regular {pointer 0}  }
	{ b_2_0 int 16 regular {pointer 0}  }
	{ b_2_1 int 16 regular {pointer 0}  }
	{ b_2_2 int 16 regular {pointer 0}  }
	{ b_2_3 int 16 regular {pointer 0}  }
	{ b_2_4 int 16 regular {pointer 0}  }
	{ b_2_5 int 16 regular {pointer 0}  }
	{ b_3_0 int 16 regular {pointer 0}  }
	{ b_3_1 int 16 regular {pointer 0}  }
	{ b_3_2 int 16 regular {pointer 0}  }
	{ b_3_3 int 16 regular {pointer 0}  }
	{ b_3_4 int 16 regular {pointer 0}  }
	{ b_3_5 int 16 regular {pointer 0}  }
	{ c int 16 regular {array 18 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a_2_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0_0 sc_in sc_lv 16 signal 0 } 
	{ a_0_1 sc_in sc_lv 16 signal 1 } 
	{ a_0_2 sc_in sc_lv 16 signal 2 } 
	{ a_0_3 sc_in sc_lv 16 signal 3 } 
	{ a_1_0 sc_in sc_lv 16 signal 4 } 
	{ a_1_1 sc_in sc_lv 16 signal 5 } 
	{ a_1_2 sc_in sc_lv 16 signal 6 } 
	{ a_1_3 sc_in sc_lv 16 signal 7 } 
	{ a_2_0 sc_in sc_lv 16 signal 8 } 
	{ a_2_1 sc_in sc_lv 16 signal 9 } 
	{ a_2_2 sc_in sc_lv 16 signal 10 } 
	{ a_2_3 sc_in sc_lv 16 signal 11 } 
	{ b_0_0 sc_in sc_lv 16 signal 12 } 
	{ b_0_1 sc_in sc_lv 16 signal 13 } 
	{ b_0_2 sc_in sc_lv 16 signal 14 } 
	{ b_0_3 sc_in sc_lv 16 signal 15 } 
	{ b_0_4 sc_in sc_lv 16 signal 16 } 
	{ b_0_5 sc_in sc_lv 16 signal 17 } 
	{ b_1_0 sc_in sc_lv 16 signal 18 } 
	{ b_1_1 sc_in sc_lv 16 signal 19 } 
	{ b_1_2 sc_in sc_lv 16 signal 20 } 
	{ b_1_3 sc_in sc_lv 16 signal 21 } 
	{ b_1_4 sc_in sc_lv 16 signal 22 } 
	{ b_1_5 sc_in sc_lv 16 signal 23 } 
	{ b_2_0 sc_in sc_lv 16 signal 24 } 
	{ b_2_1 sc_in sc_lv 16 signal 25 } 
	{ b_2_2 sc_in sc_lv 16 signal 26 } 
	{ b_2_3 sc_in sc_lv 16 signal 27 } 
	{ b_2_4 sc_in sc_lv 16 signal 28 } 
	{ b_2_5 sc_in sc_lv 16 signal 29 } 
	{ b_3_0 sc_in sc_lv 16 signal 30 } 
	{ b_3_1 sc_in sc_lv 16 signal 31 } 
	{ b_3_2 sc_in sc_lv 16 signal 32 } 
	{ b_3_3 sc_in sc_lv 16 signal 33 } 
	{ b_3_4 sc_in sc_lv 16 signal 34 } 
	{ b_3_5 sc_in sc_lv 16 signal 35 } 
	{ c_address0 sc_out sc_lv 5 signal 36 } 
	{ c_ce0 sc_out sc_logic 1 signal 36 } 
	{ c_we0 sc_out sc_logic 1 signal 36 } 
	{ c_d0 sc_out sc_lv 16 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0_0", "role": "default" }} , 
 	{ "name": "a_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0_1", "role": "default" }} , 
 	{ "name": "a_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0_2", "role": "default" }} , 
 	{ "name": "a_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_0_3", "role": "default" }} , 
 	{ "name": "a_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1_0", "role": "default" }} , 
 	{ "name": "a_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1_1", "role": "default" }} , 
 	{ "name": "a_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1_2", "role": "default" }} , 
 	{ "name": "a_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_1_3", "role": "default" }} , 
 	{ "name": "a_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2_0", "role": "default" }} , 
 	{ "name": "a_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2_1", "role": "default" }} , 
 	{ "name": "a_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2_2", "role": "default" }} , 
 	{ "name": "a_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a_2_3", "role": "default" }} , 
 	{ "name": "b_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_0", "role": "default" }} , 
 	{ "name": "b_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_1", "role": "default" }} , 
 	{ "name": "b_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_2", "role": "default" }} , 
 	{ "name": "b_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_3", "role": "default" }} , 
 	{ "name": "b_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_4", "role": "default" }} , 
 	{ "name": "b_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_0_5", "role": "default" }} , 
 	{ "name": "b_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_0", "role": "default" }} , 
 	{ "name": "b_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_1", "role": "default" }} , 
 	{ "name": "b_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_2", "role": "default" }} , 
 	{ "name": "b_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_3", "role": "default" }} , 
 	{ "name": "b_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_4", "role": "default" }} , 
 	{ "name": "b_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_1_5", "role": "default" }} , 
 	{ "name": "b_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_0", "role": "default" }} , 
 	{ "name": "b_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_1", "role": "default" }} , 
 	{ "name": "b_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_2", "role": "default" }} , 
 	{ "name": "b_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_3", "role": "default" }} , 
 	{ "name": "b_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_4", "role": "default" }} , 
 	{ "name": "b_2_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_2_5", "role": "default" }} , 
 	{ "name": "b_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_0", "role": "default" }} , 
 	{ "name": "b_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_1", "role": "default" }} , 
 	{ "name": "b_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_2", "role": "default" }} , 
 	{ "name": "b_3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_3", "role": "default" }} , 
 	{ "name": "b_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_4", "role": "default" }} , 
 	{ "name": "b_3_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b_3_5", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "mmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "row_col_prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_16_2_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_16_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_43_16_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mmul {
		a_0_0 {Type I LastRead 0 FirstWrite -1}
		a_0_1 {Type I LastRead 0 FirstWrite -1}
		a_0_2 {Type I LastRead 0 FirstWrite -1}
		a_0_3 {Type I LastRead 0 FirstWrite -1}
		a_1_0 {Type I LastRead 0 FirstWrite -1}
		a_1_1 {Type I LastRead 0 FirstWrite -1}
		a_1_2 {Type I LastRead 0 FirstWrite -1}
		a_1_3 {Type I LastRead 0 FirstWrite -1}
		a_2_0 {Type I LastRead 0 FirstWrite -1}
		a_2_1 {Type I LastRead 0 FirstWrite -1}
		a_2_2 {Type I LastRead 0 FirstWrite -1}
		a_2_3 {Type I LastRead 0 FirstWrite -1}
		b_0_0 {Type I LastRead 0 FirstWrite -1}
		b_0_1 {Type I LastRead 0 FirstWrite -1}
		b_0_2 {Type I LastRead 0 FirstWrite -1}
		b_0_3 {Type I LastRead 0 FirstWrite -1}
		b_0_4 {Type I LastRead 0 FirstWrite -1}
		b_0_5 {Type I LastRead 0 FirstWrite -1}
		b_1_0 {Type I LastRead 0 FirstWrite -1}
		b_1_1 {Type I LastRead 0 FirstWrite -1}
		b_1_2 {Type I LastRead 0 FirstWrite -1}
		b_1_3 {Type I LastRead 0 FirstWrite -1}
		b_1_4 {Type I LastRead 0 FirstWrite -1}
		b_1_5 {Type I LastRead 0 FirstWrite -1}
		b_2_0 {Type I LastRead 0 FirstWrite -1}
		b_2_1 {Type I LastRead 0 FirstWrite -1}
		b_2_2 {Type I LastRead 0 FirstWrite -1}
		b_2_3 {Type I LastRead 0 FirstWrite -1}
		b_2_4 {Type I LastRead 0 FirstWrite -1}
		b_2_5 {Type I LastRead 0 FirstWrite -1}
		b_3_0 {Type I LastRead 0 FirstWrite -1}
		b_3_1 {Type I LastRead 0 FirstWrite -1}
		b_3_2 {Type I LastRead 0 FirstWrite -1}
		b_3_3 {Type I LastRead 0 FirstWrite -1}
		b_3_4 {Type I LastRead 0 FirstWrite -1}
		b_3_5 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "78", "Max" : "78"}
	, {"Name" : "Interval", "Min" : "79", "Max" : "79"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0_0 { ap_none {  { a_0_0 in_data 0 16 } } }
	a_0_1 { ap_none {  { a_0_1 in_data 0 16 } } }
	a_0_2 { ap_none {  { a_0_2 in_data 0 16 } } }
	a_0_3 { ap_none {  { a_0_3 in_data 0 16 } } }
	a_1_0 { ap_none {  { a_1_0 in_data 0 16 } } }
	a_1_1 { ap_none {  { a_1_1 in_data 0 16 } } }
	a_1_2 { ap_none {  { a_1_2 in_data 0 16 } } }
	a_1_3 { ap_none {  { a_1_3 in_data 0 16 } } }
	a_2_0 { ap_none {  { a_2_0 in_data 0 16 } } }
	a_2_1 { ap_none {  { a_2_1 in_data 0 16 } } }
	a_2_2 { ap_none {  { a_2_2 in_data 0 16 } } }
	a_2_3 { ap_none {  { a_2_3 in_data 0 16 } } }
	b_0_0 { ap_none {  { b_0_0 in_data 0 16 } } }
	b_0_1 { ap_none {  { b_0_1 in_data 0 16 } } }
	b_0_2 { ap_none {  { b_0_2 in_data 0 16 } } }
	b_0_3 { ap_none {  { b_0_3 in_data 0 16 } } }
	b_0_4 { ap_none {  { b_0_4 in_data 0 16 } } }
	b_0_5 { ap_none {  { b_0_5 in_data 0 16 } } }
	b_1_0 { ap_none {  { b_1_0 in_data 0 16 } } }
	b_1_1 { ap_none {  { b_1_1 in_data 0 16 } } }
	b_1_2 { ap_none {  { b_1_2 in_data 0 16 } } }
	b_1_3 { ap_none {  { b_1_3 in_data 0 16 } } }
	b_1_4 { ap_none {  { b_1_4 in_data 0 16 } } }
	b_1_5 { ap_none {  { b_1_5 in_data 0 16 } } }
	b_2_0 { ap_none {  { b_2_0 in_data 0 16 } } }
	b_2_1 { ap_none {  { b_2_1 in_data 0 16 } } }
	b_2_2 { ap_none {  { b_2_2 in_data 0 16 } } }
	b_2_3 { ap_none {  { b_2_3 in_data 0 16 } } }
	b_2_4 { ap_none {  { b_2_4 in_data 0 16 } } }
	b_2_5 { ap_none {  { b_2_5 in_data 0 16 } } }
	b_3_0 { ap_none {  { b_3_0 in_data 0 16 } } }
	b_3_1 { ap_none {  { b_3_1 in_data 0 16 } } }
	b_3_2 { ap_none {  { b_3_2 in_data 0 16 } } }
	b_3_3 { ap_none {  { b_3_3 in_data 0 16 } } }
	b_3_4 { ap_none {  { b_3_4 in_data 0 16 } } }
	b_3_5 { ap_none {  { b_3_5 in_data 0 16 } } }
	c { ap_memory {  { c_address0 mem_address 1 5 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 16 } } }
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
