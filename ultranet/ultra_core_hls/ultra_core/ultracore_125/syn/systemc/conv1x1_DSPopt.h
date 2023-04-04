// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv1x1_DSPopt_HH_
#define _conv1x1_DSPopt_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "conv1x1convert718.h"
#include "conv1x1DSP2.h"
#include "fifo_w16_d2_A.h"
#include "fifo_w32_d2_A_x6.h"
#include "start_for_conv1x1dWL.h"

namespace ap_rtl {

struct conv1x1_DSPopt : public sc_module {
    // Port declarations 22
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<16> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<64> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_in< sc_lv<32> > reps_dout;
    sc_in< sc_logic > reps_empty_n;
    sc_out< sc_logic > reps_read;
    sc_out< sc_lv<32> > reps_out_din;
    sc_in< sc_logic > reps_out_full_n;
    sc_out< sc_logic > reps_out_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    conv1x1_DSPopt(sc_module_name name);
    SC_HAS_PROCESS(conv1x1_DSPopt);

    ~conv1x1_DSPopt();

    sc_trace_file* mVcdFile;

    conv1x1convert718* conv1x1convert718_U0;
    conv1x1DSP2* conv1x1DSP2_U0;
    fifo_w16_d2_A* conv1in_V_V_U;
    fifo_w32_d2_A_x6* reps_c_i_U;
    start_for_conv1x1dWL* start_for_conv1x1dWL_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > conv1x1convert718_U0_ap_start;
    sc_signal< sc_logic > conv1x1convert718_U0_ap_done;
    sc_signal< sc_logic > conv1x1convert718_U0_ap_continue;
    sc_signal< sc_logic > conv1x1convert718_U0_ap_idle;
    sc_signal< sc_logic > conv1x1convert718_U0_ap_ready;
    sc_signal< sc_logic > conv1x1convert718_U0_start_out;
    sc_signal< sc_logic > conv1x1convert718_U0_start_write;
    sc_signal< sc_logic > conv1x1convert718_U0_reps_read;
    sc_signal< sc_lv<32> > conv1x1convert718_U0_reps_out_din;
    sc_signal< sc_logic > conv1x1convert718_U0_reps_out_write;
    sc_signal< sc_logic > conv1x1convert718_U0_in_V_V_read;
    sc_signal< sc_lv<16> > conv1x1convert718_U0_conv1in_V_V_din;
    sc_signal< sc_logic > conv1x1convert718_U0_conv1in_V_V_write;
    sc_signal< sc_lv<32> > conv1x1convert718_U0_reps_c_i_din;
    sc_signal< sc_logic > conv1x1convert718_U0_reps_c_i_write;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > conv1x1DSP2_U0_ap_start;
    sc_signal< sc_logic > conv1x1DSP2_U0_ap_done;
    sc_signal< sc_logic > conv1x1DSP2_U0_ap_continue;
    sc_signal< sc_logic > conv1x1DSP2_U0_ap_idle;
    sc_signal< sc_logic > conv1x1DSP2_U0_ap_ready;
    sc_signal< sc_logic > conv1x1DSP2_U0_in_V_V_read;
    sc_signal< sc_lv<64> > conv1x1DSP2_U0_out_V_V_din;
    sc_signal< sc_logic > conv1x1DSP2_U0_out_V_V_write;
    sc_signal< sc_logic > conv1x1DSP2_U0_reps_read;
    sc_signal< sc_logic > conv1in_V_V_full_n;
    sc_signal< sc_lv<16> > conv1in_V_V_dout;
    sc_signal< sc_logic > conv1in_V_V_empty_n;
    sc_signal< sc_logic > reps_c_i_full_n;
    sc_signal< sc_lv<32> > reps_c_i_dout;
    sc_signal< sc_logic > reps_c_i_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_conv1x1DSP2_U0_din;
    sc_signal< sc_logic > start_for_conv1x1DSP2_U0_full_n;
    sc_signal< sc_lv<1> > start_for_conv1x1DSP2_U0_dout;
    sc_signal< sc_logic > start_for_conv1x1DSP2_U0_empty_n;
    sc_signal< sc_logic > conv1x1DSP2_U0_start_full_n;
    sc_signal< sc_logic > conv1x1DSP2_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_conv1x1DSP2_U0_ap_continue();
    void thread_conv1x1DSP2_U0_ap_start();
    void thread_conv1x1DSP2_U0_start_full_n();
    void thread_conv1x1DSP2_U0_start_write();
    void thread_conv1x1convert718_U0_ap_continue();
    void thread_conv1x1convert718_U0_ap_start();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_real_start();
    void thread_reps_out_din();
    void thread_reps_out_write();
    void thread_reps_read();
    void thread_start_for_conv1x1DSP2_U0_din();
    void thread_start_out();
    void thread_start_write();
};

}

using namespace ap_rtl;

#endif
