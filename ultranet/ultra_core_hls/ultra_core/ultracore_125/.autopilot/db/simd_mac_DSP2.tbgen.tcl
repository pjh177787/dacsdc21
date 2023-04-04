set moduleName simd_mac_DSP2
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {simd_mac_DSP2}
set C_modelType { int 28 }
set C_modelArgList {
	{ invec_0_V_read int 4 regular  }
	{ invec_1_V_read int 4 regular  }
	{ invec_2_V_read int 4 regular  }
	{ invec_3_V_read int 4 regular  }
	{ w0vec_0_V_read int 8 regular  }
	{ w0vec_1_V_read int 8 regular  }
	{ w0vec_2_V_read int 8 regular  }
	{ w0vec_3_V_read int 8 regular  }
	{ w1vec_0_V_read int 8 regular  }
	{ w1vec_1_V_read int 8 regular  }
	{ w1vec_2_V_read int 8 regular  }
	{ w1vec_3_V_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "invec_0_V_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "invec_1_V_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "invec_2_V_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "invec_3_V_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 28} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ invec_0_V_read sc_in sc_lv 4 signal 0 } 
	{ invec_1_V_read sc_in sc_lv 4 signal 1 } 
	{ invec_2_V_read sc_in sc_lv 4 signal 2 } 
	{ invec_3_V_read sc_in sc_lv 4 signal 3 } 
	{ w0vec_0_V_read sc_in sc_lv 8 signal 4 } 
	{ w0vec_1_V_read sc_in sc_lv 8 signal 5 } 
	{ w0vec_2_V_read sc_in sc_lv 8 signal 6 } 
	{ w0vec_3_V_read sc_in sc_lv 8 signal 7 } 
	{ w1vec_0_V_read sc_in sc_lv 8 signal 8 } 
	{ w1vec_1_V_read sc_in sc_lv 8 signal 9 } 
	{ w1vec_2_V_read sc_in sc_lv 8 signal 10 } 
	{ w1vec_3_V_read sc_in sc_lv 8 signal 11 } 
	{ ap_return_0 sc_out sc_lv 14 signal -1 } 
	{ ap_return_1 sc_out sc_lv 14 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "invec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "invec_0_V_read", "role": "default" }} , 
 	{ "name": "invec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "invec_1_V_read", "role": "default" }} , 
 	{ "name": "invec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "invec_2_V_read", "role": "default" }} , 
 	{ "name": "invec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "invec_3_V_read", "role": "default" }} , 
 	{ "name": "w0vec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_0_V_read", "role": "default" }} , 
 	{ "name": "w0vec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_1_V_read", "role": "default" }} , 
 	{ "name": "w0vec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_2_V_read", "role": "default" }} , 
 	{ "name": "w0vec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_3_V_read", "role": "default" }} , 
 	{ "name": "w1vec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_0_V_read", "role": "default" }} , 
 	{ "name": "w1vec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_1_V_read", "role": "default" }} , 
 	{ "name": "w1vec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_2_V_read", "role": "default" }} , 
 	{ "name": "w1vec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_3_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "simd_mac_DSP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "invec_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_3_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_ama_adddQK_U721", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	simd_mac_DSP2 {
		invec_0_V_read {Type I LastRead 0 FirstWrite -1}
		invec_1_V_read {Type I LastRead 0 FirstWrite -1}
		invec_2_V_read {Type I LastRead 0 FirstWrite -1}
		invec_3_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_0_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_1_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_2_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_3_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_0_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_1_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_2_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_3_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	invec_0_V_read { ap_none {  { invec_0_V_read in_data 0 4 } } }
	invec_1_V_read { ap_none {  { invec_1_V_read in_data 0 4 } } }
	invec_2_V_read { ap_none {  { invec_2_V_read in_data 0 4 } } }
	invec_3_V_read { ap_none {  { invec_3_V_read in_data 0 4 } } }
	w0vec_0_V_read { ap_none {  { w0vec_0_V_read in_data 0 8 } } }
	w0vec_1_V_read { ap_none {  { w0vec_1_V_read in_data 0 8 } } }
	w0vec_2_V_read { ap_none {  { w0vec_2_V_read in_data 0 8 } } }
	w0vec_3_V_read { ap_none {  { w0vec_3_V_read in_data 0 8 } } }
	w1vec_0_V_read { ap_none {  { w1vec_0_V_read in_data 0 8 } } }
	w1vec_1_V_read { ap_none {  { w1vec_1_V_read in_data 0 8 } } }
	w1vec_2_V_read { ap_none {  { w1vec_2_V_read in_data 0 8 } } }
	w1vec_3_V_read { ap_none {  { w1vec_3_V_read in_data 0 8 } } }
}
