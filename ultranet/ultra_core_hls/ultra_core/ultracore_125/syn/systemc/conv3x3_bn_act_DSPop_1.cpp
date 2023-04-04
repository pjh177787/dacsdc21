// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "conv3x3_bn_act_DSPop_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic conv3x3_bn_act_DSPop_1::ap_const_logic_0 = sc_dt::Log_0;
const bool conv3x3_bn_act_DSPop_1::ap_const_boolean_1 = true;
const sc_logic conv3x3_bn_act_DSPop_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<64> conv3x3_bn_act_DSPop_1::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> conv3x3_bn_act_DSPop_1::ap_const_lv32_0 = "00000000000000000000000000000000";

conv3x3_bn_act_DSPop_1::conv3x3_bn_act_DSPop_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    conv3padding712_U0 = new conv3padding712("conv3padding712_U0");
    conv3padding712_U0->ap_clk(ap_clk);
    conv3padding712_U0->ap_rst(ap_rst);
    conv3padding712_U0->ap_start(conv3padding712_U0_ap_start);
    conv3padding712_U0->start_full_n(start_for_convDSPOpt_4_U0_full_n);
    conv3padding712_U0->ap_done(conv3padding712_U0_ap_done);
    conv3padding712_U0->ap_continue(conv3padding712_U0_ap_continue);
    conv3padding712_U0->ap_idle(conv3padding712_U0_ap_idle);
    conv3padding712_U0->ap_ready(conv3padding712_U0_ap_ready);
    conv3padding712_U0->start_out(conv3padding712_U0_start_out);
    conv3padding712_U0->start_write(conv3padding712_U0_start_write);
    conv3padding712_U0->reps_dout(reps_dout);
    conv3padding712_U0->reps_empty_n(reps_empty_n);
    conv3padding712_U0->reps_read(conv3padding712_U0_reps_read);
    conv3padding712_U0->reps_out_din(conv3padding712_U0_reps_out_din);
    conv3padding712_U0->reps_out_full_n(reps_out_full_n);
    conv3padding712_U0->reps_out_write(conv3padding712_U0_reps_out_write);
    conv3padding712_U0->in_V_V_dout(in_V_V_dout);
    conv3padding712_U0->in_V_V_empty_n(in_V_V_empty_n);
    conv3padding712_U0->in_V_V_read(conv3padding712_U0_in_V_V_read);
    conv3padding712_U0->padding_out_V_V_din(conv3padding712_U0_padding_out_V_V_din);
    conv3padding712_U0->padding_out_V_V_full_n(padding_out_V_V_full_n);
    conv3padding712_U0->padding_out_V_V_write(conv3padding712_U0_padding_out_V_V_write);
    conv3padding712_U0->reps_c_i_din(conv3padding712_U0_reps_c_i_din);
    conv3padding712_U0->reps_c_i_full_n(reps_c_i_full_n);
    conv3padding712_U0->reps_c_i_write(conv3padding712_U0_reps_c_i_write);
    convDSPOpt_4_U0 = new convDSPOpt_4("convDSPOpt_4_U0");
    convDSPOpt_4_U0->ap_clk(ap_clk);
    convDSPOpt_4_U0->ap_rst(ap_rst);
    convDSPOpt_4_U0->ap_start(convDSPOpt_4_U0_ap_start);
    convDSPOpt_4_U0->ap_done(convDSPOpt_4_U0_ap_done);
    convDSPOpt_4_U0->ap_continue(convDSPOpt_4_U0_ap_continue);
    convDSPOpt_4_U0->ap_idle(convDSPOpt_4_U0_ap_idle);
    convDSPOpt_4_U0->ap_ready(convDSPOpt_4_U0_ap_ready);
    convDSPOpt_4_U0->vec_V_V_dout(padding_out_V_V_dout);
    convDSPOpt_4_U0->vec_V_V_empty_n(padding_out_V_V_empty_n);
    convDSPOpt_4_U0->vec_V_V_read(convDSPOpt_4_U0_vec_V_V_read);
    convDSPOpt_4_U0->out_V_V_din(convDSPOpt_4_U0_out_V_V_din);
    convDSPOpt_4_U0->out_V_V_full_n(out_V_V_full_n);
    convDSPOpt_4_U0->out_V_V_write(convDSPOpt_4_U0_out_V_V_write);
    convDSPOpt_4_U0->reps_dout(reps_c_i_dout);
    convDSPOpt_4_U0->reps_empty_n(reps_c_i_empty_n);
    convDSPOpt_4_U0->reps_read(convDSPOpt_4_U0_reps_read);
    padding_out_V_V_U = new fifo_w64_d2_A("padding_out_V_V_U");
    padding_out_V_V_U->clk(ap_clk);
    padding_out_V_V_U->reset(ap_rst);
    padding_out_V_V_U->if_read_ce(ap_var_for_const0);
    padding_out_V_V_U->if_write_ce(ap_var_for_const0);
    padding_out_V_V_U->if_din(conv3padding712_U0_padding_out_V_V_din);
    padding_out_V_V_U->if_full_n(padding_out_V_V_full_n);
    padding_out_V_V_U->if_write(conv3padding712_U0_padding_out_V_V_write);
    padding_out_V_V_U->if_dout(padding_out_V_V_dout);
    padding_out_V_V_U->if_empty_n(padding_out_V_V_empty_n);
    padding_out_V_V_U->if_read(convDSPOpt_4_U0_vec_V_V_read);
    reps_c_i_U = new fifo_w32_d2_A_x0("reps_c_i_U");
    reps_c_i_U->clk(ap_clk);
    reps_c_i_U->reset(ap_rst);
    reps_c_i_U->if_read_ce(ap_var_for_const0);
    reps_c_i_U->if_write_ce(ap_var_for_const0);
    reps_c_i_U->if_din(conv3padding712_U0_reps_c_i_din);
    reps_c_i_U->if_full_n(reps_c_i_full_n);
    reps_c_i_U->if_write(conv3padding712_U0_reps_c_i_write);
    reps_c_i_U->if_dout(reps_c_i_dout);
    reps_c_i_U->if_empty_n(reps_c_i_empty_n);
    reps_c_i_U->if_read(convDSPOpt_4_U0_reps_read);
    start_for_convDSPcwx_U = new start_for_convDSPcwx("start_for_convDSPcwx_U");
    start_for_convDSPcwx_U->clk(ap_clk);
    start_for_convDSPcwx_U->reset(ap_rst);
    start_for_convDSPcwx_U->if_read_ce(ap_var_for_const0);
    start_for_convDSPcwx_U->if_write_ce(ap_var_for_const0);
    start_for_convDSPcwx_U->if_din(start_for_convDSPOpt_4_U0_din);
    start_for_convDSPcwx_U->if_full_n(start_for_convDSPOpt_4_U0_full_n);
    start_for_convDSPcwx_U->if_write(conv3padding712_U0_start_write);
    start_for_convDSPcwx_U->if_dout(start_for_convDSPOpt_4_U0_dout);
    start_for_convDSPcwx_U->if_empty_n(start_for_convDSPOpt_4_U0_empty_n);
    start_for_convDSPcwx_U->if_read(convDSPOpt_4_U0_ap_ready);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( conv3padding712_U0_ap_idle );
    sensitive << ( convDSPOpt_4_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_sync_done );
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( conv3padding712_U0_ap_done );
    sensitive << ( convDSPOpt_4_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( conv3padding712_U0_ap_ready );

    SC_METHOD(thread_conv3padding712_U0_ap_continue);
    sensitive << ( ap_sync_continue );

    SC_METHOD(thread_conv3padding712_U0_ap_start);
    sensitive << ( real_start );

    SC_METHOD(thread_convDSPOpt_4_U0_ap_continue);
    sensitive << ( ap_sync_continue );

    SC_METHOD(thread_convDSPOpt_4_U0_ap_start);
    sensitive << ( start_for_convDSPOpt_4_U0_empty_n );

    SC_METHOD(thread_convDSPOpt_4_U0_start_full_n);

    SC_METHOD(thread_convDSPOpt_4_U0_start_write);

    SC_METHOD(thread_in_V_V_read);
    sensitive << ( conv3padding712_U0_in_V_V_read );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( ap_sync_ready );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( convDSPOpt_4_U0_out_V_V_din );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( convDSPOpt_4_U0_out_V_V_write );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_reps_out_din);
    sensitive << ( conv3padding712_U0_reps_out_din );

    SC_METHOD(thread_reps_out_write);
    sensitive << ( conv3padding712_U0_reps_out_write );

    SC_METHOD(thread_reps_read);
    sensitive << ( conv3padding712_U0_reps_read );

    SC_METHOD(thread_start_for_convDSPOpt_4_U0_din);

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_THREAD(thread_ap_var_for_const0);

    start_once_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "conv3x3_bn_act_DSPop_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, in_V_V_dout, "(port)in_V_V_dout");
    sc_trace(mVcdFile, in_V_V_empty_n, "(port)in_V_V_empty_n");
    sc_trace(mVcdFile, in_V_V_read, "(port)in_V_V_read");
    sc_trace(mVcdFile, out_V_V_din, "(port)out_V_V_din");
    sc_trace(mVcdFile, out_V_V_full_n, "(port)out_V_V_full_n");
    sc_trace(mVcdFile, out_V_V_write, "(port)out_V_V_write");
    sc_trace(mVcdFile, reps_dout, "(port)reps_dout");
    sc_trace(mVcdFile, reps_empty_n, "(port)reps_empty_n");
    sc_trace(mVcdFile, reps_read, "(port)reps_read");
    sc_trace(mVcdFile, reps_out_din, "(port)reps_out_din");
    sc_trace(mVcdFile, reps_out_full_n, "(port)reps_out_full_n");
    sc_trace(mVcdFile, reps_out_write, "(port)reps_out_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, conv3padding712_U0_ap_start, "conv3padding712_U0_ap_start");
    sc_trace(mVcdFile, conv3padding712_U0_ap_done, "conv3padding712_U0_ap_done");
    sc_trace(mVcdFile, conv3padding712_U0_ap_continue, "conv3padding712_U0_ap_continue");
    sc_trace(mVcdFile, conv3padding712_U0_ap_idle, "conv3padding712_U0_ap_idle");
    sc_trace(mVcdFile, conv3padding712_U0_ap_ready, "conv3padding712_U0_ap_ready");
    sc_trace(mVcdFile, conv3padding712_U0_start_out, "conv3padding712_U0_start_out");
    sc_trace(mVcdFile, conv3padding712_U0_start_write, "conv3padding712_U0_start_write");
    sc_trace(mVcdFile, conv3padding712_U0_reps_read, "conv3padding712_U0_reps_read");
    sc_trace(mVcdFile, conv3padding712_U0_reps_out_din, "conv3padding712_U0_reps_out_din");
    sc_trace(mVcdFile, conv3padding712_U0_reps_out_write, "conv3padding712_U0_reps_out_write");
    sc_trace(mVcdFile, conv3padding712_U0_in_V_V_read, "conv3padding712_U0_in_V_V_read");
    sc_trace(mVcdFile, conv3padding712_U0_padding_out_V_V_din, "conv3padding712_U0_padding_out_V_V_din");
    sc_trace(mVcdFile, conv3padding712_U0_padding_out_V_V_write, "conv3padding712_U0_padding_out_V_V_write");
    sc_trace(mVcdFile, conv3padding712_U0_reps_c_i_din, "conv3padding712_U0_reps_c_i_din");
    sc_trace(mVcdFile, conv3padding712_U0_reps_c_i_write, "conv3padding712_U0_reps_c_i_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, convDSPOpt_4_U0_ap_start, "convDSPOpt_4_U0_ap_start");
    sc_trace(mVcdFile, convDSPOpt_4_U0_ap_done, "convDSPOpt_4_U0_ap_done");
    sc_trace(mVcdFile, convDSPOpt_4_U0_ap_continue, "convDSPOpt_4_U0_ap_continue");
    sc_trace(mVcdFile, convDSPOpt_4_U0_ap_idle, "convDSPOpt_4_U0_ap_idle");
    sc_trace(mVcdFile, convDSPOpt_4_U0_ap_ready, "convDSPOpt_4_U0_ap_ready");
    sc_trace(mVcdFile, convDSPOpt_4_U0_vec_V_V_read, "convDSPOpt_4_U0_vec_V_V_read");
    sc_trace(mVcdFile, convDSPOpt_4_U0_out_V_V_din, "convDSPOpt_4_U0_out_V_V_din");
    sc_trace(mVcdFile, convDSPOpt_4_U0_out_V_V_write, "convDSPOpt_4_U0_out_V_V_write");
    sc_trace(mVcdFile, convDSPOpt_4_U0_reps_read, "convDSPOpt_4_U0_reps_read");
    sc_trace(mVcdFile, padding_out_V_V_full_n, "padding_out_V_V_full_n");
    sc_trace(mVcdFile, padding_out_V_V_dout, "padding_out_V_V_dout");
    sc_trace(mVcdFile, padding_out_V_V_empty_n, "padding_out_V_V_empty_n");
    sc_trace(mVcdFile, reps_c_i_full_n, "reps_c_i_full_n");
    sc_trace(mVcdFile, reps_c_i_dout, "reps_c_i_dout");
    sc_trace(mVcdFile, reps_c_i_empty_n, "reps_c_i_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_convDSPOpt_4_U0_din, "start_for_convDSPOpt_4_U0_din");
    sc_trace(mVcdFile, start_for_convDSPOpt_4_U0_full_n, "start_for_convDSPOpt_4_U0_full_n");
    sc_trace(mVcdFile, start_for_convDSPOpt_4_U0_dout, "start_for_convDSPOpt_4_U0_dout");
    sc_trace(mVcdFile, start_for_convDSPOpt_4_U0_empty_n, "start_for_convDSPOpt_4_U0_empty_n");
    sc_trace(mVcdFile, convDSPOpt_4_U0_start_full_n, "convDSPOpt_4_U0_start_full_n");
    sc_trace(mVcdFile, convDSPOpt_4_U0_start_write, "convDSPOpt_4_U0_start_write");
#endif

    }
}

conv3x3_bn_act_DSPop_1::~conv3x3_bn_act_DSPop_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete conv3padding712_U0;
    delete convDSPOpt_4_U0;
    delete padding_out_V_V_U;
    delete reps_c_i_U;
    delete start_for_convDSPcwx_U;
}

void conv3x3_bn_act_DSPop_1::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void conv3x3_bn_act_DSPop_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(internal_ap_ready.read(), ap_const_logic_1)) {
            start_once_reg = ap_const_logic_0;
        }
    }
}

void conv3x3_bn_act_DSPop_1::thread_ap_done() {
    ap_done = ap_sync_done.read();
}

void conv3x3_bn_act_DSPop_1::thread_ap_idle() {
    ap_idle = (conv3padding712_U0_ap_idle.read() & convDSPOpt_4_U0_ap_idle.read());
}

void conv3x3_bn_act_DSPop_1::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void conv3x3_bn_act_DSPop_1::thread_ap_sync_continue() {
    ap_sync_continue = (ap_sync_done.read() & ap_continue.read());
}

void conv3x3_bn_act_DSPop_1::thread_ap_sync_done() {
    ap_sync_done = (conv3padding712_U0_ap_done.read() & convDSPOpt_4_U0_ap_done.read());
}

void conv3x3_bn_act_DSPop_1::thread_ap_sync_ready() {
    ap_sync_ready = conv3padding712_U0_ap_ready.read();
}

void conv3x3_bn_act_DSPop_1::thread_conv3padding712_U0_ap_continue() {
    conv3padding712_U0_ap_continue = ap_sync_continue.read();
}

void conv3x3_bn_act_DSPop_1::thread_conv3padding712_U0_ap_start() {
    conv3padding712_U0_ap_start = real_start.read();
}

void conv3x3_bn_act_DSPop_1::thread_convDSPOpt_4_U0_ap_continue() {
    convDSPOpt_4_U0_ap_continue = ap_sync_continue.read();
}

void conv3x3_bn_act_DSPop_1::thread_convDSPOpt_4_U0_ap_start() {
    convDSPOpt_4_U0_ap_start = start_for_convDSPOpt_4_U0_empty_n.read();
}

void conv3x3_bn_act_DSPop_1::thread_convDSPOpt_4_U0_start_full_n() {
    convDSPOpt_4_U0_start_full_n = ap_const_logic_1;
}

void conv3x3_bn_act_DSPop_1::thread_convDSPOpt_4_U0_start_write() {
    convDSPOpt_4_U0_start_write = ap_const_logic_0;
}

void conv3x3_bn_act_DSPop_1::thread_in_V_V_read() {
    in_V_V_read = conv3padding712_U0_in_V_V_read.read();
}

void conv3x3_bn_act_DSPop_1::thread_internal_ap_ready() {
    internal_ap_ready = ap_sync_ready.read();
}

void conv3x3_bn_act_DSPop_1::thread_out_V_V_din() {
    out_V_V_din = convDSPOpt_4_U0_out_V_V_din.read();
}

void conv3x3_bn_act_DSPop_1::thread_out_V_V_write() {
    out_V_V_write = convDSPOpt_4_U0_out_V_V_write.read();
}

void conv3x3_bn_act_DSPop_1::thread_real_start() {
    if ((esl_seteq<1,1,1>(start_full_n.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void conv3x3_bn_act_DSPop_1::thread_reps_out_din() {
    reps_out_din = conv3padding712_U0_reps_out_din.read();
}

void conv3x3_bn_act_DSPop_1::thread_reps_out_write() {
    reps_out_write = conv3padding712_U0_reps_out_write.read();
}

void conv3x3_bn_act_DSPop_1::thread_reps_read() {
    reps_read = conv3padding712_U0_reps_read.read();
}

void conv3x3_bn_act_DSPop_1::thread_start_for_convDSPOpt_4_U0_din() {
    start_for_convDSPOpt_4_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void conv3x3_bn_act_DSPop_1::thread_start_out() {
    start_out = real_start.read();
}

void conv3x3_bn_act_DSPop_1::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

}

