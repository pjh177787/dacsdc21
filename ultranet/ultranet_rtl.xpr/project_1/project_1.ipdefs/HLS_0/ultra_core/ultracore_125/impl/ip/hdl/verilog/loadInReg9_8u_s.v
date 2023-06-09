// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module loadInReg9_8u_s (
        ap_ready,
        inData_V,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8
);


output   ap_ready;
input  [71:0] inData_V;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;

wire   [7:0] trunc_ln647_fu_54_p1;

assign ap_ready = 1'b1;

assign ap_return_0 = trunc_ln647_fu_54_p1;

assign ap_return_1 = {{inData_V[15:8]}};

assign ap_return_2 = {{inData_V[23:16]}};

assign ap_return_3 = {{inData_V[31:24]}};

assign ap_return_4 = {{inData_V[39:32]}};

assign ap_return_5 = {{inData_V[47:40]}};

assign ap_return_6 = {{inData_V[55:48]}};

assign ap_return_7 = {{inData_V[63:56]}};

assign ap_return_8 = {{inData_V[71:64]}};

assign trunc_ln647_fu_54_p1 = inData_V[7:0];

endmodule //loadInReg9_8u_s
