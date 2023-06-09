// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _stream_out_data_4_HH_
#define _stream_out_data_4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ultra_net_mac_mulcyx.h"

namespace ap_rtl {

struct stream_out_data_4 : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_out< sc_lv<10> > row_buffer_0_V_address0;
    sc_out< sc_logic > row_buffer_0_V_ce0;
    sc_in< sc_lv<16> > row_buffer_0_V_q0;
    sc_out< sc_lv<10> > row_buffer_1_V_address0;
    sc_out< sc_logic > row_buffer_1_V_ce0;
    sc_in< sc_lv<16> > row_buffer_1_V_q0;
    sc_in< sc_logic > skip_flag;
    sc_in< sc_lv<10> > outRowIdx_V;
    sc_in< sc_lv<2> > startRowBufferIdx_V;


    // Module declarations
    stream_out_data_4(sc_module_name name);
    SC_HAS_PROCESS(stream_out_data_4);

    ~stream_out_data_4();

    sc_trace_file* mVcdFile;

    ultra_net_mac_mulcyx<1,1,9,2,11,11>* ultra_net_mac_mulcyx_U585;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln65_reg_447;
    sc_signal< sc_lv<1> > icmp_ln65_reg_447_pp0_iter2_reg;
    sc_signal< sc_lv<15> > indvar_flatten_reg_157;
    sc_signal< sc_lv<8> > t_V_1_reg_168;
    sc_signal< sc_lv<8> > t_V_reg_179;
    sc_signal< sc_lv<10> > cycle_0_reg_190;
    sc_signal< sc_lv<1> > skip_flag_read_read_fu_118_p2;
    sc_signal< sc_lv<11> > ret_V_fu_205_p2;
    sc_signal< sc_lv<11> > ret_V_reg_442;
    sc_signal< sc_lv<1> > icmp_ln65_fu_211_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln65_reg_447_pp0_iter1_reg;
    sc_signal< sc_lv<15> > add_ln65_fu_217_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<11> > grp_fu_425_p3;
    sc_signal< sc_lv<11> > add_ln321_reg_456;
    sc_signal< sc_lv<1> > or_ln83_fu_295_p2;
    sc_signal< sc_lv<1> > or_ln83_reg_461;
    sc_signal< sc_lv<1> > or_ln83_reg_461_pp0_iter1_reg;
    sc_signal< sc_lv<8> > select_ln96_fu_327_p3;
    sc_signal< sc_lv<8> > infoldIdx_V_1_fu_341_p3;
    sc_signal< sc_lv<10> > cycle_fu_349_p2;
    sc_signal< sc_lv<16> > v1_V_fu_404_p3;
    sc_signal< sc_lv<16> > v1_V_reg_492;
    sc_signal< sc_lv<16> > v2_V_fu_411_p3;
    sc_signal< sc_lv<16> > v2_V_reg_497;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<64> > sext_ln321_fu_355_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<11> > sext_ln1354_fu_201_p1;
    sc_signal< sc_lv<1> > icmp_ln66_fu_223_p2;
    sc_signal< sc_lv<2> > wr_V_fu_237_p4;
    sc_signal< sc_lv<7> > trunc_ln544_fu_256_p1;
    sc_signal< sc_lv<4> > simdIdx_V_fu_247_p1;
    sc_signal< sc_lv<2> > rowBufferIdx_V_fu_251_p2;
    sc_signal< sc_lv<11> > zext_ln1353_fu_272_p1;
    sc_signal< sc_lv<11> > ret_V_1_fu_276_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_281_p3;
    sc_signal< sc_lv<1> > icmp_ln891_fu_289_p2;
    sc_signal< sc_lv<10> > select_ln66_fu_229_p3;
    sc_signal< sc_lv<1> > icmp_ln879_fu_307_p2;
    sc_signal< sc_lv<8> > w_V_fu_313_p2;
    sc_signal< sc_lv<1> > icmp_ln96_fu_301_p2;
    sc_signal< sc_lv<8> > select_ln98_fu_319_p3;
    sc_signal< sc_lv<8> > infoldIdx_V_fu_335_p2;
    sc_signal< sc_lv<8> > trunc_ln647_1_fu_374_p1;
    sc_signal< sc_lv<8> > trunc_ln647_fu_360_p1;
    sc_signal< sc_lv<8> > p_Result_25_1_fu_386_p4;
    sc_signal< sc_lv<8> > p_Result_s_fu_364_p4;
    sc_signal< sc_lv<16> > p_Result_26_1_fu_396_p3;
    sc_signal< sc_lv<16> > p_Result_24_1_fu_378_p3;
    sc_signal< sc_lv<9> > grp_fu_425_p0;
    sc_signal< sc_lv<2> > grp_fu_425_p1;
    sc_signal< sc_lv<11> > grp_fu_425_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<11> > grp_fu_425_p10;
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
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<15> ap_const_lv15_4200;
    static const sc_lv<15> ap_const_lv15_1;
    static const sc_lv<10> ap_const_lv10_210;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<11> ap_const_lv11_9;
    static const sc_lv<10> ap_const_lv10_20F;
    static const sc_lv<8> ap_const_lv8_2F;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<11> ap_const_lv11_B0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln65_fu_217_p2();
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
    void thread_ap_ready();
    void thread_cycle_fu_349_p2();
    void thread_grp_fu_425_p0();
    void thread_grp_fu_425_p1();
    void thread_grp_fu_425_p10();
    void thread_grp_fu_425_p2();
    void thread_icmp_ln65_fu_211_p2();
    void thread_icmp_ln66_fu_223_p2();
    void thread_icmp_ln879_fu_307_p2();
    void thread_icmp_ln891_fu_289_p2();
    void thread_icmp_ln96_fu_301_p2();
    void thread_infoldIdx_V_1_fu_341_p3();
    void thread_infoldIdx_V_fu_335_p2();
    void thread_or_ln83_fu_295_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_Result_24_1_fu_378_p3();
    void thread_p_Result_25_1_fu_386_p4();
    void thread_p_Result_26_1_fu_396_p3();
    void thread_p_Result_s_fu_364_p4();
    void thread_ret_V_1_fu_276_p2();
    void thread_ret_V_fu_205_p2();
    void thread_rowBufferIdx_V_fu_251_p2();
    void thread_row_buffer_0_V_address0();
    void thread_row_buffer_0_V_ce0();
    void thread_row_buffer_1_V_address0();
    void thread_row_buffer_1_V_ce0();
    void thread_select_ln66_fu_229_p3();
    void thread_select_ln96_fu_327_p3();
    void thread_select_ln98_fu_319_p3();
    void thread_sext_ln1354_fu_201_p1();
    void thread_sext_ln321_fu_355_p1();
    void thread_simdIdx_V_fu_247_p1();
    void thread_skip_flag_read_read_fu_118_p2();
    void thread_tmp_6_fu_281_p3();
    void thread_trunc_ln544_fu_256_p1();
    void thread_trunc_ln647_1_fu_374_p1();
    void thread_trunc_ln647_fu_360_p1();
    void thread_v1_V_fu_404_p3();
    void thread_v2_V_fu_411_p3();
    void thread_w_V_fu_313_p2();
    void thread_wr_V_fu_237_p4();
    void thread_zext_ln1353_fu_272_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
