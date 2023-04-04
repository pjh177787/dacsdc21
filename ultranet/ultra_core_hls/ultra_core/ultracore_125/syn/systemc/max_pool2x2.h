// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _max_pool2x2_HH_
#define _max_pool2x2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "max_pool2x2_row_sbMq.h"

namespace ap_rtl {

struct max_pool2x2 : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > vec_V_V_dout;
    sc_in< sc_logic > vec_V_V_empty_n;
    sc_out< sc_logic > vec_V_V_read;
    sc_out< sc_lv<32> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_in< sc_lv<32> > reps_dout;
    sc_in< sc_logic > reps_empty_n;
    sc_out< sc_logic > reps_read;
    sc_out< sc_lv<32> > reps_out_din;
    sc_in< sc_logic > reps_out_full_n;
    sc_out< sc_logic > reps_out_write;


    // Module declarations
    max_pool2x2(sc_module_name name);
    SC_HAS_PROCESS(max_pool2x2);

    ~max_pool2x2();

    sc_trace_file* mVcdFile;

    max_pool2x2_row_sbMq* row_store_V_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > vec_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln35_reg_691;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > and_ln51_reg_720;
    sc_signal< sc_lv<1> > and_ln51_reg_720_pp0_iter2_reg;
    sc_signal< sc_logic > reps_blk_n;
    sc_signal< sc_logic > reps_out_blk_n;
    sc_signal< sc_lv<42> > indvar_flatten17_reg_169;
    sc_signal< sc_lv<32> > h_0_i_reg_180;
    sc_signal< sc_lv<11> > indvar_flatten_reg_191;
    sc_signal< sc_lv<4> > peIdx_0_i_reg_202;
    sc_signal< sc_lv<7> > w_0_i_reg_213;
    sc_signal< sc_lv<32> > reps_read_reg_680;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<42> > bound4_fu_264_p2;
    sc_signal< sc_lv<42> > bound4_reg_686;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln35_fu_270_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<42> > add_ln35_7_fu_275_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > select_ln35_4_fu_301_p3;
    sc_signal< sc_lv<32> > select_ln35_4_reg_700;
    sc_signal< sc_lv<1> > trunc_ln35_fu_309_p1;
    sc_signal< sc_lv<1> > trunc_ln35_reg_705;
    sc_signal< sc_lv<1> > trunc_ln35_reg_705_pp0_iter1_reg;
    sc_signal< sc_lv<7> > select_ln36_fu_343_p3;
    sc_signal< sc_lv<7> > select_ln36_reg_709;
    sc_signal< sc_lv<4> > select_ln36_5_fu_351_p3;
    sc_signal< sc_lv<4> > select_ln36_5_reg_714;
    sc_signal< sc_lv<1> > and_ln51_fu_363_p2;
    sc_signal< sc_lv<1> > and_ln51_reg_720_pp0_iter1_reg;
    sc_signal< sc_lv<7> > w_fu_369_p2;
    sc_signal< sc_lv<11> > select_ln36_6_fu_381_p3;
    sc_signal< sc_lv<4> > select_ln18_fu_412_p3;
    sc_signal< sc_lv<4> > select_ln18_reg_734;
    sc_signal< sc_lv<4> > select_ln18_1_fu_446_p3;
    sc_signal< sc_lv<4> > select_ln18_1_reg_741;
    sc_signal< sc_lv<4> > select_ln18_2_fu_480_p3;
    sc_signal< sc_lv<4> > select_ln18_2_reg_748;
    sc_signal< sc_lv<4> > select_ln18_3_fu_514_p3;
    sc_signal< sc_lv<4> > select_ln18_3_reg_755;
    sc_signal< sc_lv<10> > row_store_V_addr_reg_762;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<10> > row_store_V_address0;
    sc_signal< sc_logic > row_store_V_ce0;
    sc_signal< sc_lv<16> > row_store_V_q0;
    sc_signal< sc_logic > row_store_V_ce1;
    sc_signal< sc_logic > row_store_V_we1;
    sc_signal< sc_lv<16> > row_store_V_d1;
    sc_signal< sc_lv<32> > ap_phi_mux_h_0_i_phi_fu_184_p4;
    sc_signal< sc_lv<4> > ap_phi_mux_peIdx_0_i_phi_fu_206_p4;
    sc_signal< sc_lv<64> > zext_ln49_fu_535_p1;
    sc_signal< sc_lv<16> > p_Repl2_s_fu_114;
    sc_signal< sc_lv<16> > dataOut0_V_fu_631_p5;
    sc_signal< sc_lv<16> > p_Repl2_14_fu_118;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > shl_ln35_4_fu_229_p2;
    sc_signal< sc_lv<32> > shl_ln35_fu_224_p2;
    sc_signal< sc_lv<32> > add_ln35_fu_234_p2;
    sc_signal< sc_lv<41> > tmp_s_fu_240_p3;
    sc_signal< sc_lv<39> > tmp_60_fu_252_p3;
    sc_signal< sc_lv<42> > p_shl22_fu_260_p1;
    sc_signal< sc_lv<42> > p_shl_fu_248_p1;
    sc_signal< sc_lv<1> > icmp_ln36_fu_287_p2;
    sc_signal< sc_lv<32> > h_fu_281_p2;
    sc_signal< sc_lv<1> > icmp_ln37_fu_319_p2;
    sc_signal< sc_lv<1> > xor_ln35_fu_313_p2;
    sc_signal< sc_lv<4> > select_ln35_fu_293_p3;
    sc_signal< sc_lv<1> > and_ln35_fu_325_p2;
    sc_signal< sc_lv<1> > or_ln36_fu_337_p2;
    sc_signal< sc_lv<4> > peIdx_fu_331_p2;
    sc_signal< sc_lv<1> > trunc_ln37_fu_359_p1;
    sc_signal< sc_lv<11> > add_ln36_3_fu_375_p2;
    sc_signal< sc_lv<4> > p_Result_113_i_i_fu_396_p4;
    sc_signal< sc_lv<4> > trunc_ln647_fu_392_p1;
    sc_signal< sc_lv<1> > icmp_ln895_fu_406_p2;
    sc_signal< sc_lv<4> > p_Result_113_1_i_i_fu_430_p4;
    sc_signal< sc_lv<4> > p_Result_112_1_i_i_fu_420_p4;
    sc_signal< sc_lv<1> > icmp_ln895_1_fu_440_p2;
    sc_signal< sc_lv<4> > p_Result_113_2_i_i_fu_464_p4;
    sc_signal< sc_lv<4> > p_Result_112_2_i_i_fu_454_p4;
    sc_signal< sc_lv<1> > icmp_ln895_2_fu_474_p2;
    sc_signal< sc_lv<4> > p_Result_113_3_i_i_fu_498_p4;
    sc_signal< sc_lv<4> > p_Result_112_3_i_i_fu_488_p4;
    sc_signal< sc_lv<1> > icmp_ln895_3_fu_508_p2;
    sc_signal< sc_lv<10> > zext_ln36_fu_389_p1;
    sc_signal< sc_lv<10> > shl_ln3_fu_522_p3;
    sc_signal< sc_lv<10> > addr_fu_529_p2;
    sc_signal< sc_lv<4> > trunc_ln647_11_fu_549_p1;
    sc_signal< sc_lv<1> > icmp_ln895_4_fu_553_p2;
    sc_signal< sc_lv<4> > p_Result_113_1_i_fu_565_p4;
    sc_signal< sc_lv<1> > icmp_ln895_5_fu_575_p2;
    sc_signal< sc_lv<4> > p_Result_113_2_i_fu_587_p4;
    sc_signal< sc_lv<1> > icmp_ln895_6_fu_597_p2;
    sc_signal< sc_lv<4> > p_Result_113_3_i_fu_609_p4;
    sc_signal< sc_lv<1> > icmp_ln895_7_fu_619_p2;
    sc_signal< sc_lv<4> > select_ln18_7_fu_624_p3;
    sc_signal< sc_lv<4> > select_ln18_6_fu_602_p3;
    sc_signal< sc_lv<4> > select_ln18_5_fu_580_p3;
    sc_signal< sc_lv<4> > select_ln18_4_fu_558_p3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<42> ap_const_lv42_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<42> ap_const_lv42_1;
    static const sc_lv<11> ap_const_lv11_280;
    static const sc_lv<7> ap_const_lv7_50;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln35_7_fu_275_p2();
    void thread_add_ln35_fu_234_p2();
    void thread_add_ln36_3_fu_375_p2();
    void thread_addr_fu_529_p2();
    void thread_and_ln35_fu_325_p2();
    void thread_and_ln51_fu_363_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_h_0_i_phi_fu_184_p4();
    void thread_ap_phi_mux_peIdx_0_i_phi_fu_206_p4();
    void thread_ap_ready();
    void thread_bound4_fu_264_p2();
    void thread_dataOut0_V_fu_631_p5();
    void thread_h_fu_281_p2();
    void thread_icmp_ln35_fu_270_p2();
    void thread_icmp_ln36_fu_287_p2();
    void thread_icmp_ln37_fu_319_p2();
    void thread_icmp_ln895_1_fu_440_p2();
    void thread_icmp_ln895_2_fu_474_p2();
    void thread_icmp_ln895_3_fu_508_p2();
    void thread_icmp_ln895_4_fu_553_p2();
    void thread_icmp_ln895_5_fu_575_p2();
    void thread_icmp_ln895_6_fu_597_p2();
    void thread_icmp_ln895_7_fu_619_p2();
    void thread_icmp_ln895_fu_406_p2();
    void thread_internal_ap_ready();
    void thread_or_ln36_fu_337_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_Result_112_1_i_i_fu_420_p4();
    void thread_p_Result_112_2_i_i_fu_454_p4();
    void thread_p_Result_112_3_i_i_fu_488_p4();
    void thread_p_Result_113_1_i_fu_565_p4();
    void thread_p_Result_113_1_i_i_fu_430_p4();
    void thread_p_Result_113_2_i_fu_587_p4();
    void thread_p_Result_113_2_i_i_fu_464_p4();
    void thread_p_Result_113_3_i_fu_609_p4();
    void thread_p_Result_113_3_i_i_fu_498_p4();
    void thread_p_Result_113_i_i_fu_396_p4();
    void thread_p_shl22_fu_260_p1();
    void thread_p_shl_fu_248_p1();
    void thread_peIdx_fu_331_p2();
    void thread_real_start();
    void thread_reps_blk_n();
    void thread_reps_out_blk_n();
    void thread_reps_out_din();
    void thread_reps_out_write();
    void thread_reps_read();
    void thread_row_store_V_address0();
    void thread_row_store_V_ce0();
    void thread_row_store_V_ce1();
    void thread_row_store_V_d1();
    void thread_row_store_V_we1();
    void thread_select_ln18_1_fu_446_p3();
    void thread_select_ln18_2_fu_480_p3();
    void thread_select_ln18_3_fu_514_p3();
    void thread_select_ln18_4_fu_558_p3();
    void thread_select_ln18_5_fu_580_p3();
    void thread_select_ln18_6_fu_602_p3();
    void thread_select_ln18_7_fu_624_p3();
    void thread_select_ln18_fu_412_p3();
    void thread_select_ln35_4_fu_301_p3();
    void thread_select_ln35_fu_293_p3();
    void thread_select_ln36_5_fu_351_p3();
    void thread_select_ln36_6_fu_381_p3();
    void thread_select_ln36_fu_343_p3();
    void thread_shl_ln35_4_fu_229_p2();
    void thread_shl_ln35_fu_224_p2();
    void thread_shl_ln3_fu_522_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_60_fu_252_p3();
    void thread_tmp_s_fu_240_p3();
    void thread_trunc_ln35_fu_309_p1();
    void thread_trunc_ln37_fu_359_p1();
    void thread_trunc_ln647_11_fu_549_p1();
    void thread_trunc_ln647_fu_392_p1();
    void thread_vec_V_V_blk_n();
    void thread_vec_V_V_read();
    void thread_w_fu_369_p2();
    void thread_xor_ln35_fu_313_p2();
    void thread_zext_ln36_fu_389_p1();
    void thread_zext_ln49_fu_535_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
