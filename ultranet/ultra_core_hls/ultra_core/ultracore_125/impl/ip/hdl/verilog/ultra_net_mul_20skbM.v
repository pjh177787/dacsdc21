// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module ultra_net_mul_20skbM_MulnS_3(clk, ce, a, b, p);
input clk;
input ce;
input signed [20 - 1 : 0] a;
input signed [28 - 1 : 0] b;
output[48 - 1 : 0] p;
reg signed [48 - 1 : 0] p;
wire signed [48 - 1 : 0] tmp_product;

assign tmp_product = $signed(a) * $signed(b);
always @ (posedge clk) begin
    if (ce) begin
        p <= tmp_product;
    end
end
endmodule
`timescale 1 ns / 1 ps
module ultra_net_mul_20skbM(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



ultra_net_mul_20skbM_MulnS_3 ultra_net_mul_20skbM_MulnS_3_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

