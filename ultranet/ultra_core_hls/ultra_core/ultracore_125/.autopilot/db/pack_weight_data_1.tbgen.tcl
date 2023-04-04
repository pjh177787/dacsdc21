set moduleName pack_weight_data_1
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pack_weight_data.1}
set C_modelType { int 208 }
set C_modelArgList {
	{ w2_V int 32 regular  }
	{ w1_V int 32 regular  }
	{ w0_V int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w2_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w1_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w0_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 208} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w2_V sc_in sc_lv 32 signal 0 } 
	{ w1_V sc_in sc_lv 32 signal 1 } 
	{ w0_V sc_in sc_lv 32 signal 2 } 
	{ ap_return_0 sc_out sc_lv 26 signal -1 } 
	{ ap_return_1 sc_out sc_lv 26 signal -1 } 
	{ ap_return_2 sc_out sc_lv 26 signal -1 } 
	{ ap_return_3 sc_out sc_lv 26 signal -1 } 
	{ ap_return_4 sc_out sc_lv 26 signal -1 } 
	{ ap_return_5 sc_out sc_lv 26 signal -1 } 
	{ ap_return_6 sc_out sc_lv 26 signal -1 } 
	{ ap_return_7 sc_out sc_lv 26 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w2_V", "role": "default" }} , 
 	{ "name": "w1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1_V", "role": "default" }} , 
 	{ "name": "w0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w0_V", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "w0_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	pack_weight_data_1 {
		w2_V {Type I LastRead 0 FirstWrite -1}
		w1_V {Type I LastRead 0 FirstWrite -1}
		w0_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w2_V { ap_none {  { w2_V in_data 0 32 } } }
	w1_V { ap_none {  { w1_V in_data 0 32 } } }
	w0_V { ap_none {  { w0_V in_data 0 32 } } }
}
