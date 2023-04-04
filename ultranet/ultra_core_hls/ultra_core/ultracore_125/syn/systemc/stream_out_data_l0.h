// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _stream_out_data_l0_HH_
#define _stream_out_data_l0_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ultra_net_mux_42_ocq.h"

namespace ap_rtl {

struct stream_out_data_l0 : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<72> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_out< sc_lv<9> > row_buffer_0_V_address0;
    sc_out< sc_logic > row_buffer_0_V_ce0;
    sc_in< sc_lv<24> > row_buffer_0_V_q0;
    sc_out< sc_lv<9> > row_buffer_1_V_address0;
    sc_out< sc_logic > row_buffer_1_V_ce0;
    sc_in< sc_lv<24> > row_buffer_1_V_q0;
    sc_out< sc_lv<9> > row_buffer_2_V_address0;
    sc_out< sc_logic > row_buffer_2_V_ce0;
    sc_in< sc_lv<24> > row_buffer_2_V_q0;
    sc_out< sc_lv<9> > row_buffer_3_V_address0;
    sc_out< sc_logic > row_buffer_3_V_ce0;
    sc_in< sc_lv<24> > row_buffer_3_V_q0;
    sc_in< sc_logic > skip_flag;
    sc_in< sc_lv<10> > outRowIdx_V;
    sc_in< sc_lv<2> > centerRowBufferIdx_V;


    // Module declarations
    stream_out_data_l0(sc_module_name name);
    SC_HAS_PROCESS(stream_out_data_l0);

    ~stream_out_data_l0();

    sc_trace_file* mVcdFile;

    ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>* ultra_net_mux_42_ocq_U85;
    ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>* ultra_net_mux_42_ocq_U86;
    ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>* ultra_net_mux_42_ocq_U87;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln45_reg_388;
    sc_signal< sc_lv<1> > icmp_ln45_reg_388_pp0_iter2_reg;
    sc_signal< sc_lv<10> > indvar_flatten_reg_167;
    sc_signal< sc_lv<9> > c_0_reg_178;
    sc_signal< sc_lv<2> > kc_0_reg_189;
    sc_signal< sc_lv<1> > skip_flag_read_read_fu_102_p2;
    sc_signal< sc_lv<2> > row_sel0_V_fu_200_p2;
    sc_signal< sc_lv<2> > row_sel0_V_reg_368;
    sc_signal< sc_lv<2> > row_sel2_V_fu_206_p2;
    sc_signal< sc_lv<2> > row_sel2_V_reg_373;
    sc_signal< sc_lv<1> > tmp_5_reg_378;
    sc_signal< sc_lv<1> > icmp_ln879_fu_230_p2;
    sc_signal< sc_lv<1> > icmp_ln879_reg_383;
    sc_signal< sc_lv<1> > icmp_ln45_fu_236_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln45_reg_388_pp0_iter1_reg;
    sc_signal< sc_lv<10> > add_ln45_fu_242_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<2> > select_ln46_fu_260_p3;
    sc_signal< sc_lv<2> > select_ln46_reg_397;
    sc_signal< sc_lv<9> > select_ln45_fu_268_p3;
    sc_signal< sc_lv<9> > select_ln45_reg_402;
    sc_signal< sc_lv<2> > kc_fu_276_p2;
    sc_signal< sc_lv<24> > v2_V_fu_311_p3;
    sc_signal< sc_lv<24> > v2_V_reg_433;
    sc_signal< sc_lv<24> > data1_V_fu_318_p6;
    sc_signal< sc_lv<24> > data1_V_reg_438;
    sc_signal< sc_lv<24> > v1_V_fu_344_p3;
    sc_signal< sc_lv<24> > v1_V_reg_443;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<9> > ap_phi_mux_c_0_phi_fu_182_p4;
    sc_signal< sc_lv<64> > zext_ln51_fu_290_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<10> > sext_ln1354_fu_212_p0;
    sc_signal< sc_lv<11> > sext_ln1354_fu_212_p1;
    sc_signal< sc_lv<11> > ret_V_fu_216_p2;
    sc_signal< sc_lv<10> > icmp_ln879_fu_230_p0;
    sc_signal< sc_lv<1> > icmp_ln46_fu_254_p2;
    sc_signal< sc_lv<9> > c_fu_248_p2;
    sc_signal< sc_lv<9> > zext_ln46_fu_282_p1;
    sc_signal< sc_lv<9> > add_ln51_fu_285_p2;
    sc_signal< sc_lv<24> > data0_V_fu_298_p6;
    sc_signal< sc_lv<24> > data2_V_fu_331_p6;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_9F;
    static const sc_lv<10> ap_const_lv10_3C0;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln45_fu_242_p2();
    void thread_add_ln51_fu_285_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_c_0_phi_fu_182_p4();
    void thread_ap_ready();
    void thread_c_fu_248_p2();
    void thread_icmp_ln45_fu_236_p2();
    void thread_icmp_ln46_fu_254_p2();
    void thread_icmp_ln879_fu_230_p0();
    void thread_icmp_ln879_fu_230_p2();
    void thread_kc_fu_276_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_ret_V_fu_216_p2();
    void thread_row_buffer_0_V_address0();
    void thread_row_buffer_0_V_ce0();
    void thread_row_buffer_1_V_address0();
    void thread_row_buffer_1_V_ce0();
    void thread_row_buffer_2_V_address0();
    void thread_row_buffer_2_V_ce0();
    void thread_row_buffer_3_V_address0();
    void thread_row_buffer_3_V_ce0();
    void thread_row_sel0_V_fu_200_p2();
    void thread_row_sel2_V_fu_206_p2();
    void thread_select_ln45_fu_268_p3();
    void thread_select_ln46_fu_260_p3();
    void thread_sext_ln1354_fu_212_p0();
    void thread_sext_ln1354_fu_212_p1();
    void thread_skip_flag_read_read_fu_102_p2();
    void thread_v1_V_fu_344_p3();
    void thread_v2_V_fu_311_p3();
    void thread_zext_ln46_fu_282_p1();
    void thread_zext_ln51_fu_290_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
