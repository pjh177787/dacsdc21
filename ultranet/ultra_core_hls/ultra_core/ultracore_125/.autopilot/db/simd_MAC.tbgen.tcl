set moduleName simd_MAC
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
set C_modelName {simd_MAC}
set C_modelType { int 64 }
set C_modelArgList {
	{ wpack_0_V_read int 26 regular  }
	{ wpack_1_V_read int 26 regular  }
	{ wpack_2_V_read int 26 regular  }
	{ wpack_3_V_read int 26 regular  }
	{ wpack_4_V_read int 26 regular  }
	{ wpack_5_V_read int 26 regular  }
	{ wpack_6_V_read int 26 regular  }
	{ wpack_7_V_read int 26 regular  }
	{ ipack_0_V_read int 15 regular  }
	{ ipack_1_V_read int 15 regular  }
	{ ipack_2_V_read int 15 regular  }
	{ ipack_3_V_read int 15 regular  }
	{ ipack_4_V_read int 15 regular  }
	{ ipack_5_V_read int 15 regular  }
	{ ipack_6_V_read int 15 regular  }
	{ ipack_7_V_read int 15 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wpack_0_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_1_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_2_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_3_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_4_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_5_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_6_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_7_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_0_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_1_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_2_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_3_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_4_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_5_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_6_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_7_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ wpack_0_V_read sc_in sc_lv 26 signal 0 } 
	{ wpack_1_V_read sc_in sc_lv 26 signal 1 } 
	{ wpack_2_V_read sc_in sc_lv 26 signal 2 } 
	{ wpack_3_V_read sc_in sc_lv 26 signal 3 } 
	{ wpack_4_V_read sc_in sc_lv 26 signal 4 } 
	{ wpack_5_V_read sc_in sc_lv 26 signal 5 } 
	{ wpack_6_V_read sc_in sc_lv 26 signal 6 } 
	{ wpack_7_V_read sc_in sc_lv 26 signal 7 } 
	{ ipack_0_V_read sc_in sc_lv 15 signal 8 } 
	{ ipack_1_V_read sc_in sc_lv 15 signal 9 } 
	{ ipack_2_V_read sc_in sc_lv 15 signal 10 } 
	{ ipack_3_V_read sc_in sc_lv 15 signal 11 } 
	{ ipack_4_V_read sc_in sc_lv 15 signal 12 } 
	{ ipack_5_V_read sc_in sc_lv 15 signal 13 } 
	{ ipack_6_V_read sc_in sc_lv 15 signal 14 } 
	{ ipack_7_V_read sc_in sc_lv 15 signal 15 } 
	{ ap_return_0 sc_out sc_lv 16 signal -1 } 
	{ ap_return_1 sc_out sc_lv 16 signal -1 } 
	{ ap_return_2 sc_out sc_lv 16 signal -1 } 
	{ ap_return_3 sc_out sc_lv 16 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "wpack_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_0_V_read", "role": "default" }} , 
 	{ "name": "wpack_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_1_V_read", "role": "default" }} , 
 	{ "name": "wpack_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_2_V_read", "role": "default" }} , 
 	{ "name": "wpack_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_3_V_read", "role": "default" }} , 
 	{ "name": "wpack_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_4_V_read", "role": "default" }} , 
 	{ "name": "wpack_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_5_V_read", "role": "default" }} , 
 	{ "name": "wpack_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_6_V_read", "role": "default" }} , 
 	{ "name": "wpack_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_7_V_read", "role": "default" }} , 
 	{ "name": "ipack_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_0_V_read", "role": "default" }} , 
 	{ "name": "ipack_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_1_V_read", "role": "default" }} , 
 	{ "name": "ipack_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_2_V_read", "role": "default" }} , 
 	{ "name": "ipack_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_3_V_read", "role": "default" }} , 
 	{ "name": "ipack_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_4_V_read", "role": "default" }} , 
 	{ "name": "ipack_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_5_V_read", "role": "default" }} , 
 	{ "name": "ipack_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_6_V_read", "role": "default" }} , 
 	{ "name": "ipack_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_7_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "simd_MAC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "wpack_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_7_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U357", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U358", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U359", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U360", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U361", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U362", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U363", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U364", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	simd_MAC {
		wpack_0_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_1_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_2_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_3_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_4_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_5_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_6_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_7_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_0_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_1_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_2_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_3_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_4_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_5_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_6_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	wpack_0_V_read { ap_none {  { wpack_0_V_read in_data 0 26 } } }
	wpack_1_V_read { ap_none {  { wpack_1_V_read in_data 0 26 } } }
	wpack_2_V_read { ap_none {  { wpack_2_V_read in_data 0 26 } } }
	wpack_3_V_read { ap_none {  { wpack_3_V_read in_data 0 26 } } }
	wpack_4_V_read { ap_none {  { wpack_4_V_read in_data 0 26 } } }
	wpack_5_V_read { ap_none {  { wpack_5_V_read in_data 0 26 } } }
	wpack_6_V_read { ap_none {  { wpack_6_V_read in_data 0 26 } } }
	wpack_7_V_read { ap_none {  { wpack_7_V_read in_data 0 26 } } }
	ipack_0_V_read { ap_none {  { ipack_0_V_read in_data 0 15 } } }
	ipack_1_V_read { ap_none {  { ipack_1_V_read in_data 0 15 } } }
	ipack_2_V_read { ap_none {  { ipack_2_V_read in_data 0 15 } } }
	ipack_3_V_read { ap_none {  { ipack_3_V_read in_data 0 15 } } }
	ipack_4_V_read { ap_none {  { ipack_4_V_read in_data 0 15 } } }
	ipack_5_V_read { ap_none {  { ipack_5_V_read in_data 0 15 } } }
	ipack_6_V_read { ap_none {  { ipack_6_V_read in_data 0 15 } } }
	ipack_7_V_read { ap_none {  { ipack_7_V_read in_data 0 15 } } }
}
