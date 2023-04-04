// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module max_pool2x2_3 (
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
        vec_V_V_dout,
        vec_V_V_empty_n,
        vec_V_V_read,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write,
        reps_dout,
        reps_empty_n,
        reps_read,
        reps_out_din,
        reps_out_full_n,
        reps_out_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state7 = 4'd8;

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
input  [127:0] vec_V_V_dout;
input   vec_V_V_empty_n;
output   vec_V_V_read;
output  [127:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
input  [31:0] reps_dout;
input   reps_empty_n;
output   reps_read;
output  [31:0] reps_out_din;
input   reps_out_full_n;
output   reps_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg vec_V_V_read;
reg out_V_V_write;
reg reps_read;
reg reps_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    vec_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln35_reg_352;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] and_ln51_reg_375;
reg   [0:0] and_ln51_reg_375_pp0_iter2_reg;
reg    reps_blk_n;
reg    reps_out_blk_n;
reg   [39:0] indvar_flatten_reg_133;
reg   [31:0] h_0_i_reg_144;
reg   [7:0] addr_0_i_reg_155;
reg   [31:0] reps_read_reg_341;
reg    ap_block_state1;
wire   [39:0] bound_fu_221_p2;
reg   [39:0] bound_reg_347;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln35_fu_227_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln35_reg_352_pp0_iter1_reg;
wire   [39:0] add_ln35_1_fu_232_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] select_ln35_fu_250_p3;
reg   [7:0] select_ln35_reg_361;
wire   [31:0] select_ln35_1_fu_258_p3;
reg   [31:0] select_ln35_1_reg_366;
wire   [0:0] trunc_ln35_fu_266_p1;
reg   [0:0] trunc_ln35_reg_371;
reg   [0:0] trunc_ln35_reg_371_pp0_iter1_reg;
wire   [0:0] and_ln51_fu_274_p2;
reg   [0:0] and_ln51_reg_375_pp0_iter1_reg;
wire   [7:0] add_ln37_fu_280_p2;
reg   [63:0] p_Result_i_reg_384;
wire   [63:0] trunc_ln96_fu_296_p1;
reg   [63:0] trunc_ln96_reg_389;
reg   [7:0] row_store_V_addr_reg_394;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
wire   [7:0] row_store_V_address0;
reg    row_store_V_ce0;
wire   [63:0] row_store_V_q0;
reg    row_store_V_ce1;
reg    row_store_V_we1;
wire    p_01_i_max2_PE_4u_16u_s_fu_166_ap_ready;
wire   [63:0] p_01_i_max2_PE_4u_16u_s_fu_166_ap_return;
wire    op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173_ap_ready;
wire   [63:0] op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173_ap_return;
reg   [31:0] ap_phi_mux_h_0_i_phi_fu_148_p4;
wire   [63:0] zext_ln49_fu_300_p1;
reg   [63:0] p_037_2_0_i_fu_78;
reg   [63:0] v2_V_0_i_fu_82;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] shl_ln35_1_fu_186_p2;
wire   [31:0] shl_ln35_fu_181_p2;
wire   [31:0] add_ln35_fu_191_p2;
wire   [38:0] tmp_s_fu_197_p3;
wire   [36:0] tmp_57_fu_209_p3;
wire   [39:0] p_shl4_fu_217_p1;
wire   [39:0] p_shl_fu_205_p1;
wire   [0:0] icmp_ln37_fu_244_p2;
wire   [31:0] h_fu_238_p2;
wire   [0:0] trunc_ln37_fu_270_p1;
wire    ap_CS_fsm_state7;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

max_pool2x2_3_rowbjl #(
    .DataWidth( 64 ),
    .AddressRange( 160 ),
    .AddressWidth( 8 ))
row_store_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row_store_V_address0),
    .ce0(row_store_V_ce0),
    .q0(row_store_V_q0),
    .address1(row_store_V_addr_reg_394),
    .ce1(row_store_V_ce1),
    .we1(row_store_V_we1),
    .d1(p_01_i_max2_PE_4u_16u_s_fu_166_ap_return)
);

max2_PE_4u_16u_s p_01_i_max2_PE_4u_16u_s_fu_166(
    .ap_ready(p_01_i_max2_PE_4u_16u_s_fu_166_ap_ready),
    .data0_V(trunc_ln96_reg_389),
    .data1_V(p_Result_i_reg_384),
    .ap_return(p_01_i_max2_PE_4u_16u_s_fu_166_ap_return)
);

max2_PE_4u_16u_s op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173(
    .ap_ready(op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173_ap_ready),
    .data0_V(p_01_i_max2_PE_4u_16u_s_fu_166_ap_return),
    .data1_V(row_store_V_q0),
    .ap_return(op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173_ap_return)
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
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
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
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
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
    if (((icmp_ln35_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        addr_0_i_reg_155 <= add_ln37_fu_280_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        addr_0_i_reg_155 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_reg_352 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        h_0_i_reg_144 <= select_ln35_1_reg_366;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        h_0_i_reg_144 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_133 <= add_ln35_1_fu_232_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_133 <= 40'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln51_reg_375 <= and_ln51_fu_274_p2;
        select_ln35_reg_361 <= select_ln35_fu_250_p3;
        trunc_ln35_reg_371 <= trunc_ln35_fu_266_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln51_reg_375_pp0_iter1_reg <= and_ln51_reg_375;
        icmp_ln35_reg_352 <= icmp_ln35_fu_227_p2;
        icmp_ln35_reg_352_pp0_iter1_reg <= icmp_ln35_reg_352;
        trunc_ln35_reg_371_pp0_iter1_reg <= trunc_ln35_reg_371;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        and_ln51_reg_375_pp0_iter2_reg <= and_ln51_reg_375_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_reg_347[39 : 10] <= bound_fu_221_p2[39 : 10];
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln35_reg_371_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_037_2_0_i_fu_78 <= op2_V_assign_5_0_i_max2_PE_4u_16u_s_fu_173_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_reg_352 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_i_reg_384 <= {{vec_V_V_dout[127:64]}};
        row_store_V_addr_reg_394 <= zext_ln49_fu_300_p1;
        trunc_ln96_reg_389 <= trunc_ln96_fu_296_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_read_reg_341 <= reps_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln35_1_reg_366 <= select_ln35_1_fu_258_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln51_reg_375_pp0_iter2_reg) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v2_V_0_i_fu_82 <= p_037_2_0_i_fu_78;
    end
end

always @ (*) begin
    if ((icmp_ln35_fu_227_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln35_reg_352 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_h_0_i_phi_fu_148_p4 = select_ln35_1_reg_366;
    end else begin
        ap_phi_mux_h_0_i_phi_fu_148_p4 = h_0_i_reg_144;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
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
        reps_out_blk_n = reps_out_full_n;
    end else begin
        reps_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_out_write = 1'b1;
    end else begin
        reps_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        reps_read = 1'b1;
    end else begin
        reps_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_store_V_ce0 = 1'b1;
    end else begin
        row_store_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_store_V_ce1 = 1'b1;
    end else begin
        row_store_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln35_reg_371_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_store_V_we1 = 1'b1;
    end else begin
        row_store_V_we1 = 1'b0;
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
    if (((icmp_ln35_reg_352 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_V_V_blk_n = vec_V_V_empty_n;
    end else begin
        vec_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln35_reg_352 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        vec_V_V_read = 1'b1;
    end else begin
        vec_V_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln35_fu_227_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((icmp_ln35_fu_227_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln35_1_fu_232_p2 = (indvar_flatten_reg_133 + 40'd1);

assign add_ln35_fu_191_p2 = (shl_ln35_1_fu_186_p2 + shl_ln35_fu_181_p2);

assign add_ln37_fu_280_p2 = (select_ln35_fu_250_p3 + 8'd1);

assign and_ln51_fu_274_p2 = (trunc_ln37_fu_270_p1 & trunc_ln35_fu_266_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln35_reg_352 == 1'd0) & (vec_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln35_reg_352 == 1'd0) & (vec_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln35_reg_352 == 1'd0) & (vec_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((reps_out_full_n == 1'b0) | (reps_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln35_reg_352 == 1'd0) & (vec_V_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((1'd1 == and_ln51_reg_375_pp0_iter2_reg) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign bound_fu_221_p2 = (p_shl4_fu_217_p1 + p_shl_fu_205_p1);

assign h_fu_238_p2 = (32'd1 + ap_phi_mux_h_0_i_phi_fu_148_p4);

assign icmp_ln35_fu_227_p2 = ((indvar_flatten_reg_133 == bound_reg_347) ? 1'b1 : 1'b0);

assign icmp_ln37_fu_244_p2 = ((addr_0_i_reg_155 == 8'd160) ? 1'b1 : 1'b0);

assign out_V_V_din = {{p_037_2_0_i_fu_78}, {v2_V_0_i_fu_82}};

assign p_shl4_fu_217_p1 = tmp_57_fu_209_p3;

assign p_shl_fu_205_p1 = tmp_s_fu_197_p3;

assign reps_out_din = reps_dout;

assign row_store_V_address0 = zext_ln49_fu_300_p1;

assign select_ln35_1_fu_258_p3 = ((icmp_ln37_fu_244_p2[0:0] === 1'b1) ? h_fu_238_p2 : ap_phi_mux_h_0_i_phi_fu_148_p4);

assign select_ln35_fu_250_p3 = ((icmp_ln37_fu_244_p2[0:0] === 1'b1) ? 8'd0 : addr_0_i_reg_155);

assign shl_ln35_1_fu_186_p2 = reps_read_reg_341 << 32'd5;

assign shl_ln35_fu_181_p2 = reps_read_reg_341 << 32'd7;

assign start_out = real_start;

assign tmp_57_fu_209_p3 = {{add_ln35_fu_191_p2}, {5'd0}};

assign tmp_s_fu_197_p3 = {{add_ln35_fu_191_p2}, {7'd0}};

assign trunc_ln35_fu_266_p1 = select_ln35_1_fu_258_p3[0:0];

assign trunc_ln37_fu_270_p1 = select_ln35_fu_250_p3[0:0];

assign trunc_ln96_fu_296_p1 = vec_V_V_dout[63:0];

assign zext_ln49_fu_300_p1 = select_ln35_reg_361;

always @ (posedge ap_clk) begin
    bound_reg_347[9:0] <= 10'b0000000000;
end

endmodule //max_pool2x2_3