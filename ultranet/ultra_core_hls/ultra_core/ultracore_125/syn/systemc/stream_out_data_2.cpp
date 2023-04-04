// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "stream_out_data_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic stream_out_data_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic stream_out_data_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> stream_out_data_2::ap_ST_fsm_state1 = "1";
const sc_lv<3> stream_out_data_2::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> stream_out_data_2::ap_ST_fsm_state6 = "100";
const bool stream_out_data_2::ap_const_boolean_1 = true;
const sc_lv<32> stream_out_data_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool stream_out_data_2::ap_const_boolean_0 = false;
const sc_lv<1> stream_out_data_2::ap_const_lv1_0 = "0";
const sc_lv<32> stream_out_data_2::ap_const_lv32_1 = "1";
const sc_lv<1> stream_out_data_2::ap_const_lv1_1 = "1";
const sc_lv<13> stream_out_data_2::ap_const_lv13_0 = "0000000000000";
const sc_lv<8> stream_out_data_2::ap_const_lv8_0 = "00000000";
const sc_lv<9> stream_out_data_2::ap_const_lv9_0 = "000000000";
const sc_lv<11> stream_out_data_2::ap_const_lv11_7FF = "11111111111";
const sc_lv<13> stream_out_data_2::ap_const_lv13_1F80 = "1111110000000";
const sc_lv<13> stream_out_data_2::ap_const_lv13_1 = "1";
const sc_lv<9> stream_out_data_2::ap_const_lv9_1F8 = "111111000";
const sc_lv<32> stream_out_data_2::ap_const_lv32_3 = "11";
const sc_lv<32> stream_out_data_2::ap_const_lv32_4 = "100";
const sc_lv<32> stream_out_data_2::ap_const_lv32_A = "1010";
const sc_lv<11> stream_out_data_2::ap_const_lv11_13 = "10011";
const sc_lv<9> stream_out_data_2::ap_const_lv9_1F7 = "111110111";
const sc_lv<8> stream_out_data_2::ap_const_lv8_17 = "10111";
const sc_lv<8> stream_out_data_2::ap_const_lv8_1 = "1";
const sc_lv<9> stream_out_data_2::ap_const_lv9_1 = "1";
const sc_lv<32> stream_out_data_2::ap_const_lv32_20 = "100000";
const sc_lv<32> stream_out_data_2::ap_const_lv32_3F = "111111";
const sc_lv<11> stream_out_data_2::ap_const_lv11_A8 = "10101000";
const sc_lv<32> stream_out_data_2::ap_const_lv32_2 = "10";

stream_out_data_2::stream_out_data_2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ultra_net_mac_mulcyx_U447 = new ultra_net_mac_mulcyx<1,1,9,2,11,11>("ultra_net_mac_mulcyx_U447");
    ultra_net_mac_mulcyx_U447->din0(grp_fu_371_p0);
    ultra_net_mac_mulcyx_U447->din1(grp_fu_371_p1);
    ultra_net_mac_mulcyx_U447->din2(grp_fu_371_p2);
    ultra_net_mac_mulcyx_U447->dout(grp_fu_371_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln65_fu_198_p2);
    sensitive << ( indvar_flatten_reg_138 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter3);
    sensitive << ( out_V_V_full_n );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln65_fu_192_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_cycle_fu_326_p2);
    sensitive << ( select_ln66_fu_210_p3 );

    SC_METHOD(thread_grp_fu_371_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_grp_fu_371_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( grp_fu_371_p10 );

    SC_METHOD(thread_grp_fu_371_p10);
    sensitive << ( rowBufferIdx_V_fu_232_p2 );

    SC_METHOD(thread_grp_fu_371_p2);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( t_V_reg_160 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( simdIdx_V_fu_228_p1 );

    SC_METHOD(thread_icmp_ln65_fu_192_p2);
    sensitive << ( indvar_flatten_reg_138 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln66_fu_204_p2);
    sensitive << ( cycle_0_reg_171 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln879_fu_284_p2);
    sensitive << ( t_V_3_reg_149 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln891_fu_266_p2);
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ret_V_3_fu_253_p2 );

    SC_METHOD(thread_icmp_ln96_fu_278_p2);
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( select_ln66_fu_210_p3 );

    SC_METHOD(thread_infoldIdx_V_3_fu_318_p3);
    sensitive << ( icmp_ln879_fu_284_p2 );
    sensitive << ( infoldIdx_V_fu_312_p2 );

    SC_METHOD(thread_infoldIdx_V_fu_312_p2);
    sensitive << ( t_V_3_reg_149 );

    SC_METHOD(thread_or_ln83_fu_272_p2);
    sensitive << ( tmp_8_fu_258_p3 );
    sensitive << ( icmp_ln891_fu_266_p2 );

    SC_METHOD(thread_out_V_V_blk_n);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );
    sensitive << ( v1_V_reg_433 );
    sensitive << ( v2_V_reg_438 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln65_reg_393_pp0_iter2_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_Result_s_fu_340_p4);
    sensitive << ( row_buffer_V_q0 );

    SC_METHOD(thread_ret_V_3_fu_253_p2);
    sensitive << ( ret_V_reg_388 );
    sensitive << ( zext_ln1353_fu_249_p1 );

    SC_METHOD(thread_ret_V_fu_186_p2);
    sensitive << ( sext_ln1354_fu_182_p1 );

    SC_METHOD(thread_rowBufferIdx_V_fu_232_p2);
    sensitive << ( startRowBufferIdx_V );
    sensitive << ( wr_V_fu_218_p4 );

    SC_METHOD(thread_row_buffer_V_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( sext_ln321_fu_332_p1 );

    SC_METHOD(thread_row_buffer_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_select_ln66_fu_210_p3);
    sensitive << ( cycle_0_reg_171 );
    sensitive << ( icmp_ln66_fu_204_p2 );

    SC_METHOD(thread_select_ln96_fu_304_p3);
    sensitive << ( icmp_ln96_fu_278_p2 );
    sensitive << ( select_ln98_fu_296_p3 );

    SC_METHOD(thread_select_ln98_fu_296_p3);
    sensitive << ( t_V_reg_160 );
    sensitive << ( icmp_ln879_fu_284_p2 );
    sensitive << ( w_V_fu_290_p2 );

    SC_METHOD(thread_sext_ln1354_fu_182_p1);
    sensitive << ( outRowIdx_V );

    SC_METHOD(thread_sext_ln321_fu_332_p1);
    sensitive << ( add_ln321_reg_402 );

    SC_METHOD(thread_simdIdx_V_fu_228_p1);
    sensitive << ( t_V_3_reg_149 );

    SC_METHOD(thread_skip_flag_read_read_fu_112_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( skip_flag );

    SC_METHOD(thread_tmp_8_fu_258_p3);
    sensitive << ( ret_V_3_fu_253_p2 );

    SC_METHOD(thread_trunc_ln647_fu_336_p1);
    sensitive << ( row_buffer_V_q0 );

    SC_METHOD(thread_v1_V_fu_350_p3);
    sensitive << ( or_ln83_reg_407_pp0_iter1_reg );
    sensitive << ( p_Result_s_fu_340_p4 );

    SC_METHOD(thread_v2_V_fu_357_p3);
    sensitive << ( or_ln83_reg_407_pp0_iter1_reg );
    sensitive << ( trunc_ln647_fu_336_p1 );

    SC_METHOD(thread_w_V_fu_290_p2);
    sensitive << ( t_V_reg_160 );

    SC_METHOD(thread_wr_V_fu_218_p4);
    sensitive << ( t_V_3_reg_149 );

    SC_METHOD(thread_zext_ln1353_fu_249_p1);
    sensitive << ( wr_V_fu_218_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( skip_flag_read_read_fu_112_p2 );
    sensitive << ( icmp_ln65_fu_192_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter3 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "stream_out_data_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, out_V_V_din, "(port)out_V_V_din");
    sc_trace(mVcdFile, out_V_V_full_n, "(port)out_V_V_full_n");
    sc_trace(mVcdFile, out_V_V_write, "(port)out_V_V_write");
    sc_trace(mVcdFile, row_buffer_V_address0, "(port)row_buffer_V_address0");
    sc_trace(mVcdFile, row_buffer_V_ce0, "(port)row_buffer_V_ce0");
    sc_trace(mVcdFile, row_buffer_V_q0, "(port)row_buffer_V_q0");
    sc_trace(mVcdFile, skip_flag, "(port)skip_flag");
    sc_trace(mVcdFile, outRowIdx_V, "(port)outRowIdx_V");
    sc_trace(mVcdFile, startRowBufferIdx_V, "(port)startRowBufferIdx_V");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, out_V_V_blk_n, "out_V_V_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter3, "ap_enable_reg_pp0_iter3");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln65_reg_393, "icmp_ln65_reg_393");
    sc_trace(mVcdFile, icmp_ln65_reg_393_pp0_iter2_reg, "icmp_ln65_reg_393_pp0_iter2_reg");
    sc_trace(mVcdFile, indvar_flatten_reg_138, "indvar_flatten_reg_138");
    sc_trace(mVcdFile, t_V_3_reg_149, "t_V_3_reg_149");
    sc_trace(mVcdFile, t_V_reg_160, "t_V_reg_160");
    sc_trace(mVcdFile, cycle_0_reg_171, "cycle_0_reg_171");
    sc_trace(mVcdFile, skip_flag_read_read_fu_112_p2, "skip_flag_read_read_fu_112_p2");
    sc_trace(mVcdFile, ret_V_fu_186_p2, "ret_V_fu_186_p2");
    sc_trace(mVcdFile, ret_V_reg_388, "ret_V_reg_388");
    sc_trace(mVcdFile, icmp_ln65_fu_192_p2, "icmp_ln65_fu_192_p2");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter3, "ap_block_state5_pp0_stage0_iter3");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln65_reg_393_pp0_iter1_reg, "icmp_ln65_reg_393_pp0_iter1_reg");
    sc_trace(mVcdFile, add_ln65_fu_198_p2, "add_ln65_fu_198_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, grp_fu_371_p3, "grp_fu_371_p3");
    sc_trace(mVcdFile, add_ln321_reg_402, "add_ln321_reg_402");
    sc_trace(mVcdFile, or_ln83_fu_272_p2, "or_ln83_fu_272_p2");
    sc_trace(mVcdFile, or_ln83_reg_407, "or_ln83_reg_407");
    sc_trace(mVcdFile, or_ln83_reg_407_pp0_iter1_reg, "or_ln83_reg_407_pp0_iter1_reg");
    sc_trace(mVcdFile, select_ln96_fu_304_p3, "select_ln96_fu_304_p3");
    sc_trace(mVcdFile, infoldIdx_V_3_fu_318_p3, "infoldIdx_V_3_fu_318_p3");
    sc_trace(mVcdFile, cycle_fu_326_p2, "cycle_fu_326_p2");
    sc_trace(mVcdFile, v1_V_fu_350_p3, "v1_V_fu_350_p3");
    sc_trace(mVcdFile, v1_V_reg_433, "v1_V_reg_433");
    sc_trace(mVcdFile, v2_V_fu_357_p3, "v2_V_fu_357_p3");
    sc_trace(mVcdFile, v2_V_reg_438, "v2_V_reg_438");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, sext_ln321_fu_332_p1, "sext_ln321_fu_332_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, sext_ln1354_fu_182_p1, "sext_ln1354_fu_182_p1");
    sc_trace(mVcdFile, icmp_ln66_fu_204_p2, "icmp_ln66_fu_204_p2");
    sc_trace(mVcdFile, wr_V_fu_218_p4, "wr_V_fu_218_p4");
    sc_trace(mVcdFile, simdIdx_V_fu_228_p1, "simdIdx_V_fu_228_p1");
    sc_trace(mVcdFile, rowBufferIdx_V_fu_232_p2, "rowBufferIdx_V_fu_232_p2");
    sc_trace(mVcdFile, zext_ln1353_fu_249_p1, "zext_ln1353_fu_249_p1");
    sc_trace(mVcdFile, ret_V_3_fu_253_p2, "ret_V_3_fu_253_p2");
    sc_trace(mVcdFile, tmp_8_fu_258_p3, "tmp_8_fu_258_p3");
    sc_trace(mVcdFile, icmp_ln891_fu_266_p2, "icmp_ln891_fu_266_p2");
    sc_trace(mVcdFile, select_ln66_fu_210_p3, "select_ln66_fu_210_p3");
    sc_trace(mVcdFile, icmp_ln879_fu_284_p2, "icmp_ln879_fu_284_p2");
    sc_trace(mVcdFile, w_V_fu_290_p2, "w_V_fu_290_p2");
    sc_trace(mVcdFile, icmp_ln96_fu_278_p2, "icmp_ln96_fu_278_p2");
    sc_trace(mVcdFile, select_ln98_fu_296_p3, "select_ln98_fu_296_p3");
    sc_trace(mVcdFile, infoldIdx_V_fu_312_p2, "infoldIdx_V_fu_312_p2");
    sc_trace(mVcdFile, p_Result_s_fu_340_p4, "p_Result_s_fu_340_p4");
    sc_trace(mVcdFile, trunc_ln647_fu_336_p1, "trunc_ln647_fu_336_p1");
    sc_trace(mVcdFile, grp_fu_371_p0, "grp_fu_371_p0");
    sc_trace(mVcdFile, grp_fu_371_p1, "grp_fu_371_p1");
    sc_trace(mVcdFile, grp_fu_371_p2, "grp_fu_371_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, grp_fu_371_p10, "grp_fu_371_p10");
#endif

    }
}

stream_out_data_2::~stream_out_data_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ultra_net_mac_mulcyx_U447;
}

void stream_out_data_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
            ap_enable_reg_pp0_iter3 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        cycle_0_reg_171 = cycle_fu_326_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
        cycle_0_reg_171 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        indvar_flatten_reg_138 = add_ln65_fu_198_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
        indvar_flatten_reg_138 = ap_const_lv13_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        t_V_3_reg_149 = infoldIdx_V_3_fu_318_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
        t_V_3_reg_149 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        t_V_reg_160 = select_ln96_fu_304_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
        t_V_reg_160 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        add_ln321_reg_402 = grp_fu_371_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln65_reg_393 = icmp_ln65_fu_192_p2.read();
        icmp_ln65_reg_393_pp0_iter1_reg = icmp_ln65_reg_393.read();
        or_ln83_reg_407_pp0_iter1_reg = or_ln83_reg_407.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        icmp_ln65_reg_393_pp0_iter2_reg = icmp_ln65_reg_393_pp0_iter1_reg.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_192_p2.read()))) {
        or_ln83_reg_407 = or_ln83_fu_272_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
        ret_V_reg_388 = ret_V_fu_186_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_reg_393_pp0_iter1_reg.read()))) {
        v1_V_reg_433 = v1_V_fu_350_p3.read();
        v2_V_reg_438 = v2_V_fu_357_p3.read();
    }
}

void stream_out_data_2::thread_add_ln65_fu_198_p2() {
    add_ln65_fu_198_p2 = (!indvar_flatten_reg_138.read().is_01() || !ap_const_lv13_1.is_01())? sc_lv<13>(): (sc_biguint<13>(indvar_flatten_reg_138.read()) + sc_biguint<13>(ap_const_lv13_1));
}

void stream_out_data_2::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void stream_out_data_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void stream_out_data_2::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[2];
}

void stream_out_data_2::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_2::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_2::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_2::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_2::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_2::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_2::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_2::thread_ap_block_state5_pp0_stage0_iter3() {
    ap_block_state5_pp0_stage0_iter3 = (esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_2::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln65_fu_192_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void stream_out_data_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_cycle_fu_326_p2() {
    cycle_fu_326_p2 = (!ap_const_lv9_1.is_01() || !select_ln66_fu_210_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_1) + sc_biguint<9>(select_ln66_fu_210_p3.read()));
}

void stream_out_data_2::thread_grp_fu_371_p0() {
    grp_fu_371_p0 =  (sc_lv<9>) (ap_const_lv11_A8);
}

void stream_out_data_2::thread_grp_fu_371_p1() {
    grp_fu_371_p1 =  (sc_lv<2>) (grp_fu_371_p10.read());
}

void stream_out_data_2::thread_grp_fu_371_p10() {
    grp_fu_371_p10 = esl_zext<11,2>(rowBufferIdx_V_fu_232_p2.read());
}

void stream_out_data_2::thread_grp_fu_371_p2() {
    grp_fu_371_p2 = esl_concat<8,3>(t_V_reg_160.read(), simdIdx_V_fu_228_p1.read());
}

void stream_out_data_2::thread_icmp_ln65_fu_192_p2() {
    icmp_ln65_fu_192_p2 = (!indvar_flatten_reg_138.read().is_01() || !ap_const_lv13_1F80.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_138.read() == ap_const_lv13_1F80);
}

void stream_out_data_2::thread_icmp_ln66_fu_204_p2() {
    icmp_ln66_fu_204_p2 = (!cycle_0_reg_171.read().is_01() || !ap_const_lv9_1F8.is_01())? sc_lv<1>(): sc_lv<1>(cycle_0_reg_171.read() == ap_const_lv9_1F8);
}

void stream_out_data_2::thread_icmp_ln879_fu_284_p2() {
    icmp_ln879_fu_284_p2 = (!t_V_3_reg_149.read().is_01() || !ap_const_lv8_17.is_01())? sc_lv<1>(): sc_lv<1>(t_V_3_reg_149.read() == ap_const_lv8_17);
}

void stream_out_data_2::thread_icmp_ln891_fu_266_p2() {
    icmp_ln891_fu_266_p2 = (!ret_V_3_fu_253_p2.read().is_01() || !ap_const_lv11_13.is_01())? sc_lv<1>(): (sc_bigint<11>(ret_V_3_fu_253_p2.read()) > sc_bigint<11>(ap_const_lv11_13));
}

void stream_out_data_2::thread_icmp_ln96_fu_278_p2() {
    icmp_ln96_fu_278_p2 = (!select_ln66_fu_210_p3.read().is_01() || !ap_const_lv9_1F7.is_01())? sc_lv<1>(): sc_lv<1>(select_ln66_fu_210_p3.read() == ap_const_lv9_1F7);
}

void stream_out_data_2::thread_infoldIdx_V_3_fu_318_p3() {
    infoldIdx_V_3_fu_318_p3 = (!icmp_ln879_fu_284_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln879_fu_284_p2.read()[0].to_bool())? ap_const_lv8_0: infoldIdx_V_fu_312_p2.read());
}

void stream_out_data_2::thread_infoldIdx_V_fu_312_p2() {
    infoldIdx_V_fu_312_p2 = (!ap_const_lv8_1.is_01() || !t_V_3_reg_149.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_1) + sc_biguint<8>(t_V_3_reg_149.read()));
}

void stream_out_data_2::thread_or_ln83_fu_272_p2() {
    or_ln83_fu_272_p2 = (tmp_8_fu_258_p3.read() | icmp_ln891_fu_266_p2.read());
}

void stream_out_data_2::thread_out_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0))) {
        out_V_V_blk_n = out_V_V_full_n.read();
    } else {
        out_V_V_blk_n = ap_const_logic_1;
    }
}

void stream_out_data_2::thread_out_V_V_din() {
    out_V_V_din = esl_concat<32,32>(v1_V_reg_433.read(), v2_V_reg_438.read());
}

void stream_out_data_2::thread_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(icmp_ln65_reg_393_pp0_iter2_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        out_V_V_write = ap_const_logic_1;
    } else {
        out_V_V_write = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_p_Result_s_fu_340_p4() {
    p_Result_s_fu_340_p4 = row_buffer_V_q0.read().range(63, 32);
}

void stream_out_data_2::thread_ret_V_3_fu_253_p2() {
    ret_V_3_fu_253_p2 = (!zext_ln1353_fu_249_p1.read().is_01() || !ret_V_reg_388.read().is_01())? sc_lv<11>(): (sc_biguint<11>(zext_ln1353_fu_249_p1.read()) + sc_biguint<11>(ret_V_reg_388.read()));
}

void stream_out_data_2::thread_ret_V_fu_186_p2() {
    ret_V_fu_186_p2 = (!sext_ln1354_fu_182_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(sext_ln1354_fu_182_p1.read()) + sc_bigint<11>(ap_const_lv11_7FF));
}

void stream_out_data_2::thread_rowBufferIdx_V_fu_232_p2() {
    rowBufferIdx_V_fu_232_p2 = (!wr_V_fu_218_p4.read().is_01() || !startRowBufferIdx_V.read().is_01())? sc_lv<2>(): (sc_biguint<2>(wr_V_fu_218_p4.read()) + sc_biguint<2>(startRowBufferIdx_V.read()));
}

void stream_out_data_2::thread_row_buffer_V_address0() {
    row_buffer_V_address0 =  (sc_lv<10>) (sext_ln321_fu_332_p1.read());
}

void stream_out_data_2::thread_row_buffer_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        row_buffer_V_ce0 = ap_const_logic_1;
    } else {
        row_buffer_V_ce0 = ap_const_logic_0;
    }
}

void stream_out_data_2::thread_select_ln66_fu_210_p3() {
    select_ln66_fu_210_p3 = (!icmp_ln66_fu_204_p2.read()[0].is_01())? sc_lv<9>(): ((icmp_ln66_fu_204_p2.read()[0].to_bool())? ap_const_lv9_0: cycle_0_reg_171.read());
}

void stream_out_data_2::thread_select_ln96_fu_304_p3() {
    select_ln96_fu_304_p3 = (!icmp_ln96_fu_278_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln96_fu_278_p2.read()[0].to_bool())? ap_const_lv8_0: select_ln98_fu_296_p3.read());
}

void stream_out_data_2::thread_select_ln98_fu_296_p3() {
    select_ln98_fu_296_p3 = (!icmp_ln879_fu_284_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln879_fu_284_p2.read()[0].to_bool())? w_V_fu_290_p2.read(): t_V_reg_160.read());
}

void stream_out_data_2::thread_sext_ln1354_fu_182_p1() {
    sext_ln1354_fu_182_p1 = esl_sext<11,10>(outRowIdx_V.read());
}

void stream_out_data_2::thread_sext_ln321_fu_332_p1() {
    sext_ln321_fu_332_p1 = esl_sext<64,11>(add_ln321_reg_402.read());
}

void stream_out_data_2::thread_simdIdx_V_fu_228_p1() {
    simdIdx_V_fu_228_p1 = t_V_3_reg_149.read().range(3-1, 0);
}

void stream_out_data_2::thread_skip_flag_read_read_fu_112_p2() {
    skip_flag_read_read_fu_112_p2 =  (sc_lv<1>) (skip_flag.read());
}

void stream_out_data_2::thread_tmp_8_fu_258_p3() {
    tmp_8_fu_258_p3 = ret_V_3_fu_253_p2.read().range(10, 10);
}

void stream_out_data_2::thread_trunc_ln647_fu_336_p1() {
    trunc_ln647_fu_336_p1 = row_buffer_V_q0.read().range(32-1, 0);
}

void stream_out_data_2::thread_v1_V_fu_350_p3() {
    v1_V_fu_350_p3 = (!or_ln83_reg_407_pp0_iter1_reg.read()[0].is_01())? sc_lv<32>(): ((or_ln83_reg_407_pp0_iter1_reg.read()[0].to_bool())? ap_const_lv32_0: p_Result_s_fu_340_p4.read());
}

void stream_out_data_2::thread_v2_V_fu_357_p3() {
    v2_V_fu_357_p3 = (!or_ln83_reg_407_pp0_iter1_reg.read()[0].is_01())? sc_lv<32>(): ((or_ln83_reg_407_pp0_iter1_reg.read()[0].to_bool())? ap_const_lv32_0: trunc_ln647_fu_336_p1.read());
}

void stream_out_data_2::thread_w_V_fu_290_p2() {
    w_V_fu_290_p2 = (!ap_const_lv8_1.is_01() || !t_V_reg_160.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_1) + sc_biguint<8>(t_V_reg_160.read()));
}

void stream_out_data_2::thread_wr_V_fu_218_p4() {
    wr_V_fu_218_p4 = t_V_3_reg_149.read().range(4, 3);
}

void stream_out_data_2::thread_zext_ln1353_fu_249_p1() {
    zext_ln1353_fu_249_p1 = esl_zext<11,2>(wr_V_fu_218_p4.read());
}

void stream_out_data_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_112_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(skip_flag_read_read_fu_112_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln65_fu_192_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln65_fu_192_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

