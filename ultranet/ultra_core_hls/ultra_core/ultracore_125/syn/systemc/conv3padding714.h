// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv3padding714_HH_
#define _conv3padding714_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "stream_out_data_3.h"
#include "stream_in_row_2.h"
#include "conv3padding714_rcXB.h"

namespace ap_rtl {

struct conv3padding714 : public sc_module {
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
    sc_in< sc_lv<32> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<32> > padding_out_V_V_din;
    sc_in< sc_logic > padding_out_V_V_full_n;
    sc_out< sc_logic > padding_out_V_V_write;
    sc_out< sc_lv<32> > reps_c_i_din;
    sc_in< sc_logic > reps_c_i_full_n;
    sc_out< sc_logic > reps_c_i_write;


    // Module declarations
    conv3padding714(sc_module_name name);
    SC_HAS_PROCESS(conv3padding714);

    ~conv3padding714();

    sc_trace_file* mVcdFile;

    conv3padding714_rcXB* row_buffer_0_V_U;
    stream_out_data_3* grp_stream_out_data_3_fu_145;
    stream_in_row_2* grp_stream_in_row_2_fu_157;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > reps_blk_n;
    sc_signal< sc_logic > reps_out_blk_n;
    sc_signal< sc_logic > reps_c_i_blk_n;
    sc_signal< sc_lv<32> > reps_read_reg_259;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > add_ln130_fu_177_p2;
    sc_signal< sc_lv<32> > add_ln130_reg_265;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > add_ln130_3_fu_183_p2;
    sc_signal< sc_lv<32> > add_ln130_3_reg_270;
    sc_signal< sc_lv<2> > storeBufferIdx_V_fu_194_p2;
    sc_signal< sc_lv<2> > storeBufferIdx_V_reg_278;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln132_fu_200_p2;
    sc_signal< sc_lv<1> > icmp_ln132_reg_283;
    sc_signal< sc_lv<1> > icmp_ln130_fu_189_p2;
    sc_signal< sc_lv<1> > icmp_ln134_fu_215_p2;
    sc_signal< sc_lv<1> > icmp_ln134_reg_288;
    sc_signal< sc_lv<32> > rep_fu_221_p2;
    sc_signal< sc_lv<32> > rep_reg_293;
    sc_signal< sc_lv<1> > xor_ln132_fu_227_p2;
    sc_signal< sc_lv<1> > xor_ln132_reg_298;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<2> > loadBufferIdx_V_fu_233_p2;
    sc_signal< sc_lv<2> > loadBufferIdx_V_reg_303;
    sc_signal< sc_lv<10> > rowIdx_V_3_fu_251_p3;
    sc_signal< sc_lv<10> > rowIdx_V_3_reg_308;
    sc_signal< sc_logic > row_buffer_0_V_ce0;
    sc_signal< sc_lv<32> > row_buffer_0_V_q0;
    sc_signal< sc_logic > row_buffer_0_V_ce1;
    sc_signal< sc_logic > row_buffer_0_V_we1;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_ap_start;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_ap_done;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_ap_idle;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_ap_ready;
    sc_signal< sc_lv<32> > grp_stream_out_data_3_fu_145_out_V_V_din;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_out_V_V_write;
    sc_signal< sc_lv<10> > grp_stream_out_data_3_fu_145_row_buffer_V_address0;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_row_buffer_V_ce0;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_skip_flag;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_ap_start;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_ap_done;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_ap_idle;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_ap_ready;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_in_V_V_read;
    sc_signal< sc_lv<10> > grp_stream_in_row_2_fu_157_row_buffer_V_address1;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_row_buffer_V_ce1;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_row_buffer_V_we1;
    sc_signal< sc_lv<32> > grp_stream_in_row_2_fu_157_row_buffer_V_d1;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_skip_flag;
    sc_signal< sc_lv<2> > t_V_9_reg_98;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_state5_on_subcall_done;
    sc_signal< sc_lv<2> > t_V_reg_110;
    sc_signal< sc_lv<10> > t_V_10_reg_122;
    sc_signal< sc_lv<32> > rep_0_i_i_i_reg_134;
    sc_signal< sc_logic > grp_stream_out_data_3_fu_145_ap_start_reg;
    sc_signal< sc_logic > grp_stream_in_row_2_fu_157_ap_start_reg;
    sc_signal< sc_lv<32> > shl_ln130_fu_167_p2;
    sc_signal< sc_lv<32> > shl_ln130_2_fu_172_p2;
    sc_signal< sc_lv<31> > tmp_fu_205_p4;
    sc_signal< sc_lv<1> > icmp_ln879_fu_239_p2;
    sc_signal< sc_lv<10> > rowIdx_V_fu_245_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<10> ap_const_lv10_3FE;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_9;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln130_3_fu_183_p2();
    void thread_add_ln130_fu_177_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state1();
    void thread_ap_block_state5_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_stream_in_row_2_fu_157_ap_start();
    void thread_grp_stream_in_row_2_fu_157_skip_flag();
    void thread_grp_stream_out_data_3_fu_145_ap_start();
    void thread_grp_stream_out_data_3_fu_145_skip_flag();
    void thread_icmp_ln130_fu_189_p2();
    void thread_icmp_ln132_fu_200_p2();
    void thread_icmp_ln134_fu_215_p2();
    void thread_icmp_ln879_fu_239_p2();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_loadBufferIdx_V_fu_233_p2();
    void thread_padding_out_V_V_din();
    void thread_padding_out_V_V_write();
    void thread_real_start();
    void thread_rep_fu_221_p2();
    void thread_reps_blk_n();
    void thread_reps_c_i_blk_n();
    void thread_reps_c_i_din();
    void thread_reps_c_i_write();
    void thread_reps_out_blk_n();
    void thread_reps_out_din();
    void thread_reps_out_write();
    void thread_reps_read();
    void thread_rowIdx_V_3_fu_251_p3();
    void thread_rowIdx_V_fu_245_p2();
    void thread_row_buffer_0_V_ce0();
    void thread_row_buffer_0_V_ce1();
    void thread_row_buffer_0_V_we1();
    void thread_shl_ln130_2_fu_172_p2();
    void thread_shl_ln130_fu_167_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_storeBufferIdx_V_fu_194_p2();
    void thread_tmp_fu_205_p4();
    void thread_xor_ln132_fu_227_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif