// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "simd_mac_DSP2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic simd_mac_DSP2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic simd_mac_DSP2::ap_const_logic_0 = sc_dt::Log_0;
const bool simd_mac_DSP2::ap_const_boolean_1 = true;
const bool simd_mac_DSP2::ap_const_boolean_0 = false;
const sc_lv<14> simd_mac_DSP2::ap_const_lv14_0 = "00000000000000";
const sc_lv<32> simd_mac_DSP2::ap_const_lv32_E = "1110";
const sc_lv<32> simd_mac_DSP2::ap_const_lv32_1B = "11011";
const sc_lv<32> simd_mac_DSP2::ap_const_lv32_D = "1101";

simd_mac_DSP2::simd_mac_DSP2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ultra_net_ama_adddQK_U721 = new ultra_net_ama_adddQK<1,1,22,8,4,27,27>("ultra_net_ama_adddQK_U721");
    ultra_net_ama_adddQK_U721->din0(shl_ln_fu_200_p3);
    ultra_net_ama_adddQK_U721->din1(w0vec_0_V_read_1_reg_361_pp0_iter1_reg);
    ultra_net_ama_adddQK_U721->din2(grp_fu_326_p2);
    ultra_net_ama_adddQK_U721->din3(mul_ln1352_1_reg_391);
    ultra_net_ama_adddQK_U721->dout(grp_fu_326_p4);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln647_1_fu_277_p2);
    sensitive << ( trunc_ln700_reg_411 );
    sensitive << ( add_ln647_fu_273_p2 );

    SC_METHOD(thread_add_ln647_fu_273_p2);
    sensitive << ( trunc_ln68_reg_421 );
    sensitive << ( trunc_ln68_1_reg_431 );

    SC_METHOD(thread_add_ln68_1_fu_142_p2);
    sensitive << ( sext_ln68_2_fu_134_p1 );
    sensitive << ( sext_ln68_3_fu_138_p1 );

    SC_METHOD(thread_add_ln68_2_fu_174_p2);
    sensitive << ( sext_ln68_4_fu_167_p1 );
    sensitive << ( sext_ln68_5_fu_171_p1 );

    SC_METHOD(thread_add_ln68_3_fu_194_p2);
    sensitive << ( sext_ln68_7_fu_187_p1 );
    sensitive << ( sext_ln68_8_fu_191_p1 );

    SC_METHOD(thread_add_ln700_1_fu_261_p2);
    sensitive << ( sext_ln700_fu_252_p1 );
    sensitive << ( sext_ln68_9_fu_258_p1 );

    SC_METHOD(thread_add_ln700_2_fu_267_p2);
    sensitive << ( add_ln700_1_fu_261_p2 );
    sensitive << ( sext_ln68_6_fu_255_p1 );

    SC_METHOD(thread_add_ln78_fu_308_p2);
    sensitive << ( p_Result_s_fu_286_p4 );
    sensitive << ( zext_ln78_fu_304_p1 );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter3);

    SC_METHOD(thread_ap_return_0);
    sensitive << ( trunc_ln647_fu_282_p1 );
    sensitive << ( ap_ce_reg );
    sensitive << ( ap_return_0_int_reg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( add_ln78_fu_308_p2 );
    sensitive << ( ap_ce_reg );
    sensitive << ( ap_return_1_int_reg );

    SC_METHOD(thread_grp_fu_326_p2);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( grp_fu_326_p20 );

    SC_METHOD(thread_grp_fu_326_p20);
    sensitive << ( invec_0_V_read_1_reg_381_pp0_iter1_reg );

    SC_METHOD(thread_mul_ln1352_1_fu_154_p0);
    sensitive << ( add_ln68_1_reg_386 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_mul_ln1352_1_fu_154_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( mul_ln1352_1_fu_154_p10 );

    SC_METHOD(thread_mul_ln1352_1_fu_154_p10);
    sensitive << ( invec_1_V_read_1_reg_376 );

    SC_METHOD(thread_mul_ln1352_1_fu_154_p2);
    sensitive << ( mul_ln1352_1_fu_154_p0 );
    sensitive << ( mul_ln1352_1_fu_154_p1 );

    SC_METHOD(thread_mul_ln1352_2_fu_226_p0);
    sensitive << ( add_ln68_2_reg_396 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_mul_ln1352_2_fu_226_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( mul_ln1352_2_fu_226_p10 );

    SC_METHOD(thread_mul_ln1352_2_fu_226_p10);
    sensitive << ( invec_2_V_read_1_reg_371_pp0_iter1_reg );

    SC_METHOD(thread_mul_ln1352_2_fu_226_p2);
    sensitive << ( mul_ln1352_2_fu_226_p0 );
    sensitive << ( mul_ln1352_2_fu_226_p1 );

    SC_METHOD(thread_mul_ln1352_3_fu_242_p0);
    sensitive << ( add_ln68_3_reg_401 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_mul_ln1352_3_fu_242_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( mul_ln1352_3_fu_242_p10 );

    SC_METHOD(thread_mul_ln1352_3_fu_242_p10);
    sensitive << ( invec_3_V_read_1_reg_366_pp0_iter1_reg );

    SC_METHOD(thread_mul_ln1352_3_fu_242_p2);
    sensitive << ( mul_ln1352_3_fu_242_p0 );
    sensitive << ( mul_ln1352_3_fu_242_p1 );

    SC_METHOD(thread_p_Result_s_fu_286_p4);
    sensitive << ( add_ln700_2_fu_267_p2 );

    SC_METHOD(thread_sext_ln68_2_fu_134_p1);
    sensitive << ( shl_ln68_1_fu_126_p3 );

    SC_METHOD(thread_sext_ln68_3_fu_138_p1);
    sensitive << ( w0vec_1_V_read_int_reg );

    SC_METHOD(thread_sext_ln68_4_fu_167_p1);
    sensitive << ( shl_ln68_2_fu_160_p3 );

    SC_METHOD(thread_sext_ln68_5_fu_171_p1);
    sensitive << ( w0vec_2_V_read_1_reg_356 );

    SC_METHOD(thread_sext_ln68_6_fu_255_p1);
    sensitive << ( mul_ln1352_2_reg_416 );

    SC_METHOD(thread_sext_ln68_7_fu_187_p1);
    sensitive << ( shl_ln68_3_fu_180_p3 );

    SC_METHOD(thread_sext_ln68_8_fu_191_p1);
    sensitive << ( w0vec_3_V_read_1_reg_351 );

    SC_METHOD(thread_sext_ln68_9_fu_258_p1);
    sensitive << ( mul_ln1352_3_reg_426 );

    SC_METHOD(thread_sext_ln700_fu_252_p1);
    sensitive << ( add_ln700_reg_406 );

    SC_METHOD(thread_shl_ln68_1_fu_126_p3);
    sensitive << ( w1vec_1_V_read_int_reg );

    SC_METHOD(thread_shl_ln68_2_fu_160_p3);
    sensitive << ( w1vec_2_V_read_1_reg_341 );

    SC_METHOD(thread_shl_ln68_3_fu_180_p3);
    sensitive << ( w1vec_3_V_read_1_reg_336 );

    SC_METHOD(thread_shl_ln_fu_200_p3);
    sensitive << ( w1vec_0_V_read_1_reg_346_pp0_iter1_reg );

    SC_METHOD(thread_tmp_fu_296_p3);
    sensitive << ( add_ln647_1_fu_277_p2 );

    SC_METHOD(thread_trunc_ln647_fu_282_p1);
    sensitive << ( add_ln700_2_fu_267_p2 );

    SC_METHOD(thread_trunc_ln68_1_fu_248_p1);
    sensitive << ( mul_ln1352_3_fu_242_p2 );

    SC_METHOD(thread_trunc_ln68_fu_232_p1);
    sensitive << ( mul_ln1352_2_fu_226_p2 );

    SC_METHOD(thread_trunc_ln700_fu_217_p1);
    sensitive << ( grp_fu_326_p4 );

    SC_METHOD(thread_zext_ln78_fu_304_p1);
    sensitive << ( tmp_fu_296_p3 );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "simd_mac_DSP2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, invec_0_V_read, "(port)invec_0_V_read");
    sc_trace(mVcdFile, invec_1_V_read, "(port)invec_1_V_read");
    sc_trace(mVcdFile, invec_2_V_read, "(port)invec_2_V_read");
    sc_trace(mVcdFile, invec_3_V_read, "(port)invec_3_V_read");
    sc_trace(mVcdFile, w0vec_0_V_read, "(port)w0vec_0_V_read");
    sc_trace(mVcdFile, w0vec_1_V_read, "(port)w0vec_1_V_read");
    sc_trace(mVcdFile, w0vec_2_V_read, "(port)w0vec_2_V_read");
    sc_trace(mVcdFile, w0vec_3_V_read, "(port)w0vec_3_V_read");
    sc_trace(mVcdFile, w1vec_0_V_read, "(port)w1vec_0_V_read");
    sc_trace(mVcdFile, w1vec_1_V_read, "(port)w1vec_1_V_read");
    sc_trace(mVcdFile, w1vec_2_V_read, "(port)w1vec_2_V_read");
    sc_trace(mVcdFile, w1vec_3_V_read, "(port)w1vec_3_V_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_ce, "(port)ap_ce");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, w1vec_3_V_read_1_reg_336, "w1vec_3_V_read_1_reg_336");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter2, "ap_block_state3_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter3, "ap_block_state4_pp0_stage0_iter3");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, w1vec_2_V_read_1_reg_341, "w1vec_2_V_read_1_reg_341");
    sc_trace(mVcdFile, w1vec_0_V_read_1_reg_346, "w1vec_0_V_read_1_reg_346");
    sc_trace(mVcdFile, w1vec_0_V_read_1_reg_346_pp0_iter1_reg, "w1vec_0_V_read_1_reg_346_pp0_iter1_reg");
    sc_trace(mVcdFile, w0vec_3_V_read_1_reg_351, "w0vec_3_V_read_1_reg_351");
    sc_trace(mVcdFile, w0vec_2_V_read_1_reg_356, "w0vec_2_V_read_1_reg_356");
    sc_trace(mVcdFile, w0vec_0_V_read_1_reg_361, "w0vec_0_V_read_1_reg_361");
    sc_trace(mVcdFile, w0vec_0_V_read_1_reg_361_pp0_iter1_reg, "w0vec_0_V_read_1_reg_361_pp0_iter1_reg");
    sc_trace(mVcdFile, invec_3_V_read_1_reg_366, "invec_3_V_read_1_reg_366");
    sc_trace(mVcdFile, invec_3_V_read_1_reg_366_pp0_iter1_reg, "invec_3_V_read_1_reg_366_pp0_iter1_reg");
    sc_trace(mVcdFile, invec_2_V_read_1_reg_371, "invec_2_V_read_1_reg_371");
    sc_trace(mVcdFile, invec_2_V_read_1_reg_371_pp0_iter1_reg, "invec_2_V_read_1_reg_371_pp0_iter1_reg");
    sc_trace(mVcdFile, invec_1_V_read_1_reg_376, "invec_1_V_read_1_reg_376");
    sc_trace(mVcdFile, invec_0_V_read_1_reg_381, "invec_0_V_read_1_reg_381");
    sc_trace(mVcdFile, invec_0_V_read_1_reg_381_pp0_iter1_reg, "invec_0_V_read_1_reg_381_pp0_iter1_reg");
    sc_trace(mVcdFile, add_ln68_1_fu_142_p2, "add_ln68_1_fu_142_p2");
    sc_trace(mVcdFile, add_ln68_1_reg_386, "add_ln68_1_reg_386");
    sc_trace(mVcdFile, mul_ln1352_1_fu_154_p2, "mul_ln1352_1_fu_154_p2");
    sc_trace(mVcdFile, mul_ln1352_1_reg_391, "mul_ln1352_1_reg_391");
    sc_trace(mVcdFile, add_ln68_2_fu_174_p2, "add_ln68_2_fu_174_p2");
    sc_trace(mVcdFile, add_ln68_2_reg_396, "add_ln68_2_reg_396");
    sc_trace(mVcdFile, add_ln68_3_fu_194_p2, "add_ln68_3_fu_194_p2");
    sc_trace(mVcdFile, add_ln68_3_reg_401, "add_ln68_3_reg_401");
    sc_trace(mVcdFile, grp_fu_326_p4, "grp_fu_326_p4");
    sc_trace(mVcdFile, add_ln700_reg_406, "add_ln700_reg_406");
    sc_trace(mVcdFile, trunc_ln700_fu_217_p1, "trunc_ln700_fu_217_p1");
    sc_trace(mVcdFile, trunc_ln700_reg_411, "trunc_ln700_reg_411");
    sc_trace(mVcdFile, mul_ln1352_2_fu_226_p2, "mul_ln1352_2_fu_226_p2");
    sc_trace(mVcdFile, mul_ln1352_2_reg_416, "mul_ln1352_2_reg_416");
    sc_trace(mVcdFile, trunc_ln68_fu_232_p1, "trunc_ln68_fu_232_p1");
    sc_trace(mVcdFile, trunc_ln68_reg_421, "trunc_ln68_reg_421");
    sc_trace(mVcdFile, mul_ln1352_3_fu_242_p2, "mul_ln1352_3_fu_242_p2");
    sc_trace(mVcdFile, mul_ln1352_3_reg_426, "mul_ln1352_3_reg_426");
    sc_trace(mVcdFile, trunc_ln68_1_fu_248_p1, "trunc_ln68_1_fu_248_p1");
    sc_trace(mVcdFile, trunc_ln68_1_reg_431, "trunc_ln68_1_reg_431");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, shl_ln68_1_fu_126_p3, "shl_ln68_1_fu_126_p3");
    sc_trace(mVcdFile, sext_ln68_2_fu_134_p1, "sext_ln68_2_fu_134_p1");
    sc_trace(mVcdFile, sext_ln68_3_fu_138_p1, "sext_ln68_3_fu_138_p1");
    sc_trace(mVcdFile, mul_ln1352_1_fu_154_p0, "mul_ln1352_1_fu_154_p0");
    sc_trace(mVcdFile, mul_ln1352_1_fu_154_p1, "mul_ln1352_1_fu_154_p1");
    sc_trace(mVcdFile, shl_ln68_2_fu_160_p3, "shl_ln68_2_fu_160_p3");
    sc_trace(mVcdFile, sext_ln68_4_fu_167_p1, "sext_ln68_4_fu_167_p1");
    sc_trace(mVcdFile, sext_ln68_5_fu_171_p1, "sext_ln68_5_fu_171_p1");
    sc_trace(mVcdFile, shl_ln68_3_fu_180_p3, "shl_ln68_3_fu_180_p3");
    sc_trace(mVcdFile, sext_ln68_7_fu_187_p1, "sext_ln68_7_fu_187_p1");
    sc_trace(mVcdFile, sext_ln68_8_fu_191_p1, "sext_ln68_8_fu_191_p1");
    sc_trace(mVcdFile, shl_ln_fu_200_p3, "shl_ln_fu_200_p3");
    sc_trace(mVcdFile, mul_ln1352_2_fu_226_p0, "mul_ln1352_2_fu_226_p0");
    sc_trace(mVcdFile, mul_ln1352_2_fu_226_p1, "mul_ln1352_2_fu_226_p1");
    sc_trace(mVcdFile, mul_ln1352_3_fu_242_p0, "mul_ln1352_3_fu_242_p0");
    sc_trace(mVcdFile, mul_ln1352_3_fu_242_p1, "mul_ln1352_3_fu_242_p1");
    sc_trace(mVcdFile, sext_ln700_fu_252_p1, "sext_ln700_fu_252_p1");
    sc_trace(mVcdFile, sext_ln68_9_fu_258_p1, "sext_ln68_9_fu_258_p1");
    sc_trace(mVcdFile, add_ln700_1_fu_261_p2, "add_ln700_1_fu_261_p2");
    sc_trace(mVcdFile, sext_ln68_6_fu_255_p1, "sext_ln68_6_fu_255_p1");
    sc_trace(mVcdFile, add_ln647_fu_273_p2, "add_ln647_fu_273_p2");
    sc_trace(mVcdFile, add_ln700_2_fu_267_p2, "add_ln700_2_fu_267_p2");
    sc_trace(mVcdFile, add_ln647_1_fu_277_p2, "add_ln647_1_fu_277_p2");
    sc_trace(mVcdFile, tmp_fu_296_p3, "tmp_fu_296_p3");
    sc_trace(mVcdFile, p_Result_s_fu_286_p4, "p_Result_s_fu_286_p4");
    sc_trace(mVcdFile, zext_ln78_fu_304_p1, "zext_ln78_fu_304_p1");
    sc_trace(mVcdFile, trunc_ln647_fu_282_p1, "trunc_ln647_fu_282_p1");
    sc_trace(mVcdFile, add_ln78_fu_308_p2, "add_ln78_fu_308_p2");
    sc_trace(mVcdFile, grp_fu_326_p2, "grp_fu_326_p2");
    sc_trace(mVcdFile, ap_ce_reg, "ap_ce_reg");
    sc_trace(mVcdFile, invec_0_V_read_int_reg, "invec_0_V_read_int_reg");
    sc_trace(mVcdFile, invec_1_V_read_int_reg, "invec_1_V_read_int_reg");
    sc_trace(mVcdFile, invec_2_V_read_int_reg, "invec_2_V_read_int_reg");
    sc_trace(mVcdFile, invec_3_V_read_int_reg, "invec_3_V_read_int_reg");
    sc_trace(mVcdFile, w0vec_0_V_read_int_reg, "w0vec_0_V_read_int_reg");
    sc_trace(mVcdFile, w0vec_1_V_read_int_reg, "w0vec_1_V_read_int_reg");
    sc_trace(mVcdFile, w0vec_2_V_read_int_reg, "w0vec_2_V_read_int_reg");
    sc_trace(mVcdFile, w0vec_3_V_read_int_reg, "w0vec_3_V_read_int_reg");
    sc_trace(mVcdFile, w1vec_0_V_read_int_reg, "w1vec_0_V_read_int_reg");
    sc_trace(mVcdFile, w1vec_1_V_read_int_reg, "w1vec_1_V_read_int_reg");
    sc_trace(mVcdFile, w1vec_2_V_read_int_reg, "w1vec_2_V_read_int_reg");
    sc_trace(mVcdFile, w1vec_3_V_read_int_reg, "w1vec_3_V_read_int_reg");
    sc_trace(mVcdFile, ap_return_0_int_reg, "ap_return_0_int_reg");
    sc_trace(mVcdFile, ap_return_1_int_reg, "ap_return_1_int_reg");
    sc_trace(mVcdFile, grp_fu_326_p20, "grp_fu_326_p20");
    sc_trace(mVcdFile, mul_ln1352_1_fu_154_p10, "mul_ln1352_1_fu_154_p10");
    sc_trace(mVcdFile, mul_ln1352_2_fu_226_p10, "mul_ln1352_2_fu_226_p10");
    sc_trace(mVcdFile, mul_ln1352_3_fu_242_p10, "mul_ln1352_3_fu_242_p10");
#endif

    }
}

simd_mac_DSP2::~simd_mac_DSP2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ultra_net_ama_adddQK_U721;
}

void simd_mac_DSP2::thread_ap_clk_no_reset_() {
    ap_ce_reg = ap_ce.read();
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_ce_reg.read(), ap_const_logic_1))) {
        add_ln68_1_reg_386 = add_ln68_1_fu_142_p2.read();
        add_ln68_2_reg_396 = add_ln68_2_fu_174_p2.read();
        add_ln68_3_reg_401 = add_ln68_3_fu_194_p2.read();
        add_ln700_reg_406 = grp_fu_326_p4.read();
        invec_0_V_read_1_reg_381 = invec_0_V_read_int_reg.read();
        invec_0_V_read_1_reg_381_pp0_iter1_reg = invec_0_V_read_1_reg_381.read();
        invec_1_V_read_1_reg_376 = invec_1_V_read_int_reg.read();
        invec_2_V_read_1_reg_371 = invec_2_V_read_int_reg.read();
        invec_2_V_read_1_reg_371_pp0_iter1_reg = invec_2_V_read_1_reg_371.read();
        invec_3_V_read_1_reg_366 = invec_3_V_read_int_reg.read();
        invec_3_V_read_1_reg_366_pp0_iter1_reg = invec_3_V_read_1_reg_366.read();
        mul_ln1352_1_reg_391 = mul_ln1352_1_fu_154_p2.read();
        mul_ln1352_2_reg_416 = mul_ln1352_2_fu_226_p2.read();
        mul_ln1352_3_reg_426 = mul_ln1352_3_fu_242_p2.read();
        trunc_ln68_1_reg_431 = trunc_ln68_1_fu_248_p1.read();
        trunc_ln68_reg_421 = trunc_ln68_fu_232_p1.read();
        trunc_ln700_reg_411 = trunc_ln700_fu_217_p1.read();
        w0vec_0_V_read_1_reg_361 = w0vec_0_V_read_int_reg.read();
        w0vec_0_V_read_1_reg_361_pp0_iter1_reg = w0vec_0_V_read_1_reg_361.read();
        w0vec_2_V_read_1_reg_356 = w0vec_2_V_read_int_reg.read();
        w0vec_3_V_read_1_reg_351 = w0vec_3_V_read_int_reg.read();
        w1vec_0_V_read_1_reg_346 = w1vec_0_V_read_int_reg.read();
        w1vec_0_V_read_1_reg_346_pp0_iter1_reg = w1vec_0_V_read_1_reg_346.read();
        w1vec_2_V_read_1_reg_341 = w1vec_2_V_read_int_reg.read();
        w1vec_3_V_read_1_reg_336 = w1vec_3_V_read_int_reg.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce_reg.read())) {
        ap_return_0_int_reg = trunc_ln647_fu_282_p1.read();
        ap_return_1_int_reg = add_ln78_fu_308_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        invec_0_V_read_int_reg = invec_0_V_read.read();
        invec_1_V_read_int_reg = invec_1_V_read.read();
        invec_2_V_read_int_reg = invec_2_V_read.read();
        invec_3_V_read_int_reg = invec_3_V_read.read();
        w0vec_0_V_read_int_reg = w0vec_0_V_read.read();
        w0vec_1_V_read_int_reg = w0vec_1_V_read.read();
        w0vec_2_V_read_int_reg = w0vec_2_V_read.read();
        w0vec_3_V_read_int_reg = w0vec_3_V_read.read();
        w1vec_0_V_read_int_reg = w1vec_0_V_read.read();
        w1vec_1_V_read_int_reg = w1vec_1_V_read.read();
        w1vec_2_V_read_int_reg = w1vec_2_V_read.read();
        w1vec_3_V_read_int_reg = w1vec_3_V_read.read();
    }
}

void simd_mac_DSP2::thread_add_ln647_1_fu_277_p2() {
    add_ln647_1_fu_277_p2 = (!add_ln647_fu_273_p2.read().is_01() || !trunc_ln700_reg_411.read().is_01())? sc_lv<14>(): (sc_biguint<14>(add_ln647_fu_273_p2.read()) + sc_biguint<14>(trunc_ln700_reg_411.read()));
}

void simd_mac_DSP2::thread_add_ln647_fu_273_p2() {
    add_ln647_fu_273_p2 = (!trunc_ln68_reg_421.read().is_01() || !trunc_ln68_1_reg_431.read().is_01())? sc_lv<14>(): (sc_biguint<14>(trunc_ln68_reg_421.read()) + sc_biguint<14>(trunc_ln68_1_reg_431.read()));
}

void simd_mac_DSP2::thread_add_ln68_1_fu_142_p2() {
    add_ln68_1_fu_142_p2 = (!sext_ln68_2_fu_134_p1.read().is_01() || !sext_ln68_3_fu_138_p1.read().is_01())? sc_lv<23>(): (sc_bigint<23>(sext_ln68_2_fu_134_p1.read()) + sc_bigint<23>(sext_ln68_3_fu_138_p1.read()));
}

void simd_mac_DSP2::thread_add_ln68_2_fu_174_p2() {
    add_ln68_2_fu_174_p2 = (!sext_ln68_4_fu_167_p1.read().is_01() || !sext_ln68_5_fu_171_p1.read().is_01())? sc_lv<23>(): (sc_bigint<23>(sext_ln68_4_fu_167_p1.read()) + sc_bigint<23>(sext_ln68_5_fu_171_p1.read()));
}

void simd_mac_DSP2::thread_add_ln68_3_fu_194_p2() {
    add_ln68_3_fu_194_p2 = (!sext_ln68_7_fu_187_p1.read().is_01() || !sext_ln68_8_fu_191_p1.read().is_01())? sc_lv<23>(): (sc_bigint<23>(sext_ln68_7_fu_187_p1.read()) + sc_bigint<23>(sext_ln68_8_fu_191_p1.read()));
}

void simd_mac_DSP2::thread_add_ln700_1_fu_261_p2() {
    add_ln700_1_fu_261_p2 = (!sext_ln700_fu_252_p1.read().is_01() || !sext_ln68_9_fu_258_p1.read().is_01())? sc_lv<28>(): (sc_bigint<28>(sext_ln700_fu_252_p1.read()) + sc_bigint<28>(sext_ln68_9_fu_258_p1.read()));
}

void simd_mac_DSP2::thread_add_ln700_2_fu_267_p2() {
    add_ln700_2_fu_267_p2 = (!add_ln700_1_fu_261_p2.read().is_01() || !sext_ln68_6_fu_255_p1.read().is_01())? sc_lv<28>(): (sc_biguint<28>(add_ln700_1_fu_261_p2.read()) + sc_bigint<28>(sext_ln68_6_fu_255_p1.read()));
}

void simd_mac_DSP2::thread_add_ln78_fu_308_p2() {
    add_ln78_fu_308_p2 = (!p_Result_s_fu_286_p4.read().is_01() || !zext_ln78_fu_304_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(p_Result_s_fu_286_p4.read()) + sc_biguint<14>(zext_ln78_fu_304_p1.read()));
}

void simd_mac_DSP2::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_block_state4_pp0_stage0_iter3() {
    ap_block_state4_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void simd_mac_DSP2::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_ce_reg.read())) {
        ap_return_0 = ap_return_0_int_reg.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce_reg.read())) {
        ap_return_0 = trunc_ln647_fu_282_p1.read();
    }
}

void simd_mac_DSP2::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_ce_reg.read())) {
        ap_return_1 = ap_return_1_int_reg.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce_reg.read())) {
        ap_return_1 = add_ln78_fu_308_p2.read();
    }
}

void simd_mac_DSP2::thread_grp_fu_326_p2() {
    grp_fu_326_p2 =  (sc_lv<4>) (grp_fu_326_p20.read());
}

void simd_mac_DSP2::thread_grp_fu_326_p20() {
    grp_fu_326_p20 = esl_zext<27,4>(invec_0_V_read_1_reg_381_pp0_iter1_reg.read());
}

void simd_mac_DSP2::thread_mul_ln1352_1_fu_154_p0() {
    mul_ln1352_1_fu_154_p0 = add_ln68_1_reg_386.read();
}

void simd_mac_DSP2::thread_mul_ln1352_1_fu_154_p1() {
    mul_ln1352_1_fu_154_p1 =  (sc_lv<4>) (mul_ln1352_1_fu_154_p10.read());
}

void simd_mac_DSP2::thread_mul_ln1352_1_fu_154_p10() {
    mul_ln1352_1_fu_154_p10 = esl_zext<27,4>(invec_1_V_read_1_reg_376.read());
}

void simd_mac_DSP2::thread_mul_ln1352_1_fu_154_p2() {
    mul_ln1352_1_fu_154_p2 = (!mul_ln1352_1_fu_154_p0.read().is_01() || !mul_ln1352_1_fu_154_p1.read().is_01())? sc_lv<27>(): sc_bigint<23>(mul_ln1352_1_fu_154_p0.read()) * sc_biguint<4>(mul_ln1352_1_fu_154_p1.read());
}

void simd_mac_DSP2::thread_mul_ln1352_2_fu_226_p0() {
    mul_ln1352_2_fu_226_p0 = add_ln68_2_reg_396.read();
}

void simd_mac_DSP2::thread_mul_ln1352_2_fu_226_p1() {
    mul_ln1352_2_fu_226_p1 =  (sc_lv<4>) (mul_ln1352_2_fu_226_p10.read());
}

void simd_mac_DSP2::thread_mul_ln1352_2_fu_226_p10() {
    mul_ln1352_2_fu_226_p10 = esl_zext<27,4>(invec_2_V_read_1_reg_371_pp0_iter1_reg.read());
}

void simd_mac_DSP2::thread_mul_ln1352_2_fu_226_p2() {
    mul_ln1352_2_fu_226_p2 = (!mul_ln1352_2_fu_226_p0.read().is_01() || !mul_ln1352_2_fu_226_p1.read().is_01())? sc_lv<27>(): sc_bigint<23>(mul_ln1352_2_fu_226_p0.read()) * sc_biguint<4>(mul_ln1352_2_fu_226_p1.read());
}

void simd_mac_DSP2::thread_mul_ln1352_3_fu_242_p0() {
    mul_ln1352_3_fu_242_p0 = add_ln68_3_reg_401.read();
}

void simd_mac_DSP2::thread_mul_ln1352_3_fu_242_p1() {
    mul_ln1352_3_fu_242_p1 =  (sc_lv<4>) (mul_ln1352_3_fu_242_p10.read());
}

void simd_mac_DSP2::thread_mul_ln1352_3_fu_242_p10() {
    mul_ln1352_3_fu_242_p10 = esl_zext<27,4>(invec_3_V_read_1_reg_366_pp0_iter1_reg.read());
}

void simd_mac_DSP2::thread_mul_ln1352_3_fu_242_p2() {
    mul_ln1352_3_fu_242_p2 = (!mul_ln1352_3_fu_242_p0.read().is_01() || !mul_ln1352_3_fu_242_p1.read().is_01())? sc_lv<27>(): sc_bigint<23>(mul_ln1352_3_fu_242_p0.read()) * sc_biguint<4>(mul_ln1352_3_fu_242_p1.read());
}

void simd_mac_DSP2::thread_p_Result_s_fu_286_p4() {
    p_Result_s_fu_286_p4 = add_ln700_2_fu_267_p2.read().range(27, 14);
}

void simd_mac_DSP2::thread_sext_ln68_2_fu_134_p1() {
    sext_ln68_2_fu_134_p1 = esl_sext<23,22>(shl_ln68_1_fu_126_p3.read());
}

void simd_mac_DSP2::thread_sext_ln68_3_fu_138_p1() {
    sext_ln68_3_fu_138_p1 = esl_sext<23,8>(w0vec_1_V_read_int_reg.read());
}

void simd_mac_DSP2::thread_sext_ln68_4_fu_167_p1() {
    sext_ln68_4_fu_167_p1 = esl_sext<23,22>(shl_ln68_2_fu_160_p3.read());
}

void simd_mac_DSP2::thread_sext_ln68_5_fu_171_p1() {
    sext_ln68_5_fu_171_p1 = esl_sext<23,8>(w0vec_2_V_read_1_reg_356.read());
}

void simd_mac_DSP2::thread_sext_ln68_6_fu_255_p1() {
    sext_ln68_6_fu_255_p1 = esl_sext<28,27>(mul_ln1352_2_reg_416.read());
}

void simd_mac_DSP2::thread_sext_ln68_7_fu_187_p1() {
    sext_ln68_7_fu_187_p1 = esl_sext<23,22>(shl_ln68_3_fu_180_p3.read());
}

void simd_mac_DSP2::thread_sext_ln68_8_fu_191_p1() {
    sext_ln68_8_fu_191_p1 = esl_sext<23,8>(w0vec_3_V_read_1_reg_351.read());
}

void simd_mac_DSP2::thread_sext_ln68_9_fu_258_p1() {
    sext_ln68_9_fu_258_p1 = esl_sext<28,27>(mul_ln1352_3_reg_426.read());
}

void simd_mac_DSP2::thread_sext_ln700_fu_252_p1() {
    sext_ln700_fu_252_p1 = esl_sext<28,27>(add_ln700_reg_406.read());
}

void simd_mac_DSP2::thread_shl_ln68_1_fu_126_p3() {
    shl_ln68_1_fu_126_p3 = esl_concat<8,14>(w1vec_1_V_read_int_reg.read(), ap_const_lv14_0);
}

void simd_mac_DSP2::thread_shl_ln68_2_fu_160_p3() {
    shl_ln68_2_fu_160_p3 = esl_concat<8,14>(w1vec_2_V_read_1_reg_341.read(), ap_const_lv14_0);
}

void simd_mac_DSP2::thread_shl_ln68_3_fu_180_p3() {
    shl_ln68_3_fu_180_p3 = esl_concat<8,14>(w1vec_3_V_read_1_reg_336.read(), ap_const_lv14_0);
}

void simd_mac_DSP2::thread_shl_ln_fu_200_p3() {
    shl_ln_fu_200_p3 = esl_concat<8,14>(w1vec_0_V_read_1_reg_346_pp0_iter1_reg.read(), ap_const_lv14_0);
}

void simd_mac_DSP2::thread_tmp_fu_296_p3() {
    tmp_fu_296_p3 = add_ln647_1_fu_277_p2.read().range(13, 13);
}

void simd_mac_DSP2::thread_trunc_ln647_fu_282_p1() {
    trunc_ln647_fu_282_p1 = add_ln700_2_fu_267_p2.read().range(14-1, 0);
}

void simd_mac_DSP2::thread_trunc_ln68_1_fu_248_p1() {
    trunc_ln68_1_fu_248_p1 = mul_ln1352_3_fu_242_p2.read().range(14-1, 0);
}

void simd_mac_DSP2::thread_trunc_ln68_fu_232_p1() {
    trunc_ln68_fu_232_p1 = mul_ln1352_2_fu_226_p2.read().range(14-1, 0);
}

void simd_mac_DSP2::thread_trunc_ln700_fu_217_p1() {
    trunc_ln700_fu_217_p1 = grp_fu_326_p4.read().range(14-1, 0);
}

void simd_mac_DSP2::thread_zext_ln78_fu_304_p1() {
    zext_ln78_fu_304_p1 = esl_zext<14,1>(tmp_fu_296_p3.read());
}

}
