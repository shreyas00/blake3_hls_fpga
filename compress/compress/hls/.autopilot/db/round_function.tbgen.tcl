set moduleName round_function
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {round_function}
set C_modelType { int 512 }
set C_modelArgList {
	{ state_0_read int 32 regular  }
	{ state_1_read int 32 regular  }
	{ state_2_read int 32 regular  }
	{ state_3_read int 32 regular  }
	{ state_4_read int 32 regular  }
	{ state_5_read int 32 regular  }
	{ state_6_read int 32 regular  }
	{ state_7_read int 32 regular  }
	{ state_8_read int 32 regular  }
	{ state_9_read int 32 regular  }
	{ state_10_read int 32 regular  }
	{ state_11_read int 32 regular  }
	{ state_1213_read int 32 regular  }
	{ state_13_read int 32 regular  }
	{ state_14_read int 32 regular  }
	{ state_15_read int 32 regular  }
	{ m_0_val int 32 regular  }
	{ m_1_val int 32 regular  }
	{ m_2_val int 32 regular  }
	{ m_3_val int 32 regular  }
	{ m_4_val int 32 regular  }
	{ m_5_val int 32 regular  }
	{ m_6_val int 32 regular  }
	{ m_7_val int 32 regular  }
	{ m_8_val int 32 regular  }
	{ m_9_val int 32 regular  }
	{ m_10_val int 32 regular  }
	{ m_11_val int 32 regular  }
	{ m_12_val int 32 regular  }
	{ m_13_val int 32 regular  }
	{ m_14_val int 32 regular  }
	{ m_15_val int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "state_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_10_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_11_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_1213_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_13_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_14_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_15_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_0_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_1_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_2_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_3_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_4_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_5_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_6_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_7_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_8_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_9_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_10_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_11_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_12_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_13_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_14_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_15_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_0_read sc_in sc_lv 32 signal 0 } 
	{ state_1_read sc_in sc_lv 32 signal 1 } 
	{ state_2_read sc_in sc_lv 32 signal 2 } 
	{ state_3_read sc_in sc_lv 32 signal 3 } 
	{ state_4_read sc_in sc_lv 32 signal 4 } 
	{ state_5_read sc_in sc_lv 32 signal 5 } 
	{ state_6_read sc_in sc_lv 32 signal 6 } 
	{ state_7_read sc_in sc_lv 32 signal 7 } 
	{ state_8_read sc_in sc_lv 32 signal 8 } 
	{ state_9_read sc_in sc_lv 32 signal 9 } 
	{ state_10_read sc_in sc_lv 32 signal 10 } 
	{ state_11_read sc_in sc_lv 32 signal 11 } 
	{ state_1213_read sc_in sc_lv 32 signal 12 } 
	{ state_13_read sc_in sc_lv 32 signal 13 } 
	{ state_14_read sc_in sc_lv 32 signal 14 } 
	{ state_15_read sc_in sc_lv 32 signal 15 } 
	{ m_0_val sc_in sc_lv 32 signal 16 } 
	{ m_1_val sc_in sc_lv 32 signal 17 } 
	{ m_2_val sc_in sc_lv 32 signal 18 } 
	{ m_3_val sc_in sc_lv 32 signal 19 } 
	{ m_4_val sc_in sc_lv 32 signal 20 } 
	{ m_5_val sc_in sc_lv 32 signal 21 } 
	{ m_6_val sc_in sc_lv 32 signal 22 } 
	{ m_7_val sc_in sc_lv 32 signal 23 } 
	{ m_8_val sc_in sc_lv 32 signal 24 } 
	{ m_9_val sc_in sc_lv 32 signal 25 } 
	{ m_10_val sc_in sc_lv 32 signal 26 } 
	{ m_11_val sc_in sc_lv 32 signal 27 } 
	{ m_12_val sc_in sc_lv 32 signal 28 } 
	{ m_13_val sc_in sc_lv 32 signal 29 } 
	{ m_14_val sc_in sc_lv 32 signal 30 } 
	{ m_15_val sc_in sc_lv 32 signal 31 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_0_read", "role": "default" }} , 
 	{ "name": "state_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_1_read", "role": "default" }} , 
 	{ "name": "state_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_2_read", "role": "default" }} , 
 	{ "name": "state_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_3_read", "role": "default" }} , 
 	{ "name": "state_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_4_read", "role": "default" }} , 
 	{ "name": "state_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_5_read", "role": "default" }} , 
 	{ "name": "state_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_6_read", "role": "default" }} , 
 	{ "name": "state_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_7_read", "role": "default" }} , 
 	{ "name": "state_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_8_read", "role": "default" }} , 
 	{ "name": "state_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_9_read", "role": "default" }} , 
 	{ "name": "state_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_10_read", "role": "default" }} , 
 	{ "name": "state_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_11_read", "role": "default" }} , 
 	{ "name": "state_1213_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_1213_read", "role": "default" }} , 
 	{ "name": "state_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_13_read", "role": "default" }} , 
 	{ "name": "state_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_14_read", "role": "default" }} , 
 	{ "name": "state_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_15_read", "role": "default" }} , 
 	{ "name": "m_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_0_val", "role": "default" }} , 
 	{ "name": "m_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_1_val", "role": "default" }} , 
 	{ "name": "m_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_2_val", "role": "default" }} , 
 	{ "name": "m_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_3_val", "role": "default" }} , 
 	{ "name": "m_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_4_val", "role": "default" }} , 
 	{ "name": "m_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_5_val", "role": "default" }} , 
 	{ "name": "m_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_6_val", "role": "default" }} , 
 	{ "name": "m_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_7_val", "role": "default" }} , 
 	{ "name": "m_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_8_val", "role": "default" }} , 
 	{ "name": "m_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_9_val", "role": "default" }} , 
 	{ "name": "m_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_10_val", "role": "default" }} , 
 	{ "name": "m_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_11_val", "role": "default" }} , 
 	{ "name": "m_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_12_val", "role": "default" }} , 
 	{ "name": "m_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_13_val", "role": "default" }} , 
 	{ "name": "m_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_14_val", "role": "default" }} , 
 	{ "name": "m_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_15_val", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "round_function",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1213_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_15_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotate_right_fu_270", "Parent" : "0",
		"CDFG" : "rotate_right",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotate_right_fu_277", "Parent" : "0",
		"CDFG" : "rotate_right",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotate_right_fu_284", "Parent" : "0",
		"CDFG" : "rotate_right",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rotate_right_fu_291", "Parent" : "0",
		"CDFG" : "rotate_right",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	round_function {
		state_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_read {Type I LastRead 0 FirstWrite -1}
		state_4_read {Type I LastRead 0 FirstWrite -1}
		state_5_read {Type I LastRead 0 FirstWrite -1}
		state_6_read {Type I LastRead 0 FirstWrite -1}
		state_7_read {Type I LastRead 0 FirstWrite -1}
		state_8_read {Type I LastRead 3 FirstWrite -1}
		state_9_read {Type I LastRead 3 FirstWrite -1}
		state_10_read {Type I LastRead 3 FirstWrite -1}
		state_11_read {Type I LastRead 3 FirstWrite -1}
		state_1213_read {Type I LastRead 1 FirstWrite -1}
		state_13_read {Type I LastRead 1 FirstWrite -1}
		state_14_read {Type I LastRead 1 FirstWrite -1}
		state_15_read {Type I LastRead 1 FirstWrite -1}
		m_0_val {Type I LastRead 0 FirstWrite -1}
		m_1_val {Type I LastRead 6 FirstWrite -1}
		m_2_val {Type I LastRead 0 FirstWrite -1}
		m_3_val {Type I LastRead 6 FirstWrite -1}
		m_4_val {Type I LastRead 0 FirstWrite -1}
		m_5_val {Type I LastRead 6 FirstWrite -1}
		m_6_val {Type I LastRead 0 FirstWrite -1}
		m_7_val {Type I LastRead 6 FirstWrite -1}
		m_8_val {Type I LastRead 12 FirstWrite -1}
		m_9_val {Type I LastRead 18 FirstWrite -1}
		m_10_val {Type I LastRead 12 FirstWrite -1}
		m_11_val {Type I LastRead 18 FirstWrite -1}
		m_12_val {Type I LastRead 12 FirstWrite -1}
		m_13_val {Type I LastRead 18 FirstWrite -1}
		m_14_val {Type I LastRead 12 FirstWrite -1}
		m_15_val {Type I LastRead 18 FirstWrite -1}}
	rotate_right {
		x {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	rotate_right {
		x {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	rotate_right {
		x {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	rotate_right {
		x {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_0_read { ap_none {  { state_0_read in_data 0 32 } } }
	state_1_read { ap_none {  { state_1_read in_data 0 32 } } }
	state_2_read { ap_none {  { state_2_read in_data 0 32 } } }
	state_3_read { ap_none {  { state_3_read in_data 0 32 } } }
	state_4_read { ap_none {  { state_4_read in_data 0 32 } } }
	state_5_read { ap_none {  { state_5_read in_data 0 32 } } }
	state_6_read { ap_none {  { state_6_read in_data 0 32 } } }
	state_7_read { ap_none {  { state_7_read in_data 0 32 } } }
	state_8_read { ap_none {  { state_8_read in_data 0 32 } } }
	state_9_read { ap_none {  { state_9_read in_data 0 32 } } }
	state_10_read { ap_none {  { state_10_read in_data 0 32 } } }
	state_11_read { ap_none {  { state_11_read in_data 0 32 } } }
	state_1213_read { ap_none {  { state_1213_read in_data 0 32 } } }
	state_13_read { ap_none {  { state_13_read in_data 0 32 } } }
	state_14_read { ap_none {  { state_14_read in_data 0 32 } } }
	state_15_read { ap_none {  { state_15_read in_data 0 32 } } }
	m_0_val { ap_none {  { m_0_val in_data 0 32 } } }
	m_1_val { ap_none {  { m_1_val in_data 0 32 } } }
	m_2_val { ap_none {  { m_2_val in_data 0 32 } } }
	m_3_val { ap_none {  { m_3_val in_data 0 32 } } }
	m_4_val { ap_none {  { m_4_val in_data 0 32 } } }
	m_5_val { ap_none {  { m_5_val in_data 0 32 } } }
	m_6_val { ap_none {  { m_6_val in_data 0 32 } } }
	m_7_val { ap_none {  { m_7_val in_data 0 32 } } }
	m_8_val { ap_none {  { m_8_val in_data 0 32 } } }
	m_9_val { ap_none {  { m_9_val in_data 0 32 } } }
	m_10_val { ap_none {  { m_10_val in_data 0 32 } } }
	m_11_val { ap_none {  { m_11_val in_data 0 32 } } }
	m_12_val { ap_none {  { m_12_val in_data 0 32 } } }
	m_13_val { ap_none {  { m_13_val in_data 0 32 } } }
	m_14_val { ap_none {  { m_14_val in_data 0 32 } } }
	m_15_val { ap_none {  { m_15_val in_data 0 32 } } }
}
