// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module simd_mac_DSP2 (
        ap_clk,
        ap_rst,
        invec_0_V_read,
        invec_1_V_read,
        invec_2_V_read,
        invec_3_V_read,
        w0vec_0_V_read,
        w0vec_1_V_read,
        w0vec_2_V_read,
        w0vec_3_V_read,
        w1vec_0_V_read,
        w1vec_1_V_read,
        w1vec_2_V_read,
        w1vec_3_V_read,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [3:0] invec_0_V_read;
input  [3:0] invec_1_V_read;
input  [3:0] invec_2_V_read;
input  [3:0] invec_3_V_read;
input  [7:0] w0vec_0_V_read;
input  [7:0] w0vec_1_V_read;
input  [7:0] w0vec_2_V_read;
input  [7:0] w0vec_3_V_read;
input  [7:0] w1vec_0_V_read;
input  [7:0] w1vec_1_V_read;
input  [7:0] w1vec_2_V_read;
input  [7:0] w1vec_3_V_read;
output  [13:0] ap_return_0;
output  [13:0] ap_return_1;
input   ap_ce;

reg[13:0] ap_return_0;
reg[13:0] ap_return_1;

reg   [7:0] w1vec_3_V_read_1_reg_336;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] w1vec_2_V_read_1_reg_341;
reg   [7:0] w1vec_0_V_read_1_reg_346;
reg   [7:0] w1vec_0_V_read_1_reg_346_pp0_iter1_reg;
reg   [7:0] w0vec_3_V_read_1_reg_351;
reg   [7:0] w0vec_2_V_read_1_reg_356;
reg   [7:0] w0vec_0_V_read_1_reg_361;
reg  signed [7:0] w0vec_0_V_read_1_reg_361_pp0_iter1_reg;
reg   [3:0] invec_3_V_read_1_reg_366;
reg   [3:0] invec_3_V_read_1_reg_366_pp0_iter1_reg;
reg   [3:0] invec_2_V_read_1_reg_371;
reg   [3:0] invec_2_V_read_1_reg_371_pp0_iter1_reg;
reg   [3:0] invec_1_V_read_1_reg_376;
reg   [3:0] invec_0_V_read_1_reg_381;
reg   [3:0] invec_0_V_read_1_reg_381_pp0_iter1_reg;
wire   [22:0] add_ln68_1_fu_142_p2;
reg   [22:0] add_ln68_1_reg_386;
wire   [26:0] mul_ln1352_1_fu_154_p2;
reg   [26:0] mul_ln1352_1_reg_391;
wire   [22:0] add_ln68_2_fu_174_p2;
reg   [22:0] add_ln68_2_reg_396;
wire   [22:0] add_ln68_3_fu_194_p2;
reg   [22:0] add_ln68_3_reg_401;
wire  signed [26:0] grp_fu_326_p4;
reg  signed [26:0] add_ln700_reg_406;
wire   [13:0] trunc_ln700_fu_217_p1;
reg   [13:0] trunc_ln700_reg_411;
wire  signed [26:0] mul_ln1352_2_fu_226_p2;
reg  signed [26:0] mul_ln1352_2_reg_416;
wire   [13:0] trunc_ln68_fu_232_p1;
reg   [13:0] trunc_ln68_reg_421;
wire  signed [26:0] mul_ln1352_3_fu_242_p2;
reg  signed [26:0] mul_ln1352_3_reg_426;
wire   [13:0] trunc_ln68_1_fu_248_p1;
reg   [13:0] trunc_ln68_1_reg_431;
wire    ap_block_pp0_stage0;
wire   [21:0] shl_ln68_1_fu_126_p3;
wire  signed [22:0] sext_ln68_2_fu_134_p1;
wire  signed [22:0] sext_ln68_3_fu_138_p1;
wire  signed [22:0] mul_ln1352_1_fu_154_p0;
wire   [3:0] mul_ln1352_1_fu_154_p1;
wire   [21:0] shl_ln68_2_fu_160_p3;
wire  signed [22:0] sext_ln68_4_fu_167_p1;
wire  signed [22:0] sext_ln68_5_fu_171_p1;
wire   [21:0] shl_ln68_3_fu_180_p3;
wire  signed [22:0] sext_ln68_7_fu_187_p1;
wire  signed [22:0] sext_ln68_8_fu_191_p1;
wire  signed [21:0] shl_ln_fu_200_p3;
wire  signed [22:0] mul_ln1352_2_fu_226_p0;
wire   [3:0] mul_ln1352_2_fu_226_p1;
wire  signed [22:0] mul_ln1352_3_fu_242_p0;
wire   [3:0] mul_ln1352_3_fu_242_p1;
wire  signed [27:0] sext_ln700_fu_252_p1;
wire  signed [27:0] sext_ln68_9_fu_258_p1;
wire   [27:0] add_ln700_1_fu_261_p2;
wire  signed [27:0] sext_ln68_6_fu_255_p1;
wire   [13:0] add_ln647_fu_273_p2;
wire   [27:0] add_ln700_2_fu_267_p2;
wire   [13:0] add_ln647_1_fu_277_p2;
wire   [0:0] tmp_fu_296_p3;
wire   [13:0] p_Result_s_fu_286_p4;
wire   [13:0] zext_ln78_fu_304_p1;
wire   [13:0] trunc_ln647_fu_282_p1;
wire   [13:0] add_ln78_fu_308_p2;
wire   [3:0] grp_fu_326_p2;
reg    ap_ce_reg;
reg   [3:0] invec_0_V_read_int_reg;
reg   [3:0] invec_1_V_read_int_reg;
reg   [3:0] invec_2_V_read_int_reg;
reg   [3:0] invec_3_V_read_int_reg;
reg   [7:0] w0vec_0_V_read_int_reg;
reg   [7:0] w0vec_1_V_read_int_reg;
reg   [7:0] w0vec_2_V_read_int_reg;
reg   [7:0] w0vec_3_V_read_int_reg;
reg   [7:0] w1vec_0_V_read_int_reg;
reg   [7:0] w1vec_1_V_read_int_reg;
reg   [7:0] w1vec_2_V_read_int_reg;
reg   [7:0] w1vec_3_V_read_int_reg;
reg   [13:0] ap_return_0_int_reg;
reg   [13:0] ap_return_1_int_reg;
wire   [26:0] grp_fu_326_p20;
wire   [26:0] mul_ln1352_1_fu_154_p10;
wire   [26:0] mul_ln1352_2_fu_226_p10;
wire   [26:0] mul_ln1352_3_fu_242_p10;

ultra_net_ama_adddQK #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 4 ),
    .din3_WIDTH( 27 ),
    .dout_WIDTH( 27 ))
ultra_net_ama_adddQK_U721(
    .din0(shl_ln_fu_200_p3),
    .din1(w0vec_0_V_read_1_reg_361_pp0_iter1_reg),
    .din2(grp_fu_326_p2),
    .din3(mul_ln1352_1_reg_391),
    .dout(grp_fu_326_p4)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        add_ln68_1_reg_386 <= add_ln68_1_fu_142_p2;
        add_ln68_2_reg_396 <= add_ln68_2_fu_174_p2;
        add_ln68_3_reg_401 <= add_ln68_3_fu_194_p2;
        add_ln700_reg_406 <= grp_fu_326_p4;
        invec_0_V_read_1_reg_381 <= invec_0_V_read_int_reg;
        invec_0_V_read_1_reg_381_pp0_iter1_reg <= invec_0_V_read_1_reg_381;
        invec_1_V_read_1_reg_376 <= invec_1_V_read_int_reg;
        invec_2_V_read_1_reg_371 <= invec_2_V_read_int_reg;
        invec_2_V_read_1_reg_371_pp0_iter1_reg <= invec_2_V_read_1_reg_371;
        invec_3_V_read_1_reg_366 <= invec_3_V_read_int_reg;
        invec_3_V_read_1_reg_366_pp0_iter1_reg <= invec_3_V_read_1_reg_366;
        mul_ln1352_1_reg_391 <= mul_ln1352_1_fu_154_p2;
        mul_ln1352_2_reg_416 <= mul_ln1352_2_fu_226_p2;
        mul_ln1352_3_reg_426 <= mul_ln1352_3_fu_242_p2;
        trunc_ln68_1_reg_431 <= trunc_ln68_1_fu_248_p1;
        trunc_ln68_reg_421 <= trunc_ln68_fu_232_p1;
        trunc_ln700_reg_411 <= trunc_ln700_fu_217_p1;
        w0vec_0_V_read_1_reg_361 <= w0vec_0_V_read_int_reg;
        w0vec_0_V_read_1_reg_361_pp0_iter1_reg <= w0vec_0_V_read_1_reg_361;
        w0vec_2_V_read_1_reg_356 <= w0vec_2_V_read_int_reg;
        w0vec_3_V_read_1_reg_351 <= w0vec_3_V_read_int_reg;
        w1vec_0_V_read_1_reg_346 <= w1vec_0_V_read_int_reg;
        w1vec_0_V_read_1_reg_346_pp0_iter1_reg <= w1vec_0_V_read_1_reg_346;
        w1vec_2_V_read_1_reg_341 <= w1vec_2_V_read_int_reg;
        w1vec_3_V_read_1_reg_336 <= w1vec_3_V_read_int_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= trunc_ln647_fu_282_p1;
        ap_return_1_int_reg <= add_ln78_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        invec_0_V_read_int_reg <= invec_0_V_read;
        invec_1_V_read_int_reg <= invec_1_V_read;
        invec_2_V_read_int_reg <= invec_2_V_read;
        invec_3_V_read_int_reg <= invec_3_V_read;
        w0vec_0_V_read_int_reg <= w0vec_0_V_read;
        w0vec_1_V_read_int_reg <= w0vec_1_V_read;
        w0vec_2_V_read_int_reg <= w0vec_2_V_read;
        w0vec_3_V_read_int_reg <= w0vec_3_V_read;
        w1vec_0_V_read_int_reg <= w1vec_0_V_read;
        w1vec_1_V_read_int_reg <= w1vec_1_V_read;
        w1vec_2_V_read_int_reg <= w1vec_2_V_read;
        w1vec_3_V_read_int_reg <= w1vec_3_V_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = trunc_ln647_fu_282_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = add_ln78_fu_308_p2;
    end
end

assign add_ln647_1_fu_277_p2 = (add_ln647_fu_273_p2 + trunc_ln700_reg_411);

assign add_ln647_fu_273_p2 = (trunc_ln68_reg_421 + trunc_ln68_1_reg_431);

assign add_ln68_1_fu_142_p2 = ($signed(sext_ln68_2_fu_134_p1) + $signed(sext_ln68_3_fu_138_p1));

assign add_ln68_2_fu_174_p2 = ($signed(sext_ln68_4_fu_167_p1) + $signed(sext_ln68_5_fu_171_p1));

assign add_ln68_3_fu_194_p2 = ($signed(sext_ln68_7_fu_187_p1) + $signed(sext_ln68_8_fu_191_p1));

assign add_ln700_1_fu_261_p2 = ($signed(sext_ln700_fu_252_p1) + $signed(sext_ln68_9_fu_258_p1));

assign add_ln700_2_fu_267_p2 = ($signed(add_ln700_1_fu_261_p2) + $signed(sext_ln68_6_fu_255_p1));

assign add_ln78_fu_308_p2 = (p_Result_s_fu_286_p4 + zext_ln78_fu_304_p1);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign grp_fu_326_p2 = grp_fu_326_p20;

assign grp_fu_326_p20 = invec_0_V_read_1_reg_381_pp0_iter1_reg;

assign mul_ln1352_1_fu_154_p0 = add_ln68_1_reg_386;

assign mul_ln1352_1_fu_154_p1 = mul_ln1352_1_fu_154_p10;

assign mul_ln1352_1_fu_154_p10 = invec_1_V_read_1_reg_376;

assign mul_ln1352_1_fu_154_p2 = ($signed(mul_ln1352_1_fu_154_p0) * $signed({{1'b0}, {mul_ln1352_1_fu_154_p1}}));

assign mul_ln1352_2_fu_226_p0 = add_ln68_2_reg_396;

assign mul_ln1352_2_fu_226_p1 = mul_ln1352_2_fu_226_p10;

assign mul_ln1352_2_fu_226_p10 = invec_2_V_read_1_reg_371_pp0_iter1_reg;

assign mul_ln1352_2_fu_226_p2 = ($signed(mul_ln1352_2_fu_226_p0) * $signed({{1'b0}, {mul_ln1352_2_fu_226_p1}}));

assign mul_ln1352_3_fu_242_p0 = add_ln68_3_reg_401;

assign mul_ln1352_3_fu_242_p1 = mul_ln1352_3_fu_242_p10;

assign mul_ln1352_3_fu_242_p10 = invec_3_V_read_1_reg_366_pp0_iter1_reg;

assign mul_ln1352_3_fu_242_p2 = ($signed(mul_ln1352_3_fu_242_p0) * $signed({{1'b0}, {mul_ln1352_3_fu_242_p1}}));

assign p_Result_s_fu_286_p4 = {{add_ln700_2_fu_267_p2[27:14]}};

assign sext_ln68_2_fu_134_p1 = $signed(shl_ln68_1_fu_126_p3);

assign sext_ln68_3_fu_138_p1 = $signed(w0vec_1_V_read_int_reg);

assign sext_ln68_4_fu_167_p1 = $signed(shl_ln68_2_fu_160_p3);

assign sext_ln68_5_fu_171_p1 = $signed(w0vec_2_V_read_1_reg_356);

assign sext_ln68_6_fu_255_p1 = mul_ln1352_2_reg_416;

assign sext_ln68_7_fu_187_p1 = $signed(shl_ln68_3_fu_180_p3);

assign sext_ln68_8_fu_191_p1 = $signed(w0vec_3_V_read_1_reg_351);

assign sext_ln68_9_fu_258_p1 = mul_ln1352_3_reg_426;

assign sext_ln700_fu_252_p1 = add_ln700_reg_406;

assign shl_ln68_1_fu_126_p3 = {{w1vec_1_V_read_int_reg}, {14'd0}};

assign shl_ln68_2_fu_160_p3 = {{w1vec_2_V_read_1_reg_341}, {14'd0}};

assign shl_ln68_3_fu_180_p3 = {{w1vec_3_V_read_1_reg_336}, {14'd0}};

assign shl_ln_fu_200_p3 = {{w1vec_0_V_read_1_reg_346_pp0_iter1_reg}, {14'd0}};

assign tmp_fu_296_p3 = add_ln647_1_fu_277_p2[32'd13];

assign trunc_ln647_fu_282_p1 = add_ln700_2_fu_267_p2[13:0];

assign trunc_ln68_1_fu_248_p1 = mul_ln1352_3_fu_242_p2[13:0];

assign trunc_ln68_fu_232_p1 = mul_ln1352_2_fu_226_p2[13:0];

assign trunc_ln700_fu_217_p1 = grp_fu_326_p4[13:0];

assign zext_ln78_fu_304_p1 = tmp_fu_296_p3;

endmodule //simd_mac_DSP2