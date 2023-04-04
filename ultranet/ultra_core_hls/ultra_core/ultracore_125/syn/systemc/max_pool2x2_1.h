// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _max_pool2x2_1_HH_
#define _max_pool2x2_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "max_pool2x2_1_rowcxx.h"

namespace ap_rtl {

struct max_pool2x2_1 : public sc_module {
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
    sc_in< sc_lv<64> > vec_V_V_dout;
    sc_in< sc_logic > vec_V_V_empty_n;
    sc_out< sc_logic > vec_V_V_read;
    sc_out< sc_lv<64> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_in< sc_lv<32> > reps_dout;
    sc_in< sc_logic > reps_empty_n;
    sc_out< sc_logic > reps_read;
    sc_out< sc_lv<32> > reps_out_din;
    sc_in< sc_logic > reps_out_full_n;
    sc_out< sc_logic > reps_out_write;


    // Module declarations
    max_pool2x2_1(sc_module_name name);
    SC_HAS_PROCESS(max_pool2x2_1);

    ~max_pool2x2_1();

    sc_trace_file* mVcdFile;

    max_pool2x2_1_rowcxx* row_store_V_U;
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
    sc_signal< sc_lv<1> > icmp_ln35_reg_961;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > and_ln51_reg_990;
    sc_signal< sc_lv<1> > and_ln51_reg_990_pp0_iter2_reg;
    sc_signal< sc_logic > reps_blk_n;
    sc_signal< sc_logic > reps_out_blk_n;
    sc_signal< sc_lv<41> > indvar_flatten17_reg_203;
    sc_signal< sc_lv<32> > h_0_i_reg_214;
    sc_signal< sc_lv<10> > indvar_flatten_reg_225;
    sc_signal< sc_lv<4> > peIdx_0_i_reg_236;
    sc_signal< sc_lv<6> > w_0_i_reg_247;
    sc_signal< sc_lv<32> > reps_read_reg_950;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<41> > bound4_fu_298_p2;
    sc_signal< sc_lv<41> > bound4_reg_956;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln35_fu_304_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<41> > add_ln35_5_fu_309_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > select_ln35_3_fu_335_p3;
    sc_signal< sc_lv<32> > select_ln35_3_reg_970;
    sc_signal< sc_lv<1> > trunc_ln35_fu_343_p1;
    sc_signal< sc_lv<1> > trunc_ln35_reg_975;
    sc_signal< sc_lv<1> > trunc_ln35_reg_975_pp0_iter1_reg;
    sc_signal< sc_lv<6> > select_ln36_fu_377_p3;
    sc_signal< sc_lv<6> > select_ln36_reg_979;
    sc_signal< sc_lv<4> > select_ln36_3_fu_385_p3;
    sc_signal< sc_lv<4> > select_ln36_3_reg_984;
    sc_signal< sc_lv<1> > and_ln51_fu_397_p2;
    sc_signal< sc_lv<1> > and_ln51_reg_990_pp0_iter1_reg;
    sc_signal< sc_lv<6> > w_fu_403_p2;
    sc_signal< sc_lv<10> > select_ln36_4_fu_415_p3;
    sc_signal< sc_lv<4> > select_ln18_fu_446_p3;
    sc_signal< sc_lv<4> > select_ln18_reg_1004;
    sc_signal< sc_lv<4> > select_ln18_8_fu_480_p3;
    sc_signal< sc_lv<4> > select_ln18_8_reg_1011;
    sc_signal< sc_lv<4> > select_ln18_9_fu_514_p3;
    sc_signal< sc_lv<4> > select_ln18_9_reg_1018;
    sc_signal< sc_lv<4> > select_ln18_10_fu_548_p3;
    sc_signal< sc_lv<4> > select_ln18_10_reg_1025;
    sc_signal< sc_lv<4> > select_ln18_11_fu_582_p3;
    sc_signal< sc_lv<4> > select_ln18_11_reg_1032;
    sc_signal< sc_lv<4> > select_ln18_12_fu_616_p3;
    sc_signal< sc_lv<4> > select_ln18_12_reg_1039;
    sc_signal< sc_lv<4> > select_ln18_13_fu_650_p3;
    sc_signal< sc_lv<4> > select_ln18_13_reg_1046;
    sc_signal< sc_lv<4> > select_ln18_14_fu_684_p3;
    sc_signal< sc_lv<4> > select_ln18_14_reg_1053;
    sc_signal< sc_lv<9> > row_store_V_addr_reg_1060;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<9> > row_store_V_address0;
    sc_signal< sc_logic > row_store_V_ce0;
    sc_signal< sc_lv<32> > row_store_V_q0;
    sc_signal< sc_logic > row_store_V_ce1;
    sc_signal< sc_logic > row_store_V_we1;
    sc_signal< sc_lv<32> > row_store_V_d1;
    sc_signal< sc_lv<32> > ap_phi_mux_h_0_i_phi_fu_218_p4;
    sc_signal< sc_lv<4> > ap_phi_mux_peIdx_0_i_phi_fu_240_p4;
    sc_signal< sc_lv<64> > zext_ln49_fu_705_p1;
    sc_signal< sc_lv<32> > p_Repl2_s_fu_148;
    sc_signal< sc_lv<32> > dataOut0_V_fu_893_p9;
    sc_signal< sc_lv<32> > p_Repl2_13_fu_152;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > shl_ln35_3_fu_263_p2;
    sc_signal< sc_lv<32> > shl_ln35_fu_258_p2;
    sc_signal< sc_lv<32> > add_ln35_fu_268_p2;
    sc_signal< sc_lv<40> > tmp_s_fu_274_p3;
    sc_signal< sc_lv<38> > tmp_59_fu_286_p3;
    sc_signal< sc_lv<41> > p_shl22_fu_294_p1;
    sc_signal< sc_lv<41> > p_shl_fu_282_p1;
    sc_signal< sc_lv<1> > icmp_ln36_fu_321_p2;
    sc_signal< sc_lv<32> > h_fu_315_p2;
    sc_signal< sc_lv<1> > icmp_ln37_fu_353_p2;
    sc_signal< sc_lv<1> > xor_ln35_fu_347_p2;
    sc_signal< sc_lv<4> > select_ln35_fu_327_p3;
    sc_signal< sc_lv<1> > and_ln35_fu_359_p2;
    sc_signal< sc_lv<1> > or_ln36_fu_371_p2;
    sc_signal< sc_lv<4> > peIdx_fu_365_p2;
    sc_signal< sc_lv<1> > trunc_ln37_fu_393_p1;
    sc_signal< sc_lv<10> > add_ln36_2_fu_409_p2;
    sc_signal< sc_lv<4> > p_Result_109_i_i_fu_430_p4;
    sc_signal< sc_lv<4> > trunc_ln647_fu_426_p1;
    sc_signal< sc_lv<1> > icmp_ln895_fu_440_p2;
    sc_signal< sc_lv<4> > p_Result_109_1_i_i_fu_464_p4;
    sc_signal< sc_lv<4> > p_Result_108_1_i_i_fu_454_p4;
    sc_signal< sc_lv<1> > icmp_ln895_8_fu_474_p2;
    sc_signal< sc_lv<4> > p_Result_109_2_i_i_fu_498_p4;
    sc_signal< sc_lv<4> > p_Result_108_2_i_i_fu_488_p4;
    sc_signal< sc_lv<1> > icmp_ln895_9_fu_508_p2;
    sc_signal< sc_lv<4> > p_Result_109_3_i_i_fu_532_p4;
    sc_signal< sc_lv<4> > p_Result_108_3_i_i_fu_522_p4;
    sc_signal< sc_lv<1> > icmp_ln895_10_fu_542_p2;
    sc_signal< sc_lv<4> > p_Result_109_4_i_i_fu_566_p4;
    sc_signal< sc_lv<4> > p_Result_108_4_i_i_fu_556_p4;
    sc_signal< sc_lv<1> > icmp_ln895_11_fu_576_p2;
    sc_signal< sc_lv<4> > p_Result_109_5_i_i_fu_600_p4;
    sc_signal< sc_lv<4> > p_Result_108_5_i_i_fu_590_p4;
    sc_signal< sc_lv<1> > icmp_ln895_12_fu_610_p2;
    sc_signal< sc_lv<4> > p_Result_109_6_i_i_fu_634_p4;
    sc_signal< sc_lv<4> > p_Result_108_6_i_i_fu_624_p4;
    sc_signal< sc_lv<1> > icmp_ln895_13_fu_644_p2;
    sc_signal< sc_lv<4> > p_Result_109_7_i_i_fu_668_p4;
    sc_signal< sc_lv<4> > p_Result_108_7_i_i_fu_658_p4;
    sc_signal< sc_lv<1> > icmp_ln895_14_fu_678_p2;
    sc_signal< sc_lv<9> > zext_ln36_fu_423_p1;
    sc_signal< sc_lv<9> > shl_ln2_fu_692_p3;
    sc_signal< sc_lv<9> > addr_fu_699_p2;
    sc_signal< sc_lv<4> > trunc_ln647_10_fu_723_p1;
    sc_signal< sc_lv<1> > icmp_ln895_15_fu_727_p2;
    sc_signal< sc_lv<4> > p_Result_109_1_i_fu_739_p4;
    sc_signal< sc_lv<1> > icmp_ln895_16_fu_749_p2;
    sc_signal< sc_lv<4> > p_Result_109_2_i_fu_761_p4;
    sc_signal< sc_lv<1> > icmp_ln895_17_fu_771_p2;
    sc_signal< sc_lv<4> > p_Result_109_3_i_fu_783_p4;
    sc_signal< sc_lv<1> > icmp_ln895_18_fu_793_p2;
    sc_signal< sc_lv<4> > p_Result_109_4_i_fu_805_p4;
    sc_signal< sc_lv<1> > icmp_ln895_19_fu_815_p2;
    sc_signal< sc_lv<4> > p_Result_109_5_i_fu_827_p4;
    sc_signal< sc_lv<1> > icmp_ln895_20_fu_837_p2;
    sc_signal< sc_lv<4> > p_Result_109_6_i_fu_849_p4;
    sc_signal< sc_lv<1> > icmp_ln895_21_fu_859_p2;
    sc_signal< sc_lv<4> > p_Result_109_7_i_fu_871_p4;
    sc_signal< sc_lv<1> > icmp_ln895_22_fu_881_p2;
    sc_signal< sc_lv<4> > select_ln18_22_fu_886_p3;
    sc_signal< sc_lv<4> > select_ln18_21_fu_864_p3;
    sc_signal< sc_lv<4> > select_ln18_20_fu_842_p3;
    sc_signal< sc_lv<4> > select_ln18_19_fu_820_p3;
    sc_signal< sc_lv<4> > select_ln18_18_fu_798_p3;
    sc_signal< sc_lv<4> > select_ln18_17_fu_776_p3;
    sc_signal< sc_lv<4> > select_ln18_16_fu_754_p3;
    sc_signal< sc_lv<4> > select_ln18_15_fu_732_p3;
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
    static const sc_lv<41> ap_const_lv41_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<41> ap_const_lv41_1;
    static const sc_lv<10> ap_const_lv10_140;
    static const sc_lv<6> ap_const_lv6_28;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<3> ap_const_lv3_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln35_5_fu_309_p2();
    void thread_add_ln35_fu_268_p2();
    void thread_add_ln36_2_fu_409_p2();
    void thread_addr_fu_699_p2();
    void thread_and_ln35_fu_359_p2();
    void thread_and_ln51_fu_397_p2();
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
    void thread_ap_phi_mux_h_0_i_phi_fu_218_p4();
    void thread_ap_phi_mux_peIdx_0_i_phi_fu_240_p4();
    void thread_ap_ready();
    void thread_bound4_fu_298_p2();
    void thread_dataOut0_V_fu_893_p9();
    void thread_h_fu_315_p2();
    void thread_icmp_ln35_fu_304_p2();
    void thread_icmp_ln36_fu_321_p2();
    void thread_icmp_ln37_fu_353_p2();
    void thread_icmp_ln895_10_fu_542_p2();
    void thread_icmp_ln895_11_fu_576_p2();
    void thread_icmp_ln895_12_fu_610_p2();
    void thread_icmp_ln895_13_fu_644_p2();
    void thread_icmp_ln895_14_fu_678_p2();
    void thread_icmp_ln895_15_fu_727_p2();
    void thread_icmp_ln895_16_fu_749_p2();
    void thread_icmp_ln895_17_fu_771_p2();
    void thread_icmp_ln895_18_fu_793_p2();
    void thread_icmp_ln895_19_fu_815_p2();
    void thread_icmp_ln895_20_fu_837_p2();
    void thread_icmp_ln895_21_fu_859_p2();
    void thread_icmp_ln895_22_fu_881_p2();
    void thread_icmp_ln895_8_fu_474_p2();
    void thread_icmp_ln895_9_fu_508_p2();
    void thread_icmp_ln895_fu_440_p2();
    void thread_internal_ap_ready();
    void thread_or_ln36_fu_371_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_Result_108_1_i_i_fu_454_p4();
    void thread_p_Result_108_2_i_i_fu_488_p4();
    void thread_p_Result_108_3_i_i_fu_522_p4();
    void thread_p_Result_108_4_i_i_fu_556_p4();
    void thread_p_Result_108_5_i_i_fu_590_p4();
    void thread_p_Result_108_6_i_i_fu_624_p4();
    void thread_p_Result_108_7_i_i_fu_658_p4();
    void thread_p_Result_109_1_i_fu_739_p4();
    void thread_p_Result_109_1_i_i_fu_464_p4();
    void thread_p_Result_109_2_i_fu_761_p4();
    void thread_p_Result_109_2_i_i_fu_498_p4();
    void thread_p_Result_109_3_i_fu_783_p4();
    void thread_p_Result_109_3_i_i_fu_532_p4();
    void thread_p_Result_109_4_i_fu_805_p4();
    void thread_p_Result_109_4_i_i_fu_566_p4();
    void thread_p_Result_109_5_i_fu_827_p4();
    void thread_p_Result_109_5_i_i_fu_600_p4();
    void thread_p_Result_109_6_i_fu_849_p4();
    void thread_p_Result_109_6_i_i_fu_634_p4();
    void thread_p_Result_109_7_i_fu_871_p4();
    void thread_p_Result_109_7_i_i_fu_668_p4();
    void thread_p_Result_109_i_i_fu_430_p4();
    void thread_p_shl22_fu_294_p1();
    void thread_p_shl_fu_282_p1();
    void thread_peIdx_fu_365_p2();
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
    void thread_select_ln18_10_fu_548_p3();
    void thread_select_ln18_11_fu_582_p3();
    void thread_select_ln18_12_fu_616_p3();
    void thread_select_ln18_13_fu_650_p3();
    void thread_select_ln18_14_fu_684_p3();
    void thread_select_ln18_15_fu_732_p3();
    void thread_select_ln18_16_fu_754_p3();
    void thread_select_ln18_17_fu_776_p3();
    void thread_select_ln18_18_fu_798_p3();
    void thread_select_ln18_19_fu_820_p3();
    void thread_select_ln18_20_fu_842_p3();
    void thread_select_ln18_21_fu_864_p3();
    void thread_select_ln18_22_fu_886_p3();
    void thread_select_ln18_8_fu_480_p3();
    void thread_select_ln18_9_fu_514_p3();
    void thread_select_ln18_fu_446_p3();
    void thread_select_ln35_3_fu_335_p3();
    void thread_select_ln35_fu_327_p3();
    void thread_select_ln36_3_fu_385_p3();
    void thread_select_ln36_4_fu_415_p3();
    void thread_select_ln36_fu_377_p3();
    void thread_shl_ln2_fu_692_p3();
    void thread_shl_ln35_3_fu_263_p2();
    void thread_shl_ln35_fu_258_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_59_fu_286_p3();
    void thread_tmp_s_fu_274_p3();
    void thread_trunc_ln35_fu_343_p1();
    void thread_trunc_ln37_fu_393_p1();
    void thread_trunc_ln647_10_fu_723_p1();
    void thread_trunc_ln647_fu_426_p1();
    void thread_vec_V_V_blk_n();
    void thread_vec_V_V_read();
    void thread_w_fu_403_p2();
    void thread_xor_ln35_fu_347_p2();
    void thread_zext_ln36_fu_423_p1();
    void thread_zext_ln49_fu_705_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
