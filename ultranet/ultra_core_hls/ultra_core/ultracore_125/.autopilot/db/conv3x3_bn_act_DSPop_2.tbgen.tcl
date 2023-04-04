set moduleName conv3x3_bn_act_DSPop_2
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
set C_modelName {conv3x3_bn_act_DSPop.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 64 regular {fifo 0 volatile }  }
	{ out_V_V int 32 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
	{ reps_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reps_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_V_V_dout sc_in sc_lv 64 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 32 signal 1 } 
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
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "75", "76", "77"],
		"CDFG" : "conv3x3_bn_act_DSPop_2",
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
			{"ID" : "1", "Name" : "conv3padding713_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "conv3padding713_U0"},
			{"ID" : "6", "Name" : "convDSPOpt_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding713_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding713_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "conv3padding713_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3padding713_U0", "Parent" : "0", "Child" : ["2", "3", "5"],
		"CDFG" : "conv3padding713",
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_2_fu_145"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_1_fu_157"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_stream_in_row_1_fu_157", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "75",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_stream_out_data_2_fu_145", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding713_U0.row_buffer_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding713_U0.grp_stream_out_data_2_fu_145", "Parent" : "1", "Child" : ["4"],
		"CDFG" : "stream_out_data_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "8068",
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
			{"Name" : "row_buffer_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "outRowIdx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "startRowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3padding713_U0.grp_stream_out_data_2_fu_145.ultra_net_mac_mulcyx_U447", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3padding713_U0.grp_stream_in_row_1_fu_157", "Parent" : "1",
		"CDFG" : "stream_in_row_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "171",
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
			{"Name" : "row_buffer_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "rowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "36", "45", "54", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "convDSPOpt",
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
		"StartFifo" : "start_for_convDSPcVB_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_inc_new_V_0_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_bias_new_V_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_inc_new_V_1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_bias_new_V_1_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_inc_new_V_2_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_bias_new_V_2_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_inc_new_V_3_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_bias_new_V_3_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_0_2_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_0_1_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_0_0_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_1_2_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_1_1_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_1_0_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_2_2_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_2_1_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_2_0_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_3_2_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_3_1_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.conv_3_w_new_V_3_0_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743", "Parent" : "6", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "simd_MAC_1",
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U463", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U464", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U465", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U466", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U467", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U468", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U469", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U470", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763", "Parent" : "6", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "simd_MAC_1",
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U463", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U464", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U465", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U466", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U467", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U468", "Parent" : "36"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U469", "Parent" : "36"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U470", "Parent" : "36"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783", "Parent" : "6", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53"],
		"CDFG" : "simd_MAC_1",
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U463", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U464", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U465", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U466", "Parent" : "45"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U467", "Parent" : "45"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U468", "Parent" : "45"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U469", "Parent" : "45"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U470", "Parent" : "45"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803", "Parent" : "6", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "simd_MAC_1",
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U463", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U464", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U465", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U466", "Parent" : "54"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U467", "Parent" : "54"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U468", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U469", "Parent" : "54"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U470", "Parent" : "54"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.call_ret9_i_pack_weight_data_1_fu_823", "Parent" : "6",
		"CDFG" : "pack_weight_data_1",
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.call_ret10_i_pack_weight_data_1_fu_833", "Parent" : "6",
		"CDFG" : "pack_weight_data_1",
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.call_ret11_i_pack_weight_data_1_fu_843", "Parent" : "6",
		"CDFG" : "pack_weight_data_1",
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
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.call_ret12_i_pack_weight_data_1_fu_853", "Parent" : "6",
		"CDFG" : "pack_weight_data_1",
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
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U487", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U488", "Parent" : "6"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U489", "Parent" : "6"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U490", "Parent" : "6"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U491", "Parent" : "6"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U492", "Parent" : "6"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U493", "Parent" : "6"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.convDSPOpt_U0.ultra_net_mul_mulcUB_U494", "Parent" : "6"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padding_out_V_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c_i_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_convDSPcVB_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv3x3_bn_act_DSPop_2 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 11}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_3_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}}
	conv3padding713 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_2 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_1 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	convDSPOpt {
		vec_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 11}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_3_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_inc_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_3_bias_new_V_3 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_2_0 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_2 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_1 {Type I LastRead -1 FirstWrite -1}
		conv_3_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}}
	simd_MAC_1 {
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
	simd_MAC_1 {
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
	simd_MAC_1 {
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
	simd_MAC_1 {
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
	pack_weight_data_1 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_1 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_1 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}
	pack_weight_data_1 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 64 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 32 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
	reps_out { ap_fifo {  { reps_out_din fifo_data 1 32 }  { reps_out_full_n fifo_status 0 1 }  { reps_out_write fifo_update 1 1 } } }
}
