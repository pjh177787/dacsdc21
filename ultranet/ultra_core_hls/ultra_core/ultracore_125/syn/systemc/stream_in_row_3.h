// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _stream_in_row_3_HH_
#define _stream_in_row_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct stream_in_row_3 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<10> > row_buffer_0_V_address1;
    sc_out< sc_logic > row_buffer_0_V_ce1;
    sc_out< sc_logic > row_buffer_0_V_we1;
    sc_out< sc_lv<16> > row_buffer_0_V_d1;
    sc_out< sc_lv<10> > row_buffer_1_V_address1;
    sc_out< sc_logic > row_buffer_1_V_ce1;
    sc_out< sc_logic > row_buffer_1_V_we1;
    sc_out< sc_lv<16> > row_buffer_1_V_d1;
    sc_in< sc_logic > skip_flag;
    sc_in< sc_lv<2> > rowBufferIdx_V;


    // Module declarations
    stream_in_row_3(sc_module_name name);
    SC_HAS_PROCESS(stream_in_row_3);

    ~stream_in_row_3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln28_reg_353;
    sc_signal< sc_lv<1> > icmp_ln33_reg_372;
    sc_signal< sc_lv<9> > indvar_flatten_reg_140;
    sc_signal< sc_lv<6> > peIdx_0_reg_151;
    sc_signal< sc_lv<8> > v2_V_reg_163;
    sc_signal< sc_lv<4> > w_0_reg_175;
    sc_signal< sc_lv<1> > skip_flag_read_read_fu_94_p2;
    sc_signal< sc_lv<10> > mul_ln321_fu_214_p2;
    sc_signal< sc_lv<10> > mul_ln321_reg_348;
    sc_signal< sc_lv<1> > icmp_ln28_fu_220_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op31_read_state3;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln28_reg_353_pp0_iter1_reg;
    sc_signal< sc_lv<9> > add_ln28_fu_226_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln29_fu_232_p2;
    sc_signal< sc_lv<1> > icmp_ln29_reg_362;
    sc_signal< sc_lv<4> > select_ln42_fu_238_p3;
    sc_signal< sc_lv<4> > select_ln42_reg_367;
    sc_signal< sc_lv<1> > icmp_ln33_fu_246_p2;
    sc_signal< sc_lv<4> > w_fu_252_p2;
    sc_signal< sc_lv<6> > select_ln42_1_fu_264_p3;
    sc_signal< sc_lv<6> > select_ln42_1_reg_381;
    sc_signal< sc_lv<1> > trunc_ln42_fu_285_p1;
    sc_signal< sc_lv<1> > trunc_ln42_reg_386;
    sc_signal< sc_lv<8> > Part2_V_fu_299_p1;
    sc_signal< sc_lv<10> > add_ln321_fu_324_p2;
    sc_signal< sc_lv<10> > add_ln321_reg_400;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<6> > ap_phi_mux_peIdx_0_phi_fu_155_p4;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_reg_V_reg_186;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_reg_V_reg_186;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_reg_V_reg_186;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_v1_V_reg_199;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_v1_V_reg_199;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_v1_V_reg_199;
    sc_signal< sc_lv<64> > zext_ln321_5_fu_339_p1;
    sc_signal< sc_lv<16> > p_Result_s_fu_329_p3;
    sc_signal< sc_lv<2> > mul_ln321_fu_214_p0;
    sc_signal< sc_lv<6> > peIdx_fu_258_p2;
    sc_signal< sc_lv<5> > zext_ln42_5_mid2_v_fu_271_p4;
    sc_signal< sc_lv<8> > shl_ln_fu_303_p3;
    sc_signal< sc_lv<9> > zext_ln42_1_fu_310_p1;
    sc_signal< sc_lv<9> > zext_ln42_fu_281_p1;
    sc_signal< sc_lv<9> > add_ln42_fu_314_p2;
    sc_signal< sc_lv<10> > zext_ln321_4_fu_320_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<10> > mul_ln321_fu_214_p00;
    sc_signal< bool > ap_condition_104;
    sc_signal< bool > ap_condition_119;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<10> ap_const_lv10_B0;
    static const sc_lv<9> ap_const_lv9_160;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Part2_V_fu_299_p1();
    void thread_add_ln28_fu_226_p2();
    void thread_add_ln321_fu_324_p2();
    void thread_add_ln42_fu_314_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_104();
    void thread_ap_condition_119();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_peIdx_0_phi_fu_155_p4();
    void thread_ap_phi_reg_pp0_iter0_reg_V_reg_186();
    void thread_ap_phi_reg_pp0_iter0_v1_V_reg_199();
    void thread_ap_predicate_op31_read_state3();
    void thread_ap_ready();
    void thread_icmp_ln28_fu_220_p2();
    void thread_icmp_ln29_fu_232_p2();
    void thread_icmp_ln33_fu_246_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_mul_ln321_fu_214_p0();
    void thread_mul_ln321_fu_214_p00();
    void thread_mul_ln321_fu_214_p2();
    void thread_p_Result_s_fu_329_p3();
    void thread_peIdx_fu_258_p2();
    void thread_row_buffer_0_V_address1();
    void thread_row_buffer_0_V_ce1();
    void thread_row_buffer_0_V_d1();
    void thread_row_buffer_0_V_we1();
    void thread_row_buffer_1_V_address1();
    void thread_row_buffer_1_V_ce1();
    void thread_row_buffer_1_V_d1();
    void thread_row_buffer_1_V_we1();
    void thread_select_ln42_1_fu_264_p3();
    void thread_select_ln42_fu_238_p3();
    void thread_shl_ln_fu_303_p3();
    void thread_skip_flag_read_read_fu_94_p2();
    void thread_trunc_ln42_fu_285_p1();
    void thread_w_fu_252_p2();
    void thread_zext_ln321_4_fu_320_p1();
    void thread_zext_ln321_5_fu_339_p1();
    void thread_zext_ln42_1_fu_310_p1();
    void thread_zext_ln42_5_mid2_v_fu_271_p4();
    void thread_zext_ln42_fu_281_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
