// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv3padding_l0710_HH_
#define _conv3padding_l0710_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "stream_out_data_l0.h"
#include "stream_in_row_l0.h"
#include "conv3padding_l071pcA.h"

namespace ap_rtl {

struct conv3padding_l0710 : public sc_module {
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
    sc_in< sc_lv<24> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<72> > padding_out_V_V_din;
    sc_in< sc_logic > padding_out_V_V_full_n;
    sc_out< sc_logic > padding_out_V_V_write;
    sc_out< sc_lv<32> > reps_c_i_din;
    sc_in< sc_logic > reps_c_i_full_n;
    sc_out< sc_logic > reps_c_i_write;


    // Module declarations
    conv3padding_l0710(sc_module_name name);
    SC_HAS_PROCESS(conv3padding_l0710);

    ~conv3padding_l0710();

    sc_trace_file* mVcdFile;

    conv3padding_l071pcA* row_buffer_0_V_U;
    conv3padding_l071pcA* row_buffer_1_V_U;
    conv3padding_l071pcA* row_buffer_2_V_U;
    conv3padding_l071pcA* row_buffer_3_V_U;
    stream_out_data_l0* grp_stream_out_data_l0_fu_161;
    stream_in_row_l0* grp_stream_in_row_l0_fu_176;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > reps_blk_n;
    sc_signal< sc_logic > reps_out_blk_n;
    sc_signal< sc_logic > reps_c_i_blk_n;
    sc_signal< sc_lv<32> > add_ln85_fu_201_p2;
    sc_signal< sc_lv<32> > add_ln85_reg_285;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > or_ln85_fu_207_p2;
    sc_signal< sc_lv<32> > or_ln85_reg_290;
    sc_signal< sc_lv<2> > storeBufferIdx_V_fu_218_p2;
    sc_signal< sc_lv<2> > storeBufferIdx_V_reg_298;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > xor_ln87_fu_229_p2;
    sc_signal< sc_lv<1> > xor_ln87_reg_303;
    sc_signal< sc_lv<1> > icmp_ln85_fu_213_p2;
    sc_signal< sc_lv<1> > icmp_ln89_fu_246_p2;
    sc_signal< sc_lv<1> > icmp_ln89_reg_308;
    sc_signal< sc_lv<2> > loadBufferIdx_V_fu_253_p2;
    sc_signal< sc_lv<2> > loadBufferIdx_V_reg_313;
    sc_signal< sc_lv<10> > rowIdx_V_1_fu_271_p3;
    sc_signal< sc_lv<10> > rowIdx_V_1_reg_318;
    sc_signal< sc_lv<32> > rep_fu_279_p2;
    sc_signal< sc_lv<32> > rep_reg_323;
    sc_signal< sc_logic > row_buffer_0_V_ce0;
    sc_signal< sc_lv<24> > row_buffer_0_V_q0;
    sc_signal< sc_logic > row_buffer_0_V_ce1;
    sc_signal< sc_logic > row_buffer_0_V_we1;
    sc_signal< sc_logic > row_buffer_1_V_ce0;
    sc_signal< sc_lv<24> > row_buffer_1_V_q0;
    sc_signal< sc_logic > row_buffer_1_V_ce1;
    sc_signal< sc_logic > row_buffer_1_V_we1;
    sc_signal< sc_logic > row_buffer_2_V_ce0;
    sc_signal< sc_lv<24> > row_buffer_2_V_q0;
    sc_signal< sc_logic > row_buffer_2_V_ce1;
    sc_signal< sc_logic > row_buffer_2_V_we1;
    sc_signal< sc_logic > row_buffer_3_V_ce0;
    sc_signal< sc_lv<24> > row_buffer_3_V_q0;
    sc_signal< sc_logic > row_buffer_3_V_ce1;
    sc_signal< sc_logic > row_buffer_3_V_we1;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_ap_start;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_ap_done;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_ap_idle;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_ap_ready;
    sc_signal< sc_lv<72> > grp_stream_out_data_l0_fu_161_out_V_V_din;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_out_V_V_write;
    sc_signal< sc_lv<9> > grp_stream_out_data_l0_fu_161_row_buffer_0_V_address0;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_row_buffer_0_V_ce0;
    sc_signal< sc_lv<9> > grp_stream_out_data_l0_fu_161_row_buffer_1_V_address0;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_row_buffer_1_V_ce0;
    sc_signal< sc_lv<9> > grp_stream_out_data_l0_fu_161_row_buffer_2_V_address0;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_row_buffer_2_V_ce0;
    sc_signal< sc_lv<9> > grp_stream_out_data_l0_fu_161_row_buffer_3_V_address0;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_row_buffer_3_V_ce0;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_skip_flag;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_ap_start;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_ap_done;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_ap_idle;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_ap_ready;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_in_V_V_read;
    sc_signal< sc_lv<9> > grp_stream_in_row_l0_fu_176_row_buffer_0_V_address1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_0_V_ce1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_0_V_we1;
    sc_signal< sc_lv<24> > grp_stream_in_row_l0_fu_176_row_buffer_0_V_d1;
    sc_signal< sc_lv<9> > grp_stream_in_row_l0_fu_176_row_buffer_1_V_address1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_1_V_ce1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_1_V_we1;
    sc_signal< sc_lv<24> > grp_stream_in_row_l0_fu_176_row_buffer_1_V_d1;
    sc_signal< sc_lv<9> > grp_stream_in_row_l0_fu_176_row_buffer_2_V_address1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_2_V_ce1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_2_V_we1;
    sc_signal< sc_lv<24> > grp_stream_in_row_l0_fu_176_row_buffer_2_V_d1;
    sc_signal< sc_lv<9> > grp_stream_in_row_l0_fu_176_row_buffer_3_V_address1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_3_V_ce1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_row_buffer_3_V_we1;
    sc_signal< sc_lv<24> > grp_stream_in_row_l0_fu_176_row_buffer_3_V_d1;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_skip_flag;
    sc_signal< sc_lv<2> > t_V_5_reg_114;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_lv<2> > t_V_reg_126;
    sc_signal< sc_lv<10> > t_V_6_reg_138;
    sc_signal< sc_lv<32> > rep_0_i_i_i_reg_150;
    sc_signal< sc_logic > grp_stream_out_data_l0_fu_161_ap_start_reg;
    sc_signal< sc_logic > grp_stream_in_row_l0_fu_176_ap_start_reg;
    sc_signal< sc_lv<32> > shl_ln85_fu_189_p2;
    sc_signal< sc_lv<32> > shl_ln85_1_fu_195_p2;
    sc_signal< sc_lv<1> > icmp_ln87_fu_224_p2;
    sc_signal< sc_lv<31> > tmp_fu_236_p4;
    sc_signal< sc_lv<1> > icmp_ln879_fu_259_p2;
    sc_signal< sc_lv<10> > rowIdx_V_fu_265_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<10> ap_const_lv10_3FE;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<10> ap_const_lv10_9F;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln85_fu_201_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_stream_in_row_l0_fu_176_ap_start();
    void thread_grp_stream_in_row_l0_fu_176_skip_flag();
    void thread_grp_stream_out_data_l0_fu_161_ap_start();
    void thread_grp_stream_out_data_l0_fu_161_skip_flag();
    void thread_icmp_ln85_fu_213_p2();
    void thread_icmp_ln879_fu_259_p2();
    void thread_icmp_ln87_fu_224_p2();
    void thread_icmp_ln89_fu_246_p2();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_loadBufferIdx_V_fu_253_p2();
    void thread_or_ln85_fu_207_p2();
    void thread_padding_out_V_V_din();
    void thread_padding_out_V_V_write();
    void thread_real_start();
    void thread_rep_fu_279_p2();
    void thread_reps_blk_n();
    void thread_reps_c_i_blk_n();
    void thread_reps_c_i_din();
    void thread_reps_c_i_write();
    void thread_reps_out_blk_n();
    void thread_reps_out_din();
    void thread_reps_out_write();
    void thread_reps_read();
    void thread_rowIdx_V_1_fu_271_p3();
    void thread_rowIdx_V_fu_265_p2();
    void thread_row_buffer_0_V_ce0();
    void thread_row_buffer_0_V_ce1();
    void thread_row_buffer_0_V_we1();
    void thread_row_buffer_1_V_ce0();
    void thread_row_buffer_1_V_ce1();
    void thread_row_buffer_1_V_we1();
    void thread_row_buffer_2_V_ce0();
    void thread_row_buffer_2_V_ce1();
    void thread_row_buffer_2_V_we1();
    void thread_row_buffer_3_V_ce0();
    void thread_row_buffer_3_V_ce1();
    void thread_row_buffer_3_V_we1();
    void thread_shl_ln85_1_fu_195_p2();
    void thread_shl_ln85_fu_189_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_storeBufferIdx_V_fu_218_p2();
    void thread_tmp_fu_236_p4();
    void thread_xor_ln87_fu_229_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
