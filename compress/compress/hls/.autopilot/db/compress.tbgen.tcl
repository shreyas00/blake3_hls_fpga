set moduleName compress
set isTopModule 1
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
set C_modelName {compress}
set C_modelType { void 0 }
set C_modelArgList {
	{ data0 int 64 regular {axi_master 0}  }
	{ data1 int 64 regular {axi_master 0}  }
	{ data2 int 64 regular {axi_master 1}  }
	{ chaining_value int 64 regular {axi_slave 0}  }
	{ block_words int 64 regular {axi_slave 0}  }
	{ counter int 64 regular {axi_slave 0}  }
	{ block_len int 32 regular {axi_slave 0}  }
	{ flags int 32 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data0", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "chaining_value","offset": { "type": "dynamic","port_name": "chaining_value","bundle": "ctrl"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "data1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "block_words","offset": { "type": "dynamic","port_name": "block_words","bundle": "ctrl"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "data2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "ctrl"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "chaining_value", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "block_words", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "counter", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "block_len", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "flags", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_data0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_data0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_data0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_data0_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_data0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_data0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_data0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_data0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_data1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_data1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_data1_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_data1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_data1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_data1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_data1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_data1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_data1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_data1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_data1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_data1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_data1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_data1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_data1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_data1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_data2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_data2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_data2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_data2_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_data2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_data2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_data2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_data2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_data2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_data2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_data2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_data2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_data2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_data2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_data2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_data2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_data2_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_ctrl_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl", "role": "AWADDR" },"address":[{"name":"compress","role":"start","value":"0","valid_bit":"0"},{"name":"compress","role":"continue","value":"0","valid_bit":"4"},{"name":"compress","role":"auto_start","value":"0","valid_bit":"7"},{"name":"chaining_value","role":"data","value":"16"},{"name":"block_words","role":"data","value":"28"},{"name":"counter","role":"data","value":"40"},{"name":"block_len","role":"data","value":"52"},{"name":"flags","role":"data","value":"60"},{"name":"out_r","role":"data","value":"68"}] },
	{ "name": "s_axi_ctrl_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl", "role": "ARADDR" },"address":[{"name":"compress","role":"start","value":"0","valid_bit":"0"},{"name":"compress","role":"done","value":"0","valid_bit":"1"},{"name":"compress","role":"idle","value":"0","valid_bit":"2"},{"name":"compress","role":"ready","value":"0","valid_bit":"3"},{"name":"compress","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_data0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWID" }} , 
 	{ "name": "m_axi_data0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WVALID" }} , 
 	{ "name": "m_axi_data0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WREADY" }} , 
 	{ "name": "m_axi_data0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data0", "role": "WDATA" }} , 
 	{ "name": "m_axi_data0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WLAST" }} , 
 	{ "name": "m_axi_data0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WID" }} , 
 	{ "name": "m_axi_data0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "WUSER" }} , 
 	{ "name": "m_axi_data0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARID" }} , 
 	{ "name": "m_axi_data0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RVALID" }} , 
 	{ "name": "m_axi_data0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RREADY" }} , 
 	{ "name": "m_axi_data0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data0", "role": "RDATA" }} , 
 	{ "name": "m_axi_data0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RLAST" }} , 
 	{ "name": "m_axi_data0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RID" }} , 
 	{ "name": "m_axi_data0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "RUSER" }} , 
 	{ "name": "m_axi_data0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "RRESP" }} , 
 	{ "name": "m_axi_data0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BVALID" }} , 
 	{ "name": "m_axi_data0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BREADY" }} , 
 	{ "name": "m_axi_data0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data0", "role": "BRESP" }} , 
 	{ "name": "m_axi_data0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BID" }} , 
 	{ "name": "m_axi_data0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data0", "role": "BUSER" }} , 
 	{ "name": "m_axi_data1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWID" }} , 
 	{ "name": "m_axi_data1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WVALID" }} , 
 	{ "name": "m_axi_data1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WREADY" }} , 
 	{ "name": "m_axi_data1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data1", "role": "WDATA" }} , 
 	{ "name": "m_axi_data1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WLAST" }} , 
 	{ "name": "m_axi_data1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WID" }} , 
 	{ "name": "m_axi_data1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "WUSER" }} , 
 	{ "name": "m_axi_data1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARID" }} , 
 	{ "name": "m_axi_data1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RVALID" }} , 
 	{ "name": "m_axi_data1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RREADY" }} , 
 	{ "name": "m_axi_data1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data1", "role": "RDATA" }} , 
 	{ "name": "m_axi_data1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RLAST" }} , 
 	{ "name": "m_axi_data1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RID" }} , 
 	{ "name": "m_axi_data1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "RUSER" }} , 
 	{ "name": "m_axi_data1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "RRESP" }} , 
 	{ "name": "m_axi_data1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BVALID" }} , 
 	{ "name": "m_axi_data1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BREADY" }} , 
 	{ "name": "m_axi_data1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data1", "role": "BRESP" }} , 
 	{ "name": "m_axi_data1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BID" }} , 
 	{ "name": "m_axi_data1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "BUSER" }} , 
 	{ "name": "m_axi_data2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWID" }} , 
 	{ "name": "m_axi_data2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WVALID" }} , 
 	{ "name": "m_axi_data2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WREADY" }} , 
 	{ "name": "m_axi_data2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data2", "role": "WDATA" }} , 
 	{ "name": "m_axi_data2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WLAST" }} , 
 	{ "name": "m_axi_data2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WID" }} , 
 	{ "name": "m_axi_data2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "WUSER" }} , 
 	{ "name": "m_axi_data2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARID" }} , 
 	{ "name": "m_axi_data2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RVALID" }} , 
 	{ "name": "m_axi_data2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RREADY" }} , 
 	{ "name": "m_axi_data2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data2", "role": "RDATA" }} , 
 	{ "name": "m_axi_data2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RLAST" }} , 
 	{ "name": "m_axi_data2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RID" }} , 
 	{ "name": "m_axi_data2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "RUSER" }} , 
 	{ "name": "m_axi_data2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "RRESP" }} , 
 	{ "name": "m_axi_data2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BVALID" }} , 
 	{ "name": "m_axi_data2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BREADY" }} , 
 	{ "name": "m_axi_data2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data2", "role": "BRESP" }} , 
 	{ "name": "m_axi_data2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BID" }} , 
 	{ "name": "m_axi_data2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "7", "8", "9"],
		"CDFG" : "compress",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "261", "EstimateLatencyMax" : "261",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "data0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "data1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "data1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "data2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "data2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "data2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "chaining_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_words", "Type" : "None", "Direction" : "I"},
			{"Name" : "counter", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "flags", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_round_function_fu_242", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_round_function_fu_242.grp_rotate_right_fu_270", "Parent" : "1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_round_function_fu_242.grp_rotate_right_fu_277", "Parent" : "1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_round_function_fu_242.grp_rotate_right_fu_284", "Parent" : "1",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_round_function_fu_242.grp_rotate_right_fu_291", "Parent" : "1",
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
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_s_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data0_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data1_m_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data2_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compress {
		data0 {Type I LastRead 13 FirstWrite -1}
		data1 {Type I LastRead 17 FirstWrite -1}
		data2 {Type O LastRead 40 FirstWrite 32}
		chaining_value {Type I LastRead 0 FirstWrite -1}
		block_words {Type I LastRead 0 FirstWrite -1}
		counter {Type I LastRead 0 FirstWrite -1}
		block_len {Type I LastRead 0 FirstWrite -1}
		flags {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "261", "Max" : "261"}
	, {"Name" : "Interval", "Min" : "262", "Max" : "262"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data0 { m_axi {  { m_axi_data0_AWVALID VALID 1 1 }  { m_axi_data0_AWREADY READY 0 1 }  { m_axi_data0_AWADDR ADDR 1 64 }  { m_axi_data0_AWID ID 1 1 }  { m_axi_data0_AWLEN SIZE 1 8 }  { m_axi_data0_AWSIZE BURST 1 3 }  { m_axi_data0_AWBURST LOCK 1 2 }  { m_axi_data0_AWLOCK CACHE 1 2 }  { m_axi_data0_AWCACHE PROT 1 4 }  { m_axi_data0_AWPROT QOS 1 3 }  { m_axi_data0_AWQOS REGION 1 4 }  { m_axi_data0_AWREGION USER 1 4 }  { m_axi_data0_AWUSER DATA 1 1 }  { m_axi_data0_WVALID VALID 1 1 }  { m_axi_data0_WREADY READY 0 1 }  { m_axi_data0_WDATA FIFONUM 1 64 }  { m_axi_data0_WSTRB STRB 1 8 }  { m_axi_data0_WLAST LAST 1 1 }  { m_axi_data0_WID ID 1 1 }  { m_axi_data0_WUSER DATA 1 1 }  { m_axi_data0_ARVALID VALID 1 1 }  { m_axi_data0_ARREADY READY 0 1 }  { m_axi_data0_ARADDR ADDR 1 64 }  { m_axi_data0_ARID ID 1 1 }  { m_axi_data0_ARLEN SIZE 1 8 }  { m_axi_data0_ARSIZE BURST 1 3 }  { m_axi_data0_ARBURST LOCK 1 2 }  { m_axi_data0_ARLOCK CACHE 1 2 }  { m_axi_data0_ARCACHE PROT 1 4 }  { m_axi_data0_ARPROT QOS 1 3 }  { m_axi_data0_ARQOS REGION 1 4 }  { m_axi_data0_ARREGION USER 1 4 }  { m_axi_data0_ARUSER DATA 1 1 }  { m_axi_data0_RVALID VALID 0 1 }  { m_axi_data0_RREADY READY 1 1 }  { m_axi_data0_RDATA FIFONUM 0 64 }  { m_axi_data0_RLAST LAST 0 1 }  { m_axi_data0_RID ID 0 1 }  { m_axi_data0_RUSER DATA 0 1 }  { m_axi_data0_RRESP RESP 0 2 }  { m_axi_data0_BVALID VALID 0 1 }  { m_axi_data0_BREADY READY 1 1 }  { m_axi_data0_BRESP RESP 0 2 }  { m_axi_data0_BID ID 0 1 }  { m_axi_data0_BUSER DATA 0 1 } } }
	data1 { m_axi {  { m_axi_data1_AWVALID VALID 1 1 }  { m_axi_data1_AWREADY READY 0 1 }  { m_axi_data1_AWADDR ADDR 1 64 }  { m_axi_data1_AWID ID 1 1 }  { m_axi_data1_AWLEN SIZE 1 8 }  { m_axi_data1_AWSIZE BURST 1 3 }  { m_axi_data1_AWBURST LOCK 1 2 }  { m_axi_data1_AWLOCK CACHE 1 2 }  { m_axi_data1_AWCACHE PROT 1 4 }  { m_axi_data1_AWPROT QOS 1 3 }  { m_axi_data1_AWQOS REGION 1 4 }  { m_axi_data1_AWREGION USER 1 4 }  { m_axi_data1_AWUSER DATA 1 1 }  { m_axi_data1_WVALID VALID 1 1 }  { m_axi_data1_WREADY READY 0 1 }  { m_axi_data1_WDATA FIFONUM 1 64 }  { m_axi_data1_WSTRB STRB 1 8 }  { m_axi_data1_WLAST LAST 1 1 }  { m_axi_data1_WID ID 1 1 }  { m_axi_data1_WUSER DATA 1 1 }  { m_axi_data1_ARVALID VALID 1 1 }  { m_axi_data1_ARREADY READY 0 1 }  { m_axi_data1_ARADDR ADDR 1 64 }  { m_axi_data1_ARID ID 1 1 }  { m_axi_data1_ARLEN SIZE 1 8 }  { m_axi_data1_ARSIZE BURST 1 3 }  { m_axi_data1_ARBURST LOCK 1 2 }  { m_axi_data1_ARLOCK CACHE 1 2 }  { m_axi_data1_ARCACHE PROT 1 4 }  { m_axi_data1_ARPROT QOS 1 3 }  { m_axi_data1_ARQOS REGION 1 4 }  { m_axi_data1_ARREGION USER 1 4 }  { m_axi_data1_ARUSER DATA 1 1 }  { m_axi_data1_RVALID VALID 0 1 }  { m_axi_data1_RREADY READY 1 1 }  { m_axi_data1_RDATA FIFONUM 0 64 }  { m_axi_data1_RLAST LAST 0 1 }  { m_axi_data1_RID ID 0 1 }  { m_axi_data1_RUSER DATA 0 1 }  { m_axi_data1_RRESP RESP 0 2 }  { m_axi_data1_BVALID VALID 0 1 }  { m_axi_data1_BREADY READY 1 1 }  { m_axi_data1_BRESP RESP 0 2 }  { m_axi_data1_BID ID 0 1 }  { m_axi_data1_BUSER DATA 0 1 } } }
	data2 { m_axi {  { m_axi_data2_AWVALID VALID 1 1 }  { m_axi_data2_AWREADY READY 0 1 }  { m_axi_data2_AWADDR ADDR 1 64 }  { m_axi_data2_AWID ID 1 1 }  { m_axi_data2_AWLEN SIZE 1 8 }  { m_axi_data2_AWSIZE BURST 1 3 }  { m_axi_data2_AWBURST LOCK 1 2 }  { m_axi_data2_AWLOCK CACHE 1 2 }  { m_axi_data2_AWCACHE PROT 1 4 }  { m_axi_data2_AWPROT QOS 1 3 }  { m_axi_data2_AWQOS REGION 1 4 }  { m_axi_data2_AWREGION USER 1 4 }  { m_axi_data2_AWUSER DATA 1 1 }  { m_axi_data2_WVALID VALID 1 1 }  { m_axi_data2_WREADY READY 0 1 }  { m_axi_data2_WDATA FIFONUM 1 64 }  { m_axi_data2_WSTRB STRB 1 8 }  { m_axi_data2_WLAST LAST 1 1 }  { m_axi_data2_WID ID 1 1 }  { m_axi_data2_WUSER DATA 1 1 }  { m_axi_data2_ARVALID VALID 1 1 }  { m_axi_data2_ARREADY READY 0 1 }  { m_axi_data2_ARADDR ADDR 1 64 }  { m_axi_data2_ARID ID 1 1 }  { m_axi_data2_ARLEN SIZE 1 8 }  { m_axi_data2_ARSIZE BURST 1 3 }  { m_axi_data2_ARBURST LOCK 1 2 }  { m_axi_data2_ARLOCK CACHE 1 2 }  { m_axi_data2_ARCACHE PROT 1 4 }  { m_axi_data2_ARPROT QOS 1 3 }  { m_axi_data2_ARQOS REGION 1 4 }  { m_axi_data2_ARREGION USER 1 4 }  { m_axi_data2_ARUSER DATA 1 1 }  { m_axi_data2_RVALID VALID 0 1 }  { m_axi_data2_RREADY READY 1 1 }  { m_axi_data2_RDATA FIFONUM 0 64 }  { m_axi_data2_RLAST LAST 0 1 }  { m_axi_data2_RID ID 0 1 }  { m_axi_data2_RUSER DATA 0 1 }  { m_axi_data2_RRESP RESP 0 2 }  { m_axi_data2_BVALID VALID 0 1 }  { m_axi_data2_BREADY READY 1 1 }  { m_axi_data2_BRESP RESP 0 2 }  { m_axi_data2_BID ID 0 1 }  { m_axi_data2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict data0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict data1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict data2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ data0 1 }
	{ data1 1 }
	{ data2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ data0 1 }
	{ data1 1 }
	{ data2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
