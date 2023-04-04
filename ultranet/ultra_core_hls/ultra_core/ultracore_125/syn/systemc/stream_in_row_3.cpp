// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "stream_in_row_3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic stream_in_row_3::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic stream_in_row_3::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> stream_in_row_3::ap_ST_fsm_state1 = "1";
const sc_lv<3> stream_in_row_3::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> stream_in_row_3::ap_ST_fsm_state5 = "100";
const bool stream_in_row_3::ap_const_boolean_1 = true;
const sc_lv<32> stream_in_row_3::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> stream_in_row_3::ap_const_lv32_1 = "1";
const bool stream_in_row_3::ap_const_boolean_0 = false;
const sc_lv<1> stream_in_row_3::ap_const_lv1_0 = "0";
const sc_lv<1> stream_in_row_3::ap_const_lv1_1 = "1";
const sc_lv<9> stream_in_row_3::ap_const_lv9_0 = "000000000";
const sc_lv<6> stream_in_row_3::ap_const_lv6_0 = "000000";
const sc_lv<8> stream_in_row_3::ap_const_lv8_0 = "00000000";
const sc_lv<4> stream_in_row_3::ap_const_lv4_0 = "0000";
const sc_lv<10> stream_in_row_3::ap_const_lv10_B0 = "10110000";
const sc_lv<9> stream_in_row_3::ap_const_lv9_160 = "101100000";
const sc_lv<9> stream_in_row_3::ap_const_lv9_1 = "1";
const sc_lv<4> stream_in_row_3::ap_const_lv4_B = "1011";
const sc_lv<4> stream_in_row_3::ap_const_lv4_A = "1010";
const sc_lv<4> stream_in_row_3::ap_const_lv4_1 = "1";
const sc_lv<6> stream_in_row_3::ap_const_lv6_1 = "1";
const sc_lv<32> stream_in_row_3::ap_const_lv32_5 = "101";
const sc_lv<32> stream_in_row_3::ap_const_lv32_8 = "1000";
const sc_lv<32> stream_in_row_3::ap_const_lv32_F = "1111";
const sc_lv<32> stream_in_row_3::ap_const_lv32_2 = "10";

stream_in_row_3::stream_in_row_3(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Part2_V_fu_299_p1);
    sensitive << ( in_V_V_dout );

    SC_METHOD(thread_add_ln28_fu_226_p2);
    sensitive << ( indvar_flatten_reg_140 );

    SC_METHOD(thread_add_ln321_fu_324_p2);
    sensitive << ( mul_ln321_reg_348 );
    sensitive << ( zext_ln321_4_fu_320_p1 );

    SC_METHOD(thread_add_ln42_fu_314_p2);
    sensitive << ( zext_ln42_1_fu_310_p1 );
    sensitive << ( zext_ln42_fu_281_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op31_read_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op31_read_state3 );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_predicate_op31_read_state3 );

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_104);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_condition_119);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln28_fu_220_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_phi_mux_peIdx_0_phi_fu_155_p4);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( peIdx_0_reg_151 );
    sensitive << ( icmp_ln28_reg_353_pp0_iter1_reg );
    sensitive << ( select_ln42_1_reg_381 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_phi_reg_pp0_iter0_reg_V_reg_186);

    SC_METHOD(thread_ap_phi_reg_pp0_iter0_v1_V_reg_199);

    SC_METHOD(thread_ap_predicate_op31_read_state3);
    sensitive << ( icmp_ln28_reg_353 );
    sensitive << ( icmp_ln33_reg_372 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_icmp_ln28_fu_220_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( indvar_flatten_reg_140 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln29_fu_232_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( w_0_reg_175 );
    sensitive << ( icmp_ln28_fu_220_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln33_fu_246_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( icmp_ln28_fu_220_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( select_ln42_fu_238_p3 );

    SC_METHOD(thread_in_V_V_blk_n);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln28_reg_353 );
    sensitive << ( icmp_ln33_reg_372 );

    SC_METHOD(thread_in_V_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op31_read_state3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_mul_ln321_fu_214_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( mul_ln321_fu_214_p00 );

    SC_METHOD(thread_mul_ln321_fu_214_p00);
    sensitive << ( rowBufferIdx_V );

    SC_METHOD(thread_mul_ln321_fu_214_p2);
    sensitive << ( mul_ln321_fu_214_p0 );

    SC_METHOD(thread_p_Result_s_fu_329_p3);
    sensitive << ( v2_V_reg_163 );
    sensitive << ( ap_phi_reg_pp0_iter2_v1_V_reg_199 );

    SC_METHOD(thread_peIdx_fu_258_p2);
    sensitive << ( ap_phi_mux_peIdx_0_phi_fu_155_p4 );

    SC_METHOD(thread_row_buffer_0_V_address1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( zext_ln321_5_fu_339_p1 );

    SC_METHOD(thread_row_buffer_0_V_ce1);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_row_buffer_0_V_d1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( p_Result_s_fu_329_p3 );

    SC_METHOD(thread_row_buffer_0_V_we1);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( trunc_ln42_reg_386 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_row_buffer_1_V_address1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( zext_ln321_5_fu_339_p1 );

    SC_METHOD(thread_row_buffer_1_V_ce1);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_row_buffer_1_V_d1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( p_Result_s_fu_329_p3 );

    SC_METHOD(thread_row_buffer_1_V_we1);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( trunc_ln42_reg_386 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_select_ln42_1_fu_264_p3);
    sensitive << ( icmp_ln29_reg_362 );
    sensitive << ( ap_phi_mux_peIdx_0_phi_fu_155_p4 );
    sensitive << ( peIdx_fu_258_p2 );

    SC_METHOD(thread_select_ln42_fu_238_p3);
    sensitive << ( w_0_reg_175 );
    sensitive << ( icmp_ln29_fu_232_p2 );

    SC_METHOD(thread_shl_ln_fu_303_p3);
    sensitive << ( select_ln42_reg_367 );

    SC_METHOD(thread_skip_flag_read_read_fu_94_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( skip_flag );

    SC_METHOD(thread_trunc_ln42_fu_285_p1);
    sensitive << ( select_ln42_1_fu_264_p3 );

    SC_METHOD(thread_w_fu_252_p2);
    sensitive << ( select_ln42_fu_238_p3 );

    SC_METHOD(thread_zext_ln321_4_fu_320_p1);
    sensitive << ( add_ln42_fu_314_p2 );

    SC_METHOD(thread_zext_ln321_5_fu_339_p1);
    sensitive << ( add_ln321_reg_400 );

    SC_METHOD(thread_zext_ln42_1_fu_310_p1);
    sensitive << ( shl_ln_fu_303_p3 );

    SC_METHOD(thread_zext_ln42_5_mid2_v_fu_271_p4);
    sensitive << ( select_ln42_1_fu_264_p3 );

    SC_METHOD(thread_zext_ln42_fu_281_p1);
    sensitive << ( zext_ln42_5_mid2_v_fu_271_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( skip_flag_read_read_fu_94_p2 );
    sensitive << ( icmp_ln28_fu_220_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "stream_in_row_3_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, in_V_V_dout, "(port)in_V_V_dout");
    sc_trace(mVcdFile, in_V_V_empty_n, "(port)in_V_V_empty_n");
    sc_trace(mVcdFile, in_V_V_read, "(port)in_V_V_read");
    sc_trace(mVcdFile, row_buffer_0_V_address1, "(port)row_buffer_0_V_address1");
    sc_trace(mVcdFile, row_buffer_0_V_ce1, "(port)row_buffer_0_V_ce1");
    sc_trace(mVcdFile, row_buffer_0_V_we1, "(port)row_buffer_0_V_we1");
    sc_trace(mVcdFile, row_buffer_0_V_d1, "(port)row_buffer_0_V_d1");
    sc_trace(mVcdFile, row_buffer_1_V_address1, "(port)row_buffer_1_V_address1");
    sc_trace(mVcdFile, row_buffer_1_V_ce1, "(port)row_buffer_1_V_ce1");
    sc_trace(mVcdFile, row_buffer_1_V_we1, "(port)row_buffer_1_V_we1");
    sc_trace(mVcdFile, row_buffer_1_V_d1, "(port)row_buffer_1_V_d1");
    sc_trace(mVcdFile, skip_flag, "(port)skip_flag");
    sc_trace(mVcdFile, rowBufferIdx_V, "(port)rowBufferIdx_V");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, in_V_V_blk_n, "in_V_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln28_reg_353, "icmp_ln28_reg_353");
    sc_trace(mVcdFile, icmp_ln33_reg_372, "icmp_ln33_reg_372");
    sc_trace(mVcdFile, indvar_flatten_reg_140, "indvar_flatten_reg_140");
    sc_trace(mVcdFile, peIdx_0_reg_151, "peIdx_0_reg_151");
    sc_trace(mVcdFile, v2_V_reg_163, "v2_V_reg_163");
    sc_trace(mVcdFile, w_0_reg_175, "w_0_reg_175");
    sc_trace(mVcdFile, skip_flag_read_read_fu_94_p2, "skip_flag_read_read_fu_94_p2");
    sc_trace(mVcdFile, mul_ln321_fu_214_p2, "mul_ln321_fu_214_p2");
    sc_trace(mVcdFile, mul_ln321_reg_348, "mul_ln321_reg_348");
    sc_trace(mVcdFile, icmp_ln28_fu_220_p2, "icmp_ln28_fu_220_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_predicate_op31_read_state3, "ap_predicate_op31_read_state3");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln28_reg_353_pp0_iter1_reg, "icmp_ln28_reg_353_pp0_iter1_reg");
    sc_trace(mVcdFile, add_ln28_fu_226_p2, "add_ln28_fu_226_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, icmp_ln29_fu_232_p2, "icmp_ln29_fu_232_p2");
    sc_trace(mVcdFile, icmp_ln29_reg_362, "icmp_ln29_reg_362");
    sc_trace(mVcdFile, select_ln42_fu_238_p3, "select_ln42_fu_238_p3");
    sc_trace(mVcdFile, select_ln42_reg_367, "select_ln42_reg_367");
    sc_trace(mVcdFile, icmp_ln33_fu_246_p2, "icmp_ln33_fu_246_p2");
    sc_trace(mVcdFile, w_fu_252_p2, "w_fu_252_p2");
    sc_trace(mVcdFile, select_ln42_1_fu_264_p3, "select_ln42_1_fu_264_p3");
    sc_trace(mVcdFile, select_ln42_1_reg_381, "select_ln42_1_reg_381");
    sc_trace(mVcdFile, trunc_ln42_fu_285_p1, "trunc_ln42_fu_285_p1");
    sc_trace(mVcdFile, trunc_ln42_reg_386, "trunc_ln42_reg_386");
    sc_trace(mVcdFile, Part2_V_fu_299_p1, "Part2_V_fu_299_p1");
    sc_trace(mVcdFile, add_ln321_fu_324_p2, "add_ln321_fu_324_p2");
    sc_trace(mVcdFile, add_ln321_reg_400, "add_ln321_reg_400");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_phi_mux_peIdx_0_phi_fu_155_p4, "ap_phi_mux_peIdx_0_phi_fu_155_p4");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter0_reg_V_reg_186, "ap_phi_reg_pp0_iter0_reg_V_reg_186");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter1_reg_V_reg_186, "ap_phi_reg_pp0_iter1_reg_V_reg_186");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter2_reg_V_reg_186, "ap_phi_reg_pp0_iter2_reg_V_reg_186");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter0_v1_V_reg_199, "ap_phi_reg_pp0_iter0_v1_V_reg_199");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter1_v1_V_reg_199, "ap_phi_reg_pp0_iter1_v1_V_reg_199");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter2_v1_V_reg_199, "ap_phi_reg_pp0_iter2_v1_V_reg_199");
    sc_trace(mVcdFile, zext_ln321_5_fu_339_p1, "zext_ln321_5_fu_339_p1");
    sc_trace(mVcdFile, p_Result_s_fu_329_p3, "p_Result_s_fu_329_p3");
    sc_trace(mVcdFile, mul_ln321_fu_214_p0, "mul_ln321_fu_214_p0");
    sc_trace(mVcdFile, peIdx_fu_258_p2, "peIdx_fu_258_p2");
    sc_trace(mVcdFile, zext_ln42_5_mid2_v_fu_271_p4, "zext_ln42_5_mid2_v_fu_271_p4");
    sc_trace(mVcdFile, shl_ln_fu_303_p3, "shl_ln_fu_303_p3");
    sc_trace(mVcdFile, zext_ln42_1_fu_310_p1, "zext_ln42_1_fu_310_p1");
    sc_trace(mVcdFile, zext_ln42_fu_281_p1, "zext_ln42_fu_281_p1");
    sc_trace(mVcdFile, add_ln42_fu_314_p2, "add_ln42_fu_314_p2");
    sc_trace(mVcdFile, zext_ln321_4_fu_320_p1, "zext_ln321_4_fu_320_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, mul_ln321_fu_214_p00, "mul_ln321_fu_214_p00");
    sc_trace(mVcdFile, ap_condition_104, "ap_condition_104");
    sc_trace(mVcdFile, ap_condition_119, "ap_condition_119");
#endif

    }
}

stream_in_row_3::~stream_in_row_3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void stream_in_row_3::thread_ap_clk_no_reset_() {
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
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
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
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_condition_104.read(), ap_const_boolean_1)) {
        if ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_fu_220_p2.read()) && 
             esl_seteq<1,1,1>(icmp_ln33_fu_246_p2.read(), ap_const_lv1_1))) {
            ap_phi_reg_pp0_iter1_reg_V_reg_186 = ap_const_lv8_0;
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter1_reg_V_reg_186 = ap_phi_reg_pp0_iter0_reg_V_reg_186.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_condition_104.read(), ap_const_boolean_1)) {
        if ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_fu_220_p2.read()) && 
             esl_seteq<1,1,1>(icmp_ln33_fu_246_p2.read(), ap_const_lv1_1))) {
            ap_phi_reg_pp0_iter1_v1_V_reg_199 = ap_const_lv8_0;
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter1_v1_V_reg_199 = ap_phi_reg_pp0_iter0_v1_V_reg_199.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_condition_119.read(), ap_const_boolean_1)) {
        if ((esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_reg_372.read()))) {
            ap_phi_reg_pp0_iter2_reg_V_reg_186 = in_V_V_dout.read().range(15, 8);
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter2_reg_V_reg_186 = ap_phi_reg_pp0_iter1_reg_V_reg_186.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_condition_119.read(), ap_const_boolean_1)) {
        if ((esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_reg_372.read()))) {
            ap_phi_reg_pp0_iter2_v1_V_reg_199 = Part2_V_fu_299_p1.read();
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
            ap_phi_reg_pp0_iter2_v1_V_reg_199 = ap_phi_reg_pp0_iter1_v1_V_reg_199.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_fu_220_p2.read()))) {
        indvar_flatten_reg_140 = add_ln28_fu_226_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
        indvar_flatten_reg_140 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_reg_353_pp0_iter1_reg.read()))) {
        peIdx_0_reg_151 = select_ln42_1_reg_381.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
        peIdx_0_reg_151 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_reg_353_pp0_iter1_reg.read()))) {
        v2_V_reg_163 = ap_phi_reg_pp0_iter2_reg_V_reg_186.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
        v2_V_reg_163 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_fu_220_p2.read()))) {
        w_0_reg_175 = w_fu_252_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
        w_0_reg_175 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        add_ln321_reg_400 = add_ln321_fu_324_p2.read();
        icmp_ln28_reg_353 = icmp_ln28_fu_220_p2.read();
        icmp_ln28_reg_353_pp0_iter1_reg = icmp_ln28_reg_353.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_fu_220_p2.read()))) {
        icmp_ln29_reg_362 = icmp_ln29_fu_232_p2.read();
        icmp_ln33_reg_372 = icmp_ln33_fu_246_p2.read();
        select_ln42_reg_367 = select_ln42_fu_238_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
        mul_ln321_reg_348 = mul_ln321_fu_214_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        select_ln42_1_reg_381 = select_ln42_1_fu_264_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        trunc_ln42_reg_386 = trunc_ln42_fu_285_p1.read();
    }
}

void stream_in_row_3::thread_Part2_V_fu_299_p1() {
    Part2_V_fu_299_p1 = in_V_V_dout.read().range(8-1, 0);
}

void stream_in_row_3::thread_add_ln28_fu_226_p2() {
    add_ln28_fu_226_p2 = (!indvar_flatten_reg_140.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(indvar_flatten_reg_140.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void stream_in_row_3::thread_add_ln321_fu_324_p2() {
    add_ln321_fu_324_p2 = (!zext_ln321_4_fu_320_p1.read().is_01() || !mul_ln321_reg_348.read().is_01())? sc_lv<10>(): (sc_biguint<10>(zext_ln321_4_fu_320_p1.read()) + sc_biguint<10>(mul_ln321_reg_348.read()));
}

void stream_in_row_3::thread_add_ln42_fu_314_p2() {
    add_ln42_fu_314_p2 = (!zext_ln42_1_fu_310_p1.read().is_01() || !zext_ln42_fu_281_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln42_1_fu_310_p1.read()) + sc_biguint<9>(zext_ln42_fu_281_p1.read()));
}

void stream_in_row_3::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void stream_in_row_3::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void stream_in_row_3::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void stream_in_row_3::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_in_row_3::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_read_state3.read()));
}

void stream_in_row_3::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_read_state3.read()));
}

void stream_in_row_3::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_in_row_3::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_read_state3.read()));
}

void stream_in_row_3::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void stream_in_row_3::thread_ap_condition_104() {
    ap_condition_104 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()));
}

void stream_in_row_3::thread_ap_condition_119() {
    ap_condition_119 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0));
}

void stream_in_row_3::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln28_fu_220_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void stream_in_row_3::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_ap_phi_mux_peIdx_0_phi_fu_155_p4() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln28_reg_353_pp0_iter1_reg.read()))) {
        ap_phi_mux_peIdx_0_phi_fu_155_p4 = select_ln42_1_reg_381.read();
    } else {
        ap_phi_mux_peIdx_0_phi_fu_155_p4 = peIdx_0_reg_151.read();
    }
}

void stream_in_row_3::thread_ap_phi_reg_pp0_iter0_reg_V_reg_186() {
    ap_phi_reg_pp0_iter0_reg_V_reg_186 =  (sc_lv<8>) ("XXXXXXXX");
}

void stream_in_row_3::thread_ap_phi_reg_pp0_iter0_v1_V_reg_199() {
    ap_phi_reg_pp0_iter0_v1_V_reg_199 =  (sc_lv<8>) ("XXXXXXXX");
}

void stream_in_row_3::thread_ap_predicate_op31_read_state3() {
    ap_predicate_op31_read_state3 = (esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_reg_372.read()));
}

void stream_in_row_3::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_icmp_ln28_fu_220_p2() {
    icmp_ln28_fu_220_p2 = (!indvar_flatten_reg_140.read().is_01() || !ap_const_lv9_160.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_140.read() == ap_const_lv9_160);
}

void stream_in_row_3::thread_icmp_ln29_fu_232_p2() {
    icmp_ln29_fu_232_p2 = (!w_0_reg_175.read().is_01() || !ap_const_lv4_B.is_01())? sc_lv<1>(): sc_lv<1>(w_0_reg_175.read() == ap_const_lv4_B);
}

void stream_in_row_3::thread_icmp_ln33_fu_246_p2() {
    icmp_ln33_fu_246_p2 = (!select_ln42_fu_238_p3.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(select_ln42_fu_238_p3.read() == ap_const_lv4_A);
}

void stream_in_row_3::thread_in_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln28_reg_353.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_reg_372.read()))) {
        in_V_V_blk_n = in_V_V_empty_n.read();
    } else {
        in_V_V_blk_n = ap_const_logic_1;
    }
}

void stream_in_row_3::thread_in_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_read_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        in_V_V_read = ap_const_logic_1;
    } else {
        in_V_V_read = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_mul_ln321_fu_214_p0() {
    mul_ln321_fu_214_p0 =  (sc_lv<2>) (mul_ln321_fu_214_p00.read());
}

void stream_in_row_3::thread_mul_ln321_fu_214_p00() {
    mul_ln321_fu_214_p00 = esl_zext<10,2>(rowBufferIdx_V.read());
}

void stream_in_row_3::thread_mul_ln321_fu_214_p2() {
    mul_ln321_fu_214_p2 = (!mul_ln321_fu_214_p0.read().is_01() || !ap_const_lv10_B0.is_01())? sc_lv<10>(): sc_biguint<2>(mul_ln321_fu_214_p0.read()) * sc_biguint<10>(ap_const_lv10_B0);
}

void stream_in_row_3::thread_p_Result_s_fu_329_p3() {
    p_Result_s_fu_329_p3 = esl_concat<8,8>(ap_phi_reg_pp0_iter2_v1_V_reg_199.read(), v2_V_reg_163.read());
}

void stream_in_row_3::thread_peIdx_fu_258_p2() {
    peIdx_fu_258_p2 = (!ap_const_lv6_1.is_01() || !ap_phi_mux_peIdx_0_phi_fu_155_p4.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(ap_phi_mux_peIdx_0_phi_fu_155_p4.read()));
}

void stream_in_row_3::thread_row_buffer_0_V_address1() {
    row_buffer_0_V_address1 =  (sc_lv<10>) (zext_ln321_5_fu_339_p1.read());
}

void stream_in_row_3::thread_row_buffer_0_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        row_buffer_0_V_ce1 = ap_const_logic_1;
    } else {
        row_buffer_0_V_ce1 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_row_buffer_0_V_d1() {
    row_buffer_0_V_d1 = p_Result_s_fu_329_p3.read();
}

void stream_in_row_3::thread_row_buffer_0_V_we1() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, trunc_ln42_reg_386.read()))) {
        row_buffer_0_V_we1 = ap_const_logic_1;
    } else {
        row_buffer_0_V_we1 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_row_buffer_1_V_address1() {
    row_buffer_1_V_address1 =  (sc_lv<10>) (zext_ln321_5_fu_339_p1.read());
}

void stream_in_row_3::thread_row_buffer_1_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        row_buffer_1_V_ce1 = ap_const_logic_1;
    } else {
        row_buffer_1_V_ce1 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_row_buffer_1_V_d1() {
    row_buffer_1_V_d1 = p_Result_s_fu_329_p3.read();
}

void stream_in_row_3::thread_row_buffer_1_V_we1() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(trunc_ln42_reg_386.read(), ap_const_lv1_1))) {
        row_buffer_1_V_we1 = ap_const_logic_1;
    } else {
        row_buffer_1_V_we1 = ap_const_logic_0;
    }
}

void stream_in_row_3::thread_select_ln42_1_fu_264_p3() {
    select_ln42_1_fu_264_p3 = (!icmp_ln29_reg_362.read()[0].is_01())? sc_lv<6>(): ((icmp_ln29_reg_362.read()[0].to_bool())? peIdx_fu_258_p2.read(): ap_phi_mux_peIdx_0_phi_fu_155_p4.read());
}

void stream_in_row_3::thread_select_ln42_fu_238_p3() {
    select_ln42_fu_238_p3 = (!icmp_ln29_fu_232_p2.read()[0].is_01())? sc_lv<4>(): ((icmp_ln29_fu_232_p2.read()[0].to_bool())? ap_const_lv4_0: w_0_reg_175.read());
}

void stream_in_row_3::thread_shl_ln_fu_303_p3() {
    shl_ln_fu_303_p3 = esl_concat<4,4>(select_ln42_reg_367.read(), ap_const_lv4_0);
}

void stream_in_row_3::thread_skip_flag_read_read_fu_94_p2() {
    skip_flag_read_read_fu_94_p2 =  (sc_lv<1>) (skip_flag.read());
}

void stream_in_row_3::thread_trunc_ln42_fu_285_p1() {
    trunc_ln42_fu_285_p1 = select_ln42_1_fu_264_p3.read().range(1-1, 0);
}

void stream_in_row_3::thread_w_fu_252_p2() {
    w_fu_252_p2 = (!select_ln42_fu_238_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(select_ln42_fu_238_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void stream_in_row_3::thread_zext_ln321_4_fu_320_p1() {
    zext_ln321_4_fu_320_p1 = esl_zext<10,9>(add_ln42_fu_314_p2.read());
}

void stream_in_row_3::thread_zext_ln321_5_fu_339_p1() {
    zext_ln321_5_fu_339_p1 = esl_zext<64,10>(add_ln321_reg_400.read());
}

void stream_in_row_3::thread_zext_ln42_1_fu_310_p1() {
    zext_ln42_1_fu_310_p1 = esl_zext<9,8>(shl_ln_fu_303_p3.read());
}

void stream_in_row_3::thread_zext_ln42_5_mid2_v_fu_271_p4() {
    zext_ln42_5_mid2_v_fu_271_p4 = select_ln42_1_fu_264_p3.read().range(5, 1);
}

void stream_in_row_3::thread_zext_ln42_fu_281_p1() {
    zext_ln42_fu_281_p1 = esl_zext<9,5>(zext_ln42_5_mid2_v_fu_271_p4.read());
}

void stream_in_row_3::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, skip_flag_read_read_fu_94_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(skip_flag_read_read_fu_94_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln28_fu_220_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln28_fu_220_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
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

