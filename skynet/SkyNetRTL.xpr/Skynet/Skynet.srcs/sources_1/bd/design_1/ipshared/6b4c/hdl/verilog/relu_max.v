// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module relu_max (
        ap_ready,
        a_V,
        b_V,
        c_V,
        d_V,
        ap_return
);


output   ap_ready;
input  [8:0] a_V;
input  [8:0] b_V;
input  [8:0] c_V;
input  [8:0] d_V;
output  [7:0] ap_return;

wire   [0:0] tmp_fu_46_p3;
wire   [7:0] trunc_ln281_fu_54_p1;
wire   [0:0] tmp_1_fu_66_p3;
wire   [7:0] trunc_ln281_1_fu_74_p1;
wire   [0:0] icmp_ln1494_fu_40_p2;
wire   [7:0] t1_V_fu_58_p3;
wire   [7:0] t1_V_1_fu_78_p3;
wire   [0:0] tmp_2_fu_100_p3;
wire   [7:0] trunc_ln281_2_fu_108_p1;
wire   [0:0] tmp_3_fu_120_p3;
wire   [7:0] trunc_ln281_3_fu_128_p1;
wire   [0:0] icmp_ln1494_1_fu_94_p2;
wire   [7:0] t2_V_fu_112_p3;
wire   [7:0] t2_V_1_fu_132_p3;
wire   [7:0] t1_V_2_fu_86_p3;
wire   [7:0] t2_V_2_fu_140_p3;
wire   [0:0] icmp_ln1494_2_fu_148_p2;

assign ap_ready = 1'b1;

assign ap_return = ((icmp_ln1494_2_fu_148_p2[0:0] === 1'b1) ? t1_V_2_fu_86_p3 : t2_V_2_fu_140_p3);

assign icmp_ln1494_1_fu_94_p2 = (($signed(c_V) > $signed(d_V)) ? 1'b1 : 1'b0);

assign icmp_ln1494_2_fu_148_p2 = ((t1_V_2_fu_86_p3 > t2_V_2_fu_140_p3) ? 1'b1 : 1'b0);

assign icmp_ln1494_fu_40_p2 = (($signed(a_V) > $signed(b_V)) ? 1'b1 : 1'b0);

assign t1_V_1_fu_78_p3 = ((tmp_1_fu_66_p3[0:0] === 1'b1) ? 8'd0 : trunc_ln281_1_fu_74_p1);

assign t1_V_2_fu_86_p3 = ((icmp_ln1494_fu_40_p2[0:0] === 1'b1) ? t1_V_fu_58_p3 : t1_V_1_fu_78_p3);

assign t1_V_fu_58_p3 = ((tmp_fu_46_p3[0:0] === 1'b1) ? 8'd0 : trunc_ln281_fu_54_p1);

assign t2_V_1_fu_132_p3 = ((tmp_3_fu_120_p3[0:0] === 1'b1) ? 8'd0 : trunc_ln281_3_fu_128_p1);

assign t2_V_2_fu_140_p3 = ((icmp_ln1494_1_fu_94_p2[0:0] === 1'b1) ? t2_V_fu_112_p3 : t2_V_1_fu_132_p3);

assign t2_V_fu_112_p3 = ((tmp_2_fu_100_p3[0:0] === 1'b1) ? 8'd0 : trunc_ln281_2_fu_108_p1);

assign tmp_1_fu_66_p3 = b_V[32'd8];

assign tmp_2_fu_100_p3 = c_V[32'd8];

assign tmp_3_fu_120_p3 = d_V[32'd8];

assign tmp_fu_46_p3 = a_V[32'd8];

assign trunc_ln281_1_fu_74_p1 = b_V[7:0];

assign trunc_ln281_2_fu_108_p1 = c_V[7:0];

assign trunc_ln281_3_fu_128_p1 = d_V[7:0];

assign trunc_ln281_fu_54_p1 = a_V[7:0];

endmodule //relu_max