// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "stream_out_data_l0.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic stream_out_data_l0::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic stream_out_data_l0::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> stream_out_data_l0::ap_ST_fsm_state1 = "1";
const sc_lv<3> stream_out_data_l0::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> stream_out_data_l0::ap_ST_fsm_state6 = "100";
const bool stream_out_data_l0::ap_const_boolean_1 = true;
const sc_lv<32> stream_out_data_l0::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool stream_out_data_l0::ap_const_boolean_0 = false;
const sc_lv<1> stream_out_data_l0::ap_const_lv1_0 = "0";
const sc_lv<32> stream_out_data_l0::ap_const_lv32_1 = "1";
const sc_lv<1> stream_out_data_l0::ap_const_lv1_1 = "1";
const sc_lv<10> stream_out_data_l0::ap_const_lv10_0 = "0000000000";
const sc_lv<9> stream_out_data_l0::ap_const_lv9_0 = "000000000";
const sc_lv<2> stream_out_data_l0::ap_const_lv2_0 = "00";
const sc_lv<2> stream_out_data_l0::ap_const_lv2_3 = "11";
const sc_lv<2> stream_out_data_l0::ap_const_lv2_1 = "1";
const sc_lv<11> stream_out_data_l0::ap_const_lv11_7FF = "11111111111";
const sc_lv<32> stream_out_data_l0::ap_const_lv32_A = "1010";
const sc_lv<10> stream_out_data_l0::ap_const_lv10_9F = "10011111";
const sc_lv<10> stream_out_data_l0::ap_const_lv10_3C0 = "1111000000";
const sc_lv<10> stream_out_data_l0::ap_const_lv10_1 = "1";
const sc_lv<9> stream_out_data_l0::ap_const_lv9_1 = "1";
const sc_lv<24> stream_out_data_l0::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<32> stream_out_data_l0::ap_const_lv32_2 = "10";

stream_out_data_l0::stream_out_data_l0(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ultra_net_mux_42_ocq_U85 = new ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>("ultra_net_mux_42_ocq_U85");
    ultra_net_mux_42_ocq_U85->din0(row_buffer_0_V_q0);
    ultra_net_mux_42_ocq_U85->din1(row_buffer_1_V_q0);
    ultra_net_mux_42_ocq_U85->din2(row_buffer_2_V_q0);
    ultra_net_mux_42_ocq_U85->din3(row_buffer_3_V_q0);
    ultra_net_mux_42_ocq_U85->din4(row_sel0_V_reg_368);
    ultra_net_mux_42_ocq_U85->dout(data0_V_fu_298_p6);
    ultra_net_mux_42_ocq_U86 = new ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>("ultra_net_mux_42_ocq_U86");
    ultra_net_mux_42_ocq_U86->din0(row_buffer_0_V_q0);
    ultra_net_mux_42_ocq_U86->din1(row_buffer_1_V_q0);
    ultra_net_mux_42_ocq_U86->din2(row_buffer_2_V_q0);
    ultra_net_mux_42_ocq_U86->din3(row_buffer_3_V_q0);
    ultra_net_mux_42_ocq_U86->din4(centerRowBufferIdx_V);
    ultra_net_mux_42_ocq_U86->dout(data1_V_fu_318_p6);
    ultra_net_mux_42_ocq_U87 = new ultra_net_mux_42_ocq<1,1,24,24,24,24,2,24>("ultra_net_mux_42_ocq_U87");
    ultra_net_mux_42_ocq_U87->din0(row_buffer_0_V_q0);
    ultra_net_mux_42_ocq_U87->din1(row_buffer_1_V_q0);
    ultra_net_mux_42_ocq_U87->din2(row_buffer_2_V_q0);
    ultra_net_mux_42_ocq_U87->din3(row_buffer_3_V_q0);
    ultra_net_mux_42_ocq_U87->din4(row_sel2_V_reg_373);
    ultra_net_mux_42_ocq_U87->dout(data2_V_fu_331_p6);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln45_fu_242_p2);
    sensitive << ( indvar_flatten_reg_167 );

    SC_METHOD(thread_add_ln51_fu_285_p2);
    sensitive << ( select_ln45_reg_402 );
    sensitive << ( zext_ln46_fu_282_p1 );

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
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter3);
    sensitive << ( out_V_V_full_n );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln45_fu_236_p2 );

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

    SC_METHOD(thread_ap_phi_mux_c_0_phi_fu_182_p4);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln45_reg_388 );
    sensitive << ( c_0_reg_178 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( select_ln45_reg_402 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_c_fu_248_p2);
    sensitive << ( ap_phi_mux_c_0_phi_fu_182_p4 );

    SC_METHOD(thread_icmp_ln45_fu_236_p2);
    sensitive << ( indvar_flatten_reg_167 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln46_fu_254_p2);
    sensitive << ( kc_0_reg_189 );
    sensitive << ( icmp_ln45_fu_236_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln879_fu_230_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( outRowIdx_V );

    SC_METHOD(thread_icmp_ln879_fu_230_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( skip_flag_read_read_fu_102_p2 );
    sensitive << ( icmp_ln879_fu_230_p0 );

    SC_METHOD(thread_kc_fu_276_p2);
    sensitive << ( select_ln46_fu_260_p3 );

    SC_METHOD(thread_out_V_V_blk_n);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );
    sensitive << ( v2_V_reg_433 );
    sensitive << ( data1_V_reg_438 );
    sensitive << ( v1_V_reg_443 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( icmp_ln45_reg_388_pp0_iter2_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ret_V_fu_216_p2);
    sensitive << ( sext_ln1354_fu_212_p1 );

    SC_METHOD(thread_row_buffer_0_V_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln51_fu_290_p1 );

    SC_METHOD(thread_row_buffer_0_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_row_buffer_1_V_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln51_fu_290_p1 );

    SC_METHOD(thread_row_buffer_1_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_row_buffer_2_V_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln51_fu_290_p1 );

    SC_METHOD(thread_row_buffer_2_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_row_buffer_3_V_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln51_fu_290_p1 );

    SC_METHOD(thread_row_buffer_3_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_row_sel0_V_fu_200_p2);
    sensitive << ( centerRowBufferIdx_V );

    SC_METHOD(thread_row_sel2_V_fu_206_p2);
    sensitive << ( centerRowBufferIdx_V );

    SC_METHOD(thread_select_ln45_fu_268_p3);
    sensitive << ( ap_phi_mux_c_0_phi_fu_182_p4 );
    sensitive << ( icmp_ln46_fu_254_p2 );
    sensitive << ( c_fu_248_p2 );

    SC_METHOD(thread_select_ln46_fu_260_p3);
    sensitive << ( kc_0_reg_189 );
    sensitive << ( icmp_ln46_fu_254_p2 );

    SC_METHOD(thread_sext_ln1354_fu_212_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( outRowIdx_V );

    SC_METHOD(thread_sext_ln1354_fu_212_p1);
    sensitive << ( sext_ln1354_fu_212_p0 );

    SC_METHOD(thread_skip_flag_read_read_fu_102_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( skip_flag );

    SC_METHOD(thread_v1_V_fu_344_p3);
    sensitive << ( icmp_ln879_reg_383 );
    sensitive << ( data2_V_fu_331_p6 );

    SC_METHOD(thread_v2_V_fu_311_p3);
    sensitive << ( tmp_5_reg_378 );
    sensitive << ( data0_V_fu_298_p6 );

    SC_METHOD(thread_zext_ln46_fu_282_p1);
    sensitive << ( select_ln46_reg_397 );

    SC_METHOD(thread_zext_ln51_fu_290_p1);
    sensitive << ( add_ln51_fu_285_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( skip_flag_read_read_fu_102_p2 );
    sensitive << ( icmp_ln45_fu_236_p2 );
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
    apTFilenSS << "stream_out_data_l0_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, row_buffer_0_V_address0, "(port)row_buffer_0_V_address0");
    sc_trace(mVcdFile, row_buffer_0_V_ce0, "(port)row_buffer_0_V_ce0");
    sc_trace(mVcdFile, row_buffer_0_V_q0, "(port)row_buffer_0_V_q0");
    sc_trace(mVcdFile, row_buffer_1_V_address0, "(port)row_buffer_1_V_address0");
    sc_trace(mVcdFile, row_buffer_1_V_ce0, "(port)row_buffer_1_V_ce0");
    sc_trace(mVcdFile, row_buffer_1_V_q0, "(port)row_buffer_1_V_q0");
    sc_trace(mVcdFile, row_buffer_2_V_address0, "(port)row_buffer_2_V_address0");
    sc_trace(mVcdFile, row_buffer_2_V_ce0, "(port)row_buffer_2_V_ce0");
    sc_trace(mVcdFile, row_buffer_2_V_q0, "(port)row_buffer_2_V_q0");
    sc_trace(mVcdFile, row_buffer_3_V_address0, "(port)row_buffer_3_V_address0");
    sc_trace(mVcdFile, row_buffer_3_V_ce0, "(port)row_buffer_3_V_ce0");
    sc_trace(mVcdFile, row_buffer_3_V_q0, "(port)row_buffer_3_V_q0");
    sc_trace(mVcdFile, skip_flag, "(port)skip_flag");
    sc_trace(mVcdFile, outRowIdx_V, "(port)outRowIdx_V");
    sc_trace(mVcdFile, centerRowBufferIdx_V, "(port)centerRowBufferIdx_V");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, out_V_V_blk_n, "out_V_V_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter3, "ap_enable_reg_pp0_iter3");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln45_reg_388, "icmp_ln45_reg_388");
    sc_trace(mVcdFile, icmp_ln45_reg_388_pp0_iter2_reg, "icmp_ln45_reg_388_pp0_iter2_reg");
    sc_trace(mVcdFile, indvar_flatten_reg_167, "indvar_flatten_reg_167");
    sc_trace(mVcdFile, c_0_reg_178, "c_0_reg_178");
    sc_trace(mVcdFile, kc_0_reg_189, "kc_0_reg_189");
    sc_trace(mVcdFile, skip_flag_read_read_fu_102_p2, "skip_flag_read_read_fu_102_p2");
    sc_trace(mVcdFile, row_sel0_V_fu_200_p2, "row_sel0_V_fu_200_p2");
    sc_trace(mVcdFile, row_sel0_V_reg_368, "row_sel0_V_reg_368");
    sc_trace(mVcdFile, row_sel2_V_fu_206_p2, "row_sel2_V_fu_206_p2");
    sc_trace(mVcdFile, row_sel2_V_reg_373, "row_sel2_V_reg_373");
    sc_trace(mVcdFile, tmp_5_reg_378, "tmp_5_reg_378");
    sc_trace(mVcdFile, icmp_ln879_fu_230_p2, "icmp_ln879_fu_230_p2");
    sc_trace(mVcdFile, icmp_ln879_reg_383, "icmp_ln879_reg_383");
    sc_trace(mVcdFile, icmp_ln45_fu_236_p2, "icmp_ln45_fu_236_p2");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter3, "ap_block_state5_pp0_stage0_iter3");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln45_reg_388_pp0_iter1_reg, "icmp_ln45_reg_388_pp0_iter1_reg");
    sc_trace(mVcdFile, add_ln45_fu_242_p2, "add_ln45_fu_242_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, select_ln46_fu_260_p3, "select_ln46_fu_260_p3");
    sc_trace(mVcdFile, select_ln46_reg_397, "select_ln46_reg_397");
    sc_trace(mVcdFile, select_ln45_fu_268_p3, "select_ln45_fu_268_p3");
    sc_trace(mVcdFile, select_ln45_reg_402, "select_ln45_reg_402");
    sc_trace(mVcdFile, kc_fu_276_p2, "kc_fu_276_p2");
    sc_trace(mVcdFile, v2_V_fu_311_p3, "v2_V_fu_311_p3");
    sc_trace(mVcdFile, v2_V_reg_433, "v2_V_reg_433");
    sc_trace(mVcdFile, data1_V_fu_318_p6, "data1_V_fu_318_p6");
    sc_trace(mVcdFile, data1_V_reg_438, "data1_V_reg_438");
    sc_trace(mVcdFile, v1_V_fu_344_p3, "v1_V_fu_344_p3");
    sc_trace(mVcdFile, v1_V_reg_443, "v1_V_reg_443");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_phi_mux_c_0_phi_fu_182_p4, "ap_phi_mux_c_0_phi_fu_182_p4");
    sc_trace(mVcdFile, zext_ln51_fu_290_p1, "zext_ln51_fu_290_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, sext_ln1354_fu_212_p0, "sext_ln1354_fu_212_p0");
    sc_trace(mVcdFile, sext_ln1354_fu_212_p1, "sext_ln1354_fu_212_p1");
    sc_trace(mVcdFile, ret_V_fu_216_p2, "ret_V_fu_216_p2");
    sc_trace(mVcdFile, icmp_ln879_fu_230_p0, "icmp_ln879_fu_230_p0");
    sc_trace(mVcdFile, icmp_ln46_fu_254_p2, "icmp_ln46_fu_254_p2");
    sc_trace(mVcdFile, c_fu_248_p2, "c_fu_248_p2");
    sc_trace(mVcdFile, zext_ln46_fu_282_p1, "zext_ln46_fu_282_p1");
    sc_trace(mVcdFile, add_ln51_fu_285_p2, "add_ln51_fu_285_p2");
    sc_trace(mVcdFile, data0_V_fu_298_p6, "data0_V_fu_298_p6");
    sc_trace(mVcdFile, data2_V_fu_331_p6, "data2_V_fu_331_p6");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

stream_out_data_l0::~stream_out_data_l0() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ultra_net_mux_42_ocq_U85;
    delete ultra_net_mux_42_ocq_U86;
    delete ultra_net_mux_42_ocq_U87;
}

void stream_out_data_l0::thread_ap_clk_no_reset_() {
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
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
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
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
            ap_enable_reg_pp0_iter3 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln45_reg_388.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        c_0_reg_178 = select_ln45_reg_402.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
        c_0_reg_178 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln45_fu_236_p2.read()))) {
        indvar_flatten_reg_167 = add_ln45_fu_242_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
        indvar_flatten_reg_167 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln45_fu_236_p2.read()))) {
        kc_0_reg_189 = kc_fu_276_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
        kc_0_reg_189 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln45_reg_388_pp0_iter1_reg.read()))) {
        data1_V_reg_438 = data1_V_fu_318_p6.read();
        v1_V_reg_443 = v1_V_fu_344_p3.read();
        v2_V_reg_433 = v2_V_fu_311_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln45_reg_388 = icmp_ln45_fu_236_p2.read();
        icmp_ln45_reg_388_pp0_iter1_reg = icmp_ln45_reg_388.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        icmp_ln45_reg_388_pp0_iter2_reg = icmp_ln45_reg_388_pp0_iter1_reg.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
        icmp_ln879_reg_383 = icmp_ln879_fu_230_p2.read();
        row_sel0_V_reg_368 = row_sel0_V_fu_200_p2.read();
        row_sel2_V_reg_373 = row_sel2_V_fu_206_p2.read();
        tmp_5_reg_378 = ret_V_fu_216_p2.read().range(10, 10);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln45_fu_236_p2.read()))) {
        select_ln45_reg_402 = select_ln45_fu_268_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln45_fu_236_p2.read()))) {
        select_ln46_reg_397 = select_ln46_fu_260_p3.read();
    }
}

void stream_out_data_l0::thread_add_ln45_fu_242_p2() {
    add_ln45_fu_242_p2 = (!indvar_flatten_reg_167.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(indvar_flatten_reg_167.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void stream_out_data_l0::thread_add_ln51_fu_285_p2() {
    add_ln51_fu_285_p2 = (!select_ln45_reg_402.read().is_01() || !zext_ln46_fu_282_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(select_ln45_reg_402.read()) + sc_biguint<9>(zext_ln46_fu_282_p1.read()));
}

void stream_out_data_l0::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void stream_out_data_l0::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void stream_out_data_l0::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[2];
}

void stream_out_data_l0::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_l0::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_l0::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_l0::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_l0::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_l0::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_l0::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_out_data_l0::thread_ap_block_state5_pp0_stage0_iter3() {
    ap_block_state5_pp0_stage0_iter3 = (esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()));
}

void stream_out_data_l0::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln45_fu_236_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void stream_out_data_l0::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_ap_phi_mux_c_0_phi_fu_182_p4() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(icmp_ln45_reg_388.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        ap_phi_mux_c_0_phi_fu_182_p4 = select_ln45_reg_402.read();
    } else {
        ap_phi_mux_c_0_phi_fu_182_p4 = c_0_reg_178.read();
    }
}

void stream_out_data_l0::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_c_fu_248_p2() {
    c_fu_248_p2 = (!ap_phi_mux_c_0_phi_fu_182_p4.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(ap_phi_mux_c_0_phi_fu_182_p4.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void stream_out_data_l0::thread_icmp_ln45_fu_236_p2() {
    icmp_ln45_fu_236_p2 = (!indvar_flatten_reg_167.read().is_01() || !ap_const_lv10_3C0.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_167.read() == ap_const_lv10_3C0);
}

void stream_out_data_l0::thread_icmp_ln46_fu_254_p2() {
    icmp_ln46_fu_254_p2 = (!kc_0_reg_189.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(kc_0_reg_189.read() == ap_const_lv2_3);
}

void stream_out_data_l0::thread_icmp_ln879_fu_230_p0() {
    icmp_ln879_fu_230_p0 = outRowIdx_V.read();
}

void stream_out_data_l0::thread_icmp_ln879_fu_230_p2() {
    icmp_ln879_fu_230_p2 = (!icmp_ln879_fu_230_p0.read().is_01() || !ap_const_lv10_9F.is_01())? sc_lv<1>(): sc_lv<1>(icmp_ln879_fu_230_p0.read() == ap_const_lv10_9F);
}

void stream_out_data_l0::thread_kc_fu_276_p2() {
    kc_fu_276_p2 = (!select_ln46_fu_260_p3.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(select_ln46_fu_260_p3.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void stream_out_data_l0::thread_out_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0))) {
        out_V_V_blk_n = out_V_V_full_n.read();
    } else {
        out_V_V_blk_n = ap_const_logic_1;
    }
}

void stream_out_data_l0::thread_out_V_V_din() {
    out_V_V_din = esl_concat<48,24>(esl_concat<24,24>(v1_V_reg_443.read(), data1_V_reg_438.read()), v2_V_reg_433.read());
}

void stream_out_data_l0::thread_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(icmp_ln45_reg_388_pp0_iter2_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        out_V_V_write = ap_const_logic_1;
    } else {
        out_V_V_write = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_ret_V_fu_216_p2() {
    ret_V_fu_216_p2 = (!sext_ln1354_fu_212_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(sext_ln1354_fu_212_p1.read()) + sc_bigint<11>(ap_const_lv11_7FF));
}

void stream_out_data_l0::thread_row_buffer_0_V_address0() {
    row_buffer_0_V_address0 =  (sc_lv<9>) (zext_ln51_fu_290_p1.read());
}

void stream_out_data_l0::thread_row_buffer_0_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        row_buffer_0_V_ce0 = ap_const_logic_1;
    } else {
        row_buffer_0_V_ce0 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_row_buffer_1_V_address0() {
    row_buffer_1_V_address0 =  (sc_lv<9>) (zext_ln51_fu_290_p1.read());
}

void stream_out_data_l0::thread_row_buffer_1_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        row_buffer_1_V_ce0 = ap_const_logic_1;
    } else {
        row_buffer_1_V_ce0 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_row_buffer_2_V_address0() {
    row_buffer_2_V_address0 =  (sc_lv<9>) (zext_ln51_fu_290_p1.read());
}

void stream_out_data_l0::thread_row_buffer_2_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        row_buffer_2_V_ce0 = ap_const_logic_1;
    } else {
        row_buffer_2_V_ce0 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_row_buffer_3_V_address0() {
    row_buffer_3_V_address0 =  (sc_lv<9>) (zext_ln51_fu_290_p1.read());
}

void stream_out_data_l0::thread_row_buffer_3_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        row_buffer_3_V_ce0 = ap_const_logic_1;
    } else {
        row_buffer_3_V_ce0 = ap_const_logic_0;
    }
}

void stream_out_data_l0::thread_row_sel0_V_fu_200_p2() {
    row_sel0_V_fu_200_p2 = (!centerRowBufferIdx_V.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<2>(): (sc_biguint<2>(centerRowBufferIdx_V.read()) + sc_bigint<2>(ap_const_lv2_3));
}

void stream_out_data_l0::thread_row_sel2_V_fu_206_p2() {
    row_sel2_V_fu_206_p2 = (!centerRowBufferIdx_V.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(centerRowBufferIdx_V.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void stream_out_data_l0::thread_select_ln45_fu_268_p3() {
    select_ln45_fu_268_p3 = (!icmp_ln46_fu_254_p2.read()[0].is_01())? sc_lv<9>(): ((icmp_ln46_fu_254_p2.read()[0].to_bool())? c_fu_248_p2.read(): ap_phi_mux_c_0_phi_fu_182_p4.read());
}

void stream_out_data_l0::thread_select_ln46_fu_260_p3() {
    select_ln46_fu_260_p3 = (!icmp_ln46_fu_254_p2.read()[0].is_01())? sc_lv<2>(): ((icmp_ln46_fu_254_p2.read()[0].to_bool())? ap_const_lv2_0: kc_0_reg_189.read());
}

void stream_out_data_l0::thread_sext_ln1354_fu_212_p0() {
    sext_ln1354_fu_212_p0 = outRowIdx_V.read();
}

void stream_out_data_l0::thread_sext_ln1354_fu_212_p1() {
    sext_ln1354_fu_212_p1 = esl_sext<11,10>(sext_ln1354_fu_212_p0.read());
}

void stream_out_data_l0::thread_skip_flag_read_read_fu_102_p2() {
    skip_flag_read_read_fu_102_p2 =  (sc_lv<1>) (skip_flag.read());
}

void stream_out_data_l0::thread_v1_V_fu_344_p3() {
    v1_V_fu_344_p3 = (!icmp_ln879_reg_383.read()[0].is_01())? sc_lv<24>(): ((icmp_ln879_reg_383.read()[0].to_bool())? ap_const_lv24_0: data2_V_fu_331_p6.read());
}

void stream_out_data_l0::thread_v2_V_fu_311_p3() {
    v2_V_fu_311_p3 = (!tmp_5_reg_378.read()[0].is_01())? sc_lv<24>(): ((tmp_5_reg_378.read()[0].to_bool())? ap_const_lv24_0: data0_V_fu_298_p6.read());
}

void stream_out_data_l0::thread_zext_ln46_fu_282_p1() {
    zext_ln46_fu_282_p1 = esl_zext<9,2>(select_ln46_reg_397.read());
}

void stream_out_data_l0::thread_zext_ln51_fu_290_p1() {
    zext_ln51_fu_290_p1 = esl_zext<64,9>(add_ln51_fu_285_p2.read());
}

void stream_out_data_l0::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_102_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(skip_flag_read_read_fu_102_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln45_fu_236_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln45_fu_236_p2.read(), ap_const_lv1_1) && 
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
