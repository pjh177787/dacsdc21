set moduleName simd_mac9_DSP2
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
set C_modelName {simd_mac9_DSP2}
set C_modelType { int 40 }
set C_modelArgList {
	{ invec_0_V_read int 8 regular  }
	{ invec_1_V_read int 8 regular  }
	{ invec_2_V_read int 8 regular  }
	{ invec_3_V_read int 8 regular  }
	{ invec_4_V_read int 8 regular  }
	{ invec_5_V_read int 8 regular  }
	{ invec_6_V_read int 8 regular  }
	{ invec_7_V_read int 8 regular  }
	{ invec_8_V_read int 8 regular  }
	{ w0vec_0_V_read int 8 regular  }
	{ w0vec_1_V_read int 8 regular  }
	{ w0vec_2_V_read int 8 regular  }
	{ w0vec_3_V_read int 8 regular  }
	{ w0vec_4_V_read int 8 regular  }
	{ w0vec_5_V_read int 8 regular  }
	{ w0vec_6_V_read int 8 regular  }
	{ w0vec_7_V_read int 8 regular  }
	{ w0vec_8_V_read int 8 regular  }
	{ w1vec_0_V_read int 8 regular  }
	{ w1vec_1_V_read int 8 regular  }
	{ w1vec_2_V_read int 8 regular  }
	{ w1vec_3_V_read int 8 regular  }
	{ w1vec_4_V_read int 8 regular  }
	{ w1vec_5_V_read int 8 regular  }
	{ w1vec_6_V_read int 8 regular  }
	{ w1vec_7_V_read int 8 regular  }
	{ w1vec_8_V_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "invec_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_4_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_5_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_6_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_7_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "invec_8_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_4_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_5_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_6_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_7_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w0vec_8_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_4_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_5_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_6_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_7_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w1vec_8_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 40} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ invec_0_V_read sc_in sc_lv 8 signal 0 } 
	{ invec_1_V_read sc_in sc_lv 8 signal 1 } 
	{ invec_2_V_read sc_in sc_lv 8 signal 2 } 
	{ invec_3_V_read sc_in sc_lv 8 signal 3 } 
	{ invec_4_V_read sc_in sc_lv 8 signal 4 } 
	{ invec_5_V_read sc_in sc_lv 8 signal 5 } 
	{ invec_6_V_read sc_in sc_lv 8 signal 6 } 
	{ invec_7_V_read sc_in sc_lv 8 signal 7 } 
	{ invec_8_V_read sc_in sc_lv 8 signal 8 } 
	{ w0vec_0_V_read sc_in sc_lv 8 signal 9 } 
	{ w0vec_1_V_read sc_in sc_lv 8 signal 10 } 
	{ w0vec_2_V_read sc_in sc_lv 8 signal 11 } 
	{ w0vec_3_V_read sc_in sc_lv 8 signal 12 } 
	{ w0vec_4_V_read sc_in sc_lv 8 signal 13 } 
	{ w0vec_5_V_read sc_in sc_lv 8 signal 14 } 
	{ w0vec_6_V_read sc_in sc_lv 8 signal 15 } 
	{ w0vec_7_V_read sc_in sc_lv 8 signal 16 } 
	{ w0vec_8_V_read sc_in sc_lv 8 signal 17 } 
	{ w1vec_0_V_read sc_in sc_lv 8 signal 18 } 
	{ w1vec_1_V_read sc_in sc_lv 8 signal 19 } 
	{ w1vec_2_V_read sc_in sc_lv 8 signal 20 } 
	{ w1vec_3_V_read sc_in sc_lv 8 signal 21 } 
	{ w1vec_4_V_read sc_in sc_lv 8 signal 22 } 
	{ w1vec_5_V_read sc_in sc_lv 8 signal 23 } 
	{ w1vec_6_V_read sc_in sc_lv 8 signal 24 } 
	{ w1vec_7_V_read sc_in sc_lv 8 signal 25 } 
	{ w1vec_8_V_read sc_in sc_lv 8 signal 26 } 
	{ ap_return_0 sc_out sc_lv 20 signal -1 } 
	{ ap_return_1 sc_out sc_lv 20 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "invec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_0_V_read", "role": "default" }} , 
 	{ "name": "invec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_1_V_read", "role": "default" }} , 
 	{ "name": "invec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_2_V_read", "role": "default" }} , 
 	{ "name": "invec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_3_V_read", "role": "default" }} , 
 	{ "name": "invec_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_4_V_read", "role": "default" }} , 
 	{ "name": "invec_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_5_V_read", "role": "default" }} , 
 	{ "name": "invec_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_6_V_read", "role": "default" }} , 
 	{ "name": "invec_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_7_V_read", "role": "default" }} , 
 	{ "name": "invec_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "invec_8_V_read", "role": "default" }} , 
 	{ "name": "w0vec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_0_V_read", "role": "default" }} , 
 	{ "name": "w0vec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_1_V_read", "role": "default" }} , 
 	{ "name": "w0vec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_2_V_read", "role": "default" }} , 
 	{ "name": "w0vec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_3_V_read", "role": "default" }} , 
 	{ "name": "w0vec_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_4_V_read", "role": "default" }} , 
 	{ "name": "w0vec_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_5_V_read", "role": "default" }} , 
 	{ "name": "w0vec_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_6_V_read", "role": "default" }} , 
 	{ "name": "w0vec_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_7_V_read", "role": "default" }} , 
 	{ "name": "w0vec_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w0vec_8_V_read", "role": "default" }} , 
 	{ "name": "w1vec_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_0_V_read", "role": "default" }} , 
 	{ "name": "w1vec_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_1_V_read", "role": "default" }} , 
 	{ "name": "w1vec_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_2_V_read", "role": "default" }} , 
 	{ "name": "w1vec_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_3_V_read", "role": "default" }} , 
 	{ "name": "w1vec_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_4_V_read", "role": "default" }} , 
 	{ "name": "w1vec_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_5_V_read", "role": "default" }} , 
 	{ "name": "w1vec_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_6_V_read", "role": "default" }} , 
 	{ "name": "w1vec_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_7_V_read", "role": "default" }} , 
 	{ "name": "w1vec_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w1vec_8_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "simd_mac9_DSP2",
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
			{"Name" : "invec_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "invec_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0vec_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1vec_8_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U104", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U105", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U106", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U107", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U108", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U109", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U110", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U111", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_multde_U112", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	simd_mac9_DSP2 {
		invec_0_V_read {Type I LastRead 0 FirstWrite -1}
		invec_1_V_read {Type I LastRead 0 FirstWrite -1}
		invec_2_V_read {Type I LastRead 0 FirstWrite -1}
		invec_3_V_read {Type I LastRead 0 FirstWrite -1}
		invec_4_V_read {Type I LastRead 0 FirstWrite -1}
		invec_5_V_read {Type I LastRead 0 FirstWrite -1}
		invec_6_V_read {Type I LastRead 0 FirstWrite -1}
		invec_7_V_read {Type I LastRead 0 FirstWrite -1}
		invec_8_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_0_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_1_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_2_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_3_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_4_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_5_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_6_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_7_V_read {Type I LastRead 0 FirstWrite -1}
		w0vec_8_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_0_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_1_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_2_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_3_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_4_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_5_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_6_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_7_V_read {Type I LastRead 0 FirstWrite -1}
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	invec_0_V_read { ap_none {  { invec_0_V_read in_data 0 8 } } }
	invec_1_V_read { ap_none {  { invec_1_V_read in_data 0 8 } } }
	invec_2_V_read { ap_none {  { invec_2_V_read in_data 0 8 } } }
	invec_3_V_read { ap_none {  { invec_3_V_read in_data 0 8 } } }
	invec_4_V_read { ap_none {  { invec_4_V_read in_data 0 8 } } }
	invec_5_V_read { ap_none {  { invec_5_V_read in_data 0 8 } } }
	invec_6_V_read { ap_none {  { invec_6_V_read in_data 0 8 } } }
	invec_7_V_read { ap_none {  { invec_7_V_read in_data 0 8 } } }
	invec_8_V_read { ap_none {  { invec_8_V_read in_data 0 8 } } }
	w0vec_0_V_read { ap_none {  { w0vec_0_V_read in_data 0 8 } } }
	w0vec_1_V_read { ap_none {  { w0vec_1_V_read in_data 0 8 } } }
	w0vec_2_V_read { ap_none {  { w0vec_2_V_read in_data 0 8 } } }
	w0vec_3_V_read { ap_none {  { w0vec_3_V_read in_data 0 8 } } }
	w0vec_4_V_read { ap_none {  { w0vec_4_V_read in_data 0 8 } } }
	w0vec_5_V_read { ap_none {  { w0vec_5_V_read in_data 0 8 } } }
	w0vec_6_V_read { ap_none {  { w0vec_6_V_read in_data 0 8 } } }
	w0vec_7_V_read { ap_none {  { w0vec_7_V_read in_data 0 8 } } }
	w0vec_8_V_read { ap_none {  { w0vec_8_V_read in_data 0 8 } } }
	w1vec_0_V_read { ap_none {  { w1vec_0_V_read in_data 0 8 } } }
	w1vec_1_V_read { ap_none {  { w1vec_1_V_read in_data 0 8 } } }
	w1vec_2_V_read { ap_none {  { w1vec_2_V_read in_data 0 8 } } }
	w1vec_3_V_read { ap_none {  { w1vec_3_V_read in_data 0 8 } } }
	w1vec_4_V_read { ap_none {  { w1vec_4_V_read in_data 0 8 } } }
	w1vec_5_V_read { ap_none {  { w1vec_5_V_read in_data 0 8 } } }
	w1vec_6_V_read { ap_none {  { w1vec_6_V_read in_data 0 8 } } }
	w1vec_7_V_read { ap_none {  { w1vec_7_V_read in_data 0 8 } } }
	w1vec_8_V_read { ap_none {  { w1vec_8_V_read in_data 0 8 } } }
}
