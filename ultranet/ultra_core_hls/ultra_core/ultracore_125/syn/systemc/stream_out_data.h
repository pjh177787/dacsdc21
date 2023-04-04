// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _stream_out_data_HH_
#define _stream_out_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ultra_net_mac_mulbkl.h"

namespace ap_rtl {

struct stream_out_data : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<128> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_out< sc_lv<9> > row_buffer_V_address0;
    sc_out< sc_logic > row_buffer_V_ce0;
    sc_in< sc_lv<128> > row_buffer_V_q0;
    sc_in< sc_logic > skip_flag;
    sc_in< sc_lv<10> > outRowIdx_V;
    sc_in< sc_lv<2> > startRowBufferIdx_V;


    // Module declarations
    stream_out_data(sc_module_name name);
    SC_HAS_PROCESS(stream_out_data);

    ~stream_out_data();

    sc_trace_file* mVcdFile;

    ultra_net_mac_mulbkl<1,1,8,2,8,9>* ultra_net_mac_mulbkl_U222;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln65_reg_367;
    sc_signal< sc_lv<1> > icmp_ln65_reg_367_pp0_iter2_reg;
    sc_signal< sc_lv<11> > indvar_flatten_reg_126;
    sc_signal< sc_lv<8> > ret_V_reg_137;
    sc_signal< sc_lv<8> > t_V_reg_148;
    sc_signal< sc_lv<8> > cycle_0_reg_159;
    sc_signal< sc_lv<1> > skip_flag_read_read_fu_100_p2;
    sc_signal< sc_lv<11> > ret_V_5_fu_174_p2;
    sc_signal< sc_lv<11> > ret_V_5_reg_362;
    sc_signal< sc_lv<1> > icmp_ln65_fu_180_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln65_reg_367_pp0_iter1_reg;
    sc_signal< sc_lv<11> > add_ln65_fu_186_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<9> > grp_fu_345_p3;
    sc_signal< sc_lv<9> > add_ln321_reg_376;
    sc_signal< sc_lv<1> > or_ln83_fu_246_p2;
    sc_signal< sc_lv<1> > or_ln83_reg_381;
    sc_signal< sc_lv<1> > or_ln83_reg_381_pp0_iter1_reg;
    sc_signal< sc_lv<8> > select_ln96_fu_278_p3;
    sc_signal< sc_lv<8> > infoldIdx_V_5_fu_292_p3;
    sc_signal< sc_lv<8> > cycle_fu_300_p2;
    sc_signal< sc_lv<64> > v1_V_fu_324_p3;
    sc_signal< sc_lv<64> > v1_V_reg_407;
    sc_signal< sc_lv<64> > v2_V_fu_331_p3;
    sc_signal< sc_lv<64> > v2_V_reg_412;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<64> > zext_ln321_1_fu_306_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<11> > sext_ln1354_fu_170_p1;
    sc_signal< sc_lv<1> > icmp_ln66_fu_192_p2;
    sc_signal< sc_lv<2> > wr_V_fu_206_p1;
    sc_signal< sc_lv<2> > rowBufferIdx_V_fu_210_p2;
    sc_signal< sc_lv<11> > zext_ln1353_fu_223_p1;
    sc_signal< sc_lv<11> > ret_V_6_fu_227_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_232_p3;
    sc_signal< sc_lv<1> > icmp_ln891_fu_240_p2;
    sc_signal< sc_lv<8> > select_ln66_fu_198_p3;
    sc_signal< sc_lv<1> > icmp_ln879_fu_258_p2;
    sc_signal< sc_lv<8> > w_V_fu_264_p2;
    sc_signal< sc_lv<1> > icmp_ln96_fu_252_p2;
    sc_signal< sc_lv<8> > select_ln98_fu_270_p3;
    sc_signal< sc_lv<8> > infoldIdx_V_fu_286_p2;
    sc_signal< sc_lv<64> > p_Result_5_fu_314_p4;
    sc_signal< sc_lv<64> > trunc_ln647_fu_310_p1;
    sc_signal< sc_lv<8> > grp_fu_345_p0;
    sc_signal< sc_lv<2> > grp_fu_345_p1;
    sc_signal< sc_lv<8> > grp_fu_345_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<9> > grp_fu_345_p10;
    sc_signal< sc_lv<9> > grp_fu_345_p20;
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
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<11> ap_const_lv11_798;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<8> ap_const_lv8_F3;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<11> ap_const_lv11_4F;
    static const sc_lv<8> ap_const_lv8_F2;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<9> ap_const_lv9_51;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln65_fu_186_p2();
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
    void thread_cycle_fu_300_p2();
    void thread_grp_fu_345_p0();
    void thread_grp_fu_345_p1();
    void thread_grp_fu_345_p10();
    void thread_grp_fu_345_p2();
    void thread_grp_fu_345_p20();
    void thread_icmp_ln65_fu_180_p2();
    void thread_icmp_ln66_fu_192_p2();
    void thread_icmp_ln879_fu_258_p2();
    void thread_icmp_ln891_fu_240_p2();
    void thread_icmp_ln96_fu_252_p2();
    void thread_infoldIdx_V_5_fu_292_p3();
    void thread_infoldIdx_V_fu_286_p2();
    void thread_or_ln83_fu_246_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_Result_5_fu_314_p4();
    void thread_ret_V_5_fu_174_p2();
    void thread_ret_V_6_fu_227_p2();
    void thread_rowBufferIdx_V_fu_210_p2();
    void thread_row_buffer_V_address0();
    void thread_row_buffer_V_ce0();
    void thread_select_ln66_fu_198_p3();
    void thread_select_ln96_fu_278_p3();
    void thread_select_ln98_fu_270_p3();
    void thread_sext_ln1354_fu_170_p1();
    void thread_skip_flag_read_read_fu_100_p2();
    void thread_tmp_10_fu_232_p3();
    void thread_trunc_ln647_fu_310_p1();
    void thread_v1_V_fu_324_p3();
    void thread_v2_V_fu_331_p3();
    void thread_w_V_fu_264_p2();
    void thread_wr_V_fu_206_p1();
    void thread_zext_ln1353_fu_223_p1();
    void thread_zext_ln321_1_fu_306_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
