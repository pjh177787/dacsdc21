set moduleName do_compute2
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
set C_modelName {do_compute2}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_data_V int 64 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_V_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ in_V_keep_V int 8 regular {axi_s 0 volatile  { in_r Keep } }  }
	{ out_V_data_V int 64 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_V_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_V_keep_V int 8 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ reps int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ in_r_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ in_r_TKEEP sc_in sc_lv 8 signal 2 } 
	{ out_r_TDATA sc_out sc_lv 64 signal 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 4 } 
	{ out_r_TKEEP sc_out sc_lv 8 signal 5 } 
	{ reps sc_in sc_lv 32 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_r_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 2 } 
	{ reps_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 5 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_V_data_V", "role": "default" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_last_V", "role": "default" }} , 
 	{ "name": "in_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "reps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reps", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "reps_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reps", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "51", "215", "219", "330", "332", "496", "498", "576", "578", "610", "643", "676", "709", "726", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778"],
		"CDFG" : "do_compute2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "ExtractPixels_U0"}],
		"OutputProcess" : [
			{"ID" : "726", "Name" : "AddLast_3600u_U0"}],
		"Port" : [
			{"Name" : "in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_data_V"}]},
			{"Name" : "in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_last_V"}]},
			{"Name" : "in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_keep_V"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "726", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_data_V"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "726", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_last_V"}]},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "726", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_keep_V"}]},
			{"Name" : "reps", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_0"}]},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_1"}]},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_2"}]},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_0"}]},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_1"}]},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_2"}]},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_0"}]},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_1"}]},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_2"}]},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_0"}]},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_1"}]},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_2"}]},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_0"}]},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_1"}]},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_2"}]},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_0"}]},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_1"}]},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_2"}]},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_0"}]},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_1"}]},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_2"}]},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_0"}]},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_1"}]},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_2"}]},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_0"}]},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_1"}]},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_2"}]},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_0"}]},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_1"}]},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_2"}]},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_0"}]},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_1"}]},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_2"}]},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_0"}]},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_1"}]},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_2"}]},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_0"}]},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_1"}]},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_2"}]},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_0"}]},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_1"}]},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_2"}]},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_0"}]},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_1"}]},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_2"}]},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_0"}]},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_1"}]},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_2"}]},
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_0"}]},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_0"}]},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_1"}]},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_1"}]},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_2"}]},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_2"}]},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_3"}]},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_3"}]},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_2"}]},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_1"}]},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_0"}]},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_2"}]},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_1"}]},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_0"}]},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_2"}]},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_1"}]},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_0"}]},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_2"}]},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_1"}]},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_0"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_0"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "498", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_0"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_inc_new_V_0"}]},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_bias_new_V_0"}]},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_inc_new_V_1"}]},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_bias_new_V_1"}]},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_2"}]},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_1"}]},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_0"}]},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_2"}]},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_1"}]},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_0"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_inc_new_V_0"}]},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_bias_new_V_0"}]},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_inc_new_V_1"}]},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_bias_new_V_1"}]},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_2"}]},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_1"}]},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_0"}]},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_2"}]},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_1"}]},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_0"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_inc_new_V_0"}]},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_bias_new_V_0"}]},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_inc_new_V_1"}]},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_bias_new_V_1"}]},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_2"}]},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_1"}]},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_0"}]},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_2"}]},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_1"}]},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "643", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_0"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_inc_new_V_0"}]},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_bias_new_V_0"}]},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_inc_new_V_1"}]},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_bias_new_V_1"}]},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_2"}]},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_1"}]},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_0"}]},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_2"}]},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_1"}]},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_0"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ExtractPixels_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "ExtractPixels",
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
			{"Name" : "in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "728",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "None", "Direction" : "I"},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "729",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ExtractPixels_U0.ultra_net_mul_32sbkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthCo_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "StreamingDataWidthCo",
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
		"StartFifo" : "start_for_StreamidYM_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "728",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "730",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "729",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "731",
				"BlockSignal" : [
					{"Name" : "numReps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthCo_U0.ultra_net_mul_32sbkb_U9", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthCo_1_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "StreamingDataWidthCo_1",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_StreamidZM_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "730",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "732",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "731",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "733",
				"BlockSignal" : [
					{"Name" : "numReps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.StreamingDataWidthCo_1_U0.ultra_net_mul_32scud_U14", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0", "Parent" : "0", "Child" : ["8"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_resize_d0M_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_resize_fu_55"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "732",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_resize_fu_55", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "734",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_resize_fu_55", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "733",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "735",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55", "Parent" : "7", "Child" : ["9", "10", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
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
			{"ID" : "9", "Name" : "stream_to_mat_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "stream_to_mat_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "mat_to_stream_U0", "Port" : "out_V_V"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.stream_to_mat_U0", "Parent" : "8",
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
			{"Name" : "raw_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0", "Parent" : "8", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
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
		"StartSource" : "9",
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
			{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_0_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_1_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_2_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_0_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_1_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_2_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_27njbC_U24", "Parent" : "10"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U25", "Parent" : "10"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U26", "Parent" : "10"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U27", "Parent" : "10"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U28", "Parent" : "10"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U29", "Parent" : "10"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U30", "Parent" : "10"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U31", "Parent" : "10"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U32", "Parent" : "10"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U33", "Parent" : "10"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U34", "Parent" : "10"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U35", "Parent" : "10"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U36", "Parent" : "10"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U37", "Parent" : "10"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U38", "Parent" : "10"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U39", "Parent" : "10"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U40", "Parent" : "10"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U41", "Parent" : "10"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U42", "Parent" : "10"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U43", "Parent" : "10"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U44", "Parent" : "10"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U45", "Parent" : "10"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U46", "Parent" : "10"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U47", "Parent" : "10"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U48", "Parent" : "10"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.mat_to_stream_U0", "Parent" : "8",
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
		"StartSource" : "10",
		"StartFifo" : "start_for_mat_to_ncg_U",
		"Port" : [
			{"Name" : "resize_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_s_U", "Parent" : "8"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_1_U", "Parent" : "8"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_2_U", "Parent" : "8"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_U", "Parent" : "8"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_1_U", "Parent" : "8"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_2_U", "Parent" : "8"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.start_for_Resize_mb6_U", "Parent" : "8"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.resize_batch_U0.grp_resize_fu_55.start_for_mat_to_ncg_U", "Parent" : "8"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0", "Parent" : "0", "Child" : ["52", "62", "192", "209", "210", "211", "212", "213", "214"],
		"CDFG" : "conv3x3_l0_bn_act_DS",
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
		"StartSource" : "7",
		"StartFifo" : "start_for_conv3x3d1M_U",
		"InputProcess" : [
			{"ID" : "52", "Name" : "conv3padding_l0710_U0"}],
		"OutputProcess" : [
			{"ID" : "52", "Name" : "conv3padding_l0710_U0"},
			{"ID" : "192", "Name" : "streamBnRelu_l0_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "734",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "conv3padding_l0710_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "736",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "streamBnRelu_l0_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "735",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "conv3padding_l0710_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "737",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "conv3padding_l0710_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_0"}]},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_1"}]},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_2"}]},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_0"}]},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_1"}]},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_2"}]},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_0"}]},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_1"}]},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_2"}]},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_0"}]},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_1"}]},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_2"}]},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_0"}]},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_1"}]},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_2"}]},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_0"}]},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_1"}]},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_2"}]},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_0"}]},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_1"}]},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_2"}]},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_0"}]},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_1"}]},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_2"}]},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_0"}]},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_1"}]},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_2"}]},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_0"}]},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_1"}]},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_2"}]},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_0"}]},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_1"}]},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_2"}]},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_0"}]},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_1"}]},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_2"}]},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_0"}]},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_1"}]},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_2"}]},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_0"}]},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_1"}]},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_2"}]},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_0"}]},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_1"}]},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_2"}]},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_0"}]},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_1"}]},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_2"}]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0", "Parent" : "51", "Child" : ["53", "54", "55", "56", "57", "61"],
		"CDFG" : "conv3padding_l0710",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_l0_fu_161"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_l0_fu_176"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "735",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "737",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "734",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_stream_in_row_l0_fu_176", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "209",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_stream_out_data_l0_fu_161", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_0_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_1_V_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_2_V_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_3_V_U", "Parent" : "52"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161", "Parent" : "52", "Child" : ["58", "59", "60"],
		"CDFG" : "stream_out_data_l0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "964",
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
			{"Name" : "row_buffer_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buffer_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "outRowIdx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "centerRowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U85", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U86", "Parent" : "57"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U87", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_in_row_l0_fu_176", "Parent" : "52",
		"CDFG" : "stream_in_row_l0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "325",
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
			{"Name" : "row_buffer_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buffer_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "skip_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "rowBufferIdx_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0", "Parent" : "51", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "121", "131", "141", "151", "161", "171", "181", "191"],
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
		"StartSource" : "52",
		"StartFifo" : "start_for_convDSPbhl_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "212",
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_0_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_1_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_2_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_0_U", "Parent" : "62"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_1_U", "Parent" : "62"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_2_U", "Parent" : "62"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_0_U", "Parent" : "62"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_1_U", "Parent" : "62"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_2_U", "Parent" : "62"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_0_U", "Parent" : "62"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_1_U", "Parent" : "62"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_2_U", "Parent" : "62"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_0_U", "Parent" : "62"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_1_U", "Parent" : "62"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_2_U", "Parent" : "62"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_0_U", "Parent" : "62"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_1_U", "Parent" : "62"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_2_U", "Parent" : "62"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_0_U", "Parent" : "62"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_1_U", "Parent" : "62"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_2_U", "Parent" : "62"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_0_U", "Parent" : "62"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_1_U", "Parent" : "62"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_2_U", "Parent" : "62"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_0_U", "Parent" : "62"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_1_U", "Parent" : "62"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_2_U", "Parent" : "62"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_0_U", "Parent" : "62"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_1_U", "Parent" : "62"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_2_U", "Parent" : "62"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_0_U", "Parent" : "62"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_1_U", "Parent" : "62"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_2_U", "Parent" : "62"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_0_U", "Parent" : "62"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_1_U", "Parent" : "62"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_2_U", "Parent" : "62"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_0_U", "Parent" : "62"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_1_U", "Parent" : "62"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_2_U", "Parent" : "62"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_0_U", "Parent" : "62"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_1_U", "Parent" : "62"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_2_U", "Parent" : "62"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_0_U", "Parent" : "62"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_1_U", "Parent" : "62"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_2_U", "Parent" : "62"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_0_U", "Parent" : "62"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_1_U", "Parent" : "62"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_2_U", "Parent" : "62"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952", "Parent" : "62", "Child" : ["112", "113", "114", "115", "116", "117", "118", "119", "120"],
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
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U104", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U105", "Parent" : "111"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U106", "Parent" : "111"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U107", "Parent" : "111"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U108", "Parent" : "111"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U109", "Parent" : "111"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U110", "Parent" : "111"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U111", "Parent" : "111"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U112", "Parent" : "111"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983", "Parent" : "62", "Child" : ["122", "123", "124", "125", "126", "127", "128", "129", "130"],
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U104", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U105", "Parent" : "121"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U106", "Parent" : "121"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U107", "Parent" : "121"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U108", "Parent" : "121"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U109", "Parent" : "121"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U110", "Parent" : "121"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U111", "Parent" : "121"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U112", "Parent" : "121"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014", "Parent" : "62", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140"],
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
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U104", "Parent" : "131"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U105", "Parent" : "131"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U106", "Parent" : "131"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U107", "Parent" : "131"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U108", "Parent" : "131"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U109", "Parent" : "131"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U110", "Parent" : "131"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U111", "Parent" : "131"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U112", "Parent" : "131"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045", "Parent" : "62", "Child" : ["142", "143", "144", "145", "146", "147", "148", "149", "150"],
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
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U104", "Parent" : "141"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U105", "Parent" : "141"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U106", "Parent" : "141"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U107", "Parent" : "141"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U108", "Parent" : "141"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U109", "Parent" : "141"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U110", "Parent" : "141"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U111", "Parent" : "141"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U112", "Parent" : "141"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076", "Parent" : "62", "Child" : ["152", "153", "154", "155", "156", "157", "158", "159", "160"],
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
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U104", "Parent" : "151"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U105", "Parent" : "151"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U106", "Parent" : "151"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U107", "Parent" : "151"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U108", "Parent" : "151"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U109", "Parent" : "151"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U110", "Parent" : "151"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U111", "Parent" : "151"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U112", "Parent" : "151"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107", "Parent" : "62", "Child" : ["162", "163", "164", "165", "166", "167", "168", "169", "170"],
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
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U104", "Parent" : "161"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U105", "Parent" : "161"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U106", "Parent" : "161"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U107", "Parent" : "161"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U108", "Parent" : "161"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U109", "Parent" : "161"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U110", "Parent" : "161"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U111", "Parent" : "161"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U112", "Parent" : "161"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138", "Parent" : "62", "Child" : ["172", "173", "174", "175", "176", "177", "178", "179", "180"],
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
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U104", "Parent" : "171"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U105", "Parent" : "171"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U106", "Parent" : "171"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U107", "Parent" : "171"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U108", "Parent" : "171"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U109", "Parent" : "171"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U110", "Parent" : "171"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U111", "Parent" : "171"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U112", "Parent" : "171"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169", "Parent" : "62", "Child" : ["182", "183", "184", "185", "186", "187", "188", "189", "190"],
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
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U104", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U105", "Parent" : "181"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U106", "Parent" : "181"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U107", "Parent" : "181"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U108", "Parent" : "181"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U109", "Parent" : "181"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U110", "Parent" : "181"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U111", "Parent" : "181"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U112", "Parent" : "181"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.call_ret_i_loadInReg9_8u_s_fu_1200", "Parent" : "62",
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
			{"Name" : "inData_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0", "Parent" : "51", "Child" : ["193", "195", "197", "199", "201", "203", "205", "207"],
		"CDFG" : "streamBnRelu_l0",
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
		"StartSource" : "62",
		"StartFifo" : "start_for_streamBbil_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "736",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "rep_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_216", "Parent" : "192", "Child" : ["194"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_216.ultra_net_mac_mulbgk_U193", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_225", "Parent" : "192", "Child" : ["196"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_225.ultra_net_mac_mulbgk_U193", "Parent" : "195"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_234", "Parent" : "192", "Child" : ["198"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_234.ultra_net_mac_mulbgk_U193", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_243", "Parent" : "192", "Child" : ["200"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_243.ultra_net_mac_mulbgk_U193", "Parent" : "199"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_252", "Parent" : "192", "Child" : ["202"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_252.ultra_net_mac_mulbgk_U193", "Parent" : "201"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_261", "Parent" : "192", "Child" : ["204"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_261.ultra_net_mac_mulbgk_U193", "Parent" : "203"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_270", "Parent" : "192", "Child" : ["206"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_270.ultra_net_mac_mulbgk_U193", "Parent" : "205"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_279", "Parent" : "192", "Child" : ["208"],
		"CDFG" : "bn_qurelu_fixed",
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
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_279.ultra_net_mac_mulbgk_U193", "Parent" : "207"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.padding_out_V_V_U", "Parent" : "51"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.reps_c_i_U", "Parent" : "51"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.conv_l0_out_V_V_U", "Parent" : "51"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.reps_c1_i_U", "Parent" : "51"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.start_for_convDSPbhl_U", "Parent" : "51"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_l0_bn_act_DS_U0.start_for_streamBbil_U", "Parent" : "51"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_3_U0", "Parent" : "0", "Child" : ["216", "217", "218"],
		"CDFG" : "max_pool2x2_3",
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
		"StartSource" : "51",
		"StartFifo" : "start_for_max_pood2M_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "736",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "738",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "737",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "739",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_3_U0.row_store_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_3_U0.p_01_i_max2_PE_4u_16u_s_fu_166", "Parent" : "215",
		"CDFG" : "max2_PE_4u_16u_s",
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
			{"Name" : "data0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "data1_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_3_U0.op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173", "Parent" : "215",
		"CDFG" : "max2_PE_4u_16u_s",
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
			{"Name" : "data0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "data1_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0", "Parent" : "0", "Child" : ["220", "225", "327", "328", "329"],
		"CDFG" : "conv3x3_bn_act_DSPop",
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
		"StartSource" : "215",
		"StartFifo" : "start_for_conv3x3d3M_U",
		"InputProcess" : [
			{"ID" : "220", "Name" : "conv3padding711_U0"}],
		"OutputProcess" : [
			{"ID" : "220", "Name" : "conv3padding711_U0"},
			{"ID" : "225", "Name" : "convDSPOpt_5_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "738",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "conv3padding711_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "740",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "739",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "conv3padding711_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "741",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "conv3padding711_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_0"}]},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_0"}]},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_1"}]},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_1"}]},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_2"}]},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_2"}]},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_3"}]},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_3"}]},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_2"}]},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_1"}]},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_0"}]},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_2"}]},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_1"}]},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_0"}]},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_2"}]},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_1"}]},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_0"}]},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_2"}]},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_1"}]},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_0"}]}]},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.conv3padding711_U0", "Parent" : "219", "Child" : ["221", "222", "224"],
		"CDFG" : "conv3padding711",
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
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_fu_147"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_4_fu_159"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "739",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "741",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "738",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_stream_in_row_4_fu_159", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "327",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_stream_out_data_fu_147", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "328",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.row_buffer_0_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_out_data_fu_147", "Parent" : "220", "Child" : ["223"],
		"CDFG" : "stream_out_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1948",
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
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_out_data_fu_147.ultra_net_mac_mulbkl_U222", "Parent" : "222"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_in_row_4_fu_159", "Parent" : "220",
		"CDFG" : "stream_in_row_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "84",
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
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0", "Parent" : "219", "Child" : ["226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "263", "280", "297", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326"],
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
		"StartSource" : "220",
		"StartFifo" : "start_for_convDSPbLp_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "327",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "330", "DependentChan" : "740",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "328",
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
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_0_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_0_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_1_U", "Parent" : "225"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_1_U", "Parent" : "225"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_2_U", "Parent" : "225"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_2_U", "Parent" : "225"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_3_U", "Parent" : "225"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_3_U", "Parent" : "225"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_2_U", "Parent" : "225"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_1_U", "Parent" : "225"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_0_U", "Parent" : "225"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_2_U", "Parent" : "225"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_1_U", "Parent" : "225"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_0_U", "Parent" : "225"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_2_U", "Parent" : "225"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_1_U", "Parent" : "225"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_0_U", "Parent" : "225"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_2_U", "Parent" : "225"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_1_U", "Parent" : "225"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_0_U", "Parent" : "225"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811", "Parent" : "225", "Child" : ["247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262"],
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
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U238", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U239", "Parent" : "246"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U240", "Parent" : "246"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U241", "Parent" : "246"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U242", "Parent" : "246"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U243", "Parent" : "246"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U244", "Parent" : "246"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U245", "Parent" : "246"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U246", "Parent" : "246"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U247", "Parent" : "246"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U248", "Parent" : "246"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U249", "Parent" : "246"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U250", "Parent" : "246"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U251", "Parent" : "246"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U252", "Parent" : "246"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U253", "Parent" : "246"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847", "Parent" : "225", "Child" : ["264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279"],
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
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U238", "Parent" : "263"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U239", "Parent" : "263"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U240", "Parent" : "263"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U241", "Parent" : "263"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U242", "Parent" : "263"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U243", "Parent" : "263"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U244", "Parent" : "263"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U245", "Parent" : "263"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U246", "Parent" : "263"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U247", "Parent" : "263"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U248", "Parent" : "263"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U249", "Parent" : "263"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U250", "Parent" : "263"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U251", "Parent" : "263"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U252", "Parent" : "263"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U253", "Parent" : "263"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883", "Parent" : "225", "Child" : ["281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296"],
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
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U238", "Parent" : "280"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U239", "Parent" : "280"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U240", "Parent" : "280"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U241", "Parent" : "280"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U242", "Parent" : "280"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U243", "Parent" : "280"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U244", "Parent" : "280"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U245", "Parent" : "280"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U246", "Parent" : "280"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U247", "Parent" : "280"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U248", "Parent" : "280"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U249", "Parent" : "280"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U250", "Parent" : "280"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U251", "Parent" : "280"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U252", "Parent" : "280"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U253", "Parent" : "280"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919", "Parent" : "225", "Child" : ["298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313"],
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
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U238", "Parent" : "297"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U239", "Parent" : "297"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U240", "Parent" : "297"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U241", "Parent" : "297"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U242", "Parent" : "297"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U243", "Parent" : "297"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U244", "Parent" : "297"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U245", "Parent" : "297"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U246", "Parent" : "297"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U247", "Parent" : "297"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U248", "Parent" : "297"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U249", "Parent" : "297"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U250", "Parent" : "297"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U251", "Parent" : "297"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U252", "Parent" : "297"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U253", "Parent" : "297"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret49_i_pack_weight_data_2_fu_955", "Parent" : "225",
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
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret50_i_pack_weight_data_2_fu_965", "Parent" : "225",
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
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret51_i_pack_weight_data_2_fu_974", "Parent" : "225",
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
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret52_i_pack_weight_data_2_fu_984", "Parent" : "225",
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
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_12nbHp_U287", "Parent" : "225"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U288", "Parent" : "225"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U289", "Parent" : "225"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbJp_U290", "Parent" : "225"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbJp_U291", "Parent" : "225"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbKp_U292", "Parent" : "225"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbKp_U293", "Parent" : "225"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U294", "Parent" : "225"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U295", "Parent" : "225"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.padding_out_V_V_U", "Parent" : "219"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.reps_c_i_U", "Parent" : "219"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_U0.start_for_convDSPbLp_U", "Parent" : "219"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_U0", "Parent" : "0", "Child" : ["331"],
		"CDFG" : "max_pool2x2",
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
		"StartSource" : "219",
		"StartFifo" : "start_for_max_pood4N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "740",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "742",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "741",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "333", "DependentChan" : "743",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_U0.row_store_V_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0", "Parent" : "0", "Child" : ["333", "339", "493", "494", "495"],
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
		"StartSource" : "330",
		"StartFifo" : "start_for_conv3x3d5N_U",
		"InputProcess" : [
			{"ID" : "333", "Name" : "conv3padding712_U0"}],
		"OutputProcess" : [
			{"ID" : "333", "Name" : "conv3padding712_U0"},
			{"ID" : "339", "Name" : "convDSPOpt_4_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "742",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "conv3padding712_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "744",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "743",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "conv3padding712_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "745",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "conv3padding712_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_0"}]}]},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0", "Parent" : "332", "Child" : ["334", "335", "336", "338"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "743",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "745",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "330", "DependentChan" : "742",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_stream_in_row_fu_164", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "493",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_stream_out_data_1_fu_151", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "339", "DependentChan" : "494",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.row_buffer_0_V_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.row_buffer_1_V_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_out_data_1_fu_151", "Parent" : "333", "Child" : ["337"],
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
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_out_data_1_fu_151.ultra_net_mac_mulbNq_U340", "Parent" : "336"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_in_row_fu_164", "Parent" : "333",
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
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0", "Parent" : "332", "Child" : ["340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "389", "398", "407", "416", "425", "434", "443", "452", "453", "454", "455", "456", "457", "458", "459", "460", "462", "464", "466", "468", "470", "472", "474", "476", "478", "480", "482", "484", "486", "488", "490", "492"],
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
		"StartSource" : "333",
		"StartFifo" : "start_for_convDSPcwx_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "333", "DependentChan" : "493",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "496", "DependentChan" : "744",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "333", "DependentChan" : "494",
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
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_0_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_0_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_1_U", "Parent" : "339"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_1_U", "Parent" : "339"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_2_U", "Parent" : "339"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_2_U", "Parent" : "339"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_3_U", "Parent" : "339"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_3_U", "Parent" : "339"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_4_U", "Parent" : "339"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_4_U", "Parent" : "339"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_5_U", "Parent" : "339"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_5_U", "Parent" : "339"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_6_U", "Parent" : "339"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_6_U", "Parent" : "339"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_7_U", "Parent" : "339"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_7_U", "Parent" : "339"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_2_U", "Parent" : "339"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_1_U", "Parent" : "339"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_0_U", "Parent" : "339"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_2_U", "Parent" : "339"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_1_U", "Parent" : "339"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_0_U", "Parent" : "339"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_2_U", "Parent" : "339"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_1_U", "Parent" : "339"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_0_U", "Parent" : "339"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_2_U", "Parent" : "339"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_1_U", "Parent" : "339"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_0_U", "Parent" : "339"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_2_U", "Parent" : "339"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_1_U", "Parent" : "339"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_0_U", "Parent" : "339"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_2_U", "Parent" : "339"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_1_U", "Parent" : "339"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_0_U", "Parent" : "339"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_2_U", "Parent" : "339"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_1_U", "Parent" : "339"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_0_U", "Parent" : "339"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_2_U", "Parent" : "339"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_1_U", "Parent" : "339"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_0_U", "Parent" : "339"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193", "Parent" : "339", "Child" : ["381", "382", "383", "384", "385", "386", "387", "388"],
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
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U357", "Parent" : "380"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U358", "Parent" : "380"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U359", "Parent" : "380"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U360", "Parent" : "380"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U361", "Parent" : "380"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U362", "Parent" : "380"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U363", "Parent" : "380"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U364", "Parent" : "380"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213", "Parent" : "339", "Child" : ["390", "391", "392", "393", "394", "395", "396", "397"],
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
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U357", "Parent" : "389"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U358", "Parent" : "389"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U359", "Parent" : "389"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U360", "Parent" : "389"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U361", "Parent" : "389"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U362", "Parent" : "389"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U363", "Parent" : "389"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U364", "Parent" : "389"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233", "Parent" : "339", "Child" : ["399", "400", "401", "402", "403", "404", "405", "406"],
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
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U357", "Parent" : "398"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U358", "Parent" : "398"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U359", "Parent" : "398"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U360", "Parent" : "398"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U361", "Parent" : "398"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U362", "Parent" : "398"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U363", "Parent" : "398"},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U364", "Parent" : "398"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253", "Parent" : "339", "Child" : ["408", "409", "410", "411", "412", "413", "414", "415"],
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
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U357", "Parent" : "407"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U358", "Parent" : "407"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U359", "Parent" : "407"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U360", "Parent" : "407"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U361", "Parent" : "407"},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U362", "Parent" : "407"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U363", "Parent" : "407"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U364", "Parent" : "407"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273", "Parent" : "339", "Child" : ["417", "418", "419", "420", "421", "422", "423", "424"],
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
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U357", "Parent" : "416"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U358", "Parent" : "416"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U359", "Parent" : "416"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U360", "Parent" : "416"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U361", "Parent" : "416"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U362", "Parent" : "416"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U363", "Parent" : "416"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U364", "Parent" : "416"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293", "Parent" : "339", "Child" : ["426", "427", "428", "429", "430", "431", "432", "433"],
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
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U357", "Parent" : "425"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U358", "Parent" : "425"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U359", "Parent" : "425"},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U360", "Parent" : "425"},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U361", "Parent" : "425"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U362", "Parent" : "425"},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U363", "Parent" : "425"},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U364", "Parent" : "425"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313", "Parent" : "339", "Child" : ["435", "436", "437", "438", "439", "440", "441", "442"],
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
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U357", "Parent" : "434"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U358", "Parent" : "434"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U359", "Parent" : "434"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U360", "Parent" : "434"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U361", "Parent" : "434"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U362", "Parent" : "434"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U363", "Parent" : "434"},
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U364", "Parent" : "434"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333", "Parent" : "339", "Child" : ["444", "445", "446", "447", "448", "449", "450", "451"],
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
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U357", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U358", "Parent" : "443"},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U359", "Parent" : "443"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U360", "Parent" : "443"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U361", "Parent" : "443"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U362", "Parent" : "443"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U363", "Parent" : "443"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U364", "Parent" : "443"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret33_i_pack_weight_data_fu_1353", "Parent" : "339",
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
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret34_i_pack_weight_data_fu_1363", "Parent" : "339",
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
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret35_i_pack_weight_data_fu_1373", "Parent" : "339",
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
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret36_i_pack_weight_data_fu_1383", "Parent" : "339",
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
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret37_i_pack_weight_data_fu_1393", "Parent" : "339",
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
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret38_i_pack_weight_data_fu_1403", "Parent" : "339",
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
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret39_i_pack_weight_data_fu_1413", "Parent" : "339",
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
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret40_i_pack_weight_data_fu_1423", "Parent" : "339",
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
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433", "Parent" : "339", "Child" : ["461"],
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
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433.ultra_net_mul_mulbQq_U381", "Parent" : "460"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440", "Parent" : "339", "Child" : ["463"],
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
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440.ultra_net_mul_mulbQq_U381", "Parent" : "462"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447", "Parent" : "339", "Child" : ["465"],
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
	{"ID" : "465", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447.ultra_net_mul_mulbQq_U381", "Parent" : "464"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454", "Parent" : "339", "Child" : ["467"],
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
	{"ID" : "467", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454.ultra_net_mul_mulbQq_U381", "Parent" : "466"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461", "Parent" : "339", "Child" : ["469"],
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
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461.ultra_net_mul_mulbQq_U381", "Parent" : "468"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468", "Parent" : "339", "Child" : ["471"],
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
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468.ultra_net_mul_mulbQq_U381", "Parent" : "470"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475", "Parent" : "339", "Child" : ["473"],
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
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475.ultra_net_mul_mulbQq_U381", "Parent" : "472"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482", "Parent" : "339", "Child" : ["475"],
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
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482.ultra_net_mul_mulbQq_U381", "Parent" : "474"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489", "Parent" : "339", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489.ultra_net_mul_mulbQq_U381", "Parent" : "476"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496", "Parent" : "339", "Child" : ["479"],
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
	{"ID" : "479", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496.ultra_net_mul_mulbQq_U381", "Parent" : "478"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503", "Parent" : "339", "Child" : ["481"],
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
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503.ultra_net_mul_mulbQq_U381", "Parent" : "480"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510", "Parent" : "339", "Child" : ["483"],
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
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510.ultra_net_mul_mulbQq_U381", "Parent" : "482"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517", "Parent" : "339", "Child" : ["485"],
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
	{"ID" : "485", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517.ultra_net_mul_mulbQq_U381", "Parent" : "484"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524", "Parent" : "339", "Child" : ["487"],
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
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524.ultra_net_mul_mulbQq_U381", "Parent" : "486"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531", "Parent" : "339", "Child" : ["489"],
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
	{"ID" : "489", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531.ultra_net_mul_mulbQq_U381", "Parent" : "488"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538", "Parent" : "339", "Child" : ["491"],
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
	{"ID" : "491", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538.ultra_net_mul_mulbQq_U381", "Parent" : "490"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.ultra_net_mul_13ncvx_U386", "Parent" : "339"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.padding_out_V_V_U", "Parent" : "332"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.reps_c_i_U", "Parent" : "332"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_1_U0.start_for_convDSPcwx_U", "Parent" : "332"},
	{"ID" : "496", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_1_U0", "Parent" : "0", "Child" : ["497"],
		"CDFG" : "max_pool2x2_1",
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
		"StartSource" : "332",
		"StartFifo" : "start_for_max_pood6N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "339", "DependentChan" : "744",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "746",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "333", "DependentChan" : "745",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "747",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_1_U0.row_store_V_U", "Parent" : "496"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0", "Parent" : "0", "Child" : ["499", "504", "573", "574", "575"],
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
		"StartSource" : "496",
		"StartFifo" : "start_for_conv3x3d7N_U",
		"InputProcess" : [
			{"ID" : "499", "Name" : "conv3padding713_U0"}],
		"OutputProcess" : [
			{"ID" : "499", "Name" : "conv3padding713_U0"},
			{"ID" : "504", "Name" : "convDSPOpt_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "496", "DependentChan" : "746",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "conv3padding713_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "748",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "496", "DependentChan" : "747",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "conv3padding713_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "749",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "conv3padding713_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_0"}]}]},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0", "Parent" : "498", "Child" : ["500", "501", "503"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "496", "DependentChan" : "747",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "749",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "496", "DependentChan" : "746",
				"SubConnect" : [
					{"ID" : "503", "SubInstance" : "grp_stream_in_row_1_fu_157", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "573",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "grp_stream_out_data_2_fu_145", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "504", "DependentChan" : "574",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.row_buffer_0_V_U", "Parent" : "499"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_out_data_2_fu_145", "Parent" : "499", "Child" : ["502"],
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
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_out_data_2_fu_145.ultra_net_mac_mulcyx_U447", "Parent" : "501"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_in_row_1_fu_157", "Parent" : "499",
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
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0", "Parent" : "498", "Child" : ["505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "534", "543", "552", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572"],
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
		"StartSource" : "499",
		"StartFifo" : "start_for_convDSPcVB_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "573",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "576", "DependentChan" : "748",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "574",
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
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_0_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_0_U", "Parent" : "504"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_1_U", "Parent" : "504"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_1_U", "Parent" : "504"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_2_U", "Parent" : "504"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_2_U", "Parent" : "504"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_3_U", "Parent" : "504"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_3_U", "Parent" : "504"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_2_U", "Parent" : "504"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_1_U", "Parent" : "504"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_0_U", "Parent" : "504"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_2_U", "Parent" : "504"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_1_U", "Parent" : "504"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_0_U", "Parent" : "504"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_2_U", "Parent" : "504"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_1_U", "Parent" : "504"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_0_U", "Parent" : "504"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_2_U", "Parent" : "504"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_1_U", "Parent" : "504"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_0_U", "Parent" : "504"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743", "Parent" : "504", "Child" : ["526", "527", "528", "529", "530", "531", "532", "533"],
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
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U463", "Parent" : "525"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U464", "Parent" : "525"},
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U465", "Parent" : "525"},
	{"ID" : "529", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U466", "Parent" : "525"},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U467", "Parent" : "525"},
	{"ID" : "531", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U468", "Parent" : "525"},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U469", "Parent" : "525"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U470", "Parent" : "525"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763", "Parent" : "504", "Child" : ["535", "536", "537", "538", "539", "540", "541", "542"],
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
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U463", "Parent" : "534"},
	{"ID" : "536", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U464", "Parent" : "534"},
	{"ID" : "537", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U465", "Parent" : "534"},
	{"ID" : "538", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U466", "Parent" : "534"},
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U467", "Parent" : "534"},
	{"ID" : "540", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U468", "Parent" : "534"},
	{"ID" : "541", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U469", "Parent" : "534"},
	{"ID" : "542", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U470", "Parent" : "534"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783", "Parent" : "504", "Child" : ["544", "545", "546", "547", "548", "549", "550", "551"],
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
	{"ID" : "544", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U463", "Parent" : "543"},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U464", "Parent" : "543"},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U465", "Parent" : "543"},
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U466", "Parent" : "543"},
	{"ID" : "548", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U467", "Parent" : "543"},
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U468", "Parent" : "543"},
	{"ID" : "550", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U469", "Parent" : "543"},
	{"ID" : "551", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U470", "Parent" : "543"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803", "Parent" : "504", "Child" : ["553", "554", "555", "556", "557", "558", "559", "560"],
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
	{"ID" : "553", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U463", "Parent" : "552"},
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U464", "Parent" : "552"},
	{"ID" : "555", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U465", "Parent" : "552"},
	{"ID" : "556", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U466", "Parent" : "552"},
	{"ID" : "557", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U467", "Parent" : "552"},
	{"ID" : "558", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U468", "Parent" : "552"},
	{"ID" : "559", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U469", "Parent" : "552"},
	{"ID" : "560", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U470", "Parent" : "552"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret9_i_pack_weight_data_1_fu_823", "Parent" : "504",
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
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret10_i_pack_weight_data_1_fu_833", "Parent" : "504",
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
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret11_i_pack_weight_data_1_fu_843", "Parent" : "504",
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
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret12_i_pack_weight_data_1_fu_853", "Parent" : "504",
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
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U487", "Parent" : "504"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U488", "Parent" : "504"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U489", "Parent" : "504"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U490", "Parent" : "504"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U491", "Parent" : "504"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U492", "Parent" : "504"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U493", "Parent" : "504"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U494", "Parent" : "504"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.padding_out_V_V_U", "Parent" : "498"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.reps_c_i_U", "Parent" : "498"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_2_U0.start_for_convDSPcVB_U", "Parent" : "498"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_2_U0", "Parent" : "0", "Child" : ["577"],
		"CDFG" : "max_pool2x2_2",
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
		"StartSource" : "498",
		"StartFifo" : "start_for_max_pood8N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "504", "DependentChan" : "748",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "579", "DependentChan" : "750",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "749",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "579", "DependentChan" : "751",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.max_pool2x2_2_U0.row_store_V_U", "Parent" : "576"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0", "Parent" : "0", "Child" : ["579", "584", "607", "608", "609"],
		"CDFG" : "conv3x3_bn_act_DSPop_4",
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
		"StartSource" : "576",
		"StartFifo" : "start_for_conv3x3d9N_U",
		"InputProcess" : [
			{"ID" : "579", "Name" : "conv3padding714_U0"}],
		"OutputProcess" : [
			{"ID" : "579", "Name" : "conv3padding714_U0"},
			{"ID" : "584", "Name" : "convDSPOpt525_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "576", "DependentChan" : "750",
				"SubConnect" : [
					{"ID" : "579", "SubInstance" : "conv3padding714_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "752",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "576", "DependentChan" : "751",
				"SubConnect" : [
					{"ID" : "579", "SubInstance" : "conv3padding714_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "753",
				"SubConnect" : [
					{"ID" : "579", "SubInstance" : "conv3padding714_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_inc_new_V_0"}]},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_bias_new_V_0"}]},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_inc_new_V_1"}]},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_bias_new_V_1"}]},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_2"}]},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_1"}]},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_0"}]},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_2"}]},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_1"}]},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_0"}]}]},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0", "Parent" : "578", "Child" : ["580", "581", "583"],
		"CDFG" : "conv3padding714",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_3_fu_145"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_2_fu_157"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "576", "DependentChan" : "751",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "753",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "576", "DependentChan" : "750",
				"SubConnect" : [
					{"ID" : "583", "SubInstance" : "grp_stream_in_row_2_fu_157", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "607",
				"SubConnect" : [
					{"ID" : "581", "SubInstance" : "grp_stream_out_data_3_fu_145", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "608",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.row_buffer_0_V_U", "Parent" : "579"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_out_data_3_fu_145", "Parent" : "579", "Child" : ["582"],
		"CDFG" : "stream_out_data_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16900",
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
	{"ID" : "582", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_out_data_3_fu_145.ultra_net_mac_mulcyx_U535", "Parent" : "581"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_in_row_2_fu_157", "Parent" : "579",
		"CDFG" : "stream_in_row_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "179",
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
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0", "Parent" : "578", "Child" : ["585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606"],
		"CDFG" : "convDSPOpt525",
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
		"StartSource" : "579",
		"StartFifo" : "start_for_convDSPc9D_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "607",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "752",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "608",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_inc_new_V_0_U", "Parent" : "584"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_bias_new_V_0_U", "Parent" : "584"},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_inc_new_V_1_U", "Parent" : "584"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_bias_new_V_1_U", "Parent" : "584"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_2_U", "Parent" : "584"},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_1_U", "Parent" : "584"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_0_U", "Parent" : "584"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_2_U", "Parent" : "584"},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_1_U", "Parent" : "584"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_0_U", "Parent" : "584"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U547", "Parent" : "584"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U548", "Parent" : "584"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U549", "Parent" : "584"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U550", "Parent" : "584"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U551", "Parent" : "584"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U552", "Parent" : "584"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U553", "Parent" : "584"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U554", "Parent" : "584"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U555", "Parent" : "584"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U556", "Parent" : "584"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U557", "Parent" : "584"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U558", "Parent" : "584"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.padding_out_V_V_U", "Parent" : "578"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.reps_c_i_U", "Parent" : "578"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_4_U0.start_for_convDSPc9D_U", "Parent" : "578"},
	{"ID" : "610", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0", "Parent" : "0", "Child" : ["611", "617", "640", "641", "642"],
		"CDFG" : "conv3x3_bn_act_DSPop_6",
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
		"StartSource" : "578",
		"StartFifo" : "start_for_conv3x3eaO_U",
		"InputProcess" : [
			{"ID" : "611", "Name" : "conv3padding526715_U0"}],
		"OutputProcess" : [
			{"ID" : "611", "Name" : "conv3padding526715_U0"},
			{"ID" : "617", "Name" : "convDSPOpt_3_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "752",
				"SubConnect" : [
					{"ID" : "611", "SubInstance" : "conv3padding526715_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "753",
				"SubConnect" : [
					{"ID" : "611", "SubInstance" : "conv3padding526715_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "755",
				"SubConnect" : [
					{"ID" : "611", "SubInstance" : "conv3padding526715_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_inc_new_V_0"}]},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_bias_new_V_0"}]},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_inc_new_V_1"}]},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_bias_new_V_1"}]},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_2"}]},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_1"}]},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_0"}]},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_2"}]},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_1"}]},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_0"}]}]},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0", "Parent" : "610", "Child" : ["612", "613", "614", "616"],
		"CDFG" : "conv3padding526715",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_4_fu_149"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_3_fu_162"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "753",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "755",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "752",
				"SubConnect" : [
					{"ID" : "616", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "617", "DependentChan" : "640",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "617", "DependentChan" : "641",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.row_buffer_0_V_U", "Parent" : "611"},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.row_buffer_1_V_U", "Parent" : "611"},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_out_data_4_fu_149", "Parent" : "611", "Child" : ["615"],
		"CDFG" : "stream_out_data_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16900",
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
	{"ID" : "615", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "614"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_in_row_3_fu_162", "Parent" : "611",
		"CDFG" : "stream_in_row_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "355",
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
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0", "Parent" : "610", "Child" : ["618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639"],
		"CDFG" : "convDSPOpt_3",
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
		"StartSource" : "611",
		"StartFifo" : "start_for_convDSPdmF_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "640",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "754",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "641",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_inc_new_V_0_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_bias_new_V_0_U", "Parent" : "617"},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_inc_new_V_1_U", "Parent" : "617"},
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_bias_new_V_1_U", "Parent" : "617"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_2_U", "Parent" : "617"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_1_U", "Parent" : "617"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_0_U", "Parent" : "617"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_2_U", "Parent" : "617"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_1_U", "Parent" : "617"},
	{"ID" : "627", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_0_U", "Parent" : "617"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U598", "Parent" : "617"},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U599", "Parent" : "617"},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U600", "Parent" : "617"},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U601", "Parent" : "617"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U602", "Parent" : "617"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U603", "Parent" : "617"},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U604", "Parent" : "617"},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U605", "Parent" : "617"},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U606", "Parent" : "617"},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U607", "Parent" : "617"},
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U608", "Parent" : "617"},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U609", "Parent" : "617"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.padding_out_V_V_U", "Parent" : "610"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.reps_c_i_U", "Parent" : "610"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_6_U0.start_for_convDSPdmF_U", "Parent" : "610"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0", "Parent" : "0", "Child" : ["644", "650", "673", "674", "675"],
		"CDFG" : "conv3x3_bn_act_DSPop_5",
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
		"StartSource" : "610",
		"StartFifo" : "start_for_conv3x3ebO_U",
		"InputProcess" : [
			{"ID" : "644", "Name" : "conv3padding527716_U0"}],
		"OutputProcess" : [
			{"ID" : "644", "Name" : "conv3padding527716_U0"},
			{"ID" : "650", "Name" : "convDSPOpt_2_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "617", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "644", "SubInstance" : "conv3padding527716_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "677", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "755",
				"SubConnect" : [
					{"ID" : "644", "SubInstance" : "conv3padding527716_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "677", "DependentChan" : "757",
				"SubConnect" : [
					{"ID" : "644", "SubInstance" : "conv3padding527716_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_inc_new_V_0"}]},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_bias_new_V_0"}]},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_inc_new_V_1"}]},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_bias_new_V_1"}]},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_2"}]},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_1"}]},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_0"}]},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_2"}]},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_1"}]},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_0"}]}]},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0", "Parent" : "643", "Child" : ["645", "646", "647", "649"],
		"CDFG" : "conv3padding527716",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_4_fu_149"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_3_fu_162"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "755",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "677", "DependentChan" : "757",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "617", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "649", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "650", "DependentChan" : "673",
				"SubConnect" : [
					{"ID" : "647", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "650", "DependentChan" : "674",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.row_buffer_0_V_U", "Parent" : "644"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.row_buffer_1_V_U", "Parent" : "644"},
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_out_data_4_fu_149", "Parent" : "644", "Child" : ["648"],
		"CDFG" : "stream_out_data_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16900",
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
	{"ID" : "648", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "647"},
	{"ID" : "649", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_in_row_3_fu_162", "Parent" : "644",
		"CDFG" : "stream_in_row_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "355",
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
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0", "Parent" : "643", "Child" : ["651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672"],
		"CDFG" : "convDSPOpt_2",
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
		"StartSource" : "644",
		"StartFifo" : "start_for_convDSPdzI_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "644", "DependentChan" : "673",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "677", "DependentChan" : "756",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "644", "DependentChan" : "674",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_inc_new_V_0_U", "Parent" : "650"},
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_bias_new_V_0_U", "Parent" : "650"},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_inc_new_V_1_U", "Parent" : "650"},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_bias_new_V_1_U", "Parent" : "650"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_2_U", "Parent" : "650"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_1_U", "Parent" : "650"},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_0_U", "Parent" : "650"},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_2_U", "Parent" : "650"},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_1_U", "Parent" : "650"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_0_U", "Parent" : "650"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U635", "Parent" : "650"},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U636", "Parent" : "650"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U637", "Parent" : "650"},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U638", "Parent" : "650"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U639", "Parent" : "650"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U640", "Parent" : "650"},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U641", "Parent" : "650"},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U642", "Parent" : "650"},
	{"ID" : "669", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U643", "Parent" : "650"},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U644", "Parent" : "650"},
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U645", "Parent" : "650"},
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U646", "Parent" : "650"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.padding_out_V_V_U", "Parent" : "643"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.reps_c_i_U", "Parent" : "643"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_5_U0.start_for_convDSPdzI_U", "Parent" : "643"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0", "Parent" : "0", "Child" : ["677", "683", "706", "707", "708"],
		"CDFG" : "conv3x3_bn_act_DSPop_3",
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
		"StartSource" : "643",
		"StartFifo" : "start_for_conv3x3ecO_U",
		"InputProcess" : [
			{"ID" : "677", "Name" : "conv3padding717_U0"}],
		"OutputProcess" : [
			{"ID" : "677", "Name" : "conv3padding717_U0"},
			{"ID" : "683", "Name" : "convDSPOpt_1_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "650", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "677", "SubInstance" : "conv3padding717_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "644", "DependentChan" : "757",
				"SubConnect" : [
					{"ID" : "677", "SubInstance" : "conv3padding717_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "759",
				"SubConnect" : [
					{"ID" : "677", "SubInstance" : "conv3padding717_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_inc_new_V_0"}]},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_bias_new_V_0"}]},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_inc_new_V_1"}]},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_bias_new_V_1"}]},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_2"}]},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_1"}]},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_0"}]},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_2"}]},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_1"}]},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "683", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_0"}]}]},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0", "Parent" : "676", "Child" : ["678", "679", "680", "682"],
		"CDFG" : "conv3padding717",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_out_data_4_fu_149"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_in_row_3_fu_162"}],
		"Port" : [
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "644", "DependentChan" : "757",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "759",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "650", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "682", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "683", "DependentChan" : "706",
				"SubConnect" : [
					{"ID" : "680", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "683", "DependentChan" : "707",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.row_buffer_0_V_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.row_buffer_1_V_U", "Parent" : "677"},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_out_data_4_fu_149", "Parent" : "677", "Child" : ["681"],
		"CDFG" : "stream_out_data_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16900",
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
	{"ID" : "681", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "680"},
	{"ID" : "682", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_in_row_3_fu_162", "Parent" : "677",
		"CDFG" : "stream_in_row_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "355",
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
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0", "Parent" : "676", "Child" : ["684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705"],
		"CDFG" : "convDSPOpt_1",
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
		"StartSource" : "677",
		"StartFifo" : "start_for_convDSPdNK_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "677", "DependentChan" : "706",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "758",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "677", "DependentChan" : "707",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_inc_new_V_0_U", "Parent" : "683"},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_bias_new_V_0_U", "Parent" : "683"},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_inc_new_V_1_U", "Parent" : "683"},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_bias_new_V_1_U", "Parent" : "683"},
	{"ID" : "688", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_2_U", "Parent" : "683"},
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_1_U", "Parent" : "683"},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_0_U", "Parent" : "683"},
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_2_U", "Parent" : "683"},
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_1_U", "Parent" : "683"},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_0_U", "Parent" : "683"},
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U672", "Parent" : "683"},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U673", "Parent" : "683"},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U674", "Parent" : "683"},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U675", "Parent" : "683"},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U676", "Parent" : "683"},
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U677", "Parent" : "683"},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U678", "Parent" : "683"},
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U679", "Parent" : "683"},
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U680", "Parent" : "683"},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U681", "Parent" : "683"},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U682", "Parent" : "683"},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U683", "Parent" : "683"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.padding_out_V_V_U", "Parent" : "676"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.reps_c_i_U", "Parent" : "676"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv3x3_bn_act_DSPop_3_U0.start_for_convDSPdNK_U", "Parent" : "676"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0", "Parent" : "0", "Child" : ["710", "715", "723", "724", "725"],
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
		"StartSource" : "676",
		"StartFifo" : "start_for_conv1x1edO_U",
		"InputProcess" : [
			{"ID" : "710", "Name" : "conv1x1convert718_U0"}],
		"OutputProcess" : [
			{"ID" : "710", "Name" : "conv1x1convert718_U0"},
			{"ID" : "715", "Name" : "conv1x1DSP2_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "683", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "710", "SubInstance" : "conv1x1convert718_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "726", "DependentChan" : "760",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "conv1x1DSP2_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "677", "DependentChan" : "759",
				"SubConnect" : [
					{"ID" : "710", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "726", "DependentChan" : "761",
				"SubConnect" : [
					{"ID" : "710", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1convert718_U0", "Parent" : "709", "Child" : ["711", "712", "713", "714"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "677", "DependentChan" : "759",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "726", "DependentChan" : "761",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "683", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "713", "SubInstance" : "grp_streamInOneRowTwoPix_fu_121", "Port" : "in_V_V"}]},
			{"Name" : "conv1in_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "715", "DependentChan" : "723",
				"SubConnect" : [
					{"ID" : "714", "SubInstance" : "grp_streamOutOneRowTwoPi_fu_132", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "715", "DependentChan" : "724",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1convert718_U0.row_buffer_0_V_U", "Parent" : "710"},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1convert718_U0.row_buffer_1_V_U", "Parent" : "710"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1convert718_U0.grp_streamInOneRowTwoPix_fu_121", "Parent" : "710",
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
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1convert718_U0.grp_streamOutOneRowTwoPi_fu_132", "Parent" : "710",
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
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0", "Parent" : "709", "Child" : ["716", "717", "718", "719", "720", "722"],
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
		"StartSource" : "710",
		"StartFifo" : "start_for_conv1x1dWL_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "710", "DependentChan" : "723",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "726", "DependentChan" : "760",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "710", "DependentChan" : "724",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_bias_new_V_0_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_bias_new_V_1_U", "Parent" : "715"},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_w_new_V_0_U", "Parent" : "715"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_w_new_V_1_U", "Parent" : "715"},
	{"ID" : "720", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274", "Parent" : "715", "Child" : ["721"],
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
	{"ID" : "721", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274.ultra_net_ama_adddQK_U721", "Parent" : "720"},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1x1DSP2_U0.ultra_net_mul_14ndVL_U735", "Parent" : "715"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.conv1in_V_V_U", "Parent" : "709"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.reps_c_i_U", "Parent" : "709"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_DSPopt_U0.start_for_conv1x1dWL_U", "Parent" : "709"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AddLast_3600u_U0", "Parent" : "0", "Child" : ["727"],
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
		"StartSource" : "709",
		"StartFifo" : "start_for_AddLasteeO_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "715", "DependentChan" : "760",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "710", "DependentChan" : "761",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddLast_3600u_U0.ultra_net_mul_32sdXL_U751", "Parent" : "726"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_stream_extract_V_s_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_stream0_V_V_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c1_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_stream1_V_V_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c2_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_stream2_V_V_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c3_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_0_out_V_V_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c4_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_0_out_V_V_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c5_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_1_out_V_V_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c6_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_1_out_V_V_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c7_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2_out_V_V_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c8_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_2_out_V_V_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c9_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_3_out_V_V_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c10_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_3_out_V_V_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c11_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_4_out_V_V_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c12_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_5_out_V_V_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c13_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_6_out_V_V_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c14_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_7_out_V_V_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c15_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_8_out_V_V_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reps_c16_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamidYM_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_StreamidZM_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_resize_d0M_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3d1M_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_max_pood2M_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3d3M_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_max_pood4N_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3d5N_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_max_pood6N_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3d7N_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_max_pood8N_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3d9N_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3eaO_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3ebO_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv3x3ecO_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv1x1edO_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_AddLasteeO_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	do_compute2 {
		in_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_V_keep_V {Type I LastRead 2 FirstWrite -1}
		out_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_V_last_V {Type O LastRead -1 FirstWrite 4}
		out_V_keep_V {Type O LastRead -1 FirstWrite 4}
		reps {Type I LastRead 0 FirstWrite -1}
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
		conv_0_w_new_V_15_2 {Type I LastRead -1 FirstWrite -1}
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
		conv_1_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}
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
		conv_2_w_new_V_7_0 {Type I LastRead -1 FirstWrite -1}
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
		conv_3_w_new_V_3_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_8_w_new_V_1 {Type I LastRead -1 FirstWrite -1}}
	ExtractPixels {
		in_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_V_keep_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 3}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
	StreamingDataWidthCo {
		in_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 4}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_out {Type O LastRead -1 FirstWrite 0}}
	StreamingDataWidthCo_1 {
		in_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 5}
		numReps {Type I LastRead 0 FirstWrite -1}
		numReps_out {Type O LastRead -1 FirstWrite 0}}
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
		out_V_V {Type O LastRead -1 FirstWrite 2}}
	conv3x3_l0_bn_act_DS {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 9}
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
	conv3padding_l0710 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_l0 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_2_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_3_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		centerRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_l0 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_2_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_3_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
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
		inData_V {Type I LastRead 0 FirstWrite -1}}
	streamBnRelu_l0 {
		in_V_V {Type I LastRead 5 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 9}
		rep {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	bn_qurelu_fixed {
		in_V {Type I LastRead 0 FirstWrite -1}
		inc_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}}
	max_pool2x2_3 {
		vec_V_V {Type I LastRead 3 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 5}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
	max2_PE_4u_16u_s {
		data0_V {Type I LastRead 0 FirstWrite -1}
		data1_V {Type I LastRead 0 FirstWrite -1}}
	max2_PE_4u_16u_s {
		data0_V {Type I LastRead 0 FirstWrite -1}
		data1_V {Type I LastRead 0 FirstWrite -1}}
	conv3x3_bn_act_DSPop {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 13}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
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
	conv3padding711 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_4 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
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
		w0_V {Type I LastRead 0 FirstWrite -1}}
	max_pool2x2 {
		vec_V_V {Type I LastRead 3 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 5}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
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
		bias_V {Type I LastRead 0 FirstWrite -1}}
	max_pool2x2_1 {
		vec_V_V {Type I LastRead 3 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 5}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
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
		w0_V {Type I LastRead 0 FirstWrite -1}}
	max_pool2x2_2 {
		vec_V_V {Type I LastRead 3 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 5}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}}
	conv3x3_bn_act_DSPop_4 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_4_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3padding714 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_3 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_2 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	convDSPOpt525 {
		vec_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_4_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_4_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3x3_bn_act_DSPop_6 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_5_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3padding526715 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_4 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_3 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	convDSPOpt_3 {
		vec_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_5_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_5_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3x3_bn_act_DSPop_5 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_6_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3padding527716 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_4 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_3 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	convDSPOpt_2 {
		vec_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_6_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_6_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3x3_bn_act_DSPop_3 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		conv_7_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
	conv3padding717 {
		reps {Type I LastRead 0 FirstWrite -1}
		reps_out {Type O LastRead -1 FirstWrite 0}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		padding_out_V_V {Type O LastRead -1 FirstWrite 4}
		reps_c_i {Type O LastRead -1 FirstWrite 0}}
	stream_out_data_4 {
		out_V_V {Type O LastRead -1 FirstWrite 4}
		row_buffer_0_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_1_V {Type I LastRead 2 FirstWrite -1}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		outRowIdx_V {Type I LastRead 0 FirstWrite -1}
		startRowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	stream_in_row_3 {
		in_V_V {Type I LastRead 2 FirstWrite -1}
		row_buffer_0_V {Type O LastRead -1 FirstWrite 3}
		row_buffer_1_V {Type O LastRead -1 FirstWrite 3}
		skip_flag {Type I LastRead 0 FirstWrite -1}
		rowBufferIdx_V {Type I LastRead 0 FirstWrite -1}}
	convDSPOpt_1 {
		vec_V_V {Type I LastRead 4 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		reps {Type I LastRead 0 FirstWrite -1}
		conv_7_inc_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_inc_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_bias_new_V_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_0_0 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_2 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_1 {Type I LastRead -1 FirstWrite -1}
		conv_7_w_new_V_1_0 {Type I LastRead -1 FirstWrite -1}}
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
		w1vec_3_V_read {Type I LastRead 0 FirstWrite -1}}
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
	in_V_data_V { axis {  { in_r_TDATA in_data 0 64 } } }
	in_V_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	in_V_keep_V { axis {  { in_r_TKEEP in_data 0 8 }  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 } } }
	out_V_data_V { axis {  { out_r_TDATA out_data 1 64 } } }
	out_V_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_V_keep_V { axis {  { out_r_TKEEP out_data 1 8 }  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 } } }
	reps { ap_none {  { reps in_data 0 32 }  { reps_ap_vld in_vld 0 1 } } }
}
