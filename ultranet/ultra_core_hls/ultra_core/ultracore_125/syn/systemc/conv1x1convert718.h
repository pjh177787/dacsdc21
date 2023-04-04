// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv1x1convert718_HH_
#define _conv1x1convert718_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "streamInOneRowTwoPix.h"
#include "streamOutOneRowTwoPi.h"
#include "conv1x1convert718dOK.h"

namespace ap_rtl {

struct conv1x1convert718 : public sc_module {
    // Port declarations 25
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
    sc_in< sc_lv<32> > reps_dout;
    sc_in< sc_logic > reps_empty_n;
    sc_out< sc_logic > reps_read;
    sc_out< sc_lv<32> > reps_out_din;
    sc_in< sc_logic > reps_out_full_n;
    sc_out< sc_logic > reps_out_write;
    sc_in< sc_lv<16> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<16> > conv1in_V_V_din;
    sc_in< sc_logic > conv1in_V_V_full_n;
    sc_out< sc_logic > conv1in_V_V_write;
    sc_out< sc_lv<32> > reps_c_i_din;
    sc_in< sc_logic > reps_c_i_full_n;
    sc_out< sc_logic > reps_c_i_write;


    // Module declarations
    conv1x1convert718(sc_module_name name);
    SC_HAS_PROCESS(conv1x1convert718);

    ~conv1x1convert718();

    sc_trace_file* mVcdFile;

    conv1x1convert718dOK* row_buffer_0_V_U;
    conv1x1convert718dOK* row_buffer_1_V_U;
    streamInOneRowTwoPix* grp_streamInOneRowTwoPix_fu_121;
    streamOutOneRowTwoPi* grp_streamOutOneRowTwoPi_fu_132;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > reps_blk_n;
    sc_signal< sc_logic > reps_out_blk_n;
    sc_signal< sc_logic > reps_c_i_blk_n;
    sc_signal< sc_lv<32> > add_ln97_fu_155_p2;
    sc_signal< sc_lv<32> > add_ln97_reg_209;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > or_ln97_fu_161_p2;
    sc_signal< sc_lv<32> > or_ln97_reg_214;
    sc_signal< sc_lv<32> > rep_fu_172_p2;
    sc_signal< sc_lv<32> > rep_reg_222;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > xor_ln100_fu_183_p2;
    sc_signal< sc_lv<1> > xor_ln100_reg_227;
    sc_signal< sc_lv<1> > icmp_ln97_fu_167_p2;
    sc_signal< sc_lv<1> > icmp_ln102_fu_190_p2;
    sc_signal< sc_lv<1> > icmp_ln102_reg_232;
    sc_signal< sc_lv<1> > loadBufferIdx_V_fu_197_p2;
    sc_signal< sc_lv<1> > loadBufferIdx_V_reg_237;
    sc_signal< sc_lv<1> > storeBufferIdx_V_fu_203_p2;
    sc_signal< sc_lv<1> > storeBufferIdx_V_reg_242;
    sc_signal< sc_logic > row_buffer_0_V_ce0;
    sc_signal< sc_lv<8> > row_buffer_0_V_q0;
    sc_signal< sc_logic > row_buffer_0_V_ce1;
    sc_signal< sc_logic > row_buffer_0_V_we1;
    sc_signal< sc_logic > row_buffer_1_V_ce0;
    sc_signal< sc_lv<8> > row_buffer_1_V_q0;
    sc_signal< sc_logic > row_buffer_1_V_ce1;
    sc_signal< sc_logic > row_buffer_1_V_we1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_ap_start;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_ap_done;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_ap_idle;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_ap_ready;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_in_V_V_read;
    sc_signal< sc_lv<10> > grp_streamInOneRowTwoPix_fu_121_row_buffer_0_V_address1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_row_buffer_0_V_ce1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_row_buffer_0_V_we1;
    sc_signal< sc_lv<8> > grp_streamInOneRowTwoPix_fu_121_row_buffer_0_V_d1;
    sc_signal< sc_lv<10> > grp_streamInOneRowTwoPix_fu_121_row_buffer_1_V_address1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_row_buffer_1_V_ce1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_row_buffer_1_V_we1;
    sc_signal< sc_lv<8> > grp_streamInOneRowTwoPix_fu_121_row_buffer_1_V_d1;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_skip_flag;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_ap_start;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_ap_done;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_ap_idle;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_ap_ready;
    sc_signal< sc_lv<16> > grp_streamOutOneRowTwoPi_fu_132_out_V_V_din;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_out_V_V_write;
    sc_signal< sc_lv<10> > grp_streamOutOneRowTwoPi_fu_132_row_buffer_0_V_address0;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_row_buffer_0_V_ce0;
    sc_signal< sc_lv<10> > grp_streamOutOneRowTwoPi_fu_132_row_buffer_1_V_address0;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_row_buffer_1_V_ce0;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_skip_flag;
    sc_signal< sc_lv<1> > t_V_21_reg_86;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_lv<1> > t_V_reg_98;
    sc_signal< sc_lv<32> > rep_0_i_i_i_reg_110;
    sc_signal< sc_logic > grp_streamInOneRowTwoPix_fu_121_ap_start_reg;
    sc_signal< sc_logic > grp_streamOutOneRowTwoPi_fu_132_ap_start_reg;
    sc_signal< sc_lv<32> > shl_ln97_fu_143_p2;
    sc_signal< sc_lv<32> > shl_ln97_1_fu_149_p2;
    sc_signal< sc_lv<1> > icmp_ln100_fu_178_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln97_fu_155_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_conv1in_V_V_din();
    void thread_conv1in_V_V_write();
    void thread_grp_streamInOneRowTwoPix_fu_121_ap_start();
    void thread_grp_streamInOneRowTwoPix_fu_121_skip_flag();
    void thread_grp_streamOutOneRowTwoPi_fu_132_ap_start();
    void thread_grp_streamOutOneRowTwoPi_fu_132_skip_flag();
    void thread_icmp_ln100_fu_178_p2();
    void thread_icmp_ln102_fu_190_p2();
    void thread_icmp_ln97_fu_167_p2();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_loadBufferIdx_V_fu_197_p2();
    void thread_or_ln97_fu_161_p2();
    void thread_real_start();
    void thread_rep_fu_172_p2();
    void thread_reps_blk_n();
    void thread_reps_c_i_blk_n();
    void thread_reps_c_i_din();
    void thread_reps_c_i_write();
    void thread_reps_out_blk_n();
    void thread_reps_out_din();
    void thread_reps_out_write();
    void thread_reps_read();
    void thread_row_buffer_0_V_ce0();
    void thread_row_buffer_0_V_ce1();
    void thread_row_buffer_0_V_we1();
    void thread_row_buffer_1_V_ce0();
    void thread_row_buffer_1_V_ce1();
    void thread_row_buffer_1_V_we1();
    void thread_shl_ln97_1_fu_149_p2();
    void thread_shl_ln97_fu_143_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_storeBufferIdx_V_fu_203_p2();
    void thread_xor_ln100_fu_183_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif