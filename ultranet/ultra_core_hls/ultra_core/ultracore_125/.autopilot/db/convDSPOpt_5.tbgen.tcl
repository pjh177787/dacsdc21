set moduleName convDSPOpt_5
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
set C_modelName {convDSPOpt.5}
set C_modelType { void 0 }
set C_modelArgList {
	{ vec_V_V int 128 regular {fifo 0 volatile }  }
	{ out_V_V int 32 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vec_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
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
	{ vec_V_V_dout sc_in sc_lv 128 signal 0 } 
	{ vec_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ vec_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 32 signal 1 } 
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
 	{ "name": "vec_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec_V_V", "role": "dout" }} , 
 	{ "name": "vec_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_V_V", "role": "empty_n" }} , 
 	{ "name": "vec_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "38", "55", "72", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
		"CDFG" : "convDSPOpt_5",
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
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_inc_new_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_bias_new_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_inc_new_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_bias_new_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_inc_new_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_bias_new_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_inc_new_V_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_bias_new_V_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_0_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_0_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_0_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_1_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_1_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_1_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_2_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_2_1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_2_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_3_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_3_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_w_new_V_3_0_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U238", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U239", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U240", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U241", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U242", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U243", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U244", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U245", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U246", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U247", "Parent" : "21"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U248", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U249", "Parent" : "21"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U250", "Parent" : "21"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U251", "Parent" : "21"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U252", "Parent" : "21"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U253", "Parent" : "21"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U238", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U239", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U240", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U241", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U242", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U243", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U244", "Parent" : "38"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U245", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U246", "Parent" : "38"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U247", "Parent" : "38"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U248", "Parent" : "38"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U249", "Parent" : "38"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U250", "Parent" : "38"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U251", "Parent" : "38"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U252", "Parent" : "38"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U253", "Parent" : "38"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
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
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U238", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U239", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U240", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U241", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U242", "Parent" : "55"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U243", "Parent" : "55"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U244", "Parent" : "55"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U245", "Parent" : "55"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U246", "Parent" : "55"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U247", "Parent" : "55"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U248", "Parent" : "55"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U249", "Parent" : "55"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U250", "Parent" : "55"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U251", "Parent" : "55"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U252", "Parent" : "55"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U253", "Parent" : "55"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
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
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U238", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U239", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U240", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U241", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U242", "Parent" : "72"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U243", "Parent" : "72"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U244", "Parent" : "72"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U245", "Parent" : "72"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U246", "Parent" : "72"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U247", "Parent" : "72"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U248", "Parent" : "72"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U249", "Parent" : "72"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U250", "Parent" : "72"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U251", "Parent" : "72"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U252", "Parent" : "72"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U253", "Parent" : "72"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret49_i_pack_weight_data_2_fu_955", "Parent" : "0",
		"CDFG" : "pack_weight_data_2",
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
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret50_i_pack_weight_data_2_fu_965", "Parent" : "0",
		"CDFG" : "pack_weight_data_2",
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
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret51_i_pack_weight_data_2_fu_974", "Parent" : "0",
		"CDFG" : "pack_weight_data_2",
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
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret52_i_pack_weight_data_2_fu_984", "Parent" : "0",
		"CDFG" : "pack_weight_data_2",
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
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_12nbHp_U287", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbIp_U288", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbIp_U289", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbJp_U290", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbJp_U291", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbKp_U292", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbKp_U293", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbIp_U294", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_mulbIp_U295", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convDSPOpt_5 {
		vec_V_V {Type I LastRead 5 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 13}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_1_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_1_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_1_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_inc_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_bias_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_inc_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_1_bias_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_2_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_2_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_3_2 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_3_1 {Type I LastRead -1 FirstWrite -1}
		conv_1_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}}
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
		ipack_15_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_15_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_15_V_read {Type I LastRead 0 FirstWrite -1}}
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
		ipack_15_V_read {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_2 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_2 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_2 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_2 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vec_V_V { ap_fifo {  { vec_V_V_dout fifo_data 0 128 }  { vec_V_V_empty_n fifo_status 0 1 }  { vec_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 32 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
}
