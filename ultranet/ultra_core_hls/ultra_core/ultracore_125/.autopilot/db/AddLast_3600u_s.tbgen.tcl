set moduleName AddLast_3600u_s
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
set C_modelName {AddLast<3600u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 64 regular {fifo 0 volatile }  }
	{ out_V_data_V int 64 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_V_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_V_keep_V int 8 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ reps int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_V_dout sc_in sc_lv 64 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_r_TDATA sc_out sc_lv 64 signal 1 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 1 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 2 } 
	{ out_r_TKEEP sc_out sc_lv 8 signal 3 } 
	{ reps_dout sc_in sc_lv 32 signal 4 } 
	{ reps_empty_n sc_in sc_logic 1 signal 4 } 
	{ reps_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "reps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "dout" }} , 
 	{ "name": "reps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "empty_n" }} , 
 	{ "name": "reps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reps", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "AddLast_3600u_s",
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
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mul_32sdXL_U751", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AddLast_3600u_s {
		in_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_V_last_V {Type O LastRead -1 FirstWrite 4}
		out_V_keep_V {Type O LastRead -1 FirstWrite 4}
		reps {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 64 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_data_V { axis {  { out_r_TDATA out_data 1 64 }  { out_r_TREADY out_acc 0 1 } } }
	out_V_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_V_keep_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TKEEP out_data 1 8 } } }
	reps { ap_fifo {  { reps_dout fifo_data 0 32 }  { reps_empty_n fifo_status 0 1 }  { reps_read fifo_update 1 1 } } }
}
