// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv1x1_DSPopt (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write,
        reps_dout,
        reps_empty_n,
        reps_read,
        reps_out_din,
        reps_out_full_n,
        reps_out_write,
        ap_clk,
        ap_rst,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [15:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [63:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
input  [31:0] reps_dout;
input   reps_empty_n;
output   reps_read;
output  [31:0] reps_out_din;
input   reps_out_full_n;
output   reps_out_write;
input   ap_clk;
input   ap_rst;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    conv1x1convert718_U0_ap_start;
wire    conv1x1convert718_U0_ap_done;
wire    conv1x1convert718_U0_ap_continue;
wire    conv1x1convert718_U0_ap_idle;
wire    conv1x1convert718_U0_ap_ready;
wire    conv1x1convert718_U0_start_out;
wire    conv1x1convert718_U0_start_write;
wire    conv1x1convert718_U0_reps_read;
wire   [31:0] conv1x1convert718_U0_reps_out_din;
wire    conv1x1convert718_U0_reps_out_write;
wire    conv1x1convert718_U0_in_V_V_read;
wire   [15:0] conv1x1convert718_U0_conv1in_V_V_din;
wire    conv1x1convert718_U0_conv1in_V_V_write;
wire   [31:0] conv1x1convert718_U0_reps_c_i_din;
wire    conv1x1convert718_U0_reps_c_i_write;
wire    ap_sync_continue;
wire    conv1x1DSP2_U0_ap_start;
wire    conv1x1DSP2_U0_ap_done;
wire    conv1x1DSP2_U0_ap_continue;
wire    conv1x1DSP2_U0_ap_idle;
wire    conv1x1DSP2_U0_ap_ready;
wire    conv1x1DSP2_U0_in_V_V_read;
wire   [63:0] conv1x1DSP2_U0_out_V_V_din;
wire    conv1x1DSP2_U0_out_V_V_write;
wire    conv1x1DSP2_U0_reps_read;
wire    conv1in_V_V_full_n;
wire   [15:0] conv1in_V_V_dout;
wire    conv1in_V_V_empty_n;
wire    reps_c_i_full_n;
wire   [31:0] reps_c_i_dout;
wire    reps_c_i_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_conv1x1DSP2_U0_din;
wire    start_for_conv1x1DSP2_U0_full_n;
wire   [0:0] start_for_conv1x1DSP2_U0_dout;
wire    start_for_conv1x1DSP2_U0_empty_n;
wire    conv1x1DSP2_U0_start_full_n;
wire    conv1x1DSP2_U0_start_write;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
end

conv1x1convert718 conv1x1convert718_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(conv1x1convert718_U0_ap_start),
    .start_full_n(start_for_conv1x1DSP2_U0_full_n),
    .ap_done(conv1x1convert718_U0_ap_done),
    .ap_continue(conv1x1convert718_U0_ap_continue),
    .ap_idle(conv1x1convert718_U0_ap_idle),
    .ap_ready(conv1x1convert718_U0_ap_ready),
    .start_out(conv1x1convert718_U0_start_out),
    .start_write(conv1x1convert718_U0_start_write),
    .reps_dout(reps_dout),
    .reps_empty_n(reps_empty_n),
    .reps_read(conv1x1convert718_U0_reps_read),
    .reps_out_din(conv1x1convert718_U0_reps_out_din),
    .reps_out_full_n(reps_out_full_n),
    .reps_out_write(conv1x1convert718_U0_reps_out_write),
    .in_V_V_dout(in_V_V_dout),
    .in_V_V_empty_n(in_V_V_empty_n),
    .in_V_V_read(conv1x1convert718_U0_in_V_V_read),
    .conv1in_V_V_din(conv1x1convert718_U0_conv1in_V_V_din),
    .conv1in_V_V_full_n(conv1in_V_V_full_n),
    .conv1in_V_V_write(conv1x1convert718_U0_conv1in_V_V_write),
    .reps_c_i_din(conv1x1convert718_U0_reps_c_i_din),
    .reps_c_i_full_n(reps_c_i_full_n),
    .reps_c_i_write(conv1x1convert718_U0_reps_c_i_write)
);

conv1x1DSP2 conv1x1DSP2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(conv1x1DSP2_U0_ap_start),
    .ap_done(conv1x1DSP2_U0_ap_done),
    .ap_continue(conv1x1DSP2_U0_ap_continue),
    .ap_idle(conv1x1DSP2_U0_ap_idle),
    .ap_ready(conv1x1DSP2_U0_ap_ready),
    .in_V_V_dout(conv1in_V_V_dout),
    .in_V_V_empty_n(conv1in_V_V_empty_n),
    .in_V_V_read(conv1x1DSP2_U0_in_V_V_read),
    .out_V_V_din(conv1x1DSP2_U0_out_V_V_din),
    .out_V_V_full_n(out_V_V_full_n),
    .out_V_V_write(conv1x1DSP2_U0_out_V_V_write),
    .reps_dout(reps_c_i_dout),
    .reps_empty_n(reps_c_i_empty_n),
    .reps_read(conv1x1DSP2_U0_reps_read)
);

fifo_w16_d2_A conv1in_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv1x1convert718_U0_conv1in_V_V_din),
    .if_full_n(conv1in_V_V_full_n),
    .if_write(conv1x1convert718_U0_conv1in_V_V_write),
    .if_dout(conv1in_V_V_dout),
    .if_empty_n(conv1in_V_V_empty_n),
    .if_read(conv1x1DSP2_U0_in_V_V_read)
);

fifo_w32_d2_A_x6 reps_c_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv1x1convert718_U0_reps_c_i_din),
    .if_full_n(reps_c_i_full_n),
    .if_write(conv1x1convert718_U0_reps_c_i_write),
    .if_dout(reps_c_i_dout),
    .if_empty_n(reps_c_i_empty_n),
    .if_read(conv1x1DSP2_U0_reps_read)
);

start_for_conv1x1dWL start_for_conv1x1dWL_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_conv1x1DSP2_U0_din),
    .if_full_n(start_for_conv1x1DSP2_U0_full_n),
    .if_write(conv1x1convert718_U0_start_write),
    .if_dout(start_for_conv1x1DSP2_U0_dout),
    .if_empty_n(start_for_conv1x1DSP2_U0_empty_n),
    .if_read(conv1x1DSP2_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

assign ap_done = ap_sync_done;

assign ap_idle = (conv1x1convert718_U0_ap_idle & conv1x1DSP2_U0_ap_idle);

assign ap_ready = internal_ap_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (conv1x1convert718_U0_ap_done & conv1x1DSP2_U0_ap_done);

assign ap_sync_ready = conv1x1convert718_U0_ap_ready;

assign conv1x1DSP2_U0_ap_continue = ap_sync_continue;

assign conv1x1DSP2_U0_ap_start = start_for_conv1x1DSP2_U0_empty_n;

assign conv1x1DSP2_U0_start_full_n = 1'b1;

assign conv1x1DSP2_U0_start_write = 1'b0;

assign conv1x1convert718_U0_ap_continue = ap_sync_continue;

assign conv1x1convert718_U0_ap_start = real_start;

assign in_V_V_read = conv1x1convert718_U0_in_V_V_read;

assign internal_ap_ready = ap_sync_ready;

assign out_V_V_din = conv1x1DSP2_U0_out_V_V_din;

assign out_V_V_write = conv1x1DSP2_U0_out_V_V_write;

assign reps_out_din = conv1x1convert718_U0_reps_out_din;

assign reps_out_write = conv1x1convert718_U0_reps_out_write;

assign reps_read = conv1x1convert718_U0_reps_read;

assign start_for_conv1x1DSP2_U0_din = 1'b1;

assign start_out = real_start;

endmodule //conv1x1_DSPopt
