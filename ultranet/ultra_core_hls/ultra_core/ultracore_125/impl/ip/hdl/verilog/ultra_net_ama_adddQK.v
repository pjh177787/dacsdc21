// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module ultra_net_ama_adddQK_DSP48_14 (
    input  [22 - 1:0] in0,
    input  [8 - 1:0] in1,
    input  [4 - 1:0] in2,
    input  [27 - 1:0] in3,
    output [27 - 1:0]  dout);


wire signed [18 - 1:0]     b;
wire signed [27 - 1:0]     a;
wire signed [27 - 1:0]     d;
wire signed [48 - 1:0]     c;
wire signed [45 - 1:0]     m;
wire signed [48 - 1:0]     p;
wire signed [27 - 1:0]     ad;

assign a = $signed(in0);
assign d = $signed(in1);
assign b = $unsigned(in2);
assign c = $unsigned(in3);

assign ad = a + d;
assign m  = ad * b;
assign p  = m + c;

assign dout = p;

endmodule
`timescale 1 ns / 1 ps
module ultra_net_ama_adddQK(
    din0,
    din1,
    din2,
    din3,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter din3_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
input[din3_WIDTH - 1:0] din3;
output[dout_WIDTH - 1:0] dout;



ultra_net_ama_adddQK_DSP48_14 ultra_net_ama_adddQK_DSP48_14_U(
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .in3( din3 ),
    .dout( dout ));

endmodule

