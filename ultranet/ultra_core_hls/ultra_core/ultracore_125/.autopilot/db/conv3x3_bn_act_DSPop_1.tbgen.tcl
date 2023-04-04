set moduleName conv3x3_bn_act_DSPop_1
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
set C_modelName {conv3x3_bn_act_DSPop.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 32 regular {fifo 0 volatile }  }
	{ out_V_V int 64 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
	{ reps_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
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
	{ in_V_V_dout sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "161", "162", "163"],
		"CDFG" : "conv3x3_bn_act_DSPop_1",
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
			{"ID" : "1", "Name" : "conv3padding712_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "conv3padding712_U0"},
			{"ID" : "7", "Name" : "convDSPOpt_4_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding712_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding712_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding712_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0", "Parent" : "0", "Child" : ["2", "3", "4", "6"],
		"CDFG" : "conv3padding712",
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_1_fu_151"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_fu_164"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_stream_in_row_fu_164", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "161",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_stream_out_data_1_fu_151", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0.row_buffer_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0.row_buffer_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0.grp_stream_out_data_1_fu_151", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "stream_out_data_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "3940",
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
			{"Name" : "outRowIdx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "startRowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0.grp_stream_out_data_1_fu_151.ultra_net_mac_mulbNq_U340", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding712_U0.grp_stream_in_row_fu_164", "Parent" : "1",
		"CDFG" : "stream_in_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "331",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "57", "66", "75", "84", "93", "102", "111", "120", "121", "122", "123", "124", "125", "126", "127", "128", "130", "132", "134", "136", "138", "140", "142", "144", "146", "148", "150", "152", "154", "156", "158", "160"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_convDSPcwx_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "162",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_0_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_0_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_1_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_1_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_2_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_2_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_3_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_3_U", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_4_U", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_4_U", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_5_U", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_5_U", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_6_U", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_6_U", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_inc_new_V_7_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_bias_new_V_7_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_0_2_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_0_1_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_0_0_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_1_2_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_1_1_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_1_0_U", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_2_2_U", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_2_1_U", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_2_0_U", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_3_2_U", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_3_1_U", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_3_0_U", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_4_2_U", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_4_1_U", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_4_0_U", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_5_2_U", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_5_1_U", "Parent" : "7"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_5_0_U", "Parent" : "7"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_6_2_U", "Parent" : "7"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_6_1_U", "Parent" : "7"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_6_0_U", "Parent" : "7"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_7_2_U", "Parent" : "7"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_7_1_U", "Parent" : "7"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.conv_2_w_new_V_7_0_U", "Parent" : "7"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193", "Parent" : "7", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56"],
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U357", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U358", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U359", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U360", "Parent" : "48"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U361", "Parent" : "48"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U362", "Parent" : "48"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U363", "Parent" : "48"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U364", "Parent" : "48"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213", "Parent" : "7", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65"],
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U357", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U358", "Parent" : "57"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U359", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U360", "Parent" : "57"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U361", "Parent" : "57"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U362", "Parent" : "57"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U363", "Parent" : "57"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U364", "Parent" : "57"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233", "Parent" : "7", "Child" : ["67", "68", "69", "70", "71", "72", "73", "74"],
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U357", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U358", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U359", "Parent" : "66"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U360", "Parent" : "66"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U361", "Parent" : "66"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U362", "Parent" : "66"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U363", "Parent" : "66"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U364", "Parent" : "66"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253", "Parent" : "7", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83"],
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U357", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U358", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U359", "Parent" : "75"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U360", "Parent" : "75"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U361", "Parent" : "75"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U362", "Parent" : "75"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U363", "Parent" : "75"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U364", "Parent" : "75"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273", "Parent" : "7", "Child" : ["85", "86", "87", "88", "89", "90", "91", "92"],
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U357", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U358", "Parent" : "84"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U359", "Parent" : "84"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U360", "Parent" : "84"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U361", "Parent" : "84"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U362", "Parent" : "84"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U363", "Parent" : "84"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U364", "Parent" : "84"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293", "Parent" : "7", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101"],
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U357", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U358", "Parent" : "93"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U359", "Parent" : "93"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U360", "Parent" : "93"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U361", "Parent" : "93"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U362", "Parent" : "93"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U363", "Parent" : "93"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U364", "Parent" : "93"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313", "Parent" : "7", "Child" : ["103", "104", "105", "106", "107", "108", "109", "110"],
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
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U357", "Parent" : "102"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U358", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U359", "Parent" : "102"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U360", "Parent" : "102"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U361", "Parent" : "102"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U362", "Parent" : "102"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U363", "Parent" : "102"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U364", "Parent" : "102"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333", "Parent" : "7", "Child" : ["112", "113", "114", "115", "116", "117", "118", "119"],
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
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U357", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U358", "Parent" : "111"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U359", "Parent" : "111"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U360", "Parent" : "111"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U361", "Parent" : "111"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U362", "Parent" : "111"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U363", "Parent" : "111"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U364", "Parent" : "111"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret33_i_pack_weight_data_fu_1353", "Parent" : "7",
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
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret34_i_pack_weight_data_fu_1363", "Parent" : "7",
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
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret35_i_pack_weight_data_fu_1373", "Parent" : "7",
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
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret36_i_pack_weight_data_fu_1383", "Parent" : "7",
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
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret37_i_pack_weight_data_fu_1393", "Parent" : "7",
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
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret38_i_pack_weight_data_fu_1403", "Parent" : "7",
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
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret39_i_pack_weight_data_fu_1413", "Parent" : "7",
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
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.call_ret40_i_pack_weight_data_fu_1423", "Parent" : "7",
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
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433", "Parent" : "7", "Child" : ["129"],
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
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433.ultra_net_mul_mulbQq_U381", "Parent" : "128"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440", "Parent" : "7", "Child" : ["131"],
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
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440.ultra_net_mul_mulbQq_U381", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447", "Parent" : "7", "Child" : ["133"],
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
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447.ultra_net_mul_mulbQq_U381", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454", "Parent" : "7", "Child" : ["135"],
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
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454.ultra_net_mul_mulbQq_U381", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461", "Parent" : "7", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461.ultra_net_mul_mulbQq_U381", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468", "Parent" : "7", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468.ultra_net_mul_mulbQq_U381", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475", "Parent" : "7", "Child" : ["141"],
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
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475.ultra_net_mul_mulbQq_U381", "Parent" : "140"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482", "Parent" : "7", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482.ultra_net_mul_mulbQq_U381", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489", "Parent" : "7", "Child" : ["145"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489.ultra_net_mul_mulbQq_U381", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496", "Parent" : "7", "Child" : ["147"],
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
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496.ultra_net_mul_mulbQq_U381", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503", "Parent" : "7", "Child" : ["149"],
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
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503.ultra_net_mul_mulbQq_U381", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510", "Parent" : "7", "Child" : ["151"],
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
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510.ultra_net_mul_mulbQq_U381", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517", "Parent" : "7", "Child" : ["153"],
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
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517.ultra_net_mul_mulbQq_U381", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524", "Parent" : "7", "Child" : ["155"],
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
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524.ultra_net_mul_mulbQq_U381", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531", "Parent" : "7", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531.ultra_net_mul_mulbQq_U381", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538", "Parent" : "7", "Child" : ["159"],
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
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538.ultra_net_mul_mulbQq_U381", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_4_U0.ultra_net_mul_13ncvx_U386", "Parent" : "7"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padding_out_V_V_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c_i_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_convDSPcwx_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv3x3_bn_act_DSPop_1 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 12}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
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
	conv3padding712 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_1 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 32 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 64 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
	reps_out { ap_fifo {  { reps_out_din fifo_data 1 32 }  { reps_out_full_n fifo_status 0 1 }  { reps_out_write fifo_update 1 1 } } }
}
