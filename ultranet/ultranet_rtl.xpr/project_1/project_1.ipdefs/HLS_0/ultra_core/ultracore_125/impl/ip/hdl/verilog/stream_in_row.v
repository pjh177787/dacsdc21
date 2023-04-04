// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stream_in_row (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        row_buffer_0_V_address1,
        row_buffer_0_V_ce1,
        row_buffer_0_V_we1,
        row_buffer_0_V_d1,
        row_buffer_1_V_address1,
        row_buffer_1_V_ce1,
        row_buffer_1_V_we1,
        row_buffer_1_V_d1,
        skip_flag,
        rowBufferIdx_V
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [9:0] row_buffer_0_V_address1;
output   row_buffer_0_V_ce1;
output   row_buffer_0_V_we1;
output  [31:0] row_buffer_0_V_d1;
output  [9:0] row_buffer_1_V_address1;
output   row_buffer_1_V_ce1;
output   row_buffer_1_V_we1;
output  [31:0] row_buffer_1_V_d1;
input   skip_flag;
input  [1:0] rowBufferIdx_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_read;
reg row_buffer_0_V_ce1;
reg row_buffer_0_V_we1;
reg row_buffer_1_V_ce1;
reg row_buffer_1_V_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln28_reg_353;
reg   [0:0] icmp_ln33_reg_372;
reg   [8:0] indvar_flatten_reg_140;
reg   [3:0] peIdx_0_reg_151;
reg   [15:0] v2_V_reg_163;
reg   [5:0] w_0_reg_175;
wire   [0:0] skip_flag_read_read_fu_94_p2;
wire   [9:0] mul_ln321_fu_214_p2;
reg   [9:0] mul_ln321_reg_348;
wire   [0:0] icmp_ln28_fu_220_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_predicate_op31_read_state3;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln28_reg_353_pp0_iter1_reg;
wire   [8:0] add_ln28_fu_226_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln29_fu_232_p2;
reg   [0:0] icmp_ln29_reg_362;
wire   [5:0] select_ln42_fu_238_p3;
reg   [5:0] select_ln42_reg_367;
wire   [0:0] icmp_ln33_fu_246_p2;
wire   [5:0] w_fu_252_p2;
wire   [3:0] select_ln42_2_fu_264_p3;
reg   [3:0] select_ln42_2_reg_381;
wire   [0:0] trunc_ln42_fu_285_p1;
reg   [0:0] trunc_ln42_reg_386;
wire   [15:0] Part2_V_fu_299_p1;
wire   [9:0] add_ln321_fu_324_p2;
reg   [9:0] add_ln321_reg_400;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg   [3:0] ap_phi_mux_peIdx_0_phi_fu_155_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_reg_V_reg_186;
reg   [15:0] ap_phi_reg_pp0_iter1_reg_V_reg_186;
reg   [15:0] ap_phi_reg_pp0_iter2_reg_V_reg_186;
wire   [15:0] ap_phi_reg_pp0_iter0_v1_V_reg_199;
reg   [15:0] ap_phi_reg_pp0_iter1_v1_V_reg_199;
reg   [15:0] ap_phi_reg_pp0_iter2_v1_V_reg_199;
wire   [63:0] zext_ln321_11_fu_339_p1;
wire   [31:0] p_Result_s_fu_329_p3;
wire   [1:0] mul_ln321_fu_214_p0;
wire   [3:0] peIdx_fu_258_p2;
wire   [2:0] zext_ln42_1_mid2_v_fu_271_p4;
wire   [7:0] shl_ln_fu_303_p3;
wire   [8:0] zext_ln42_2_fu_310_p1;
wire   [8:0] zext_ln42_fu_281_p1;
wire   [8:0] add_ln42_fu_314_p2;
wire   [9:0] zext_ln321_10_fu_320_p1;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [9:0] mul_ln321_fu_214_p00;
reg    ap_condition_104;
reg    ap_condition_119;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

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
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_104)) begin
        if (((icmp_ln28_fu_220_p2 == 1'd0) & (icmp_ln33_fu_246_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_reg_V_reg_186 <= 16'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_reg_V_reg_186 <= ap_phi_reg_pp0_iter0_reg_V_reg_186;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_104)) begin
        if (((icmp_ln28_fu_220_p2 == 1'd0) & (icmp_ln33_fu_246_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_v1_V_reg_199 <= 16'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_v1_V_reg_199 <= ap_phi_reg_pp0_iter0_v1_V_reg_199;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        if (((icmp_ln33_reg_372 == 1'd0) & (icmp_ln28_reg_353 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_reg_V_reg_186 <= {{in_V_V_dout[31:16]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_reg_V_reg_186 <= ap_phi_reg_pp0_iter1_reg_V_reg_186;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        if (((icmp_ln33_reg_372 == 1'd0) & (icmp_ln28_reg_353 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_v1_V_reg_199 <= Part2_V_fu_299_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_v1_V_reg_199 <= ap_phi_reg_pp0_iter1_v1_V_reg_199;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_fu_220_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_140 <= add_ln28_fu_226_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_140 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_reg_353_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        peIdx_0_reg_151 <= select_ln42_2_reg_381;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        peIdx_0_reg_151 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_reg_353_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2_V_reg_163 <= ap_phi_reg_pp0_iter2_reg_V_reg_186;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        v2_V_reg_163 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_fu_220_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        w_0_reg_175 <= w_fu_252_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        w_0_reg_175 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln321_reg_400 <= add_ln321_fu_324_p2;
        icmp_ln28_reg_353 <= icmp_ln28_fu_220_p2;
        icmp_ln28_reg_353_pp0_iter1_reg <= icmp_ln28_reg_353;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_fu_220_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln29_reg_362 <= icmp_ln29_fu_232_p2;
        icmp_ln33_reg_372 <= icmp_ln33_fu_246_p2;
        select_ln42_reg_367 <= select_ln42_fu_238_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln321_reg_348[9 : 2] <= mul_ln321_fu_214_p2[9 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_reg_353 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln42_2_reg_381 <= select_ln42_2_fu_264_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln28_reg_353 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln42_reg_386 <= trunc_ln42_fu_285_p1;
    end
end

always @ (*) begin
    if ((icmp_ln28_fu_220_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln28_reg_353_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_peIdx_0_phi_fu_155_p4 = select_ln42_2_reg_381;
    end else begin
        ap_phi_mux_peIdx_0_phi_fu_155_p4 = peIdx_0_reg_151;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln33_reg_372 == 1'd0) & (icmp_ln28_reg_353 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op31_read_state3 == 1'b1))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        row_buffer_0_V_ce1 = 1'b1;
    end else begin
        row_buffer_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln42_reg_386 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        row_buffer_0_V_we1 = 1'b1;
    end else begin
        row_buffer_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        row_buffer_1_V_ce1 = 1'b1;
    end else begin
        row_buffer_1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln42_reg_386 == 1'd1))) begin
        row_buffer_1_V_we1 = 1'b1;
    end else begin
        row_buffer_1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln28_fu_220_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((icmp_ln28_fu_220_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Part2_V_fu_299_p1 = in_V_V_dout[15:0];

assign add_ln28_fu_226_p2 = (indvar_flatten_reg_140 + 9'd1);

assign add_ln321_fu_324_p2 = (zext_ln321_10_fu_320_p1 + mul_ln321_reg_348);

assign add_ln42_fu_314_p2 = (zext_ln42_2_fu_310_p1 + zext_ln42_fu_281_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op31_read_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op31_read_state3 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((in_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state3 == 1'b1));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_104 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_119 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_reg_V_reg_186 = 'bx;

assign ap_phi_reg_pp0_iter0_v1_V_reg_199 = 'bx;

always @ (*) begin
    ap_predicate_op31_read_state3 = ((icmp_ln33_reg_372 == 1'd0) & (icmp_ln28_reg_353 == 1'd0));
end

assign icmp_ln28_fu_220_p2 = ((indvar_flatten_reg_140 == 9'd328) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_232_p2 = ((w_0_reg_175 == 6'd41) ? 1'b1 : 1'b0);

assign icmp_ln33_fu_246_p2 = ((select_ln42_fu_238_p3 == 6'd40) ? 1'b1 : 1'b0);

assign mul_ln321_fu_214_p0 = mul_ln321_fu_214_p00;

assign mul_ln321_fu_214_p00 = rowBufferIdx_V;

assign mul_ln321_fu_214_p2 = (mul_ln321_fu_214_p0 * $signed('hA4));

assign p_Result_s_fu_329_p3 = {{ap_phi_reg_pp0_iter2_v1_V_reg_199}, {v2_V_reg_163}};

assign peIdx_fu_258_p2 = (4'd1 + ap_phi_mux_peIdx_0_phi_fu_155_p4);

assign row_buffer_0_V_address1 = zext_ln321_11_fu_339_p1;

assign row_buffer_0_V_d1 = p_Result_s_fu_329_p3;

assign row_buffer_1_V_address1 = zext_ln321_11_fu_339_p1;

assign row_buffer_1_V_d1 = p_Result_s_fu_329_p3;

assign select_ln42_2_fu_264_p3 = ((icmp_ln29_reg_362[0:0] === 1'b1) ? peIdx_fu_258_p2 : ap_phi_mux_peIdx_0_phi_fu_155_p4);

assign select_ln42_fu_238_p3 = ((icmp_ln29_fu_232_p2[0:0] === 1'b1) ? 6'd0 : w_0_reg_175);

assign shl_ln_fu_303_p3 = {{select_ln42_reg_367}, {2'd0}};

assign skip_flag_read_read_fu_94_p2 = skip_flag;

assign trunc_ln42_fu_285_p1 = select_ln42_2_fu_264_p3[0:0];

assign w_fu_252_p2 = (select_ln42_fu_238_p3 + 6'd1);

assign zext_ln321_10_fu_320_p1 = add_ln42_fu_314_p2;

assign zext_ln321_11_fu_339_p1 = add_ln321_reg_400;

assign zext_ln42_1_mid2_v_fu_271_p4 = {{select_ln42_2_fu_264_p3[3:1]}};

assign zext_ln42_2_fu_310_p1 = shl_ln_fu_303_p3;

assign zext_ln42_fu_281_p1 = zext_ln42_1_mid2_v_fu_271_p4;

always @ (posedge ap_clk) begin
    mul_ln321_reg_348[1:0] <= 2'b00;
end

endmodule //stream_in_row
