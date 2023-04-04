set moduleName conv1x1_DSPopt
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv1x1_DSPopt}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 16 regular {fifo 0 volatile }  }
	{ out_V_V int 64 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
	{ reps_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reps_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 64 signal 1 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_V_write sc_out sc_logic 1 signal 1 } 
	{ reps_dout sc_in sc_lv 32 signal 2 } 
	{ reps_empty_n sc_in sc_logic 1 signal 2 } 
	{ reps_read sc_out sc_logic 1 signal 2 } 
	{ reps_out_din sc_out sc_lv 32 signal 3 } 
	{ reps_out_full_n sc_in sc_logic 1 signal 3 } 
	{ reps_out_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }} , 
 	{ "name": "reps_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps_out", "role": "din" }} , 
 	{ "name": "reps_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "full_n" }} , 
 	{ "name": "reps_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "14", "15", "16"],
		"CDFG" : "conv1x1_DSPopt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "conv1x1convert718_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "conv1x1convert718_U0"},
			{"ID" : "6", "Name" : "conv1x1DSP2_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv1x1convert718_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "conv1x1DSP2_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1x1convert718_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "conv1x1convert718",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_streamInOneRowTwoPix_fu_121"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_streamOutOneRowTwoPi_fu_132"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_streamInOneRowTwoPix_fu_121", "Port" : "in_V_V"}]},
			{"Name" : "conv1in_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_streamOutOneRowTwoPi_fu_132", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1convert718_U0.row_buffer_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1convert718_U0.row_buffer_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1convert718_U0.grp_streamInOneRowTwoPix_fu_121", "Parent" : "1",
		"CDFG" : "streamInOneRowTwoPix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_buffer_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buffer_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "rowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1convert718_U0.grp_streamOutOneRowTwoPi_fu_132", "Parent" : "1",
		"CDFG" : "streamOutOneRowTwoPi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "5763",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_buffer_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buffer_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "rowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "13"],
		"CDFG" : "conv1x1DSP2",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_conv1x1dWL_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.conv_8_bias_new_V_0_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.conv_8_bias_new_V_1_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.conv_8_w_new_V_0_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.conv_8_w_new_V_1_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274", "Parent" : "6", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274.ultra_net_ama_adddQK_U721", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1DSP2_U0.ultra_net_mul_14ndVL_U735", "Parent" : "6"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1in_V_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c_i_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv1x1dWL_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv1x1_DSPopt {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 11}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_8_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_1 {Type I LastRead -1 FirstWrite -1}}
	conv1x1convert718 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		conv1in_V_V {Type O LastRead -1 FirstWrite 3}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	streamInOneRowTwoPix {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 2}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 2}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	streamOutOneRowTwoPi {
		out_V_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	conv1x1DSP2 {
		in_V_V {Type I LastRead 6 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 11}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_8_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_1 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 16 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 64 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
	reps_out { ap_fifo {  { reps_out_din fifo_data 1 32 }  { reps_out_full_n fifo_status 0 1 }  { reps_out_write fifo_update 1 1 } } }
}
