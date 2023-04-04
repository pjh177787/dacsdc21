// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 10 21:57:39 2022
// Host        : aperture-ubuntu running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/delta/Descartes/Git/DACSDC2021_my/RTL/project_1.srcs/sources_1/bd/ultranet_bd/ip/ultranet_bd_ultra_net_0_0/ultranet_bd_ultra_net_0_0_stub.v
// Design      : ultranet_bd_ultra_net_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ultra_net,Vivado 2019.2" *)
module ultranet_bd_ultra_net_0_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, in_r_TVALID, in_r_TREADY, in_r_TDATA, 
  in_r_TKEEP, in_r_TLAST, out_r_TVALID, out_r_TREADY, out_r_TDATA, out_r_TKEEP, out_r_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[4:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[4:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,in_r_TVALID,in_r_TREADY,in_r_TDATA[63:0],in_r_TKEEP[7:0],in_r_TLAST[0:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[63:0],out_r_TKEEP[7:0],out_r_TLAST[0:0]" */;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input in_r_TVALID;
  output in_r_TREADY;
  input [63:0]in_r_TDATA;
  input [7:0]in_r_TKEEP;
  input [0:0]in_r_TLAST;
  output out_r_TVALID;
  input out_r_TREADY;
  output [63:0]out_r_TDATA;
  output [7:0]out_r_TKEEP;
  output [0:0]out_r_TLAST;
endmodule
