// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ultra_net_HH_
#define _ultra_net_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "do_compute2.h"
#include "ultra_net_control_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CONTROL_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_CONTROL_DATA_WIDTH = 32>
struct ultra_net : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<64> > in_r_TDATA;
    sc_in< sc_logic > in_r_TVALID;
    sc_out< sc_logic > in_r_TREADY;
    sc_in< sc_lv<1> > in_r_TLAST;
    sc_in< sc_lv<8> > in_r_TKEEP;
    sc_out< sc_lv<64> > out_r_TDATA;
    sc_out< sc_logic > out_r_TVALID;
    sc_in< sc_logic > out_r_TREADY;
    sc_out< sc_lv<1> > out_r_TLAST;
    sc_out< sc_lv<8> > out_r_TKEEP;
    sc_in< sc_logic > s_axi_control_AWVALID;
    sc_out< sc_logic > s_axi_control_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_AWADDR;
    sc_in< sc_logic > s_axi_control_WVALID;
    sc_out< sc_logic > s_axi_control_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH/8> > s_axi_control_WSTRB;
    sc_in< sc_logic > s_axi_control_ARVALID;
    sc_out< sc_logic > s_axi_control_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_ARADDR;
    sc_out< sc_logic > s_axi_control_RVALID;
    sc_in< sc_logic > s_axi_control_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_RDATA;
    sc_out< sc_lv<2> > s_axi_control_RRESP;
    sc_out< sc_logic > s_axi_control_BVALID;
    sc_in< sc_logic > s_axi_control_BREADY;
    sc_out< sc_lv<2> > s_axi_control_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    ultra_net(sc_module_name name);
    SC_HAS_PROCESS(ultra_net);

    ~ultra_net();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    ultra_net_control_s_axi<C_S_AXI_CONTROL_ADDR_WIDTH,C_S_AXI_CONTROL_DATA_WIDTH>* ultra_net_control_s_axi_U;
    do_compute2* grp_do_compute2_fu_390;
    regslice_both<64>* regslice_both_in_V_data_V_U;
    regslice_both<1>* regslice_both_in_V_last_V_U;
    regslice_both<8>* regslice_both_in_V_keep_V_U;
    regslice_both<64>* regslice_both_out_V_data_V_U;
    regslice_both<1>* regslice_both_out_V_last_V_U;
    regslice_both<8>* regslice_both_out_V_keep_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > reps;
    sc_signal< sc_lv<32> > reps_read_reg_751;
    sc_signal< sc_lv<64> > grp_do_compute2_fu_390_out_r_TDATA;
    sc_signal< sc_lv<1> > grp_do_compute2_fu_390_out_r_TLAST;
    sc_signal< sc_lv<8> > grp_do_compute2_fu_390_out_r_TKEEP;
    sc_signal< sc_logic > grp_do_compute2_fu_390_in_r_TREADY;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_start;
    sc_signal< sc_logic > grp_do_compute2_fu_390_out_r_TVALID;
    sc_signal< sc_logic > grp_do_compute2_fu_390_out_r_TREADY;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_done;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_ready;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_idle;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_continue;
    sc_signal< sc_logic > grp_do_compute2_fu_390_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_sync_grp_do_compute2_fu_390_ap_ready;
    sc_signal< sc_logic > ap_sync_grp_do_compute2_fu_390_ap_done;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_logic > ap_sync_reg_grp_do_compute2_fu_390_ap_ready;
    sc_signal< sc_logic > ap_sync_reg_grp_do_compute2_fu_390_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > regslice_both_out_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > regslice_both_in_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<64> > in_r_TDATA_int;
    sc_signal< sc_logic > in_r_TVALID_int;
    sc_signal< sc_logic > in_r_TREADY_int;
    sc_signal< sc_logic > regslice_both_in_V_data_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_in_V_last_V_U_apdone_blk;
    sc_signal< sc_lv<1> > in_r_TLAST_int;
    sc_signal< sc_logic > regslice_both_in_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_in_V_last_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_in_V_keep_V_U_apdone_blk;
    sc_signal< sc_lv<8> > in_r_TKEEP_int;
    sc_signal< sc_logic > regslice_both_in_V_keep_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_in_V_keep_V_U_ack_in;
    sc_signal< sc_logic > out_r_TREADY_int;
    sc_signal< sc_logic > regslice_both_out_V_data_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_out_V_last_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_out_V_last_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_out_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_out_V_keep_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_out_V_keep_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_out_V_keep_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_grp_do_compute2_fu_390_ap_done();
    void thread_ap_sync_grp_do_compute2_fu_390_ap_ready();
    void thread_grp_do_compute2_fu_390_ap_continue();
    void thread_grp_do_compute2_fu_390_ap_start();
    void thread_grp_do_compute2_fu_390_out_r_TREADY();
    void thread_in_r_TREADY();
    void thread_in_r_TREADY_int();
    void thread_out_r_TVALID();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif