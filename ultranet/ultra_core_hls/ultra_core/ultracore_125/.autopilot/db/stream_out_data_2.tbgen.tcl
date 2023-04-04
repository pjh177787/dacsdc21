set moduleName stream_out_data_2
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
set C_modelName {stream_out_data.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_V_V int 64 regular {fifo 1 volatile }  }
	{ row_buffer_V int 64 regular {array 672 { 1 3 } 1 1 }  }
	{ skip_flag int 1 regular  }
	{ outRowIdx_V int 10 regular  }
	{ startRowBufferIdx_V int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_buffer_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "skip_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "outRowIdx_V", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "startRowBufferIdx_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_V_V_din sc_out sc_lv 64 signal 0 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 0 } 
	{ out_V_V_write sc_out sc_logic 1 signal 0 } 
	{ row_buffer_V_address0 sc_out sc_lv 10 signal 1 } 
	{ row_buffer_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ row_buffer_V_q0 sc_in sc_lv 64 signal 1 } 
	{ skip_flag sc_in sc_logic 1 signal 2 } 
	{ outRowIdx_V sc_in sc_lv 10 signal 3 } 
	{ startRowBufferIdx_V sc_in sc_lv 2 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "row_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "row_buffer_V", "role": "address0" }} , 
 	{ "name": "row_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buffer_V", "role": "ce0" }} , 
 	{ "name": "row_buffer_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "row_buffer_V", "role": "q0" }} , 
 	{ "name": "skip_flag", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip_flag", "role": "default" }} , 
 	{ "name": "outRowIdx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "outRowIdx_V", "role": "default" }} , 
 	{ "name": "startRowBufferIdx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "startRowBufferIdx_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_mac_mulcyx_U447", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	stream_out_data_2 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "8068"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "8068"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 64 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	row_buffer_V { ap_memory {  { row_buffer_V_address0 mem_address 1 10 }  { row_buffer_V_ce0 mem_ce 1 1 }  { row_buffer_V_q0 mem_dout 0 64 } } }
	skip_flag { ap_none {  { skip_flag in_data 0 1 } } }
	outRowIdx_V { ap_none {  { outRowIdx_V in_data 0 10 } } }
	startRowBufferIdx_V { ap_none {  { startRowBufferIdx_V in_data 0 2 } } }
}
