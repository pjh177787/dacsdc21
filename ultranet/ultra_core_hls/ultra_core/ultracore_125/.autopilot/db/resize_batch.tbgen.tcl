set moduleName resize_batch
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
set C_modelName {resize_batch}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 24 regular {fifo 0 volatile }  }
	{ out_V_V int 24 regular {fifo 1 volatile }  }
	{ reps int 32 regular {fifo 0}  }
	{ reps_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
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
	{ in_V_V_dout sc_in sc_lv 24 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 24 signal 1 } 
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
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }} , 
 	{ "name": "reps_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps_out", "role": "din" }} , 
 	{ "name": "reps_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "full_n" }} , 
 	{ "name": "reps_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "resize_batch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_resize_fu_55"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resize_fu_55", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resize_fu_55", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55", "Parent" : "0", "Child" : ["2", "3", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "resize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "464118", "EstimateLatencyMax" : "464118",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "stream_to_mat_U0"}],
		"OutputProcess" : [
			{"ID" : "35", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "stream_to_mat_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "mat_to_stream_U0", "Port" : "out_V_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.stream_to_mat_U0", "Parent" : "1",
		"CDFG" : "stream_to_mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "230402", "EstimateLatencyMax" : "230402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0", "Parent" : "1", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "Resize_opr_linear",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "234361", "EstimateLatencyMax" : "234361",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Resize_mb6_U",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_148", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_171", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_148", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_182", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_148", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_202", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_202", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_149", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_149", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_172", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_149", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_149", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_136", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_149", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_149", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_203", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_203", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_150", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_150", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_150", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_150", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_138", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_150", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_150", "FromFinalSV" : "5", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_171", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_148", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_171", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_202", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_202", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_172", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_149", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_149", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_172", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_203", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_203", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_150", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_150", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_128", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_174", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_183", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_183", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_130", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_175", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_132", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_176", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_182", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_148", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_182", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_202", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_202", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_183", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_183", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_128", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_174", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_136", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_149", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_149", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_136", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_203", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_203", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_130", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_175", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_138", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_150", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_150", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_138", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_1_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_132", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_176", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_1_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_202", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_202", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_171", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_202", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_202", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_182", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_202", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_202", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_148", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_203", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_203", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_172", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_203", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_203", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_136", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_203", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_203", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_149", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_149", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_138", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state7_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "6", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "6", "FromAddress" : "k_buf_val_val_0_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state6_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_150", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_150", "ToFinalSV" : "5", "ToAddress" : "k_buf_val_val_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/hls/hls_video_imgproc.h:2316:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state6_pp0_iter3_stage0", "ap_enable_state7_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_0_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_1_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_2_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_0_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_1_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_2_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_27njbC_U24", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U25", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U26", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U27", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U28", "Parent" : "3"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U29", "Parent" : "3"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U30", "Parent" : "3"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U31", "Parent" : "3"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U32", "Parent" : "3"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U33", "Parent" : "3"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U34", "Parent" : "3"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U35", "Parent" : "3"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U36", "Parent" : "3"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U37", "Parent" : "3"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U38", "Parent" : "3"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U39", "Parent" : "3"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U40", "Parent" : "3"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U41", "Parent" : "3"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U42", "Parent" : "3"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U43", "Parent" : "3"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U44", "Parent" : "3"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U45", "Parent" : "3"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U46", "Parent" : "3"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U47", "Parent" : "3"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U48", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.mat_to_stream_U0", "Parent" : "1",
		"CDFG" : "mat_to_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51202", "EstimateLatencyMax" : "51202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_mat_to_ncg_U",
		"Port" : [
			{"Name" : "resize_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.raw_img_data_stream_s_U", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.raw_img_data_stream_1_U", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.raw_img_data_stream_2_U", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.resize_img_data_stre_U", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.resize_img_data_stre_1_U", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.resize_img_data_stre_2_U", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.start_for_Resize_mb6_U", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_fu_55.start_for_mat_to_ncg_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	resize_batch {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 2}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
	resize {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 2}}
	stream_to_mat {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		raw_img_data_stream_0_V {Type O LastRead -1 FirstWrite 2}
		raw_img_data_stream_1_V {Type O LastRead -1 FirstWrite 2}
		raw_img_data_stream_2_V {Type O LastRead -1 FirstWrite 2}}
	Resize_opr_linear {
		p_src_data_stream_0_V {Type I LastRead 6 FirstWrite -1}
		p_src_data_stream_1_V {Type I LastRead 6 FirstWrite -1}
		p_src_data_stream_2_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_stream_0_V {Type O LastRead -1 FirstWrite 11}
		p_dst_data_stream_1_V {Type O LastRead -1 FirstWrite 11}
		p_dst_data_stream_2_V {Type O LastRead -1 FirstWrite 11}}
	mat_to_stream {
		resize_img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		resize_img_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		resize_img_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 24 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 24 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
	reps_out { ap_fifo {  { reps_out_din fifo_data 1 32 }  { reps_out_full_n fifo_status 0 1 }  { reps_out_write fifo_update 1 1 } } }
}
