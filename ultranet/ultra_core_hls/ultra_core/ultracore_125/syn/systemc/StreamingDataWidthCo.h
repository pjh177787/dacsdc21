// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _StreamingDataWidthCo_HH_
#define _StreamingDataWidthCo_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ultra_net_mul_32sbkb.h"

namespace ap_rtl {

struct StreamingDataWidthCo : public sc_module {
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
    sc_in< sc_lv<64> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<192> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_in< sc_lv<32> > numReps_dout;
    sc_in< sc_logic > numReps_empty_n;
    sc_out< sc_logic > numReps_read;
    sc_out< sc_lv<32> > numReps_out_din;
    sc_in< sc_logic > numReps_out_full_n;
    sc_out< sc_logic > numReps_out_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    StreamingDataWidthCo(sc_module_name name);
    SC_HAS_PROCESS(StreamingDataWidthCo);

    ~StreamingDataWidthCo();

    sc_trace_file* mVcdFile;

    ultra_net_mul_32sbkb<1,2,32,18,32>* ultra_net_mul_32sbkb_U9;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln225_reg_197;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_lv<1> > icmp_ln234_reg_206;
    sc_signal< sc_logic > numReps_blk_n;
    sc_signal< sc_logic > numReps_out_blk_n;
    sc_signal< sc_lv<128> > r_V_reg_89;
    sc_signal< sc_lv<32> > t_0_i_reg_101;
    sc_signal< sc_lv<32> > numReps_read_reg_187;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > grp_fu_117_p2;
    sc_signal< sc_lv<32> > totalIters_reg_192;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln225_fu_122_p2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > t_fu_127_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln234_fu_142_p2;
    sc_signal< sc_lv<128> > trunc_ln_fu_172_p3;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_lv<32> > i_1_fu_58;
    sc_signal< sc_lv<32> > i_fu_136_p2;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<18> > grp_fu_117_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_fu_162_p4;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_15180;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_grp_fu_117_p1();
    void thread_i_fu_136_p2();
    void thread_icmp_ln225_fu_122_p2();
    void thread_icmp_ln234_fu_142_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_numReps_blk_n();
    void thread_numReps_out_blk_n();
    void thread_numReps_out_din();
    void thread_numReps_out_write();
    void thread_numReps_read();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_t_fu_127_p2();
    void thread_tmp_fu_162_p4();
    void thread_trunc_ln_fu_172_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
