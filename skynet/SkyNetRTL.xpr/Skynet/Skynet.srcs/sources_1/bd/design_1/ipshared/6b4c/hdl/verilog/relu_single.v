// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module relu_single (
        ap_ready,
        d_V,
        ap_return
);


output   ap_ready;
input  [8:0] d_V;
output  [7:0] ap_return;

wire   [0:0] tmp_fu_16_p3;
wire   [7:0] trunc_ln281_fu_24_p1;

assign ap_ready = 1'b1;

assign ap_return = ((tmp_fu_16_p3[0:0] === 1'b1) ? 8'd0 : trunc_ln281_fu_24_p1);

assign tmp_fu_16_p3 = d_V[32'd8];

assign trunc_ln281_fu_24_p1 = d_V[7:0];

endmodule //relu_single
