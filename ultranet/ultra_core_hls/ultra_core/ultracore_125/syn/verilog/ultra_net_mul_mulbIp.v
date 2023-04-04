
`timescale 1 ns / 1 ps

  module ultra_net_mul_mulbIp_DSP48_5(a, b, p);
input [12 - 1 : 0] a;
input signed [16 - 1 : 0] b;
output signed [28 - 1 : 0] p;

assign p = $signed ({1'b0, a}) * $signed (b);

endmodule
`timescale 1 ns / 1 ps
module ultra_net_mul_mulbIp(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



ultra_net_mul_mulbIp_DSP48_5 ultra_net_mul_mulbIp_DSP48_5_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

