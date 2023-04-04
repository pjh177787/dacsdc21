// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stream_out_data_l0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write,
        row_buffer_0_V_address0,
        row_buffer_0_V_ce0,
        row_buffer_0_V_q0,
        row_buffer_1_V_address0,
        row_buffer_1_V_ce0,
        row_buffer_1_V_q0,
        row_buffer_2_V_address0,
        row_buffer_2_V_ce0,
        row_buffer_2_V_q0,
        row_buffer_3_V_address0,
        row_buffer_3_V_ce0,
        row_buffer_3_V_q0,
        skip_flag,
        outRowIdx_V,
        centerRowBufferIdx_V
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state6 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [71:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
output  [8:0] row_buffer_0_V_address0;
output   row_buffer_0_V_ce0;
input  [23:0] row_buffer_0_V_q0;
output  [8:0] row_buffer_1_V_address0;
output   row_buffer_1_V_ce0;
input  [23:0] row_buffer_1_V_q0;
output  [8:0] row_buffer_2_V_address0;
output   row_buffer_2_V_ce0;
input  [23:0] row_buffer_2_V_q0;
output  [8:0] row_buffer_3_V_address0;
output   row_buffer_3_V_ce0;
input  [23:0] row_buffer_3_V_q0;
input   skip_flag;
input  [9:0] outRowIdx_V;
input  [1:0] centerRowBufferIdx_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_V_write;
reg row_buffer_0_V_ce0;
reg row_buffer_1_V_ce0;
reg row_buffer_2_V_ce0;
reg row_buffer_3_V_ce0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln45_reg_388;
reg   [0:0] icmp_ln45_reg_388_pp0_iter2_reg;
reg   [9:0] indvar_flatten_reg_167;
reg   [8:0] c_0_reg_178;
reg   [1:0] kc_0_reg_189;
wire   [0:0] skip_flag_read_read_fu_102_p2;
wire   [1:0] row_sel0_V_fu_200_p2;
reg   [1:0] row_sel0_V_reg_368;
wire   [1:0] row_sel2_V_fu_206_p2;
reg   [1:0] row_sel2_V_reg_373;
reg   [0:0] tmp_5_reg_378;
wire   [0:0] icmp_ln879_fu_230_p2;
reg   [0:0] icmp_ln879_reg_383;
wire   [0:0] icmp_ln45_fu_236_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln45_reg_388_pp0_iter1_reg;
wire   [9:0] add_ln45_fu_242_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] select_ln46_fu_260_p3;
reg   [1:0] select_ln46_reg_397;
wire   [8:0] select_ln45_fu_268_p3;
reg   [8:0] select_ln45_reg_402;
wire   [1:0] kc_fu_276_p2;
wire   [23:0] v2_V_fu_311_p3;
reg   [23:0] v2_V_reg_433;
wire   [23:0] data1_V_fu_318_p6;
reg   [23:0] data1_V_reg_438;
wire   [23:0] v1_V_fu_344_p3;
reg   [23:0] v1_V_reg_443;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [8:0] ap_phi_mux_c_0_phi_fu_182_p4;
wire   [63:0] zext_ln51_fu_290_p1;
reg    ap_block_pp0_stage0_01001;
wire  signed [9:0] sext_ln1354_fu_212_p0;
wire  signed [10:0] sext_ln1354_fu_212_p1;
wire   [10:0] ret_V_fu_216_p2;
wire  signed [9:0] icmp_ln879_fu_230_p0;
wire   [0:0] icmp_ln46_fu_254_p2;
wire   [8:0] c_fu_248_p2;
wire   [8:0] zext_ln46_fu_282_p1;
wire   [8:0] add_ln51_fu_285_p2;
wire   [23:0] data0_V_fu_298_p6;
wire   [23:0] data2_V_fu_331_p6;
wire    ap_CS_fsm_state6;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

ultra_net_mux_42_ocq #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 24 ))
ultra_net_mux_42_ocq_U85(
    .din0(row_buffer_0_V_q0),
    .din1(row_buffer_1_V_q0),
    .din2(row_buffer_2_V_q0),
    .din3(row_buffer_3_V_q0),
    .din4(row_sel0_V_reg_368),
    .dout(data0_V_fu_298_p6)
);

ultra_net_mux_42_ocq #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 24 ))
ultra_net_mux_42_ocq_U86(
    .din0(row_buffer_0_V_q0),
    .din1(row_buffer_1_V_q0),
    .din2(row_buffer_2_V_q0),
    .din3(row_buffer_3_V_q0),
    .din4(centerRowBufferIdx_V),
    .dout(data1_V_fu_318_p6)
);

ultra_net_mux_42_ocq #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 24 ),
    .din2_WIDTH( 24 ),
    .din3_WIDTH( 24 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 24 ))
ultra_net_mux_42_ocq_U87(
    .din0(row_buffer_0_V_q0),
    .din1(row_buffer_1_V_q0),
    .din2(row_buffer_2_V_q0),
    .din3(row_buffer_3_V_q0),
    .din4(row_sel2_V_reg_373),
    .dout(data2_V_fu_331_p6)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_reg_388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c_0_reg_178 <= select_ln45_reg_402;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        c_0_reg_178 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_167 <= add_ln45_fu_242_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_167 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        kc_0_reg_189 <= kc_fu_276_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        kc_0_reg_189 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_reg_388_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data1_V_reg_438 <= data1_V_fu_318_p6;
        v1_V_reg_443 <= v1_V_fu_344_p3;
        v2_V_reg_433 <= v2_V_fu_311_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln45_reg_388 <= icmp_ln45_fu_236_p2;
        icmp_ln45_reg_388_pp0_iter1_reg <= icmp_ln45_reg_388;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln45_reg_388_pp0_iter2_reg <= icmp_ln45_reg_388_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln879_reg_383 <= icmp_ln879_fu_230_p2;
        row_sel0_V_reg_368 <= row_sel0_V_fu_200_p2;
        row_sel2_V_reg_373 <= row_sel2_V_fu_206_p2;
        tmp_5_reg_378 <= ret_V_fu_216_p2[32'd10];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln45_reg_402 <= select_ln45_fu_268_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln45_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln46_reg_397 <= select_ln46_fu_260_p3;
    end
end

always @ (*) begin
    if ((icmp_ln45_fu_236_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln45_reg_388 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_c_0_phi_fu_182_p4 = select_ln45_reg_402;
    end else begin
        ap_phi_mux_c_0_phi_fu_182_p4 = c_0_reg_178;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_buffer_0_V_ce0 = 1'b1;
    end else begin
        row_buffer_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_buffer_1_V_ce0 = 1'b1;
    end else begin
        row_buffer_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_buffer_2_V_ce0 = 1'b1;
    end else begin
        row_buffer_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_buffer_3_V_ce0 = 1'b1;
    end else begin
        row_buffer_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln45_fu_236_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((icmp_ln45_fu_236_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln45_fu_242_p2 = (indvar_flatten_reg_167 + 10'd1);

assign add_ln51_fu_285_p2 = (select_ln45_reg_402 + zext_ln46_fu_282_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter3 = ((icmp_ln45_reg_388_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign c_fu_248_p2 = (ap_phi_mux_c_0_phi_fu_182_p4 + 9'd1);

assign icmp_ln45_fu_236_p2 = ((indvar_flatten_reg_167 == 10'd960) ? 1'b1 : 1'b0);

assign icmp_ln46_fu_254_p2 = ((kc_0_reg_189 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_230_p0 = outRowIdx_V;

assign icmp_ln879_fu_230_p2 = ((icmp_ln879_fu_230_p0 == 10'd159) ? 1'b1 : 1'b0);

assign kc_fu_276_p2 = (select_ln46_fu_260_p3 + 2'd1);

assign out_V_V_din = {{{v1_V_reg_443}, {data1_V_reg_438}}, {v2_V_reg_433}};

assign ret_V_fu_216_p2 = ($signed(sext_ln1354_fu_212_p1) + $signed(11'd2047));

assign row_buffer_0_V_address0 = zext_ln51_fu_290_p1;

assign row_buffer_1_V_address0 = zext_ln51_fu_290_p1;

assign row_buffer_2_V_address0 = zext_ln51_fu_290_p1;

assign row_buffer_3_V_address0 = zext_ln51_fu_290_p1;

assign row_sel0_V_fu_200_p2 = ($signed(centerRowBufferIdx_V) + $signed(2'd3));

assign row_sel2_V_fu_206_p2 = (centerRowBufferIdx_V + 2'd1);

assign select_ln45_fu_268_p3 = ((icmp_ln46_fu_254_p2[0:0] === 1'b1) ? c_fu_248_p2 : ap_phi_mux_c_0_phi_fu_182_p4);

assign select_ln46_fu_260_p3 = ((icmp_ln46_fu_254_p2[0:0] === 1'b1) ? 2'd0 : kc_0_reg_189);

assign sext_ln1354_fu_212_p0 = outRowIdx_V;

assign sext_ln1354_fu_212_p1 = sext_ln1354_fu_212_p0;

assign skip_flag_read_read_fu_102_p2 = skip_flag;

assign v1_V_fu_344_p3 = ((icmp_ln879_reg_383[0:0] === 1'b1) ? 24'd0 : data2_V_fu_331_p6);

assign v2_V_fu_311_p3 = ((tmp_5_reg_378[0:0] === 1'b1) ? 24'd0 : data0_V_fu_298_p6);

assign zext_ln46_fu_282_p1 = select_ln46_reg_397;

assign zext_ln51_fu_290_p1 = add_ln51_fu_285_p2;

endmodule //stream_out_data_l0