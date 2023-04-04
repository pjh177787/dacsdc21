set moduleName convDSPOpt_l0
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {convDSPOpt_l0}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 72 regular {fifo 0 volatile }  }
	{ out_V_V int 416 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
	{ reps_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 416, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reps_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_V_V_dout sc_in sc_lv 72 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 416 signal 1 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_V_write sc_out sc_logic 1 signal 1 } 
	{ reps_dout sc_in sc_lv 32 signal 2 } 
	{ reps_empty_n sc_in sc_logic 1 signal 2 } 
	{ reps_read sc_out sc_logic 1 signal 2 } 
	{ reps_out_din sc_out sc_lv 32 signal 3 } 
	{ reps_out_full_n sc_in sc_logic 1 signal 3 } 
	{ reps_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }} , 
 	{ "name": "reps_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps_out", "role": "din" }} , 
 	{ "name": "reps_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "full_n" }} , 
 	{ "name": "reps_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "59", "69", "79", "89", "99", "109", "119", "129"],
		"CDFG" : "convDSPOpt_l0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_1_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_1_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_1_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_2_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_2_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_2_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_3_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_3_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_3_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_4_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_4_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_4_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_5_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_5_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_5_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_6_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_6_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_6_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_7_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_7_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_7_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_8_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_8_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_8_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_9_0_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_9_1_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_9_2_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_10_0_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_10_1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_10_2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_11_0_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_11_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_11_2_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_12_0_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_12_1_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_12_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_13_0_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_13_1_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_13_2_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_14_0_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_14_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_14_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_15_0_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_15_1_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_w_new_V_15_2_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U104", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U105", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U106", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U107", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U108", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U109", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U110", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U111", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U112", "Parent" : "49"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68"],
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U104", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U105", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U106", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U107", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U108", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U109", "Parent" : "59"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U110", "Parent" : "59"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U111", "Parent" : "59"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U112", "Parent" : "59"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014", "Parent" : "0", "Child" : ["70", "71", "72", "73", "74", "75", "76", "77", "78"],
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U104", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U105", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U106", "Parent" : "69"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U107", "Parent" : "69"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U108", "Parent" : "69"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U109", "Parent" : "69"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U110", "Parent" : "69"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U111", "Parent" : "69"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U112", "Parent" : "69"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045", "Parent" : "0", "Child" : ["80", "81", "82", "83", "84", "85", "86", "87", "88"],
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
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U104", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U105", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U106", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U107", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U108", "Parent" : "79"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U109", "Parent" : "79"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U110", "Parent" : "79"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U111", "Parent" : "79"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U112", "Parent" : "79"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95", "96", "97", "98"],
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
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U104", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U105", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U106", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U107", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U108", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U109", "Parent" : "89"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U110", "Parent" : "89"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U111", "Parent" : "89"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U112", "Parent" : "89"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107", "Parent" : "0", "Child" : ["100", "101", "102", "103", "104", "105", "106", "107", "108"],
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
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U104", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U105", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U106", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U107", "Parent" : "99"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U108", "Parent" : "99"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U109", "Parent" : "99"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U110", "Parent" : "99"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U111", "Parent" : "99"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U112", "Parent" : "99"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114", "115", "116", "117", "118"],
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
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U104", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U105", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U106", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U107", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U108", "Parent" : "109"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U109", "Parent" : "109"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U110", "Parent" : "109"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U111", "Parent" : "109"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U112", "Parent" : "109"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169", "Parent" : "0", "Child" : ["120", "121", "122", "123", "124", "125", "126", "127", "128"],
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
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U104", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U105", "Parent" : "119"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U106", "Parent" : "119"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U107", "Parent" : "119"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U108", "Parent" : "119"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U109", "Parent" : "119"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U110", "Parent" : "119"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U111", "Parent" : "119"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U112", "Parent" : "119"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_i_loadInReg9_8u_s_fu_1200", "Parent" : "0",
		"CDFG" : "loadInReg9_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inData_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	convDSPOpt_l0 {
		in_V_V {Type I LastRead 3 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 8}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_0_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_2_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_2_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_3_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_3_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_4_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_4_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_4_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_5_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_5_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_5_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_6_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_6_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_6_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_7_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_7_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_7_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_8_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_8_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_8_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_9_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_9_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_9_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_10_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_10_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_10_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_11_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_11_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_11_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_12_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_12_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_12_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_13_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_13_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_13_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_14_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_14_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_14_2 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_15_0 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_15_1 {Type I LastRead -1 FirstWrite -1}
		conv_0_w_new_V_15_2 {Type I LastRead -1 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
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
		w1vec_8_V_read {Type I LastRead 0 FirstWrite -1}}
	loadInReg9_8u_s {
		inData_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 72 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 416 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
	reps_out { ap_fifo {  { reps_out_din fifo_data 1 32 }  { reps_out_full_n fifo_status 0 1 }  { reps_out_write fifo_update 1 1 } } }
}
