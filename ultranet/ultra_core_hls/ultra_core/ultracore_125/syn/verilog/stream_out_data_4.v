// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module stream_out_data_4 (
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
        skip_flag,
        outRowIdx_V,
        startRowBufferIdx_V
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
output  [31:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
output  [9:0] row_buffer_0_V_address0;
output   row_buffer_0_V_ce0;
input  [15:0] row_buffer_0_V_q0;
output  [9:0] row_buffer_1_V_address0;
output   row_buffer_1_V_ce0;
input  [15:0] row_buffer_1_V_q0;
input   skip_flag;
input  [9:0] outRowIdx_V;
input  [1:0] startRowBufferIdx_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_V_write;
reg row_buffer_0_V_ce0;
reg row_buffer_1_V_ce0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln65_reg_447;
reg   [0:0] icmp_ln65_reg_447_pp0_iter2_reg;
reg   [14:0] indvar_flatten_reg_157;
reg   [7:0] t_V_1_reg_168;
reg   [7:0] t_V_reg_179;
reg   [9:0] cycle_0_reg_190;
wire   [0:0] skip_flag_read_read_fu_118_p2;
wire   [10:0] ret_V_fu_205_p2;
reg   [10:0] ret_V_reg_442;
wire   [0:0] icmp_ln65_fu_211_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln65_reg_447_pp0_iter1_reg;
wire   [14:0] add_ln65_fu_217_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [10:0] grp_fu_425_p3;
reg   [10:0] add_ln321_reg_456;
wire   [0:0] or_ln83_fu_295_p2;
reg   [0:0] or_ln83_reg_461;
reg   [0:0] or_ln83_reg_461_pp0_iter1_reg;
wire   [7:0] select_ln96_fu_327_p3;
wire   [7:0] infoldIdx_V_1_fu_341_p3;
wire   [9:0] cycle_fu_349_p2;
wire   [15:0] v1_V_fu_404_p3;
reg   [15:0] v1_V_reg_492;
wire   [15:0] v2_V_fu_411_p3;
reg   [15:0] v2_V_reg_497;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
wire  signed [63:0] sext_ln321_fu_355_p1;
reg    ap_block_pp0_stage0_01001;
wire  signed [10:0] sext_ln1354_fu_201_p1;
wire   [0:0] icmp_ln66_fu_223_p2;
wire   [1:0] wr_V_fu_237_p4;
wire   [6:0] trunc_ln544_fu_256_p1;
wire   [3:0] simdIdx_V_fu_247_p1;
wire   [1:0] rowBufferIdx_V_fu_251_p2;
wire   [10:0] zext_ln1353_fu_272_p1;
wire   [10:0] ret_V_1_fu_276_p2;
wire   [0:0] tmp_6_fu_281_p3;
wire   [0:0] icmp_ln891_fu_289_p2;
wire   [9:0] select_ln66_fu_229_p3;
wire   [0:0] icmp_ln879_fu_307_p2;
wire   [7:0] w_V_fu_313_p2;
wire   [0:0] icmp_ln96_fu_301_p2;
wire   [7:0] select_ln98_fu_319_p3;
wire   [7:0] infoldIdx_V_fu_335_p2;
wire   [7:0] trunc_ln647_1_fu_374_p1;
wire   [7:0] trunc_ln647_fu_360_p1;
wire   [7:0] p_Result_25_1_fu_386_p4;
wire   [7:0] p_Result_s_fu_364_p4;
wire   [15:0] p_Result_26_1_fu_396_p3;
wire   [15:0] p_Result_24_1_fu_378_p3;
wire   [8:0] grp_fu_425_p0;
wire   [1:0] grp_fu_425_p1;
wire   [10:0] grp_fu_425_p2;
wire    ap_CS_fsm_state6;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [10:0] grp_fu_425_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

ultra_net_mac_mulcyx #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 2 ),
    .din2_WIDTH( 11 ),
    .dout_WIDTH( 11 ))
ultra_net_mac_mulcyx_U585(
    .din0(grp_fu_425_p0),
    .din1(grp_fu_425_p1),
    .din2(grp_fu_425_p2),
    .dout(grp_fu_425_p3)
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
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cycle_0_reg_190 <= cycle_fu_349_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        cycle_0_reg_190 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_157 <= add_ln65_fu_217_p2;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_157 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_1_reg_168 <= infoldIdx_V_1_fu_341_p3;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_1_reg_168 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_reg_179 <= select_ln96_fu_327_p3;
    end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_179 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln321_reg_456 <= grp_fu_425_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln65_reg_447 <= icmp_ln65_fu_211_p2;
        icmp_ln65_reg_447_pp0_iter1_reg <= icmp_ln65_reg_447;
        or_ln83_reg_461_pp0_iter1_reg <= or_ln83_reg_461;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln65_reg_447_pp0_iter2_reg <= icmp_ln65_reg_447_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln83_reg_461 <= or_ln83_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        ret_V_reg_442 <= ret_V_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_reg_447_pp0_iter1_reg == 1'd0))) begin
        v1_V_reg_492 <= v1_V_fu_404_p3;
        v2_V_reg_497 <= v2_V_fu_411_p3;
    end
end

always @ (*) begin
    if ((icmp_ln65_fu_211_p2 == 1'd1)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        row_buffer_0_V_ce0 = 1'b1;
    end else begin
        row_buffer_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        row_buffer_1_V_ce0 = 1'b1;
    end else begin
        row_buffer_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_start == 1'b1) & (skip_flag_read_read_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln65_fu_211_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln65_fu_211_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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

assign add_ln65_fu_217_p2 = (indvar_flatten_reg_157 + 15'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter3 = ((icmp_ln65_reg_447_pp0_iter2_reg == 1'd0) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign cycle_fu_349_p2 = (10'd1 + select_ln66_fu_229_p3);

assign grp_fu_425_p0 = 11'd176;

assign grp_fu_425_p1 = grp_fu_425_p10;

assign grp_fu_425_p10 = rowBufferIdx_V_fu_251_p2;

assign grp_fu_425_p2 = {{trunc_ln544_fu_256_p1}, {simdIdx_V_fu_247_p1}};

assign icmp_ln65_fu_211_p2 = ((indvar_flatten_reg_157 == 15'd16896) ? 1'b1 : 1'b0);

assign icmp_ln66_fu_223_p2 = ((cycle_0_reg_190 == 10'd528) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_307_p2 = ((t_V_1_reg_168 == 8'd47) ? 1'b1 : 1'b0);

assign icmp_ln891_fu_289_p2 = (($signed(ret_V_1_fu_276_p2) > $signed(11'd9)) ? 1'b1 : 1'b0);

assign icmp_ln96_fu_301_p2 = ((select_ln66_fu_229_p3 == 10'd527) ? 1'b1 : 1'b0);

assign infoldIdx_V_1_fu_341_p3 = ((icmp_ln879_fu_307_p2[0:0] === 1'b1) ? 8'd0 : infoldIdx_V_fu_335_p2);

assign infoldIdx_V_fu_335_p2 = (8'd1 + t_V_1_reg_168);

assign or_ln83_fu_295_p2 = (tmp_6_fu_281_p3 | icmp_ln891_fu_289_p2);

assign out_V_V_din = {{v1_V_reg_492}, {v2_V_reg_497}};

assign p_Result_24_1_fu_378_p3 = {{trunc_ln647_1_fu_374_p1}, {trunc_ln647_fu_360_p1}};

assign p_Result_25_1_fu_386_p4 = {{row_buffer_1_V_q0[15:8]}};

assign p_Result_26_1_fu_396_p3 = {{p_Result_25_1_fu_386_p4}, {p_Result_s_fu_364_p4}};

assign p_Result_s_fu_364_p4 = {{row_buffer_0_V_q0[15:8]}};

assign ret_V_1_fu_276_p2 = (zext_ln1353_fu_272_p1 + ret_V_reg_442);

assign ret_V_fu_205_p2 = ($signed(sext_ln1354_fu_201_p1) + $signed(11'd2047));

assign rowBufferIdx_V_fu_251_p2 = (wr_V_fu_237_p4 + startRowBufferIdx_V);

assign row_buffer_0_V_address0 = sext_ln321_fu_355_p1;

assign row_buffer_1_V_address0 = sext_ln321_fu_355_p1;

assign select_ln66_fu_229_p3 = ((icmp_ln66_fu_223_p2[0:0] === 1'b1) ? 10'd0 : cycle_0_reg_190);

assign select_ln96_fu_327_p3 = ((icmp_ln96_fu_301_p2[0:0] === 1'b1) ? 8'd0 : select_ln98_fu_319_p3);

assign select_ln98_fu_319_p3 = ((icmp_ln879_fu_307_p2[0:0] === 1'b1) ? w_V_fu_313_p2 : t_V_reg_179);

assign sext_ln1354_fu_201_p1 = $signed(outRowIdx_V);

assign sext_ln321_fu_355_p1 = $signed(add_ln321_reg_456);

assign simdIdx_V_fu_247_p1 = t_V_1_reg_168[3:0];

assign skip_flag_read_read_fu_118_p2 = skip_flag;

assign tmp_6_fu_281_p3 = ret_V_1_fu_276_p2[32'd10];

assign trunc_ln544_fu_256_p1 = t_V_reg_179[6:0];

assign trunc_ln647_1_fu_374_p1 = row_buffer_1_V_q0[7:0];

assign trunc_ln647_fu_360_p1 = row_buffer_0_V_q0[7:0];

assign v1_V_fu_404_p3 = ((or_ln83_reg_461_pp0_iter1_reg[0:0] === 1'b1) ? 16'd0 : p_Result_26_1_fu_396_p3);

assign v2_V_fu_411_p3 = ((or_ln83_reg_461_pp0_iter1_reg[0:0] === 1'b1) ? 16'd0 : p_Result_24_1_fu_378_p3);

assign w_V_fu_313_p2 = (8'd1 + t_V_reg_179);

assign wr_V_fu_237_p4 = {{t_V_1_reg_168[5:4]}};

assign zext_ln1353_fu_272_p1 = wr_V_fu_237_p4;

endmodule //stream_out_data_4
