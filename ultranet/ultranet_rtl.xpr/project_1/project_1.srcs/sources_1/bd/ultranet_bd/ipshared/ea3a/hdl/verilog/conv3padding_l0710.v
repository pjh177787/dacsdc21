// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv3padding_l0710 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        reps_dout,
        reps_empty_n,
        reps_read,
        reps_out_din,
        reps_out_full_n,
        reps_out_write,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        padding_out_V_V_din,
        padding_out_V_V_full_n,
        padding_out_V_V_write,
        reps_c_i_din,
        reps_c_i_full_n,
        reps_c_i_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] reps_dout;
input   reps_empty_n;
output   reps_read;
output  [31:0] reps_out_din;
input   reps_out_full_n;
output   reps_out_write;
input  [23:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [71:0] padding_out_V_V_din;
input   padding_out_V_V_full_n;
output   padding_out_V_V_write;
output  [31:0] reps_c_i_din;
input   reps_c_i_full_n;
output   reps_c_i_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg reps_read;
reg reps_out_write;
reg in_V_V_read;
reg padding_out_V_V_write;
reg reps_c_i_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    reps_blk_n;
reg    reps_out_blk_n;
reg    reps_c_i_blk_n;
wire   [31:0] add_ln85_fu_201_p2;
reg   [31:0] add_ln85_reg_285;
reg    ap_block_state1;
wire   [31:0] or_ln85_fu_207_p2;
reg   [31:0] or_ln85_reg_290;
wire   [1:0] storeBufferIdx_V_fu_218_p2;
reg   [1:0] storeBufferIdx_V_reg_298;
wire    ap_CS_fsm_state2;
wire   [0:0] xor_ln87_fu_229_p2;
reg   [0:0] xor_ln87_reg_303;
wire   [0:0] icmp_ln85_fu_213_p2;
wire   [0:0] icmp_ln89_fu_246_p2;
reg   [0:0] icmp_ln89_reg_308;
wire   [1:0] loadBufferIdx_V_fu_253_p2;
reg   [1:0] loadBufferIdx_V_reg_313;
wire   [9:0] rowIdx_V_1_fu_271_p3;
reg   [9:0] rowIdx_V_1_reg_318;
wire   [31:0] rep_fu_279_p2;
reg   [31:0] rep_reg_323;
reg    row_buffer_0_V_ce0;
wire   [23:0] row_buffer_0_V_q0;
reg    row_buffer_0_V_ce1;
reg    row_buffer_0_V_we1;
reg    row_buffer_1_V_ce0;
wire   [23:0] row_buffer_1_V_q0;
reg    row_buffer_1_V_ce1;
reg    row_buffer_1_V_we1;
reg    row_buffer_2_V_ce0;
wire   [23:0] row_buffer_2_V_q0;
reg    row_buffer_2_V_ce1;
reg    row_buffer_2_V_we1;
reg    row_buffer_3_V_ce0;
wire   [23:0] row_buffer_3_V_q0;
reg    row_buffer_3_V_ce1;
reg    row_buffer_3_V_we1;
wire    grp_stream_out_data_l0_fu_161_ap_start;
wire    grp_stream_out_data_l0_fu_161_ap_done;
wire    grp_stream_out_data_l0_fu_161_ap_idle;
wire    grp_stream_out_data_l0_fu_161_ap_ready;
wire   [71:0] grp_stream_out_data_l0_fu_161_out_V_V_din;
wire    grp_stream_out_data_l0_fu_161_out_V_V_write;
wire   [8:0] grp_stream_out_data_l0_fu_161_row_buffer_0_V_address0;
wire    grp_stream_out_data_l0_fu_161_row_buffer_0_V_ce0;
wire   [8:0] grp_stream_out_data_l0_fu_161_row_buffer_1_V_address0;
wire    grp_stream_out_data_l0_fu_161_row_buffer_1_V_ce0;
wire   [8:0] grp_stream_out_data_l0_fu_161_row_buffer_2_V_address0;
wire    grp_stream_out_data_l0_fu_161_row_buffer_2_V_ce0;
wire   [8:0] grp_stream_out_data_l0_fu_161_row_buffer_3_V_address0;
wire    grp_stream_out_data_l0_fu_161_row_buffer_3_V_ce0;
wire    grp_stream_out_data_l0_fu_161_skip_flag;
wire    grp_stream_in_row_l0_fu_176_ap_start;
wire    grp_stream_in_row_l0_fu_176_ap_done;
wire    grp_stream_in_row_l0_fu_176_ap_idle;
wire    grp_stream_in_row_l0_fu_176_ap_ready;
wire    grp_stream_in_row_l0_fu_176_in_V_V_read;
wire   [8:0] grp_stream_in_row_l0_fu_176_row_buffer_0_V_address1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_0_V_ce1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_0_V_we1;
wire   [23:0] grp_stream_in_row_l0_fu_176_row_buffer_0_V_d1;
wire   [8:0] grp_stream_in_row_l0_fu_176_row_buffer_1_V_address1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_1_V_ce1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_1_V_we1;
wire   [23:0] grp_stream_in_row_l0_fu_176_row_buffer_1_V_d1;
wire   [8:0] grp_stream_in_row_l0_fu_176_row_buffer_2_V_address1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_2_V_ce1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_2_V_we1;
wire   [23:0] grp_stream_in_row_l0_fu_176_row_buffer_2_V_d1;
wire   [8:0] grp_stream_in_row_l0_fu_176_row_buffer_3_V_address1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_3_V_ce1;
wire    grp_stream_in_row_l0_fu_176_row_buffer_3_V_we1;
wire   [23:0] grp_stream_in_row_l0_fu_176_row_buffer_3_V_d1;
wire    grp_stream_in_row_l0_fu_176_skip_flag;
reg   [1:0] t_V_5_reg_114;
wire    ap_CS_fsm_state3;
reg    ap_block_state3_on_subcall_done;
reg   [1:0] t_V_reg_126;
reg   [9:0] t_V_6_reg_138;
reg   [31:0] rep_0_i_i_i_reg_150;
reg    grp_stream_out_data_l0_fu_161_ap_start_reg;
reg    grp_stream_in_row_l0_fu_176_ap_start_reg;
wire   [31:0] shl_ln85_fu_189_p2;
wire   [31:0] shl_ln85_1_fu_195_p2;
wire   [0:0] icmp_ln87_fu_224_p2;
wire   [30:0] tmp_fu_236_p4;
wire   [0:0] icmp_ln879_fu_259_p2;
wire   [9:0] rowIdx_V_fu_265_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_stream_out_data_l0_fu_161_ap_start_reg = 1'b0;
#0 grp_stream_in_row_l0_fu_176_ap_start_reg = 1'b0;
end

conv3padding_l071pcA #(
    .DataWidth( 24 ),
    .AddressRange( 322 ),
    .AddressWidth( 9 ))
row_buffer_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_stream_out_data_l0_fu_161_row_buffer_0_V_address0),
    .ce0(row_buffer_0_V_ce0),
    .q0(row_buffer_0_V_q0),
    .address1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_address1),
    .ce1(row_buffer_0_V_ce1),
    .we1(row_buffer_0_V_we1),
    .d1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_d1)
);

conv3padding_l071pcA #(
    .DataWidth( 24 ),
    .AddressRange( 322 ),
    .AddressWidth( 9 ))
row_buffer_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_stream_out_data_l0_fu_161_row_buffer_1_V_address0),
    .ce0(row_buffer_1_V_ce0),
    .q0(row_buffer_1_V_q0),
    .address1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_address1),
    .ce1(row_buffer_1_V_ce1),
    .we1(row_buffer_1_V_we1),
    .d1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_d1)
);

conv3padding_l071pcA #(
    .DataWidth( 24 ),
    .AddressRange( 322 ),
    .AddressWidth( 9 ))
row_buffer_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_stream_out_data_l0_fu_161_row_buffer_2_V_address0),
    .ce0(row_buffer_2_V_ce0),
    .q0(row_buffer_2_V_q0),
    .address1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_address1),
    .ce1(row_buffer_2_V_ce1),
    .we1(row_buffer_2_V_we1),
    .d1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_d1)
);

conv3padding_l071pcA #(
    .DataWidth( 24 ),
    .AddressRange( 322 ),
    .AddressWidth( 9 ))
row_buffer_3_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_stream_out_data_l0_fu_161_row_buffer_3_V_address0),
    .ce0(row_buffer_3_V_ce0),
    .q0(row_buffer_3_V_q0),
    .address1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_address1),
    .ce1(row_buffer_3_V_ce1),
    .we1(row_buffer_3_V_we1),
    .d1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_d1)
);

stream_out_data_l0 grp_stream_out_data_l0_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_stream_out_data_l0_fu_161_ap_start),
    .ap_done(grp_stream_out_data_l0_fu_161_ap_done),
    .ap_idle(grp_stream_out_data_l0_fu_161_ap_idle),
    .ap_ready(grp_stream_out_data_l0_fu_161_ap_ready),
    .out_V_V_din(grp_stream_out_data_l0_fu_161_out_V_V_din),
    .out_V_V_full_n(padding_out_V_V_full_n),
    .out_V_V_write(grp_stream_out_data_l0_fu_161_out_V_V_write),
    .row_buffer_0_V_address0(grp_stream_out_data_l0_fu_161_row_buffer_0_V_address0),
    .row_buffer_0_V_ce0(grp_stream_out_data_l0_fu_161_row_buffer_0_V_ce0),
    .row_buffer_0_V_q0(row_buffer_0_V_q0),
    .row_buffer_1_V_address0(grp_stream_out_data_l0_fu_161_row_buffer_1_V_address0),
    .row_buffer_1_V_ce0(grp_stream_out_data_l0_fu_161_row_buffer_1_V_ce0),
    .row_buffer_1_V_q0(row_buffer_1_V_q0),
    .row_buffer_2_V_address0(grp_stream_out_data_l0_fu_161_row_buffer_2_V_address0),
    .row_buffer_2_V_ce0(grp_stream_out_data_l0_fu_161_row_buffer_2_V_ce0),
    .row_buffer_2_V_q0(row_buffer_2_V_q0),
    .row_buffer_3_V_address0(grp_stream_out_data_l0_fu_161_row_buffer_3_V_address0),
    .row_buffer_3_V_ce0(grp_stream_out_data_l0_fu_161_row_buffer_3_V_ce0),
    .row_buffer_3_V_q0(row_buffer_3_V_q0),
    .skip_flag(grp_stream_out_data_l0_fu_161_skip_flag),
    .outRowIdx_V(t_V_6_reg_138),
    .centerRowBufferIdx_V(t_V_reg_126)
);

stream_in_row_l0 grp_stream_in_row_l0_fu_176(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_stream_in_row_l0_fu_176_ap_start),
    .ap_done(grp_stream_in_row_l0_fu_176_ap_done),
    .ap_idle(grp_stream_in_row_l0_fu_176_ap_idle),
    .ap_ready(grp_stream_in_row_l0_fu_176_ap_ready),
    .in_V_V_dout(in_V_V_dout),
    .in_V_V_empty_n(in_V_V_empty_n),
    .in_V_V_read(grp_stream_in_row_l0_fu_176_in_V_V_read),
    .row_buffer_0_V_address1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_address1),
    .row_buffer_0_V_ce1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_ce1),
    .row_buffer_0_V_we1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_we1),
    .row_buffer_0_V_d1(grp_stream_in_row_l0_fu_176_row_buffer_0_V_d1),
    .row_buffer_1_V_address1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_address1),
    .row_buffer_1_V_ce1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_ce1),
    .row_buffer_1_V_we1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_we1),
    .row_buffer_1_V_d1(grp_stream_in_row_l0_fu_176_row_buffer_1_V_d1),
    .row_buffer_2_V_address1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_address1),
    .row_buffer_2_V_ce1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_ce1),
    .row_buffer_2_V_we1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_we1),
    .row_buffer_2_V_d1(grp_stream_in_row_l0_fu_176_row_buffer_2_V_d1),
    .row_buffer_3_V_address1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_address1),
    .row_buffer_3_V_ce1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_ce1),
    .row_buffer_3_V_we1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_we1),
    .row_buffer_3_V_d1(grp_stream_in_row_l0_fu_176_row_buffer_3_V_d1),
    .skip_flag(grp_stream_in_row_l0_fu_176_skip_flag),
    .rowBufferIdx_V(t_V_5_reg_114)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln85_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stream_in_row_l0_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln85_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_stream_in_row_l0_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_stream_in_row_l0_fu_176_ap_ready == 1'b1)) begin
            grp_stream_in_row_l0_fu_176_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stream_out_data_l0_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln85_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_stream_out_data_l0_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_stream_out_data_l0_fu_161_ap_ready == 1'b1)) begin
            grp_stream_out_data_l0_fu_161_ap_start_reg <= 1'b0;
        end
    end
end

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

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        rep_0_i_i_i_reg_150 <= rep_reg_323;
    end else if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rep_0_i_i_i_reg_150 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_5_reg_114 <= storeBufferIdx_V_reg_298;
    end else if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_5_reg_114 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_6_reg_138 <= rowIdx_V_1_reg_318;
    end else if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_6_reg_138 <= 10'd1022;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_reg_126 <= loadBufferIdx_V_reg_313;
    end else if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_126 <= 2'd2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln85_reg_285[31 : 5] <= add_ln85_fu_201_p2[31 : 5];
        or_ln85_reg_290[31 : 5] <= or_ln85_fu_207_p2[31 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln89_reg_308 <= icmp_ln89_fu_246_p2;
        loadBufferIdx_V_reg_313 <= loadBufferIdx_V_fu_253_p2;
        rep_reg_323 <= rep_fu_279_p2;
        rowIdx_V_1_reg_318 <= rowIdx_V_1_fu_271_p3;
        xor_ln87_reg_303 <= xor_ln87_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        storeBufferIdx_V_reg_298 <= storeBufferIdx_V_fu_218_p2;
    end
end

always @ (*) begin
    if (((icmp_ln85_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_V_V_read = grp_stream_in_row_l0_fu_176_in_V_V_read;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln85_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        padding_out_V_V_write = grp_stream_out_data_l0_fu_161_out_V_V_write;
    end else begin
        padding_out_V_V_write = 1'b0;
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_blk_n = reps_empty_n;
    end else begin
        reps_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_c_i_blk_n = reps_c_i_full_n;
    end else begin
        reps_c_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_c_i_write = 1'b1;
    end else begin
        reps_c_i_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_out_blk_n = reps_out_full_n;
    end else begin
        reps_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_out_write = 1'b1;
    end else begin
        reps_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_read = 1'b1;
    end else begin
        reps_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_0_V_ce0 = grp_stream_out_data_l0_fu_161_row_buffer_0_V_ce0;
    end else begin
        row_buffer_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_0_V_ce1 = grp_stream_in_row_l0_fu_176_row_buffer_0_V_ce1;
    end else begin
        row_buffer_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_0_V_we1 = grp_stream_in_row_l0_fu_176_row_buffer_0_V_we1;
    end else begin
        row_buffer_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_1_V_ce0 = grp_stream_out_data_l0_fu_161_row_buffer_1_V_ce0;
    end else begin
        row_buffer_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_1_V_ce1 = grp_stream_in_row_l0_fu_176_row_buffer_1_V_ce1;
    end else begin
        row_buffer_1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_1_V_we1 = grp_stream_in_row_l0_fu_176_row_buffer_1_V_we1;
    end else begin
        row_buffer_1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_2_V_ce0 = grp_stream_out_data_l0_fu_161_row_buffer_2_V_ce0;
    end else begin
        row_buffer_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_2_V_ce1 = grp_stream_in_row_l0_fu_176_row_buffer_2_V_ce1;
    end else begin
        row_buffer_2_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_2_V_we1 = grp_stream_in_row_l0_fu_176_row_buffer_2_V_we1;
    end else begin
        row_buffer_2_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_3_V_ce0 = grp_stream_out_data_l0_fu_161_row_buffer_3_V_ce0;
    end else begin
        row_buffer_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_3_V_ce1 = grp_stream_in_row_l0_fu_176_row_buffer_3_V_ce1;
    end else begin
        row_buffer_3_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_buffer_3_V_we1 = grp_stream_in_row_l0_fu_176_row_buffer_3_V_we1;
    end else begin
        row_buffer_3_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln85_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln85_fu_201_p2 = (shl_ln85_fu_189_p2 + shl_ln85_1_fu_195_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (reps_c_i_full_n == 1'b0) | (reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_stream_in_row_l0_fu_176_ap_done == 1'b0) | (grp_stream_out_data_l0_fu_161_ap_done == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign grp_stream_in_row_l0_fu_176_ap_start = grp_stream_in_row_l0_fu_176_ap_start_reg;

assign grp_stream_in_row_l0_fu_176_skip_flag = xor_ln87_reg_303;

assign grp_stream_out_data_l0_fu_161_ap_start = grp_stream_out_data_l0_fu_161_ap_start_reg;

assign grp_stream_out_data_l0_fu_161_skip_flag = icmp_ln89_reg_308;

assign icmp_ln85_fu_213_p2 = ((rep_0_i_i_i_reg_150 == or_ln85_reg_290) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_259_p2 = ((t_V_6_reg_138 == 10'd159) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_224_p2 = ((rep_0_i_i_i_reg_150 < add_ln85_reg_285) ? 1'b1 : 1'b0);

assign icmp_ln89_fu_246_p2 = ((tmp_fu_236_p4 == 31'd0) ? 1'b1 : 1'b0);

assign loadBufferIdx_V_fu_253_p2 = (t_V_reg_126 + 2'd1);

assign or_ln85_fu_207_p2 = (32'd2 | add_ln85_fu_201_p2);

assign padding_out_V_V_din = grp_stream_out_data_l0_fu_161_out_V_V_din;

assign rep_fu_279_p2 = (rep_0_i_i_i_reg_150 + 32'd1);

assign reps_c_i_din = reps_dout;

assign reps_out_din = reps_dout;

assign rowIdx_V_1_fu_271_p3 = ((icmp_ln879_fu_259_p2[0:0] === 1'b1) ? 10'd0 : rowIdx_V_fu_265_p2);

assign rowIdx_V_fu_265_p2 = (t_V_6_reg_138 + 10'd1);

assign shl_ln85_1_fu_195_p2 = reps_dout << 32'd5;

assign shl_ln85_fu_189_p2 = reps_dout << 32'd7;

assign start_out = real_start;

assign storeBufferIdx_V_fu_218_p2 = (t_V_5_reg_114 + 2'd1);

assign tmp_fu_236_p4 = {{rep_0_i_i_i_reg_150[31:1]}};

assign xor_ln87_fu_229_p2 = (icmp_ln87_fu_224_p2 ^ 1'd1);

always @ (posedge ap_clk) begin
    add_ln85_reg_285[4:0] <= 5'b00000;
    or_ln85_reg_290[4:0] <= 5'b00010;
end

endmodule //conv3padding_l0710
