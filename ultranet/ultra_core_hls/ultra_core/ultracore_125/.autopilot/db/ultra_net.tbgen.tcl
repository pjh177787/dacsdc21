set moduleName ultra_net
set isTopModule 1
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
set C_modelName {ultra_net}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_data_V int 64 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_V_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ in_V_keep_V int 8 regular {axi_s 0 volatile  { in_r Keep } }  }
	{ out_V_data_V int 64 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_V_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_V_keep_V int 8 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ reps int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reps", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "reps","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 2 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ in_r_TKEEP sc_in sc_lv 8 signal 2 } 
	{ out_r_TDATA sc_out sc_lv 64 signal 3 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 5 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 5 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 4 } 
	{ out_r_TKEEP sc_out sc_lv 8 signal 5 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"ultra_net","role":"start","value":"0","valid_bit":"0"},{"name":"ultra_net","role":"continue","value":"0","valid_bit":"4"},{"name":"ultra_net","role":"auto_start","value":"0","valid_bit":"7"},{"name":"reps","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"ultra_net","role":"start","value":"0","valid_bit":"0"},{"name":"ultra_net","role":"done","value":"0","valid_bit":"1"},{"name":"ultra_net","role":"idle","value":"0","valid_bit":"2"},{"name":"ultra_net","role":"ready","value":"0","valid_bit":"3"},{"name":"ultra_net","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_V_data_V", "role": "default" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_last_V", "role": "default" }} , 
 	{ "name": "in_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V_keep_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V_keep_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "781", "782", "783", "784", "785", "786"],
		"CDFG" : "ultra_net",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_do_compute2_fu_390"}],
		"Port" : [
			{"Name" : "in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "in_V_data_V"}]},
			{"Name" : "in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "in_V_last_V"}]},
			{"Name" : "in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "in_V_keep_V"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "out_V_data_V"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "out_V_last_V"}]},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "out_V_keep_V"}]},
			{"Name" : "reps", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_0_0"}]},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_0_1"}]},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_0_2"}]},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_1_0"}]},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_1_1"}]},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_1_2"}]},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_2_0"}]},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_2_1"}]},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_2_2"}]},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_3_0"}]},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_3_1"}]},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_3_2"}]},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_4_0"}]},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_4_1"}]},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_4_2"}]},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_5_0"}]},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_5_1"}]},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_5_2"}]},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_6_0"}]},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_6_1"}]},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_6_2"}]},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_7_0"}]},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_7_1"}]},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_7_2"}]},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_8_0"}]},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_8_1"}]},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_8_2"}]},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_9_0"}]},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_9_1"}]},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_9_2"}]},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_10_0"}]},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_10_1"}]},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_10_2"}]},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_11_0"}]},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_11_1"}]},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_11_2"}]},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_12_0"}]},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_12_1"}]},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_12_2"}]},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_13_0"}]},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_13_1"}]},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_13_2"}]},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_14_0"}]},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_14_1"}]},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_14_2"}]},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_15_0"}]},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_15_1"}]},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_0_w_new_V_15_2"}]},
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_inc_new_V_0"}]},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_bias_new_V_0"}]},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_inc_new_V_1"}]},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_bias_new_V_1"}]},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_inc_new_V_2"}]},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_bias_new_V_2"}]},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_inc_new_V_3"}]},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_bias_new_V_3"}]},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_0_2"}]},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_0_1"}]},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_0_0"}]},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_1_2"}]},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_1_1"}]},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_1_0"}]},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_2_2"}]},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_2_1"}]},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_2_0"}]},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_3_2"}]},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_3_1"}]},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_1_w_new_V_3_0"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_2_w_new_V_7_0"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_3_w_new_V_3_0"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_inc_new_V_0"}]},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_bias_new_V_0"}]},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_inc_new_V_1"}]},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_bias_new_V_1"}]},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_0_2"}]},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_0_1"}]},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_0_0"}]},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_1_2"}]},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_1_1"}]},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_4_w_new_V_1_0"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_inc_new_V_0"}]},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_bias_new_V_0"}]},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_inc_new_V_1"}]},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_bias_new_V_1"}]},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_0_2"}]},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_0_1"}]},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_0_0"}]},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_1_2"}]},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_1_1"}]},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_5_w_new_V_1_0"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_inc_new_V_0"}]},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_bias_new_V_0"}]},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_inc_new_V_1"}]},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_bias_new_V_1"}]},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_0_2"}]},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_0_1"}]},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_0_0"}]},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_1_2"}]},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_1_1"}]},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_6_w_new_V_1_0"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_inc_new_V_0"}]},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_bias_new_V_0"}]},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_inc_new_V_1"}]},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_bias_new_V_1"}]},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_0_2"}]},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_0_1"}]},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_0_0"}]},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_1_2"}]},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_1_1"}]},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_7_w_new_V_1_0"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_do_compute2_fu_390", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ultra_net_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390", "Parent" : "0", "Child" : ["3", "5", "7", "9", "53", "217", "221", "332", "334", "498", "500", "578", "580", "612", "645", "678", "711", "728", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780"],
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
			{"ID" : "3", "Name" : "ExtractPixels_U0"}],
		"OutputProcess" : [
			{"ID" : "728", "Name" : "AddLast_3600u_U0"}],
		"Port" : [
			{"Name" : "in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_data_V"}]},
			{"Name" : "in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_last_V"}]},
			{"Name" : "in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ExtractPixels_U0", "Port" : "in_V_keep_V"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "728", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_data_V"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "728", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_last_V"}]},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "728", "SubInstance" : "AddLast_3600u_U0", "Port" : "out_V_keep_V"}]},
			{"Name" : "reps", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_0"}]},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_1"}]},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_0_2"}]},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_0"}]},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_1"}]},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_1_2"}]},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_0"}]},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_1"}]},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_2_2"}]},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_0"}]},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_1"}]},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_3_2"}]},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_0"}]},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_1"}]},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_4_2"}]},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_0"}]},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_1"}]},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_5_2"}]},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_0"}]},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_1"}]},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_6_2"}]},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_0"}]},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_1"}]},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_7_2"}]},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_0"}]},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_1"}]},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_8_2"}]},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_0"}]},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_1"}]},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_9_2"}]},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_0"}]},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_1"}]},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_10_2"}]},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_0"}]},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_1"}]},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_11_2"}]},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_0"}]},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_1"}]},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_12_2"}]},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_0"}]},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_1"}]},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_13_2"}]},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_0"}]},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_1"}]},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_14_2"}]},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_0"}]},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_1"}]},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "conv3x3_l0_bn_act_DS_U0", "Port" : "conv_0_w_new_V_15_2"}]},
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_0"}]},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_0"}]},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_1"}]},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_1"}]},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_2"}]},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_2"}]},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_inc_new_V_3"}]},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_bias_new_V_3"}]},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_2"}]},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_1"}]},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_0_0"}]},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_2"}]},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_1"}]},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_1_0"}]},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_2"}]},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_1"}]},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_2_0"}]},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_2"}]},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_1"}]},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "conv3x3_bn_act_DSPop_U0", "Port" : "conv_1_w_new_V_3_0"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "conv3x3_bn_act_DSPop_1_U0", "Port" : "conv_2_w_new_V_7_0"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "conv3x3_bn_act_DSPop_2_U0", "Port" : "conv_3_w_new_V_3_0"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_inc_new_V_0"}]},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_bias_new_V_0"}]},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_inc_new_V_1"}]},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_bias_new_V_1"}]},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_2"}]},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_1"}]},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_0_0"}]},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_2"}]},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_1"}]},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "conv3x3_bn_act_DSPop_4_U0", "Port" : "conv_4_w_new_V_1_0"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_inc_new_V_0"}]},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_bias_new_V_0"}]},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_inc_new_V_1"}]},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_bias_new_V_1"}]},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_2"}]},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_1"}]},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_0_0"}]},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_2"}]},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_1"}]},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "conv3x3_bn_act_DSPop_6_U0", "Port" : "conv_5_w_new_V_1_0"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_inc_new_V_0"}]},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_bias_new_V_0"}]},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_inc_new_V_1"}]},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_bias_new_V_1"}]},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_2"}]},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_1"}]},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_0_0"}]},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_2"}]},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_1"}]},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "conv3x3_bn_act_DSPop_5_U0", "Port" : "conv_6_w_new_V_1_0"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_inc_new_V_0"}]},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_bias_new_V_0"}]},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_inc_new_V_1"}]},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_bias_new_V_1"}]},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_2"}]},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_1"}]},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_0_0"}]},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_2"}]},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_1"}]},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "678", "SubInstance" : "conv3x3_bn_act_DSPop_3_U0", "Port" : "conv_7_w_new_V_1_0"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "711", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "711", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "711", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "711", "SubInstance" : "conv1x1_DSPopt_U0", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.ExtractPixels_U0", "Parent" : "2", "Child" : ["4"],
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
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "730",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "None", "Direction" : "I"},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "731",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.ExtractPixels_U0.ultra_net_mul_32sbkb_U1", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.StreamingDataWidthCo_U0", "Parent" : "2", "Child" : ["6"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_StreamidYM_U",
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.StreamingDataWidthCo_U0.ultra_net_mul_32sbkb_U9", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.StreamingDataWidthCo_1_U0", "Parent" : "2", "Child" : ["8"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_StreamidZM_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "732",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "734",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "733",
				"BlockSignal" : [
					{"Name" : "numReps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numReps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "735",
				"BlockSignal" : [
					{"Name" : "numReps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.StreamingDataWidthCo_1_U0.ultra_net_mul_32scud_U14", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0", "Parent" : "2", "Child" : ["10"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_resize_d0M_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_resize_fu_55"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "734",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_resize_fu_55", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "736",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_resize_fu_55", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "735",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "737",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55", "Parent" : "9", "Child" : ["11", "12", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
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
			{"ID" : "11", "Name" : "stream_to_mat_U0"}],
		"OutputProcess" : [
			{"ID" : "44", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "stream_to_mat_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "mat_to_stream_U0", "Port" : "out_V_V"}]}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.stream_to_mat_U0", "Parent" : "10",
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
			{"Name" : "raw_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "raw_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "raw_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0", "Parent" : "10", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
		"StartSource" : "11",
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
			{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_1_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_0_2_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_0_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_1_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.k_buf_val_val_1_2_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_27njbC_U24", "Parent" : "12"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U25", "Parent" : "12"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U26", "Parent" : "12"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U27", "Parent" : "12"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U28", "Parent" : "12"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U29", "Parent" : "12"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U30", "Parent" : "12"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U31", "Parent" : "12"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U32", "Parent" : "12"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U33", "Parent" : "12"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U34", "Parent" : "12"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U35", "Parent" : "12"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_20skbM_U36", "Parent" : "12"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U37", "Parent" : "12"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U38", "Parent" : "12"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U39", "Parent" : "12"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U40", "Parent" : "12"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U41", "Parent" : "12"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U42", "Parent" : "12"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U43", "Parent" : "12"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U44", "Parent" : "12"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U45", "Parent" : "12"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U46", "Parent" : "12"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U47", "Parent" : "12"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.Resize_opr_linear_U0.ultra_net_mul_mullbW_U48", "Parent" : "12"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.mat_to_stream_U0", "Parent" : "10",
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
		"StartSource" : "12",
		"StartFifo" : "start_for_mat_to_ncg_U",
		"Port" : [
			{"Name" : "resize_img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resize_img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "resize_img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_s_U", "Parent" : "10"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_1_U", "Parent" : "10"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.raw_img_data_stream_2_U", "Parent" : "10"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_U", "Parent" : "10"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_1_U", "Parent" : "10"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.resize_img_data_stre_2_U", "Parent" : "10"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.start_for_Resize_mb6_U", "Parent" : "10"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.resize_batch_U0.grp_resize_fu_55.start_for_mat_to_ncg_U", "Parent" : "10"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0", "Parent" : "2", "Child" : ["54", "64", "194", "211", "212", "213", "214", "215", "216"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_conv3x3d1M_U",
		"InputProcess" : [
			{"ID" : "54", "Name" : "conv3padding_l0710_U0"}],
		"OutputProcess" : [
			{"ID" : "54", "Name" : "conv3padding_l0710_U0"},
			{"ID" : "194", "Name" : "streamBnRelu_l0_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "736",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "conv3padding_l0710_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "738",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "streamBnRelu_l0_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "737",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "conv3padding_l0710_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "739",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "conv3padding_l0710_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_0_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_0"}]},
			{"Name" : "conv_0_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_1"}]},
			{"Name" : "conv_0_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_0_2"}]},
			{"Name" : "conv_0_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_0"}]},
			{"Name" : "conv_0_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_1"}]},
			{"Name" : "conv_0_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_1_2"}]},
			{"Name" : "conv_0_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_0"}]},
			{"Name" : "conv_0_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_1"}]},
			{"Name" : "conv_0_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_2_2"}]},
			{"Name" : "conv_0_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_0"}]},
			{"Name" : "conv_0_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_1"}]},
			{"Name" : "conv_0_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_3_2"}]},
			{"Name" : "conv_0_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_0"}]},
			{"Name" : "conv_0_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_1"}]},
			{"Name" : "conv_0_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_4_2"}]},
			{"Name" : "conv_0_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_0"}]},
			{"Name" : "conv_0_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_1"}]},
			{"Name" : "conv_0_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_5_2"}]},
			{"Name" : "conv_0_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_0"}]},
			{"Name" : "conv_0_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_1"}]},
			{"Name" : "conv_0_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_6_2"}]},
			{"Name" : "conv_0_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_0"}]},
			{"Name" : "conv_0_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_1"}]},
			{"Name" : "conv_0_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_7_2"}]},
			{"Name" : "conv_0_w_new_V_8_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_0"}]},
			{"Name" : "conv_0_w_new_V_8_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_1"}]},
			{"Name" : "conv_0_w_new_V_8_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_8_2"}]},
			{"Name" : "conv_0_w_new_V_9_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_0"}]},
			{"Name" : "conv_0_w_new_V_9_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_1"}]},
			{"Name" : "conv_0_w_new_V_9_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_9_2"}]},
			{"Name" : "conv_0_w_new_V_10_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_0"}]},
			{"Name" : "conv_0_w_new_V_10_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_1"}]},
			{"Name" : "conv_0_w_new_V_10_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_10_2"}]},
			{"Name" : "conv_0_w_new_V_11_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_0"}]},
			{"Name" : "conv_0_w_new_V_11_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_1"}]},
			{"Name" : "conv_0_w_new_V_11_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_11_2"}]},
			{"Name" : "conv_0_w_new_V_12_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_0"}]},
			{"Name" : "conv_0_w_new_V_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_1"}]},
			{"Name" : "conv_0_w_new_V_12_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_12_2"}]},
			{"Name" : "conv_0_w_new_V_13_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_0"}]},
			{"Name" : "conv_0_w_new_V_13_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_1"}]},
			{"Name" : "conv_0_w_new_V_13_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_13_2"}]},
			{"Name" : "conv_0_w_new_V_14_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_0"}]},
			{"Name" : "conv_0_w_new_V_14_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_1"}]},
			{"Name" : "conv_0_w_new_V_14_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_14_2"}]},
			{"Name" : "conv_0_w_new_V_15_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_0"}]},
			{"Name" : "conv_0_w_new_V_15_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_1"}]},
			{"Name" : "conv_0_w_new_V_15_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "convDSPOpt_l0_U0", "Port" : "conv_0_w_new_V_15_2"}]}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0", "Parent" : "53", "Child" : ["55", "56", "57", "58", "59", "63"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "737",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "739",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "736",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_stream_in_row_l0_fu_176", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "211",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_stream_out_data_l0_fu_161", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_0_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_1_V_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_2_V_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.row_buffer_3_V_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161", "Parent" : "54", "Child" : ["60", "61", "62"],
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
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U85", "Parent" : "59"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U86", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_out_data_l0_fu_161.ultra_net_mux_42_ocq_U87", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv3padding_l0710_U0.grp_stream_in_row_l0_fu_176", "Parent" : "54",
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0", "Parent" : "53", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "123", "133", "143", "153", "163", "173", "183", "193"],
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
		"StartSource" : "54",
		"StartFifo" : "start_for_convDSPbhl_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "214",
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_0_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_1_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_0_2_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_0_U", "Parent" : "64"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_1_U", "Parent" : "64"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_1_2_U", "Parent" : "64"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_0_U", "Parent" : "64"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_1_U", "Parent" : "64"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_2_2_U", "Parent" : "64"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_0_U", "Parent" : "64"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_1_U", "Parent" : "64"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_3_2_U", "Parent" : "64"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_0_U", "Parent" : "64"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_1_U", "Parent" : "64"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_4_2_U", "Parent" : "64"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_0_U", "Parent" : "64"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_1_U", "Parent" : "64"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_5_2_U", "Parent" : "64"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_0_U", "Parent" : "64"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_1_U", "Parent" : "64"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_6_2_U", "Parent" : "64"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_0_U", "Parent" : "64"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_1_U", "Parent" : "64"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_7_2_U", "Parent" : "64"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_0_U", "Parent" : "64"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_1_U", "Parent" : "64"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_8_2_U", "Parent" : "64"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_0_U", "Parent" : "64"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_1_U", "Parent" : "64"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_9_2_U", "Parent" : "64"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_0_U", "Parent" : "64"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_1_U", "Parent" : "64"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_10_2_U", "Parent" : "64"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_0_U", "Parent" : "64"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_1_U", "Parent" : "64"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_11_2_U", "Parent" : "64"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_0_U", "Parent" : "64"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_1_U", "Parent" : "64"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_12_2_U", "Parent" : "64"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_0_U", "Parent" : "64"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_1_U", "Parent" : "64"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_13_2_U", "Parent" : "64"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_0_U", "Parent" : "64"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_1_U", "Parent" : "64"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_14_2_U", "Parent" : "64"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_0_U", "Parent" : "64"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_1_U", "Parent" : "64"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.conv_0_w_new_V_15_2_U", "Parent" : "64"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952", "Parent" : "64", "Child" : ["114", "115", "116", "117", "118", "119", "120", "121", "122"],
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
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U104", "Parent" : "113"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U105", "Parent" : "113"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U106", "Parent" : "113"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U107", "Parent" : "113"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U108", "Parent" : "113"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U109", "Parent" : "113"},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U110", "Parent" : "113"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U111", "Parent" : "113"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_952.ultra_net_mul_multde_U112", "Parent" : "113"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983", "Parent" : "64", "Child" : ["124", "125", "126", "127", "128", "129", "130", "131", "132"],
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
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U104", "Parent" : "123"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U105", "Parent" : "123"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U106", "Parent" : "123"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U107", "Parent" : "123"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U108", "Parent" : "123"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U109", "Parent" : "123"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U110", "Parent" : "123"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U111", "Parent" : "123"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_983.ultra_net_mul_multde_U112", "Parent" : "123"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014", "Parent" : "64", "Child" : ["134", "135", "136", "137", "138", "139", "140", "141", "142"],
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
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U104", "Parent" : "133"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U105", "Parent" : "133"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U106", "Parent" : "133"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U107", "Parent" : "133"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U108", "Parent" : "133"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U109", "Parent" : "133"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U110", "Parent" : "133"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U111", "Parent" : "133"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1014.ultra_net_mul_multde_U112", "Parent" : "133"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045", "Parent" : "64", "Child" : ["144", "145", "146", "147", "148", "149", "150", "151", "152"],
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
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U104", "Parent" : "143"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U105", "Parent" : "143"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U106", "Parent" : "143"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U107", "Parent" : "143"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U108", "Parent" : "143"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U109", "Parent" : "143"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U110", "Parent" : "143"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U111", "Parent" : "143"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1045.ultra_net_mul_multde_U112", "Parent" : "143"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076", "Parent" : "64", "Child" : ["154", "155", "156", "157", "158", "159", "160", "161", "162"],
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
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U104", "Parent" : "153"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U105", "Parent" : "153"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U106", "Parent" : "153"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U107", "Parent" : "153"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U108", "Parent" : "153"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U109", "Parent" : "153"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U110", "Parent" : "153"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U111", "Parent" : "153"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1076.ultra_net_mul_multde_U112", "Parent" : "153"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107", "Parent" : "64", "Child" : ["164", "165", "166", "167", "168", "169", "170", "171", "172"],
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
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U104", "Parent" : "163"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U105", "Parent" : "163"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U106", "Parent" : "163"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U107", "Parent" : "163"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U108", "Parent" : "163"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U109", "Parent" : "163"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U110", "Parent" : "163"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U111", "Parent" : "163"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1107.ultra_net_mul_multde_U112", "Parent" : "163"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138", "Parent" : "64", "Child" : ["174", "175", "176", "177", "178", "179", "180", "181", "182"],
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
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U104", "Parent" : "173"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U105", "Parent" : "173"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U106", "Parent" : "173"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U107", "Parent" : "173"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U108", "Parent" : "173"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U109", "Parent" : "173"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U110", "Parent" : "173"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U111", "Parent" : "173"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1138.ultra_net_mul_multde_U112", "Parent" : "173"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169", "Parent" : "64", "Child" : ["184", "185", "186", "187", "188", "189", "190", "191", "192"],
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
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U104", "Parent" : "183"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U105", "Parent" : "183"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U106", "Parent" : "183"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U107", "Parent" : "183"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U108", "Parent" : "183"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U109", "Parent" : "183"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U110", "Parent" : "183"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U111", "Parent" : "183"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.grp_simd_mac9_DSP2_fu_1169.ultra_net_mul_multde_U112", "Parent" : "183"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.convDSPOpt_l0_U0.call_ret_i_loadInReg9_8u_s_fu_1200", "Parent" : "64",
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
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0", "Parent" : "53", "Child" : ["195", "197", "199", "201", "203", "205", "207", "209"],
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
		"StartSource" : "64",
		"StartFifo" : "start_for_streamBbil_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "738",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "rep_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_216", "Parent" : "194", "Child" : ["196"],
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
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_216.ultra_net_mac_mulbgk_U193", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_225", "Parent" : "194", "Child" : ["198"],
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
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_225.ultra_net_mac_mulbgk_U193", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_234", "Parent" : "194", "Child" : ["200"],
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
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_234.ultra_net_mac_mulbgk_U193", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_243", "Parent" : "194", "Child" : ["202"],
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
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_243.ultra_net_mac_mulbgk_U193", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_252", "Parent" : "194", "Child" : ["204"],
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
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_252.ultra_net_mac_mulbgk_U193", "Parent" : "203"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_261", "Parent" : "194", "Child" : ["206"],
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
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_261.ultra_net_mac_mulbgk_U193", "Parent" : "205"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_270", "Parent" : "194", "Child" : ["208"],
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
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_270.ultra_net_mac_mulbgk_U193", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_279", "Parent" : "194", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.streamBnRelu_l0_U0.grp_bn_qurelu_fixed_fu_279.ultra_net_mac_mulbgk_U193", "Parent" : "209"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.padding_out_V_V_U", "Parent" : "53"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.reps_c_i_U", "Parent" : "53"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.conv_l0_out_V_V_U", "Parent" : "53"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.reps_c1_i_U", "Parent" : "53"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.start_for_convDSPbhl_U", "Parent" : "53"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_l0_bn_act_DS_U0.start_for_streamBbil_U", "Parent" : "53"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_3_U0", "Parent" : "2", "Child" : ["218", "219", "220"],
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
		"StartSource" : "53",
		"StartFifo" : "start_for_max_pood2M_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "194", "DependentChan" : "738",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "740",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "739",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "741",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_3_U0.row_store_V_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_3_U0.p_01_i_max2_PE_4u_16u_s_fu_166", "Parent" : "217",
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
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_3_U0.op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173", "Parent" : "217",
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
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0", "Parent" : "2", "Child" : ["222", "227", "329", "330", "331"],
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
		"StartSource" : "217",
		"StartFifo" : "start_for_conv3x3d3M_U",
		"InputProcess" : [
			{"ID" : "222", "Name" : "conv3padding711_U0"}],
		"OutputProcess" : [
			{"ID" : "222", "Name" : "conv3padding711_U0"},
			{"ID" : "227", "Name" : "convDSPOpt_5_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "740",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "conv3padding711_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "742",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "741",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "conv3padding711_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "743",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "conv3padding711_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_1_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_0"}]},
			{"Name" : "conv_1_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_0"}]},
			{"Name" : "conv_1_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_1"}]},
			{"Name" : "conv_1_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_1"}]},
			{"Name" : "conv_1_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_2"}]},
			{"Name" : "conv_1_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_2"}]},
			{"Name" : "conv_1_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_inc_new_V_3"}]},
			{"Name" : "conv_1_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_bias_new_V_3"}]},
			{"Name" : "conv_1_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_2"}]},
			{"Name" : "conv_1_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_1"}]},
			{"Name" : "conv_1_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_0_0"}]},
			{"Name" : "conv_1_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_2"}]},
			{"Name" : "conv_1_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_1"}]},
			{"Name" : "conv_1_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_1_0"}]},
			{"Name" : "conv_1_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_2"}]},
			{"Name" : "conv_1_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_1"}]},
			{"Name" : "conv_1_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_2_0"}]},
			{"Name" : "conv_1_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_2"}]},
			{"Name" : "conv_1_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_1"}]},
			{"Name" : "conv_1_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "convDSPOpt_5_U0", "Port" : "conv_1_w_new_V_3_0"}]}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.conv3padding711_U0", "Parent" : "221", "Child" : ["223", "224", "226"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "741",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "743",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "740",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_stream_in_row_4_fu_159", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "329",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_stream_out_data_fu_147", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "330",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.row_buffer_0_V_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_out_data_fu_147", "Parent" : "222", "Child" : ["225"],
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
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_out_data_fu_147.ultra_net_mac_mulbkl_U222", "Parent" : "224"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.conv3padding711_U0.grp_stream_in_row_4_fu_159", "Parent" : "222",
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
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0", "Parent" : "221", "Child" : ["228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "265", "282", "299", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328"],
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
		"StartSource" : "222",
		"StartFifo" : "start_for_convDSPbLp_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "329",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "742",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "330",
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
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_0_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_0_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_1_U", "Parent" : "227"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_1_U", "Parent" : "227"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_2_U", "Parent" : "227"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_2_U", "Parent" : "227"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_inc_new_V_3_U", "Parent" : "227"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_bias_new_V_3_U", "Parent" : "227"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_2_U", "Parent" : "227"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_1_U", "Parent" : "227"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_0_0_U", "Parent" : "227"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_2_U", "Parent" : "227"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_1_U", "Parent" : "227"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_1_0_U", "Parent" : "227"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_2_U", "Parent" : "227"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_1_U", "Parent" : "227"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_2_0_U", "Parent" : "227"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_2_U", "Parent" : "227"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_1_U", "Parent" : "227"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.conv_1_w_new_V_3_0_U", "Parent" : "227"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811", "Parent" : "227", "Child" : ["249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
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
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U238", "Parent" : "248"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U239", "Parent" : "248"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U240", "Parent" : "248"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U241", "Parent" : "248"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U242", "Parent" : "248"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U243", "Parent" : "248"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U244", "Parent" : "248"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U245", "Parent" : "248"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U246", "Parent" : "248"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U247", "Parent" : "248"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U248", "Parent" : "248"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U249", "Parent" : "248"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U250", "Parent" : "248"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U251", "Parent" : "248"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U252", "Parent" : "248"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_811.ultra_net_mul_mulbml_U253", "Parent" : "248"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847", "Parent" : "227", "Child" : ["266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281"],
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
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U238", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U239", "Parent" : "265"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U240", "Parent" : "265"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U241", "Parent" : "265"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U242", "Parent" : "265"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U243", "Parent" : "265"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U244", "Parent" : "265"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U245", "Parent" : "265"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U246", "Parent" : "265"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U247", "Parent" : "265"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U248", "Parent" : "265"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U249", "Parent" : "265"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U250", "Parent" : "265"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U251", "Parent" : "265"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U252", "Parent" : "265"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_847.ultra_net_mul_mulbml_U253", "Parent" : "265"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883", "Parent" : "227", "Child" : ["283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298"],
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
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U238", "Parent" : "282"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U239", "Parent" : "282"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U240", "Parent" : "282"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U241", "Parent" : "282"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U242", "Parent" : "282"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U243", "Parent" : "282"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U244", "Parent" : "282"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U245", "Parent" : "282"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U246", "Parent" : "282"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U247", "Parent" : "282"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U248", "Parent" : "282"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U249", "Parent" : "282"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U250", "Parent" : "282"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U251", "Parent" : "282"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U252", "Parent" : "282"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_883.ultra_net_mul_mulbml_U253", "Parent" : "282"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919", "Parent" : "227", "Child" : ["300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315"],
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
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U238", "Parent" : "299"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U239", "Parent" : "299"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U240", "Parent" : "299"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U241", "Parent" : "299"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U242", "Parent" : "299"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U243", "Parent" : "299"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U244", "Parent" : "299"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U245", "Parent" : "299"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U246", "Parent" : "299"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U247", "Parent" : "299"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U248", "Parent" : "299"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U249", "Parent" : "299"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U250", "Parent" : "299"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U251", "Parent" : "299"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U252", "Parent" : "299"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.grp_simd_MAC_2_fu_919.ultra_net_mul_mulbml_U253", "Parent" : "299"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret49_i_pack_weight_data_2_fu_955", "Parent" : "227",
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
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret50_i_pack_weight_data_2_fu_965", "Parent" : "227",
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
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret51_i_pack_weight_data_2_fu_974", "Parent" : "227",
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
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.call_ret52_i_pack_weight_data_2_fu_984", "Parent" : "227",
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
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_12nbHp_U287", "Parent" : "227"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U288", "Parent" : "227"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U289", "Parent" : "227"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbJp_U290", "Parent" : "227"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbJp_U291", "Parent" : "227"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbKp_U292", "Parent" : "227"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbKp_U293", "Parent" : "227"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U294", "Parent" : "227"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.convDSPOpt_5_U0.ultra_net_mul_mulbIp_U295", "Parent" : "227"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.padding_out_V_V_U", "Parent" : "221"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.reps_c_i_U", "Parent" : "221"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_U0.start_for_convDSPbLp_U", "Parent" : "221"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_U0", "Parent" : "2", "Child" : ["333"],
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
		"StartSource" : "221",
		"StartFifo" : "start_for_max_pood4N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "742",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "744",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "743",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "335", "DependentChan" : "745",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_U0.row_store_V_U", "Parent" : "332"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0", "Parent" : "2", "Child" : ["335", "341", "495", "496", "497"],
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
		"StartSource" : "332",
		"StartFifo" : "start_for_conv3x3d5N_U",
		"InputProcess" : [
			{"ID" : "335", "Name" : "conv3padding712_U0"}],
		"OutputProcess" : [
			{"ID" : "335", "Name" : "conv3padding712_U0"},
			{"ID" : "341", "Name" : "convDSPOpt_4_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "744",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "conv3padding712_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "746",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "745",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "conv3padding712_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "747",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "conv3padding712_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_2_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_0"}]},
			{"Name" : "conv_2_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_0"}]},
			{"Name" : "conv_2_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_1"}]},
			{"Name" : "conv_2_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_1"}]},
			{"Name" : "conv_2_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_2"}]},
			{"Name" : "conv_2_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_2"}]},
			{"Name" : "conv_2_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_3"}]},
			{"Name" : "conv_2_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_3"}]},
			{"Name" : "conv_2_inc_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_4"}]},
			{"Name" : "conv_2_bias_new_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_4"}]},
			{"Name" : "conv_2_inc_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_5"}]},
			{"Name" : "conv_2_bias_new_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_5"}]},
			{"Name" : "conv_2_inc_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_6"}]},
			{"Name" : "conv_2_bias_new_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_6"}]},
			{"Name" : "conv_2_inc_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_inc_new_V_7"}]},
			{"Name" : "conv_2_bias_new_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_bias_new_V_7"}]},
			{"Name" : "conv_2_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_2"}]},
			{"Name" : "conv_2_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_1"}]},
			{"Name" : "conv_2_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_0_0"}]},
			{"Name" : "conv_2_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_2"}]},
			{"Name" : "conv_2_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_1"}]},
			{"Name" : "conv_2_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_1_0"}]},
			{"Name" : "conv_2_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_2"}]},
			{"Name" : "conv_2_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_1"}]},
			{"Name" : "conv_2_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_2_0"}]},
			{"Name" : "conv_2_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_2"}]},
			{"Name" : "conv_2_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_1"}]},
			{"Name" : "conv_2_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_3_0"}]},
			{"Name" : "conv_2_w_new_V_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_2"}]},
			{"Name" : "conv_2_w_new_V_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_1"}]},
			{"Name" : "conv_2_w_new_V_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_4_0"}]},
			{"Name" : "conv_2_w_new_V_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_2"}]},
			{"Name" : "conv_2_w_new_V_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_1"}]},
			{"Name" : "conv_2_w_new_V_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_5_0"}]},
			{"Name" : "conv_2_w_new_V_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_2"}]},
			{"Name" : "conv_2_w_new_V_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_1"}]},
			{"Name" : "conv_2_w_new_V_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_6_0"}]},
			{"Name" : "conv_2_w_new_V_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_2"}]},
			{"Name" : "conv_2_w_new_V_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_1"}]},
			{"Name" : "conv_2_w_new_V_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "convDSPOpt_4_U0", "Port" : "conv_2_w_new_V_7_0"}]}]},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0", "Parent" : "334", "Child" : ["336", "337", "338", "340"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "745",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "747",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "744",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_stream_in_row_fu_164", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "495",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_stream_out_data_1_fu_151", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "341", "DependentChan" : "496",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.row_buffer_0_V_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.row_buffer_1_V_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_out_data_1_fu_151", "Parent" : "335", "Child" : ["339"],
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
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_out_data_1_fu_151.ultra_net_mac_mulbNq_U340", "Parent" : "338"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.conv3padding712_U0.grp_stream_in_row_fu_164", "Parent" : "335",
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
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0", "Parent" : "334", "Child" : ["342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "391", "400", "409", "418", "427", "436", "445", "454", "455", "456", "457", "458", "459", "460", "461", "462", "464", "466", "468", "470", "472", "474", "476", "478", "480", "482", "484", "486", "488", "490", "492", "494"],
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
		"StartSource" : "335",
		"StartFifo" : "start_for_convDSPcwx_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "495",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "498", "DependentChan" : "746",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "496",
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
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_0_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_0_U", "Parent" : "341"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_1_U", "Parent" : "341"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_1_U", "Parent" : "341"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_2_U", "Parent" : "341"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_2_U", "Parent" : "341"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_3_U", "Parent" : "341"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_3_U", "Parent" : "341"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_4_U", "Parent" : "341"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_4_U", "Parent" : "341"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_5_U", "Parent" : "341"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_5_U", "Parent" : "341"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_6_U", "Parent" : "341"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_6_U", "Parent" : "341"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_inc_new_V_7_U", "Parent" : "341"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_bias_new_V_7_U", "Parent" : "341"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_2_U", "Parent" : "341"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_1_U", "Parent" : "341"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_0_0_U", "Parent" : "341"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_2_U", "Parent" : "341"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_1_U", "Parent" : "341"},
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_1_0_U", "Parent" : "341"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_2_U", "Parent" : "341"},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_1_U", "Parent" : "341"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_2_0_U", "Parent" : "341"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_2_U", "Parent" : "341"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_1_U", "Parent" : "341"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_3_0_U", "Parent" : "341"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_2_U", "Parent" : "341"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_1_U", "Parent" : "341"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_4_0_U", "Parent" : "341"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_2_U", "Parent" : "341"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_1_U", "Parent" : "341"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_5_0_U", "Parent" : "341"},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_2_U", "Parent" : "341"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_1_U", "Parent" : "341"},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_6_0_U", "Parent" : "341"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_2_U", "Parent" : "341"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_1_U", "Parent" : "341"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.conv_2_w_new_V_7_0_U", "Parent" : "341"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193", "Parent" : "341", "Child" : ["383", "384", "385", "386", "387", "388", "389", "390"],
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
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U357", "Parent" : "382"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U358", "Parent" : "382"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U359", "Parent" : "382"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U360", "Parent" : "382"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U361", "Parent" : "382"},
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U362", "Parent" : "382"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U363", "Parent" : "382"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1193.ultra_net_mul_mulbml_U364", "Parent" : "382"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213", "Parent" : "341", "Child" : ["392", "393", "394", "395", "396", "397", "398", "399"],
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
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U357", "Parent" : "391"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U358", "Parent" : "391"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U359", "Parent" : "391"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U360", "Parent" : "391"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U361", "Parent" : "391"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U362", "Parent" : "391"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U363", "Parent" : "391"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1213.ultra_net_mul_mulbml_U364", "Parent" : "391"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233", "Parent" : "341", "Child" : ["401", "402", "403", "404", "405", "406", "407", "408"],
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
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U357", "Parent" : "400"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U358", "Parent" : "400"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U359", "Parent" : "400"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U360", "Parent" : "400"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U361", "Parent" : "400"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U362", "Parent" : "400"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U363", "Parent" : "400"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1233.ultra_net_mul_mulbml_U364", "Parent" : "400"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253", "Parent" : "341", "Child" : ["410", "411", "412", "413", "414", "415", "416", "417"],
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
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U357", "Parent" : "409"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U358", "Parent" : "409"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U359", "Parent" : "409"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U360", "Parent" : "409"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U361", "Parent" : "409"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U362", "Parent" : "409"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U363", "Parent" : "409"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1253.ultra_net_mul_mulbml_U364", "Parent" : "409"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273", "Parent" : "341", "Child" : ["419", "420", "421", "422", "423", "424", "425", "426"],
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
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U357", "Parent" : "418"},
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U358", "Parent" : "418"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U359", "Parent" : "418"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U360", "Parent" : "418"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U361", "Parent" : "418"},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U362", "Parent" : "418"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U363", "Parent" : "418"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1273.ultra_net_mul_mulbml_U364", "Parent" : "418"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293", "Parent" : "341", "Child" : ["428", "429", "430", "431", "432", "433", "434", "435"],
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
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U357", "Parent" : "427"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U358", "Parent" : "427"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U359", "Parent" : "427"},
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U360", "Parent" : "427"},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U361", "Parent" : "427"},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U362", "Parent" : "427"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U363", "Parent" : "427"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1293.ultra_net_mul_mulbml_U364", "Parent" : "427"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313", "Parent" : "341", "Child" : ["437", "438", "439", "440", "441", "442", "443", "444"],
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
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U357", "Parent" : "436"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U358", "Parent" : "436"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U359", "Parent" : "436"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U360", "Parent" : "436"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U361", "Parent" : "436"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U362", "Parent" : "436"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U363", "Parent" : "436"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1313.ultra_net_mul_mulbml_U364", "Parent" : "436"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333", "Parent" : "341", "Child" : ["446", "447", "448", "449", "450", "451", "452", "453"],
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
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U357", "Parent" : "445"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U358", "Parent" : "445"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U359", "Parent" : "445"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U360", "Parent" : "445"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U361", "Parent" : "445"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U362", "Parent" : "445"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U363", "Parent" : "445"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_simd_MAC_fu_1333.ultra_net_mul_mulbml_U364", "Parent" : "445"},
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret33_i_pack_weight_data_fu_1353", "Parent" : "341",
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
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret34_i_pack_weight_data_fu_1363", "Parent" : "341",
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
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret35_i_pack_weight_data_fu_1373", "Parent" : "341",
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
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret36_i_pack_weight_data_fu_1383", "Parent" : "341",
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
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret37_i_pack_weight_data_fu_1393", "Parent" : "341",
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
	{"ID" : "459", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret38_i_pack_weight_data_fu_1403", "Parent" : "341",
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
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret39_i_pack_weight_data_fu_1413", "Parent" : "341",
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
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.call_ret40_i_pack_weight_data_fu_1423", "Parent" : "341",
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
	{"ID" : "462", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433", "Parent" : "341", "Child" : ["463"],
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
	{"ID" : "463", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1433.ultra_net_mul_mulbQq_U381", "Parent" : "462"},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440", "Parent" : "341", "Child" : ["465"],
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
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1440.ultra_net_mul_mulbQq_U381", "Parent" : "464"},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447", "Parent" : "341", "Child" : ["467"],
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
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1447.ultra_net_mul_mulbQq_U381", "Parent" : "466"},
	{"ID" : "468", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454", "Parent" : "341", "Child" : ["469"],
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
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1454.ultra_net_mul_mulbQq_U381", "Parent" : "468"},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461", "Parent" : "341", "Child" : ["471"],
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
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1461.ultra_net_mul_mulbQq_U381", "Parent" : "470"},
	{"ID" : "472", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468", "Parent" : "341", "Child" : ["473"],
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
	{"ID" : "473", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1468.ultra_net_mul_mulbQq_U381", "Parent" : "472"},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475", "Parent" : "341", "Child" : ["475"],
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
	{"ID" : "475", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1475.ultra_net_mul_mulbQq_U381", "Parent" : "474"},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482", "Parent" : "341", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1482.ultra_net_mul_mulbQq_U381", "Parent" : "476"},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489", "Parent" : "341", "Child" : ["479"],
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
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1489.ultra_net_mul_mulbQq_U381", "Parent" : "478"},
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496", "Parent" : "341", "Child" : ["481"],
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
	{"ID" : "481", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1496.ultra_net_mul_mulbQq_U381", "Parent" : "480"},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503", "Parent" : "341", "Child" : ["483"],
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
	{"ID" : "483", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1503.ultra_net_mul_mulbQq_U381", "Parent" : "482"},
	{"ID" : "484", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510", "Parent" : "341", "Child" : ["485"],
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
	{"ID" : "485", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1510.ultra_net_mul_mulbQq_U381", "Parent" : "484"},
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517", "Parent" : "341", "Child" : ["487"],
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
	{"ID" : "487", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1517.ultra_net_mul_mulbQq_U381", "Parent" : "486"},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524", "Parent" : "341", "Child" : ["489"],
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
	{"ID" : "489", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1524.ultra_net_mul_mulbQq_U381", "Parent" : "488"},
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531", "Parent" : "341", "Child" : ["491"],
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
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1531.ultra_net_mul_mulbQq_U381", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538", "Parent" : "341", "Child" : ["493"],
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
	{"ID" : "493", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.grp_bn_qurelu_fixed_1_fu_1538.ultra_net_mul_mulbQq_U381", "Parent" : "492"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.convDSPOpt_4_U0.ultra_net_mul_13ncvx_U386", "Parent" : "341"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.padding_out_V_V_U", "Parent" : "334"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.reps_c_i_U", "Parent" : "334"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_1_U0.start_for_convDSPcwx_U", "Parent" : "334"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_1_U0", "Parent" : "2", "Child" : ["499"],
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
		"StartSource" : "334",
		"StartFifo" : "start_for_max_pood6N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "341", "DependentChan" : "746",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "748",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "335", "DependentChan" : "747",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "749",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_1_U0.row_store_V_U", "Parent" : "498"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0", "Parent" : "2", "Child" : ["501", "506", "575", "576", "577"],
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
		"StartSource" : "498",
		"StartFifo" : "start_for_conv3x3d7N_U",
		"InputProcess" : [
			{"ID" : "501", "Name" : "conv3padding713_U0"}],
		"OutputProcess" : [
			{"ID" : "501", "Name" : "conv3padding713_U0"},
			{"ID" : "506", "Name" : "convDSPOpt_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "498", "DependentChan" : "748",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "conv3padding713_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "750",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "498", "DependentChan" : "749",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "conv3padding713_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "751",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "conv3padding713_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_3_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_0"}]},
			{"Name" : "conv_3_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_0"}]},
			{"Name" : "conv_3_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_1"}]},
			{"Name" : "conv_3_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_1"}]},
			{"Name" : "conv_3_inc_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_2"}]},
			{"Name" : "conv_3_bias_new_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_2"}]},
			{"Name" : "conv_3_inc_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_inc_new_V_3"}]},
			{"Name" : "conv_3_bias_new_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_bias_new_V_3"}]},
			{"Name" : "conv_3_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_2"}]},
			{"Name" : "conv_3_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_1"}]},
			{"Name" : "conv_3_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_0_0"}]},
			{"Name" : "conv_3_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_2"}]},
			{"Name" : "conv_3_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_1"}]},
			{"Name" : "conv_3_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_1_0"}]},
			{"Name" : "conv_3_w_new_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_2"}]},
			{"Name" : "conv_3_w_new_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_1"}]},
			{"Name" : "conv_3_w_new_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_2_0"}]},
			{"Name" : "conv_3_w_new_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_2"}]},
			{"Name" : "conv_3_w_new_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_1"}]},
			{"Name" : "conv_3_w_new_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "convDSPOpt_U0", "Port" : "conv_3_w_new_V_3_0"}]}]},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0", "Parent" : "500", "Child" : ["502", "503", "505"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "498", "DependentChan" : "749",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "751",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "498", "DependentChan" : "748",
				"SubConnect" : [
					{"ID" : "505", "SubInstance" : "grp_stream_in_row_1_fu_157", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "575",
				"SubConnect" : [
					{"ID" : "503", "SubInstance" : "grp_stream_out_data_2_fu_145", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "576",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.row_buffer_0_V_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_out_data_2_fu_145", "Parent" : "501", "Child" : ["504"],
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
	{"ID" : "504", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_out_data_2_fu_145.ultra_net_mac_mulcyx_U447", "Parent" : "503"},
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.conv3padding713_U0.grp_stream_in_row_1_fu_157", "Parent" : "501",
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
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0", "Parent" : "500", "Child" : ["507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "536", "545", "554", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574"],
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
		"StartSource" : "501",
		"StartFifo" : "start_for_convDSPcVB_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "575",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "750",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "576",
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
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_0_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_0_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_1_U", "Parent" : "506"},
	{"ID" : "510", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_1_U", "Parent" : "506"},
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_2_U", "Parent" : "506"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_2_U", "Parent" : "506"},
	{"ID" : "513", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_inc_new_V_3_U", "Parent" : "506"},
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_bias_new_V_3_U", "Parent" : "506"},
	{"ID" : "515", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_2_U", "Parent" : "506"},
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_1_U", "Parent" : "506"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_0_0_U", "Parent" : "506"},
	{"ID" : "518", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_2_U", "Parent" : "506"},
	{"ID" : "519", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_1_U", "Parent" : "506"},
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_1_0_U", "Parent" : "506"},
	{"ID" : "521", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_2_U", "Parent" : "506"},
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_1_U", "Parent" : "506"},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_2_0_U", "Parent" : "506"},
	{"ID" : "524", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_2_U", "Parent" : "506"},
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_1_U", "Parent" : "506"},
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.conv_3_w_new_V_3_0_U", "Parent" : "506"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743", "Parent" : "506", "Child" : ["528", "529", "530", "531", "532", "533", "534", "535"],
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
	{"ID" : "528", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U463", "Parent" : "527"},
	{"ID" : "529", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U464", "Parent" : "527"},
	{"ID" : "530", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U465", "Parent" : "527"},
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U466", "Parent" : "527"},
	{"ID" : "532", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U467", "Parent" : "527"},
	{"ID" : "533", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U468", "Parent" : "527"},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U469", "Parent" : "527"},
	{"ID" : "535", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_743.ultra_net_mul_mulbml_U470", "Parent" : "527"},
	{"ID" : "536", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763", "Parent" : "506", "Child" : ["537", "538", "539", "540", "541", "542", "543", "544"],
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
	{"ID" : "537", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U463", "Parent" : "536"},
	{"ID" : "538", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U464", "Parent" : "536"},
	{"ID" : "539", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U465", "Parent" : "536"},
	{"ID" : "540", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U466", "Parent" : "536"},
	{"ID" : "541", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U467", "Parent" : "536"},
	{"ID" : "542", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U468", "Parent" : "536"},
	{"ID" : "543", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U469", "Parent" : "536"},
	{"ID" : "544", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_763.ultra_net_mul_mulbml_U470", "Parent" : "536"},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783", "Parent" : "506", "Child" : ["546", "547", "548", "549", "550", "551", "552", "553"],
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
	{"ID" : "546", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U463", "Parent" : "545"},
	{"ID" : "547", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U464", "Parent" : "545"},
	{"ID" : "548", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U465", "Parent" : "545"},
	{"ID" : "549", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U466", "Parent" : "545"},
	{"ID" : "550", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U467", "Parent" : "545"},
	{"ID" : "551", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U468", "Parent" : "545"},
	{"ID" : "552", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U469", "Parent" : "545"},
	{"ID" : "553", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_783.ultra_net_mul_mulbml_U470", "Parent" : "545"},
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803", "Parent" : "506", "Child" : ["555", "556", "557", "558", "559", "560", "561", "562"],
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
	{"ID" : "555", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U463", "Parent" : "554"},
	{"ID" : "556", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U464", "Parent" : "554"},
	{"ID" : "557", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U465", "Parent" : "554"},
	{"ID" : "558", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U466", "Parent" : "554"},
	{"ID" : "559", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U467", "Parent" : "554"},
	{"ID" : "560", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U468", "Parent" : "554"},
	{"ID" : "561", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U469", "Parent" : "554"},
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.grp_simd_MAC_1_fu_803.ultra_net_mul_mulbml_U470", "Parent" : "554"},
	{"ID" : "563", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret9_i_pack_weight_data_1_fu_823", "Parent" : "506",
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
	{"ID" : "564", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret10_i_pack_weight_data_1_fu_833", "Parent" : "506",
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
	{"ID" : "565", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret11_i_pack_weight_data_1_fu_843", "Parent" : "506",
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
	{"ID" : "566", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.call_ret12_i_pack_weight_data_1_fu_853", "Parent" : "506",
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
	{"ID" : "567", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U487", "Parent" : "506"},
	{"ID" : "568", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U488", "Parent" : "506"},
	{"ID" : "569", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U489", "Parent" : "506"},
	{"ID" : "570", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U490", "Parent" : "506"},
	{"ID" : "571", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U491", "Parent" : "506"},
	{"ID" : "572", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U492", "Parent" : "506"},
	{"ID" : "573", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U493", "Parent" : "506"},
	{"ID" : "574", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.convDSPOpt_U0.ultra_net_mul_mulcUB_U494", "Parent" : "506"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.padding_out_V_V_U", "Parent" : "500"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.reps_c_i_U", "Parent" : "500"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_2_U0.start_for_convDSPcVB_U", "Parent" : "500"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_2_U0", "Parent" : "2", "Child" : ["579"],
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
		"StartSource" : "500",
		"StartFifo" : "start_for_max_pood8N_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "506", "DependentChan" : "750",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "752",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "751",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "753",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.max_pool2x2_2_U0.row_store_V_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0", "Parent" : "2", "Child" : ["581", "586", "609", "610", "611"],
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
		"StartSource" : "578",
		"StartFifo" : "start_for_conv3x3d9N_U",
		"InputProcess" : [
			{"ID" : "581", "Name" : "conv3padding714_U0"}],
		"OutputProcess" : [
			{"ID" : "581", "Name" : "conv3padding714_U0"},
			{"ID" : "586", "Name" : "convDSPOpt525_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "752",
				"SubConnect" : [
					{"ID" : "581", "SubInstance" : "conv3padding714_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "753",
				"SubConnect" : [
					{"ID" : "581", "SubInstance" : "conv3padding714_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "755",
				"SubConnect" : [
					{"ID" : "581", "SubInstance" : "conv3padding714_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_4_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_inc_new_V_0"}]},
			{"Name" : "conv_4_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_bias_new_V_0"}]},
			{"Name" : "conv_4_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_inc_new_V_1"}]},
			{"Name" : "conv_4_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_bias_new_V_1"}]},
			{"Name" : "conv_4_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_2"}]},
			{"Name" : "conv_4_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_1"}]},
			{"Name" : "conv_4_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_0_0"}]},
			{"Name" : "conv_4_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_2"}]},
			{"Name" : "conv_4_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_1"}]},
			{"Name" : "conv_4_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "convDSPOpt525_U0", "Port" : "conv_4_w_new_V_1_0"}]}]},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0", "Parent" : "580", "Child" : ["582", "583", "585"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "753",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "755",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "752",
				"SubConnect" : [
					{"ID" : "585", "SubInstance" : "grp_stream_in_row_2_fu_157", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "609",
				"SubConnect" : [
					{"ID" : "583", "SubInstance" : "grp_stream_out_data_3_fu_145", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "586", "DependentChan" : "610",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.row_buffer_0_V_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_out_data_3_fu_145", "Parent" : "581", "Child" : ["584"],
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
	{"ID" : "584", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_out_data_3_fu_145.ultra_net_mac_mulcyx_U535", "Parent" : "583"},
	{"ID" : "585", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.conv3padding714_U0.grp_stream_in_row_2_fu_157", "Parent" : "581",
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
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0", "Parent" : "580", "Child" : ["587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608"],
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
		"StartSource" : "581",
		"StartFifo" : "start_for_convDSPc9D_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "609",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "754",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "610",
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
	{"ID" : "587", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_inc_new_V_0_U", "Parent" : "586"},
	{"ID" : "588", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_bias_new_V_0_U", "Parent" : "586"},
	{"ID" : "589", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_inc_new_V_1_U", "Parent" : "586"},
	{"ID" : "590", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_bias_new_V_1_U", "Parent" : "586"},
	{"ID" : "591", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_2_U", "Parent" : "586"},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_1_U", "Parent" : "586"},
	{"ID" : "593", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_0_0_U", "Parent" : "586"},
	{"ID" : "594", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_2_U", "Parent" : "586"},
	{"ID" : "595", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_1_U", "Parent" : "586"},
	{"ID" : "596", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.conv_4_w_new_V_1_0_U", "Parent" : "586"},
	{"ID" : "597", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U547", "Parent" : "586"},
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U548", "Parent" : "586"},
	{"ID" : "599", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U549", "Parent" : "586"},
	{"ID" : "600", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U550", "Parent" : "586"},
	{"ID" : "601", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U551", "Parent" : "586"},
	{"ID" : "602", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U552", "Parent" : "586"},
	{"ID" : "603", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U553", "Parent" : "586"},
	{"ID" : "604", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulbml_U554", "Parent" : "586"},
	{"ID" : "605", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U555", "Parent" : "586"},
	{"ID" : "606", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U556", "Parent" : "586"},
	{"ID" : "607", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U557", "Parent" : "586"},
	{"ID" : "608", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.convDSPOpt525_U0.ultra_net_mul_mulc8D_U558", "Parent" : "586"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.padding_out_V_V_U", "Parent" : "580"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.reps_c_i_U", "Parent" : "580"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_4_U0.start_for_convDSPc9D_U", "Parent" : "580"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0", "Parent" : "2", "Child" : ["613", "619", "642", "643", "644"],
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
		"StartSource" : "580",
		"StartFifo" : "start_for_conv3x3eaO_U",
		"InputProcess" : [
			{"ID" : "613", "Name" : "conv3padding526715_U0"}],
		"OutputProcess" : [
			{"ID" : "613", "Name" : "conv3padding526715_U0"},
			{"ID" : "619", "Name" : "convDSPOpt_3_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "586", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "613", "SubInstance" : "conv3padding526715_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "755",
				"SubConnect" : [
					{"ID" : "613", "SubInstance" : "conv3padding526715_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "757",
				"SubConnect" : [
					{"ID" : "613", "SubInstance" : "conv3padding526715_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_5_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_inc_new_V_0"}]},
			{"Name" : "conv_5_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_bias_new_V_0"}]},
			{"Name" : "conv_5_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_inc_new_V_1"}]},
			{"Name" : "conv_5_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_bias_new_V_1"}]},
			{"Name" : "conv_5_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_2"}]},
			{"Name" : "conv_5_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_1"}]},
			{"Name" : "conv_5_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_0_0"}]},
			{"Name" : "conv_5_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_2"}]},
			{"Name" : "conv_5_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_1"}]},
			{"Name" : "conv_5_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "convDSPOpt_3_U0", "Port" : "conv_5_w_new_V_1_0"}]}]},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0", "Parent" : "612", "Child" : ["614", "615", "616", "618"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "755",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "757",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "586", "DependentChan" : "754",
				"SubConnect" : [
					{"ID" : "618", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "619", "DependentChan" : "642",
				"SubConnect" : [
					{"ID" : "616", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "619", "DependentChan" : "643",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "614", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.row_buffer_0_V_U", "Parent" : "613"},
	{"ID" : "615", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.row_buffer_1_V_U", "Parent" : "613"},
	{"ID" : "616", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_out_data_4_fu_149", "Parent" : "613", "Child" : ["617"],
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
	{"ID" : "617", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "616"},
	{"ID" : "618", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.conv3padding526715_U0.grp_stream_in_row_3_fu_162", "Parent" : "613",
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
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0", "Parent" : "612", "Child" : ["620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641"],
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
		"StartSource" : "613",
		"StartFifo" : "start_for_convDSPdmF_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "642",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "756",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "643",
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
	{"ID" : "620", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_inc_new_V_0_U", "Parent" : "619"},
	{"ID" : "621", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_bias_new_V_0_U", "Parent" : "619"},
	{"ID" : "622", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_inc_new_V_1_U", "Parent" : "619"},
	{"ID" : "623", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_bias_new_V_1_U", "Parent" : "619"},
	{"ID" : "624", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_2_U", "Parent" : "619"},
	{"ID" : "625", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_1_U", "Parent" : "619"},
	{"ID" : "626", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_0_0_U", "Parent" : "619"},
	{"ID" : "627", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_2_U", "Parent" : "619"},
	{"ID" : "628", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_1_U", "Parent" : "619"},
	{"ID" : "629", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.conv_5_w_new_V_1_0_U", "Parent" : "619"},
	{"ID" : "630", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U598", "Parent" : "619"},
	{"ID" : "631", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U599", "Parent" : "619"},
	{"ID" : "632", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U600", "Parent" : "619"},
	{"ID" : "633", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U601", "Parent" : "619"},
	{"ID" : "634", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U602", "Parent" : "619"},
	{"ID" : "635", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U603", "Parent" : "619"},
	{"ID" : "636", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U604", "Parent" : "619"},
	{"ID" : "637", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulbml_U605", "Parent" : "619"},
	{"ID" : "638", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U606", "Parent" : "619"},
	{"ID" : "639", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U607", "Parent" : "619"},
	{"ID" : "640", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U608", "Parent" : "619"},
	{"ID" : "641", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.convDSPOpt_3_U0.ultra_net_mul_mulcUB_U609", "Parent" : "619"},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.padding_out_V_V_U", "Parent" : "612"},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.reps_c_i_U", "Parent" : "612"},
	{"ID" : "644", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_6_U0.start_for_convDSPdmF_U", "Parent" : "612"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0", "Parent" : "2", "Child" : ["646", "652", "675", "676", "677"],
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
		"StartSource" : "612",
		"StartFifo" : "start_for_conv3x3ebO_U",
		"InputProcess" : [
			{"ID" : "646", "Name" : "conv3padding527716_U0"}],
		"OutputProcess" : [
			{"ID" : "646", "Name" : "conv3padding527716_U0"},
			{"ID" : "652", "Name" : "convDSPOpt_2_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "619", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "646", "SubInstance" : "conv3padding527716_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "757",
				"SubConnect" : [
					{"ID" : "646", "SubInstance" : "conv3padding527716_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "759",
				"SubConnect" : [
					{"ID" : "646", "SubInstance" : "conv3padding527716_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_6_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_inc_new_V_0"}]},
			{"Name" : "conv_6_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_bias_new_V_0"}]},
			{"Name" : "conv_6_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_inc_new_V_1"}]},
			{"Name" : "conv_6_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_bias_new_V_1"}]},
			{"Name" : "conv_6_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_2"}]},
			{"Name" : "conv_6_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_1"}]},
			{"Name" : "conv_6_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_0_0"}]},
			{"Name" : "conv_6_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_2"}]},
			{"Name" : "conv_6_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_1"}]},
			{"Name" : "conv_6_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "convDSPOpt_2_U0", "Port" : "conv_6_w_new_V_1_0"}]}]},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0", "Parent" : "645", "Child" : ["647", "648", "649", "651"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "757",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "759",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "619", "DependentChan" : "756",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "652", "DependentChan" : "675",
				"SubConnect" : [
					{"ID" : "649", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "652", "DependentChan" : "676",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "647", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.row_buffer_0_V_U", "Parent" : "646"},
	{"ID" : "648", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.row_buffer_1_V_U", "Parent" : "646"},
	{"ID" : "649", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_out_data_4_fu_149", "Parent" : "646", "Child" : ["650"],
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
	{"ID" : "650", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "649"},
	{"ID" : "651", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.conv3padding527716_U0.grp_stream_in_row_3_fu_162", "Parent" : "646",
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
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0", "Parent" : "645", "Child" : ["653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674"],
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
		"StartSource" : "646",
		"StartFifo" : "start_for_convDSPdzI_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "646", "DependentChan" : "675",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "758",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "646", "DependentChan" : "676",
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
	{"ID" : "653", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_inc_new_V_0_U", "Parent" : "652"},
	{"ID" : "654", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_bias_new_V_0_U", "Parent" : "652"},
	{"ID" : "655", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_inc_new_V_1_U", "Parent" : "652"},
	{"ID" : "656", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_bias_new_V_1_U", "Parent" : "652"},
	{"ID" : "657", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_2_U", "Parent" : "652"},
	{"ID" : "658", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_1_U", "Parent" : "652"},
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_0_0_U", "Parent" : "652"},
	{"ID" : "660", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_2_U", "Parent" : "652"},
	{"ID" : "661", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_1_U", "Parent" : "652"},
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.conv_6_w_new_V_1_0_U", "Parent" : "652"},
	{"ID" : "663", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U635", "Parent" : "652"},
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U636", "Parent" : "652"},
	{"ID" : "665", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U637", "Parent" : "652"},
	{"ID" : "666", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U638", "Parent" : "652"},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U639", "Parent" : "652"},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U640", "Parent" : "652"},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U641", "Parent" : "652"},
	{"ID" : "670", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulbml_U642", "Parent" : "652"},
	{"ID" : "671", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U643", "Parent" : "652"},
	{"ID" : "672", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U644", "Parent" : "652"},
	{"ID" : "673", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U645", "Parent" : "652"},
	{"ID" : "674", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.convDSPOpt_2_U0.ultra_net_mul_mulc8D_U646", "Parent" : "652"},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.padding_out_V_V_U", "Parent" : "645"},
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.reps_c_i_U", "Parent" : "645"},
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_5_U0.start_for_convDSPdzI_U", "Parent" : "645"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0", "Parent" : "2", "Child" : ["679", "685", "708", "709", "710"],
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
		"StartSource" : "645",
		"StartFifo" : "start_for_conv3x3ecO_U",
		"InputProcess" : [
			{"ID" : "679", "Name" : "conv3padding717_U0"}],
		"OutputProcess" : [
			{"ID" : "679", "Name" : "conv3padding717_U0"},
			{"ID" : "685", "Name" : "convDSPOpt_1_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "652", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "conv3padding717_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "760",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "646", "DependentChan" : "759",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "conv3padding717_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "761",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "conv3padding717_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_7_inc_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_inc_new_V_0"}]},
			{"Name" : "conv_7_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_bias_new_V_0"}]},
			{"Name" : "conv_7_inc_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_inc_new_V_1"}]},
			{"Name" : "conv_7_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_bias_new_V_1"}]},
			{"Name" : "conv_7_w_new_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_2"}]},
			{"Name" : "conv_7_w_new_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_1"}]},
			{"Name" : "conv_7_w_new_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_0_0"}]},
			{"Name" : "conv_7_w_new_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_2"}]},
			{"Name" : "conv_7_w_new_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_1"}]},
			{"Name" : "conv_7_w_new_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "convDSPOpt_1_U0", "Port" : "conv_7_w_new_V_1_0"}]}]},
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0", "Parent" : "678", "Child" : ["680", "681", "682", "684"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "646", "DependentChan" : "759",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "761",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "652", "DependentChan" : "758",
				"SubConnect" : [
					{"ID" : "684", "SubInstance" : "grp_stream_in_row_3_fu_162", "Port" : "in_V_V"}]},
			{"Name" : "padding_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "685", "DependentChan" : "708",
				"SubConnect" : [
					{"ID" : "682", "SubInstance" : "grp_stream_out_data_4_fu_149", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "685", "DependentChan" : "709",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "680", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.row_buffer_0_V_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.row_buffer_1_V_U", "Parent" : "679"},
	{"ID" : "682", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_out_data_4_fu_149", "Parent" : "679", "Child" : ["683"],
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
	{"ID" : "683", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_out_data_4_fu_149.ultra_net_mac_mulcyx_U585", "Parent" : "682"},
	{"ID" : "684", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.conv3padding717_U0.grp_stream_in_row_3_fu_162", "Parent" : "679",
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
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0", "Parent" : "678", "Child" : ["686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707"],
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
		"StartSource" : "679",
		"StartFifo" : "start_for_convDSPdNK_U",
		"Port" : [
			{"Name" : "vec_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "679", "DependentChan" : "708",
				"BlockSignal" : [
					{"Name" : "vec_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "760",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "679", "DependentChan" : "709",
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
	{"ID" : "686", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_inc_new_V_0_U", "Parent" : "685"},
	{"ID" : "687", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_bias_new_V_0_U", "Parent" : "685"},
	{"ID" : "688", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_inc_new_V_1_U", "Parent" : "685"},
	{"ID" : "689", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_bias_new_V_1_U", "Parent" : "685"},
	{"ID" : "690", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_2_U", "Parent" : "685"},
	{"ID" : "691", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_1_U", "Parent" : "685"},
	{"ID" : "692", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_0_0_U", "Parent" : "685"},
	{"ID" : "693", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_2_U", "Parent" : "685"},
	{"ID" : "694", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_1_U", "Parent" : "685"},
	{"ID" : "695", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.conv_7_w_new_V_1_0_U", "Parent" : "685"},
	{"ID" : "696", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U672", "Parent" : "685"},
	{"ID" : "697", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U673", "Parent" : "685"},
	{"ID" : "698", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U674", "Parent" : "685"},
	{"ID" : "699", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U675", "Parent" : "685"},
	{"ID" : "700", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U676", "Parent" : "685"},
	{"ID" : "701", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U677", "Parent" : "685"},
	{"ID" : "702", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U678", "Parent" : "685"},
	{"ID" : "703", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_mulbml_U679", "Parent" : "685"},
	{"ID" : "704", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U680", "Parent" : "685"},
	{"ID" : "705", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U681", "Parent" : "685"},
	{"ID" : "706", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U682", "Parent" : "685"},
	{"ID" : "707", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.convDSPOpt_1_U0.ultra_net_mul_muldMK_U683", "Parent" : "685"},
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.padding_out_V_V_U", "Parent" : "678"},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.reps_c_i_U", "Parent" : "678"},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv3x3_bn_act_DSPop_3_U0.start_for_convDSPdNK_U", "Parent" : "678"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0", "Parent" : "2", "Child" : ["712", "717", "725", "726", "727"],
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
		"StartSource" : "678",
		"StartFifo" : "start_for_conv1x1edO_U",
		"InputProcess" : [
			{"ID" : "712", "Name" : "conv1x1convert718_U0"}],
		"OutputProcess" : [
			{"ID" : "712", "Name" : "conv1x1convert718_U0"},
			{"ID" : "717", "Name" : "conv1x1DSP2_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "685", "DependentChan" : "760",
				"SubConnect" : [
					{"ID" : "712", "SubInstance" : "conv1x1convert718_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "728", "DependentChan" : "762",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "conv1x1DSP2_U0", "Port" : "out_V_V"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "679", "DependentChan" : "761",
				"SubConnect" : [
					{"ID" : "712", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "728", "DependentChan" : "763",
				"SubConnect" : [
					{"ID" : "712", "SubInstance" : "conv1x1convert718_U0", "Port" : "reps_out"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_0"}]},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_bias_new_V_1"}]},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_0"}]},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "conv1x1DSP2_U0", "Port" : "conv_8_w_new_V_1"}]}]},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1convert718_U0", "Parent" : "711", "Child" : ["713", "714", "715", "716"],
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
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "679", "DependentChan" : "761",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "728", "DependentChan" : "763",
				"BlockSignal" : [
					{"Name" : "reps_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "685", "DependentChan" : "760",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "grp_streamInOneRowTwoPix_fu_121", "Port" : "in_V_V"}]},
			{"Name" : "conv1in_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "725",
				"SubConnect" : [
					{"ID" : "716", "SubInstance" : "grp_streamOutOneRowTwoPi_fu_132", "Port" : "out_V_V"}]},
			{"Name" : "reps_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "726",
				"BlockSignal" : [
					{"Name" : "reps_c_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "713", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1convert718_U0.row_buffer_0_V_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1convert718_U0.row_buffer_1_V_U", "Parent" : "712"},
	{"ID" : "715", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1convert718_U0.grp_streamInOneRowTwoPix_fu_121", "Parent" : "712",
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
	{"ID" : "716", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1convert718_U0.grp_streamOutOneRowTwoPi_fu_132", "Parent" : "712",
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
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0", "Parent" : "711", "Child" : ["718", "719", "720", "721", "722", "724"],
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
		"StartSource" : "712",
		"StartFifo" : "start_for_conv1x1dWL_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "725",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "728", "DependentChan" : "762",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "726",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_8_bias_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_bias_new_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_8_w_new_V_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "718", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_bias_new_V_0_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_bias_new_V_1_U", "Parent" : "717"},
	{"ID" : "720", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_w_new_V_0_U", "Parent" : "717"},
	{"ID" : "721", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.conv_8_w_new_V_1_U", "Parent" : "717"},
	{"ID" : "722", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274", "Parent" : "717", "Child" : ["723"],
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
	{"ID" : "723", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.grp_simd_mac_DSP2_fu_274.ultra_net_ama_adddQK_U721", "Parent" : "722"},
	{"ID" : "724", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1x1DSP2_U0.ultra_net_mul_14ndVL_U735", "Parent" : "717"},
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.conv1in_V_V_U", "Parent" : "711"},
	{"ID" : "726", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.reps_c_i_U", "Parent" : "711"},
	{"ID" : "727", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv1x1_DSPopt_U0.start_for_conv1x1dWL_U", "Parent" : "711"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.AddLast_3600u_U0", "Parent" : "2", "Child" : ["729"],
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
		"StartSource" : "711",
		"StartFifo" : "start_for_AddLasteeO_U",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "717", "DependentChan" : "762",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "reps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "763",
				"BlockSignal" : [
					{"Name" : "reps_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.AddLast_3600u_U0.ultra_net_mul_32sdXL_U751", "Parent" : "728"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.in_stream_extract_V_s_U", "Parent" : "2"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c_U", "Parent" : "2"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.in_stream0_V_V_U", "Parent" : "2"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c1_U", "Parent" : "2"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.in_stream1_V_V_U", "Parent" : "2"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c2_U", "Parent" : "2"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.in_stream2_V_V_U", "Parent" : "2"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c3_U", "Parent" : "2"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_0_out_V_V_U", "Parent" : "2"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c4_U", "Parent" : "2"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.pool_0_out_V_V_U", "Parent" : "2"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c5_U", "Parent" : "2"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_1_out_V_V_U", "Parent" : "2"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c6_U", "Parent" : "2"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.pool_1_out_V_V_U", "Parent" : "2"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c7_U", "Parent" : "2"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_2_out_V_V_U", "Parent" : "2"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c8_U", "Parent" : "2"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.pool_2_out_V_V_U", "Parent" : "2"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c9_U", "Parent" : "2"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_3_out_V_V_U", "Parent" : "2"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c10_U", "Parent" : "2"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.pool_3_out_V_V_U", "Parent" : "2"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c11_U", "Parent" : "2"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_4_out_V_V_U", "Parent" : "2"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c12_U", "Parent" : "2"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_5_out_V_V_U", "Parent" : "2"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c13_U", "Parent" : "2"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_6_out_V_V_U", "Parent" : "2"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c14_U", "Parent" : "2"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_7_out_V_V_U", "Parent" : "2"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c15_U", "Parent" : "2"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.conv_8_out_V_V_U", "Parent" : "2"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.reps_c16_U", "Parent" : "2"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_StreamidYM_U", "Parent" : "2"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_StreamidZM_U", "Parent" : "2"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_resize_d0M_U", "Parent" : "2"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3d1M_U", "Parent" : "2"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_max_pood2M_U", "Parent" : "2"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3d3M_U", "Parent" : "2"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_max_pood4N_U", "Parent" : "2"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3d5N_U", "Parent" : "2"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_max_pood6N_U", "Parent" : "2"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3d7N_U", "Parent" : "2"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_max_pood8N_U", "Parent" : "2"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3d9N_U", "Parent" : "2"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3eaO_U", "Parent" : "2"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3ebO_U", "Parent" : "2"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv3x3ecO_U", "Parent" : "2"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_conv1x1edO_U", "Parent" : "2"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute2_fu_390.start_for_AddLasteeO_U", "Parent" : "2"},
	{"ID" : "781", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "782", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "783", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "784", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "785", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "786", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_V_keep_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ultra_net {
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_data_V { axis {  { in_r_TDATA in_data 0 64 } } }
	in_V_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	in_V_keep_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 }  { in_r_TKEEP in_data 0 8 } } }
	out_V_data_V { axis {  { out_r_TDATA out_data 1 64 } } }
	out_V_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_V_keep_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TKEEP out_data 1 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
