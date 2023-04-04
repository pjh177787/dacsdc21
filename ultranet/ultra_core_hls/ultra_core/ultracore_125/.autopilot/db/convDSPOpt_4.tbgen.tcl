set moduleName convDSPOpt_4
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
set C_modelName {convDSPOpt.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ vec_V_V int 64 regular {fifo 0 volatile }  }
	{ out_V_V int 64 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vec_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vec_V_V_dout sc_in sc_lv 64 signal 0 } 
	{ vec_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ vec_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 64 signal 1 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_V_write sc_out sc_logic 1 signal 1 } 
	{ reps_dout sc_in sc_lv 32 signal 2 } 
	{ reps_empty_n sc_in sc_logic 1 signal 2 } 
	{ reps_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vec_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vec_V_V", "role": "dout" }} , 
 	{ "name": "vec_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_V_V", "role": "empty_n" }} , 
 	{ "name": "vec_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "50", "59", "68", "77", "86", "95", "104", "113", "114", "115", "116", "117", "118", "119", "120", "121", "123", "125", "127", "129", "131", "133", "135", "137", "139", "141", "143", "145", "147", "149", "151", "153"],
		"CDFG" : "convDSPOpt_4",
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
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_4_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_5_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_5_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_6_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_inc_new_V_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_bias_new_V_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_0_2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_0_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_0_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_1_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_1_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_1_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_2_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_2_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_3_2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_3_1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_3_0_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_4_2_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_4_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_4_0_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_5_2_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_5_1_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_5_0_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_6_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_6_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_6_0_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_7_2_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_7_1_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_w_new_V_7_0_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49"],
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
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U357", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U358", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U359", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U360", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U361", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U362", "Parent" : "41"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U363", "Parent" : "41"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U364", "Parent" : "41"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213", "Parent" : "0", "Child" : ["51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U357", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U358", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U359", "Parent" : "50"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U360", "Parent" : "50"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U361", "Parent" : "50"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U362", "Parent" : "50"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U363", "Parent" : "50"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U364", "Parent" : "50"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67"],
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U357", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U358", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U359", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U360", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U361", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U362", "Parent" : "59"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U363", "Parent" : "59"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U364", "Parent" : "59"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76"],
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
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U357", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U358", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U359", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U360", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U361", "Parent" : "68"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U362", "Parent" : "68"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U363", "Parent" : "68"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U364", "Parent" : "68"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273", "Parent" : "0", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85"],
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
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U357", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U358", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U359", "Parent" : "77"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U360", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U361", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U362", "Parent" : "77"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U363", "Parent" : "77"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U364", "Parent" : "77"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293", "Parent" : "0", "Child" : ["87", "88", "89", "90", "91", "92", "93", "94"],
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
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U357", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U358", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U359", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U360", "Parent" : "86"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U361", "Parent" : "86"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U362", "Parent" : "86"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U363", "Parent" : "86"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U364", "Parent" : "86"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313", "Parent" : "0", "Child" : ["96", "97", "98", "99", "100", "101", "102", "103"],
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
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U357", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U358", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U359", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U360", "Parent" : "95"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U361", "Parent" : "95"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U362", "Parent" : "95"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U363", "Parent" : "95"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U364", "Parent" : "95"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112"],
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
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U357", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U358", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U359", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U360", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U361", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U362", "Parent" : "104"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U363", "Parent" : "104"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U364", "Parent" : "104"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret33_i_pack_weight_data_fu_1353", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret34_i_pack_weight_data_fu_1363", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret35_i_pack_weight_data_fu_1373", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret36_i_pack_weight_data_fu_1383", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret37_i_pack_weight_data_fu_1393", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret38_i_pack_weight_data_fu_1403", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret39_i_pack_weight_data_fu_1413", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret40_i_pack_weight_data_fu_1423", "Parent" : "0",
		"CDFG" : "pack_weight_data",
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
			{"Name" : "w2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1433", "Parent" : "0", "Child" : ["122"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1433.ultra_net_mul_mulbQq_U381", "Parent" : "121"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1440", "Parent" : "0", "Child" : ["124"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1440.ultra_net_mul_mulbQq_U381", "Parent" : "123"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1447", "Parent" : "0", "Child" : ["126"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1447.ultra_net_mul_mulbQq_U381", "Parent" : "125"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1454", "Parent" : "0", "Child" : ["128"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1454.ultra_net_mul_mulbQq_U381", "Parent" : "127"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1461", "Parent" : "0", "Child" : ["130"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1461.ultra_net_mul_mulbQq_U381", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1468", "Parent" : "0", "Child" : ["132"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1468.ultra_net_mul_mulbQq_U381", "Parent" : "131"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1475", "Parent" : "0", "Child" : ["134"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1475.ultra_net_mul_mulbQq_U381", "Parent" : "133"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1482", "Parent" : "0", "Child" : ["136"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1482.ultra_net_mul_mulbQq_U381", "Parent" : "135"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1489", "Parent" : "0", "Child" : ["138"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1489.ultra_net_mul_mulbQq_U381", "Parent" : "137"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1496", "Parent" : "0", "Child" : ["140"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1496.ultra_net_mul_mulbQq_U381", "Parent" : "139"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1503", "Parent" : "0", "Child" : ["142"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1503.ultra_net_mul_mulbQq_U381", "Parent" : "141"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1510", "Parent" : "0", "Child" : ["144"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1510.ultra_net_mul_mulbQq_U381", "Parent" : "143"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1517", "Parent" : "0", "Child" : ["146"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1517.ultra_net_mul_mulbQq_U381", "Parent" : "145"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1524", "Parent" : "0", "Child" : ["148"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1524.ultra_net_mul_mulbQq_U381", "Parent" : "147"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1531", "Parent" : "0", "Child" : ["150"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1531.ultra_net_mul_mulbQq_U381", "Parent" : "149"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1538", "Parent" : "0", "Child" : ["152"],
		"CDFG" : "bn_qurelu_fixed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bn_qurelu_fixed_1_fu_1538.ultra_net_mul_mulbQq_U381", "Parent" : "151"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_13ncvx_U386", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convDSPOpt_4 {
		vec_V_V {Type I LastRead 5 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 12}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_2_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_4 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_4 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_5 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_5 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_6 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_6 {Type I LastRead -1 FirstWrite -1}
		conv_2_inc_new_V_7 {Type I LastRead -1 FirstWrite -1}
		conv_2_bias_new_V_7 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_2_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_2_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_3_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_3_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_4_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_4_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_4_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_5_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_5_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_5_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_6_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_6_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_6_0 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_7_2 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_7_1 {Type I LastRead -1 FirstWrite -1}
		conv_2_w_new_V_7_0 {Type I LastRead -1 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_7_V_read {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed_1 {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vec_V_V { ap_fifo {  { vec_V_V_dout fifo_data 0 64 }  { vec_V_V_empty_n fifo_status 0 1 }  { vec_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 64 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
}
