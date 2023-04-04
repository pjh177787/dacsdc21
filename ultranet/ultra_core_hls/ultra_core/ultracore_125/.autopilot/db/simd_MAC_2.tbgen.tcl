set moduleName simd_MAC_2
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
set C_modelName {simd_MAC.2}
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
	{ wpack_8_V_read int 26 regular  }
	{ wpack_9_V_read int 26 regular  }
	{ wpack_10_V_read int 26 regular  }
	{ wpack_11_V_read int 26 regular  }
	{ wpack_12_V_read int 26 regular  }
	{ wpack_13_V_read int 26 regular  }
	{ wpack_14_V_read int 26 regular  }
	{ wpack_15_V_read int 26 regular  }
	{ ipack_0_V_read int 15 regular  }
	{ ipack_1_V_read int 15 regular  }
	{ ipack_2_V_read int 15 regular  }
	{ ipack_3_V_read int 15 regular  }
	{ ipack_4_V_read int 15 regular  }
	{ ipack_5_V_read int 15 regular  }
	{ ipack_6_V_read int 15 regular  }
	{ ipack_7_V_read int 15 regular  }
	{ ipack_8_V_read int 15 regular  }
	{ ipack_9_V_read int 15 regular  }
	{ ipack_10_V_read int 15 regular  }
	{ ipack_11_V_read int 15 regular  }
	{ ipack_12_V_read int 15 regular  }
	{ ipack_13_V_read int 15 regular  }
	{ ipack_14_V_read int 15 regular  }
	{ ipack_15_V_read int 15 regular  }
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
 	{ "Name" : "wpack_8_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_9_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_10_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_11_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_12_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_13_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_14_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "wpack_15_V_read", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_0_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_1_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_2_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_3_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_4_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_5_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_6_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_7_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_8_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_9_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_10_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_11_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_12_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_13_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_14_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ipack_15_V_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 39
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
	{ wpack_8_V_read sc_in sc_lv 26 signal 8 } 
	{ wpack_9_V_read sc_in sc_lv 26 signal 9 } 
	{ wpack_10_V_read sc_in sc_lv 26 signal 10 } 
	{ wpack_11_V_read sc_in sc_lv 26 signal 11 } 
	{ wpack_12_V_read sc_in sc_lv 26 signal 12 } 
	{ wpack_13_V_read sc_in sc_lv 26 signal 13 } 
	{ wpack_14_V_read sc_in sc_lv 26 signal 14 } 
	{ wpack_15_V_read sc_in sc_lv 26 signal 15 } 
	{ ipack_0_V_read sc_in sc_lv 15 signal 16 } 
	{ ipack_1_V_read sc_in sc_lv 15 signal 17 } 
	{ ipack_2_V_read sc_in sc_lv 15 signal 18 } 
	{ ipack_3_V_read sc_in sc_lv 15 signal 19 } 
	{ ipack_4_V_read sc_in sc_lv 15 signal 20 } 
	{ ipack_5_V_read sc_in sc_lv 15 signal 21 } 
	{ ipack_6_V_read sc_in sc_lv 15 signal 22 } 
	{ ipack_7_V_read sc_in sc_lv 15 signal 23 } 
	{ ipack_8_V_read sc_in sc_lv 15 signal 24 } 
	{ ipack_9_V_read sc_in sc_lv 15 signal 25 } 
	{ ipack_10_V_read sc_in sc_lv 15 signal 26 } 
	{ ipack_11_V_read sc_in sc_lv 15 signal 27 } 
	{ ipack_12_V_read sc_in sc_lv 15 signal 28 } 
	{ ipack_13_V_read sc_in sc_lv 15 signal 29 } 
	{ ipack_14_V_read sc_in sc_lv 15 signal 30 } 
	{ ipack_15_V_read sc_in sc_lv 15 signal 31 } 
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
 	{ "name": "wpack_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_8_V_read", "role": "default" }} , 
 	{ "name": "wpack_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_9_V_read", "role": "default" }} , 
 	{ "name": "wpack_10_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_10_V_read", "role": "default" }} , 
 	{ "name": "wpack_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_11_V_read", "role": "default" }} , 
 	{ "name": "wpack_12_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_12_V_read", "role": "default" }} , 
 	{ "name": "wpack_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_13_V_read", "role": "default" }} , 
 	{ "name": "wpack_14_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_14_V_read", "role": "default" }} , 
 	{ "name": "wpack_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "wpack_15_V_read", "role": "default" }} , 
 	{ "name": "ipack_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_0_V_read", "role": "default" }} , 
 	{ "name": "ipack_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_1_V_read", "role": "default" }} , 
 	{ "name": "ipack_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_2_V_read", "role": "default" }} , 
 	{ "name": "ipack_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_3_V_read", "role": "default" }} , 
 	{ "name": "ipack_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_4_V_read", "role": "default" }} , 
 	{ "name": "ipack_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_5_V_read", "role": "default" }} , 
 	{ "name": "ipack_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_6_V_read", "role": "default" }} , 
 	{ "name": "ipack_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_7_V_read", "role": "default" }} , 
 	{ "name": "ipack_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_8_V_read", "role": "default" }} , 
 	{ "name": "ipack_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_9_V_read", "role": "default" }} , 
 	{ "name": "ipack_10_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_10_V_read", "role": "default" }} , 
 	{ "name": "ipack_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_11_V_read", "role": "default" }} , 
 	{ "name": "ipack_12_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_12_V_read", "role": "default" }} , 
 	{ "name": "ipack_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_13_V_read", "role": "default" }} , 
 	{ "name": "ipack_14_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_14_V_read", "role": "default" }} , 
 	{ "name": "ipack_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ipack_15_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "simd_MAC_2",
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
			{"Name" : "wpack_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "wpack_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipack_15_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U238", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U239", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U240", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U241", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U242", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U243", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U244", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U245", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U246", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U247", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U248", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U249", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U250", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U251", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U252", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbml_U253", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	simd_MAC_2 {
		wpack_0_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_1_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_2_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_3_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_4_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_5_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_6_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_7_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_8_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_9_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_10_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_11_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_12_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_13_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_14_V_read {Type I LastRead 0 FirstWrite -1}
		wpack_15_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_0_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_1_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_2_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_3_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_4_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_5_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_6_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_8_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_9_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_10_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_11_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_12_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_13_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_14_V_read {Type I LastRead 0 FirstWrite -1}
		ipack_15_V_read {Type I LastRead 0 FirstWrite -1}}}

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
	wpack_8_V_read { ap_none {  { wpack_8_V_read in_data 0 26 } } }
	wpack_9_V_read { ap_none {  { wpack_9_V_read in_data 0 26 } } }
	wpack_10_V_read { ap_none {  { wpack_10_V_read in_data 0 26 } } }
	wpack_11_V_read { ap_none {  { wpack_11_V_read in_data 0 26 } } }
	wpack_12_V_read { ap_none {  { wpack_12_V_read in_data 0 26 } } }
	wpack_13_V_read { ap_none {  { wpack_13_V_read in_data 0 26 } } }
	wpack_14_V_read { ap_none {  { wpack_14_V_read in_data 0 26 } } }
	wpack_15_V_read { ap_none {  { wpack_15_V_read in_data 0 26 } } }
	ipack_0_V_read { ap_none {  { ipack_0_V_read in_data 0 15 } } }
	ipack_1_V_read { ap_none {  { ipack_1_V_read in_data 0 15 } } }
	ipack_2_V_read { ap_none {  { ipack_2_V_read in_data 0 15 } } }
	ipack_3_V_read { ap_none {  { ipack_3_V_read in_data 0 15 } } }
	ipack_4_V_read { ap_none {  { ipack_4_V_read in_data 0 15 } } }
	ipack_5_V_read { ap_none {  { ipack_5_V_read in_data 0 15 } } }
	ipack_6_V_read { ap_none {  { ipack_6_V_read in_data 0 15 } } }
	ipack_7_V_read { ap_none {  { ipack_7_V_read in_data 0 15 } } }
	ipack_8_V_read { ap_none {  { ipack_8_V_read in_data 0 15 } } }
	ipack_9_V_read { ap_none {  { ipack_9_V_read in_data 0 15 } } }
	ipack_10_V_read { ap_none {  { ipack_10_V_read in_data 0 15 } } }
	ipack_11_V_read { ap_none {  { ipack_11_V_read in_data 0 15 } } }
	ipack_12_V_read { ap_none {  { ipack_12_V_read in_data 0 15 } } }
	ipack_13_V_read { ap_none {  { ipack_13_V_read in_data 0 15 } } }
	ipack_14_V_read { ap_none {  { ipack_14_V_read in_data 0 15 } } }
	ipack_15_V_read { ap_none {  { ipack_15_V_read in_data 0 15 } } }
}
