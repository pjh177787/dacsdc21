// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _simd_mac9_DSP2_HH_
#define _simd_mac9_DSP2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ultra_net_mul_multde.h"

namespace ap_rtl {

struct simd_mac9_DSP2 : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > invec_0_V_read;
    sc_in< sc_lv<8> > invec_1_V_read;
    sc_in< sc_lv<8> > invec_2_V_read;
    sc_in< sc_lv<8> > invec_3_V_read;
    sc_in< sc_lv<8> > invec_4_V_read;
    sc_in< sc_lv<8> > invec_5_V_read;
    sc_in< sc_lv<8> > invec_6_V_read;
    sc_in< sc_lv<8> > invec_7_V_read;
    sc_in< sc_lv<8> > invec_8_V_read;
    sc_in< sc_lv<8> > w0vec_0_V_read;
    sc_in< sc_lv<8> > w0vec_1_V_read;
    sc_in< sc_lv<8> > w0vec_2_V_read;
    sc_in< sc_lv<8> > w0vec_3_V_read;
    sc_in< sc_lv<8> > w0vec_4_V_read;
    sc_in< sc_lv<8> > w0vec_5_V_read;
    sc_in< sc_lv<8> > w0vec_6_V_read;
    sc_in< sc_lv<8> > w0vec_7_V_read;
    sc_in< sc_lv<8> > w0vec_8_V_read;
    sc_in< sc_lv<8> > w1vec_0_V_read;
    sc_in< sc_lv<8> > w1vec_1_V_read;
    sc_in< sc_lv<8> > w1vec_2_V_read;
    sc_in< sc_lv<8> > w1vec_3_V_read;
    sc_in< sc_lv<8> > w1vec_4_V_read;
    sc_in< sc_lv<8> > w1vec_5_V_read;
    sc_in< sc_lv<8> > w1vec_6_V_read;
    sc_in< sc_lv<8> > w1vec_7_V_read;
    sc_in< sc_lv<8> > w1vec_8_V_read;
    sc_out< sc_lv<20> > ap_return_0;
    sc_out< sc_lv<20> > ap_return_1;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    simd_mac9_DSP2(sc_module_name name);
    SC_HAS_PROCESS(simd_mac9_DSP2);

    ~simd_mac9_DSP2();

    sc_trace_file* mVcdFile;

    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U104;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U105;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U106;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U107;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U108;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U109;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U110;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U111;
    ultra_net_mul_multde<1,1,28,8,36>* ultra_net_mul_multde_U112;
    sc_signal< sc_lv<8> > w1vec_8_V_read_1_reg_680;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<8> > w0vec_8_V_read_1_reg_685;
    sc_signal< sc_lv<8> > invec_8_V_read_1_reg_690;
    sc_signal< sc_lv<8> > invec_8_V_read_1_reg_690_pp0_iter1_reg;
    sc_signal< sc_lv<8> > invec_7_V_read_1_reg_695;
    sc_signal< sc_lv<8> > invec_6_V_read_1_reg_700;
    sc_signal< sc_lv<8> > invec_5_V_read_1_reg_705;
    sc_signal< sc_lv<8> > invec_4_V_read_1_reg_710;
    sc_signal< sc_lv<8> > invec_3_V_read_2_reg_715;
    sc_signal< sc_lv<8> > invec_2_V_read_2_reg_720;
    sc_signal< sc_lv<8> > invec_1_V_read_2_reg_725;
    sc_signal< sc_lv<8> > invec_0_V_read_2_reg_730;
    sc_signal< sc_lv<28> > add_ln68_fu_246_p2;
    sc_signal< sc_lv<28> > add_ln68_reg_735;
    sc_signal< sc_lv<28> > add_ln68_4_fu_264_p2;
    sc_signal< sc_lv<28> > add_ln68_4_reg_740;
    sc_signal< sc_lv<28> > add_ln68_5_fu_282_p2;
    sc_signal< sc_lv<28> > add_ln68_5_reg_745;
    sc_signal< sc_lv<28> > add_ln68_6_fu_300_p2;
    sc_signal< sc_lv<28> > add_ln68_6_reg_750;
    sc_signal< sc_lv<28> > add_ln68_7_fu_318_p2;
    sc_signal< sc_lv<28> > add_ln68_7_reg_755;
    sc_signal< sc_lv<28> > add_ln68_8_fu_336_p2;
    sc_signal< sc_lv<28> > add_ln68_8_reg_760;
    sc_signal< sc_lv<28> > add_ln68_9_fu_354_p2;
    sc_signal< sc_lv<28> > add_ln68_9_reg_765;
    sc_signal< sc_lv<28> > add_ln68_10_fu_372_p2;
    sc_signal< sc_lv<28> > add_ln68_10_reg_770;
    sc_signal< sc_lv<36> > mul_ln1352_fu_624_p2;
    sc_signal< sc_lv<36> > mul_ln1352_reg_775;
    sc_signal< sc_lv<36> > mul_ln1352_4_fu_630_p2;
    sc_signal< sc_lv<36> > mul_ln1352_4_reg_780;
    sc_signal< sc_lv<36> > mul_ln1352_5_fu_636_p2;
    sc_signal< sc_lv<36> > mul_ln1352_5_reg_785;
    sc_signal< sc_lv<36> > mul_ln1352_6_fu_642_p2;
    sc_signal< sc_lv<36> > mul_ln1352_6_reg_790;
    sc_signal< sc_lv<36> > mul_ln1352_7_fu_648_p2;
    sc_signal< sc_lv<36> > mul_ln1352_7_reg_795;
    sc_signal< sc_lv<36> > mul_ln1352_8_fu_654_p2;
    sc_signal< sc_lv<36> > mul_ln1352_8_reg_800;
    sc_signal< sc_lv<36> > mul_ln1352_9_fu_661_p2;
    sc_signal< sc_lv<36> > mul_ln1352_9_reg_805;
    sc_signal< sc_lv<36> > mul_ln1352_10_fu_667_p2;
    sc_signal< sc_lv<36> > mul_ln1352_10_reg_810;
    sc_signal< sc_lv<20> > trunc_ln700_1_fu_426_p1;
    sc_signal< sc_lv<20> > trunc_ln700_1_reg_815;
    sc_signal< sc_lv<20> > trunc_ln700_1_reg_815_pp0_iter2_reg;
    sc_signal< sc_lv<28> > add_ln68_11_fu_439_p2;
    sc_signal< sc_lv<28> > add_ln68_11_reg_820;
    sc_signal< sc_lv<20> > trunc_ln700_fu_505_p1;
    sc_signal< sc_lv<20> > trunc_ln700_reg_825;
    sc_signal< sc_lv<20> > trunc_ln700_2_fu_535_p1;
    sc_signal< sc_lv<20> > trunc_ln700_2_reg_830;
    sc_signal< sc_lv<39> > add_ln700_8_fu_539_p2;
    sc_signal< sc_lv<39> > add_ln700_8_reg_835;
    sc_signal< sc_lv<36> > mul_ln1352_11_fu_673_p2;
    sc_signal< sc_lv<36> > mul_ln1352_11_reg_840;
    sc_signal< sc_lv<20> > trunc_ln700_3_fu_551_p1;
    sc_signal< sc_lv<20> > trunc_ln700_3_reg_845;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<28> > shl_ln_fu_234_p3;
    sc_signal< sc_lv<28> > sext_ln68_fu_242_p1;
    sc_signal< sc_lv<28> > shl_ln68_4_fu_252_p3;
    sc_signal< sc_lv<28> > sext_ln68_1_fu_260_p1;
    sc_signal< sc_lv<28> > shl_ln68_5_fu_270_p3;
    sc_signal< sc_lv<28> > sext_ln68_2_fu_278_p1;
    sc_signal< sc_lv<28> > shl_ln68_6_fu_288_p3;
    sc_signal< sc_lv<28> > sext_ln68_3_fu_296_p1;
    sc_signal< sc_lv<28> > shl_ln68_7_fu_306_p3;
    sc_signal< sc_lv<28> > sext_ln68_4_fu_314_p1;
    sc_signal< sc_lv<28> > shl_ln68_8_fu_324_p3;
    sc_signal< sc_lv<28> > sext_ln68_5_fu_332_p1;
    sc_signal< sc_lv<28> > shl_ln68_9_fu_342_p3;
    sc_signal< sc_lv<28> > sext_ln68_6_fu_350_p1;
    sc_signal< sc_lv<28> > shl_ln68_s_fu_360_p3;
    sc_signal< sc_lv<28> > sext_ln68_7_fu_368_p1;
    sc_signal< sc_lv<28> > shl_ln68_1_fu_429_p3;
    sc_signal< sc_lv<28> > sext_ln68_8_fu_436_p1;
    sc_signal< sc_lv<37> > sext_ln215_4_fu_445_p1;
    sc_signal< sc_lv<37> > sext_ln700_fu_448_p1;
    sc_signal< sc_lv<37> > add_ln700_fu_451_p2;
    sc_signal< sc_lv<37> > sext_ln68_11_fu_461_p1;
    sc_signal< sc_lv<37> > sext_ln700_2_fu_464_p1;
    sc_signal< sc_lv<37> > add_ln700_3_fu_467_p2;
    sc_signal< sc_lv<38> > sext_ln700_3_fu_473_p1;
    sc_signal< sc_lv<38> > sext_ln700_1_fu_457_p1;
    sc_signal< sc_lv<38> > add_ln700_4_fu_483_p2;
    sc_signal< sc_lv<37> > add_ln700_12_fu_477_p2;
    sc_signal< sc_lv<39> > sext_ln700_4_fu_489_p1;
    sc_signal< sc_lv<39> > sext_ln700_5_fu_496_p1;
    sc_signal< sc_lv<37> > sext_ln68_12_fu_493_p1;
    sc_signal< sc_lv<37> > sext_ln700_6_fu_502_p1;
    sc_signal< sc_lv<37> > add_ln700_6_fu_515_p2;
    sc_signal< sc_lv<38> > sext_ln700_7_fu_521_p1;
    sc_signal< sc_lv<38> > sext_ln68_13_fu_499_p1;
    sc_signal< sc_lv<38> > add_ln700_7_fu_525_p2;
    sc_signal< sc_lv<39> > sext_ln700_8_fu_531_p1;
    sc_signal< sc_lv<39> > add_ln700_5_fu_509_p2;
    sc_signal< sc_lv<20> > add_ln700_10_fu_554_p2;
    sc_signal< sc_lv<40> > sext_ln700_9_fu_563_p1;
    sc_signal< sc_lv<40> > sext_ln68_10_fu_566_p1;
    sc_signal< sc_lv<20> > add_ln700_11_fu_558_p2;
    sc_signal< sc_lv<40> > add_ln700_9_fu_569_p2;
    sc_signal< sc_lv<20> > add_ln647_fu_575_p2;
    sc_signal< sc_lv<1> > tmp_fu_594_p3;
    sc_signal< sc_lv<20> > p_Result_s_fu_584_p4;
    sc_signal< sc_lv<20> > zext_ln78_fu_602_p1;
    sc_signal< sc_lv<20> > trunc_ln647_fu_580_p1;
    sc_signal< sc_lv<20> > add_ln78_fu_606_p2;
    sc_signal< sc_lv<8> > mul_ln1352_fu_624_p1;
    sc_signal< sc_lv<8> > mul_ln1352_4_fu_630_p1;
    sc_signal< sc_lv<8> > mul_ln1352_5_fu_636_p1;
    sc_signal< sc_lv<8> > mul_ln1352_6_fu_642_p1;
    sc_signal< sc_lv<8> > mul_ln1352_7_fu_648_p1;
    sc_signal< sc_lv<8> > mul_ln1352_8_fu_654_p1;
    sc_signal< sc_lv<8> > mul_ln1352_9_fu_661_p1;
    sc_signal< sc_lv<8> > mul_ln1352_10_fu_667_p1;
    sc_signal< sc_lv<8> > mul_ln1352_11_fu_673_p1;
    sc_signal< sc_logic > ap_ce_reg;
    sc_signal< sc_lv<8> > invec_0_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_1_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_2_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_3_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_4_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_5_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_6_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_7_V_read_int_reg;
    sc_signal< sc_lv<8> > invec_8_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_0_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_1_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_2_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_3_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_4_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_5_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_6_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_7_V_read_int_reg;
    sc_signal< sc_lv<8> > w0vec_8_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_0_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_1_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_2_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_3_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_4_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_5_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_6_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_7_V_read_int_reg;
    sc_signal< sc_lv<8> > w1vec_8_V_read_int_reg;
    sc_signal< sc_lv<20> > ap_return_0_int_reg;
    sc_signal< sc_lv<20> > ap_return_1_int_reg;
    sc_signal< sc_lv<36> > mul_ln1352_10_fu_667_p10;
    sc_signal< sc_lv<36> > mul_ln1352_11_fu_673_p10;
    sc_signal< sc_lv<36> > mul_ln1352_4_fu_630_p10;
    sc_signal< sc_lv<36> > mul_ln1352_5_fu_636_p10;
    sc_signal< sc_lv<36> > mul_ln1352_6_fu_642_p10;
    sc_signal< sc_lv<36> > mul_ln1352_7_fu_648_p10;
    sc_signal< sc_lv<36> > mul_ln1352_8_fu_654_p10;
    sc_signal< sc_lv<36> > mul_ln1352_9_fu_661_p10;
    sc_signal< sc_lv<36> > mul_ln1352_fu_624_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_13;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln647_fu_575_p2();
    void thread_add_ln68_10_fu_372_p2();
    void thread_add_ln68_11_fu_439_p2();
    void thread_add_ln68_4_fu_264_p2();
    void thread_add_ln68_5_fu_282_p2();
    void thread_add_ln68_6_fu_300_p2();
    void thread_add_ln68_7_fu_318_p2();
    void thread_add_ln68_8_fu_336_p2();
    void thread_add_ln68_9_fu_354_p2();
    void thread_add_ln68_fu_246_p2();
    void thread_add_ln700_10_fu_554_p2();
    void thread_add_ln700_11_fu_558_p2();
    void thread_add_ln700_12_fu_477_p2();
    void thread_add_ln700_3_fu_467_p2();
    void thread_add_ln700_4_fu_483_p2();
    void thread_add_ln700_5_fu_509_p2();
    void thread_add_ln700_6_fu_515_p2();
    void thread_add_ln700_7_fu_525_p2();
    void thread_add_ln700_8_fu_539_p2();
    void thread_add_ln700_9_fu_569_p2();
    void thread_add_ln700_fu_451_p2();
    void thread_add_ln78_fu_606_p2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_mul_ln1352_10_fu_667_p1();
    void thread_mul_ln1352_10_fu_667_p10();
    void thread_mul_ln1352_11_fu_673_p1();
    void thread_mul_ln1352_11_fu_673_p10();
    void thread_mul_ln1352_4_fu_630_p1();
    void thread_mul_ln1352_4_fu_630_p10();
    void thread_mul_ln1352_5_fu_636_p1();
    void thread_mul_ln1352_5_fu_636_p10();
    void thread_mul_ln1352_6_fu_642_p1();
    void thread_mul_ln1352_6_fu_642_p10();
    void thread_mul_ln1352_7_fu_648_p1();
    void thread_mul_ln1352_7_fu_648_p10();
    void thread_mul_ln1352_8_fu_654_p1();
    void thread_mul_ln1352_8_fu_654_p10();
    void thread_mul_ln1352_9_fu_661_p1();
    void thread_mul_ln1352_9_fu_661_p10();
    void thread_mul_ln1352_fu_624_p1();
    void thread_mul_ln1352_fu_624_p10();
    void thread_p_Result_s_fu_584_p4();
    void thread_sext_ln215_4_fu_445_p1();
    void thread_sext_ln68_10_fu_566_p1();
    void thread_sext_ln68_11_fu_461_p1();
    void thread_sext_ln68_12_fu_493_p1();
    void thread_sext_ln68_13_fu_499_p1();
    void thread_sext_ln68_1_fu_260_p1();
    void thread_sext_ln68_2_fu_278_p1();
    void thread_sext_ln68_3_fu_296_p1();
    void thread_sext_ln68_4_fu_314_p1();
    void thread_sext_ln68_5_fu_332_p1();
    void thread_sext_ln68_6_fu_350_p1();
    void thread_sext_ln68_7_fu_368_p1();
    void thread_sext_ln68_8_fu_436_p1();
    void thread_sext_ln68_fu_242_p1();
    void thread_sext_ln700_1_fu_457_p1();
    void thread_sext_ln700_2_fu_464_p1();
    void thread_sext_ln700_3_fu_473_p1();
    void thread_sext_ln700_4_fu_489_p1();
    void thread_sext_ln700_5_fu_496_p1();
    void thread_sext_ln700_6_fu_502_p1();
    void thread_sext_ln700_7_fu_521_p1();
    void thread_sext_ln700_8_fu_531_p1();
    void thread_sext_ln700_9_fu_563_p1();
    void thread_sext_ln700_fu_448_p1();
    void thread_shl_ln68_1_fu_429_p3();
    void thread_shl_ln68_4_fu_252_p3();
    void thread_shl_ln68_5_fu_270_p3();
    void thread_shl_ln68_6_fu_288_p3();
    void thread_shl_ln68_7_fu_306_p3();
    void thread_shl_ln68_8_fu_324_p3();
    void thread_shl_ln68_9_fu_342_p3();
    void thread_shl_ln68_s_fu_360_p3();
    void thread_shl_ln_fu_234_p3();
    void thread_tmp_fu_594_p3();
    void thread_trunc_ln647_fu_580_p1();
    void thread_trunc_ln700_1_fu_426_p1();
    void thread_trunc_ln700_2_fu_535_p1();
    void thread_trunc_ln700_3_fu_551_p1();
    void thread_trunc_ln700_fu_505_p1();
    void thread_zext_ln78_fu_602_p1();
};

}

using namespace ap_rtl;

#endif
