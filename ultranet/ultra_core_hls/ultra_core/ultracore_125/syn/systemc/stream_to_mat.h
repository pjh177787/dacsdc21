// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _stream_to_mat_HH_
#define _stream_to_mat_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct stream_to_mat : public sc_module {
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
    sc_in< sc_lv<24> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<8> > raw_img_data_stream_0_V_din;
    sc_in< sc_logic > raw_img_data_stream_0_V_full_n;
    sc_out< sc_logic > raw_img_data_stream_0_V_write;
    sc_out< sc_lv<8> > raw_img_data_stream_1_V_din;
    sc_in< sc_logic > raw_img_data_stream_1_V_full_n;
    sc_out< sc_logic > raw_img_data_stream_1_V_write;
    sc_out< sc_lv<8> > raw_img_data_stream_2_V_din;
    sc_in< sc_logic > raw_img_data_stream_2_V_full_n;
    sc_out< sc_logic > raw_img_data_stream_2_V_write;


    // Module declarations
    stream_to_mat(sc_module_name name);
    SC_HAS_PROCESS(stream_to_mat);

    ~stream_to_mat();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln38_reg_135;
    sc_signal< sc_logic > raw_img_data_stream_0_V_blk_n;
    sc_signal< sc_logic > raw_img_data_stream_1_V_blk_n;
    sc_signal< sc_logic > raw_img_data_stream_2_V_blk_n;
    sc_signal< sc_lv<18> > indvar_flatten_reg_85;
    sc_signal< sc_lv<1> > icmp_ln38_fu_96_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<18> > add_ln38_fu_102_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<18> ap_const_lv18_0;
    static const sc_lv<18> ap_const_lv18_38400;
    static const sc_lv<18> ap_const_lv18_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln38_fu_102_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_icmp_ln38_fu_96_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_raw_img_data_stream_0_V_blk_n();
    void thread_raw_img_data_stream_0_V_din();
    void thread_raw_img_data_stream_0_V_write();
    void thread_raw_img_data_stream_1_V_blk_n();
    void thread_raw_img_data_stream_1_V_din();
    void thread_raw_img_data_stream_1_V_write();
    void thread_raw_img_data_stream_2_V_blk_n();
    void thread_raw_img_data_stream_2_V_din();
    void thread_raw_img_data_stream_2_V_write();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
