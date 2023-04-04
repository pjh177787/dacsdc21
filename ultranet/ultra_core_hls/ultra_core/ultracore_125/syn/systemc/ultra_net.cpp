// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ultra_net.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ultra_net::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ultra_net::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> ultra_net::ap_ST_fsm_state1 = "1";
const sc_lv<4> ultra_net::ap_ST_fsm_state2 = "10";
const sc_lv<4> ultra_net::ap_ST_fsm_state3 = "100";
const sc_lv<4> ultra_net::ap_ST_fsm_state4 = "1000";
const sc_lv<32> ultra_net::ap_const_lv32_0 = "00000000000000000000000000000000";
const int ultra_net::C_S_AXI_DATA_WIDTH = "100000";
const sc_lv<32> ultra_net::ap_const_lv32_1 = "1";
const sc_lv<32> ultra_net::ap_const_lv32_2 = "10";
const bool ultra_net::ap_const_boolean_0 = false;
const sc_lv<32> ultra_net::ap_const_lv32_3 = "11";
const bool ultra_net::ap_const_boolean_1 = true;

ultra_net::ultra_net(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ultra_net_control_s_axi_U = new ultra_net_control_s_axi<C_S_AXI_CONTROL_ADDR_WIDTH,C_S_AXI_CONTROL_DATA_WIDTH>("ultra_net_control_s_axi_U");
    ultra_net_control_s_axi_U->AWVALID(s_axi_control_AWVALID);
    ultra_net_control_s_axi_U->AWREADY(s_axi_control_AWREADY);
    ultra_net_control_s_axi_U->AWADDR(s_axi_control_AWADDR);
    ultra_net_control_s_axi_U->WVALID(s_axi_control_WVALID);
    ultra_net_control_s_axi_U->WREADY(s_axi_control_WREADY);
    ultra_net_control_s_axi_U->WDATA(s_axi_control_WDATA);
    ultra_net_control_s_axi_U->WSTRB(s_axi_control_WSTRB);
    ultra_net_control_s_axi_U->ARVALID(s_axi_control_ARVALID);
    ultra_net_control_s_axi_U->ARREADY(s_axi_control_ARREADY);
    ultra_net_control_s_axi_U->ARADDR(s_axi_control_ARADDR);
    ultra_net_control_s_axi_U->RVALID(s_axi_control_RVALID);
    ultra_net_control_s_axi_U->RREADY(s_axi_control_RREADY);
    ultra_net_control_s_axi_U->RDATA(s_axi_control_RDATA);
    ultra_net_control_s_axi_U->RRESP(s_axi_control_RRESP);
    ultra_net_control_s_axi_U->BVALID(s_axi_control_BVALID);
    ultra_net_control_s_axi_U->BREADY(s_axi_control_BREADY);
    ultra_net_control_s_axi_U->BRESP(s_axi_control_BRESP);
    ultra_net_control_s_axi_U->ACLK(ap_clk);
    ultra_net_control_s_axi_U->ARESET(ap_rst_n_inv);
    ultra_net_control_s_axi_U->ACLK_EN(ap_var_for_const0);
    ultra_net_control_s_axi_U->ap_start(ap_start);
    ultra_net_control_s_axi_U->interrupt(interrupt);
    ultra_net_control_s_axi_U->ap_ready(ap_ready);
    ultra_net_control_s_axi_U->ap_done(ap_done);
    ultra_net_control_s_axi_U->ap_idle(ap_idle);
    ultra_net_control_s_axi_U->reps(reps);
    grp_do_compute2_fu_390 = new do_compute2("grp_do_compute2_fu_390");
    grp_do_compute2_fu_390->in_r_TDATA(in_r_TDATA_int);
    grp_do_compute2_fu_390->in_r_TLAST(in_r_TLAST_int);
    grp_do_compute2_fu_390->in_r_TKEEP(in_r_TKEEP_int);
    grp_do_compute2_fu_390->out_r_TDATA(grp_do_compute2_fu_390_out_r_TDATA);
    grp_do_compute2_fu_390->out_r_TLAST(grp_do_compute2_fu_390_out_r_TLAST);
    grp_do_compute2_fu_390->out_r_TKEEP(grp_do_compute2_fu_390_out_r_TKEEP);
    grp_do_compute2_fu_390->reps(reps_read_reg_751);
    grp_do_compute2_fu_390->ap_clk(ap_clk);
    grp_do_compute2_fu_390->ap_rst(ap_rst_n_inv);
    grp_do_compute2_fu_390->in_r_TVALID(in_r_TVALID_int);
    grp_do_compute2_fu_390->in_r_TREADY(grp_do_compute2_fu_390_in_r_TREADY);
    grp_do_compute2_fu_390->reps_ap_vld(ap_var_for_const0);
    grp_do_compute2_fu_390->ap_start(grp_do_compute2_fu_390_ap_start);
    grp_do_compute2_fu_390->out_r_TVALID(grp_do_compute2_fu_390_out_r_TVALID);
    grp_do_compute2_fu_390->out_r_TREADY(grp_do_compute2_fu_390_out_r_TREADY);
    grp_do_compute2_fu_390->ap_done(grp_do_compute2_fu_390_ap_done);
    grp_do_compute2_fu_390->ap_ready(grp_do_compute2_fu_390_ap_ready);
    grp_do_compute2_fu_390->ap_idle(grp_do_compute2_fu_390_ap_idle);
    grp_do_compute2_fu_390->ap_continue(grp_do_compute2_fu_390_ap_continue);
    regslice_both_in_V_data_V_U = new regslice_both<64>("regslice_both_in_V_data_V_U");
    regslice_both_in_V_data_V_U->ap_clk(ap_clk);
    regslice_both_in_V_data_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_in_V_data_V_U->data_in(in_r_TDATA);
    regslice_both_in_V_data_V_U->vld_in(in_r_TVALID);
    regslice_both_in_V_data_V_U->ack_in(regslice_both_in_V_data_V_U_ack_in);
    regslice_both_in_V_data_V_U->data_out(in_r_TDATA_int);
    regslice_both_in_V_data_V_U->vld_out(in_r_TVALID_int);
    regslice_both_in_V_data_V_U->ack_out(in_r_TREADY_int);
    regslice_both_in_V_data_V_U->apdone_blk(regslice_both_in_V_data_V_U_apdone_blk);
    regslice_both_in_V_last_V_U = new regslice_both<1>("regslice_both_in_V_last_V_U");
    regslice_both_in_V_last_V_U->ap_clk(ap_clk);
    regslice_both_in_V_last_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_in_V_last_V_U->data_in(in_r_TLAST);
    regslice_both_in_V_last_V_U->vld_in(in_r_TVALID);
    regslice_both_in_V_last_V_U->ack_in(regslice_both_in_V_last_V_U_ack_in);
    regslice_both_in_V_last_V_U->data_out(in_r_TLAST_int);
    regslice_both_in_V_last_V_U->vld_out(regslice_both_in_V_last_V_U_vld_out);
    regslice_both_in_V_last_V_U->ack_out(in_r_TREADY_int);
    regslice_both_in_V_last_V_U->apdone_blk(regslice_both_in_V_last_V_U_apdone_blk);
    regslice_both_in_V_keep_V_U = new regslice_both<8>("regslice_both_in_V_keep_V_U");
    regslice_both_in_V_keep_V_U->ap_clk(ap_clk);
    regslice_both_in_V_keep_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_in_V_keep_V_U->data_in(in_r_TKEEP);
    regslice_both_in_V_keep_V_U->vld_in(in_r_TVALID);
    regslice_both_in_V_keep_V_U->ack_in(regslice_both_in_V_keep_V_U_ack_in);
    regslice_both_in_V_keep_V_U->data_out(in_r_TKEEP_int);
    regslice_both_in_V_keep_V_U->vld_out(regslice_both_in_V_keep_V_U_vld_out);
    regslice_both_in_V_keep_V_U->ack_out(in_r_TREADY_int);
    regslice_both_in_V_keep_V_U->apdone_blk(regslice_both_in_V_keep_V_U_apdone_blk);
    regslice_both_out_V_data_V_U = new regslice_both<64>("regslice_both_out_V_data_V_U");
    regslice_both_out_V_data_V_U->ap_clk(ap_clk);
    regslice_both_out_V_data_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_out_V_data_V_U->data_in(grp_do_compute2_fu_390_out_r_TDATA);
    regslice_both_out_V_data_V_U->vld_in(grp_do_compute2_fu_390_out_r_TVALID);
    regslice_both_out_V_data_V_U->ack_in(out_r_TREADY_int);
    regslice_both_out_V_data_V_U->data_out(out_r_TDATA);
    regslice_both_out_V_data_V_U->vld_out(regslice_both_out_V_data_V_U_vld_out);
    regslice_both_out_V_data_V_U->ack_out(out_r_TREADY);
    regslice_both_out_V_data_V_U->apdone_blk(regslice_both_out_V_data_V_U_apdone_blk);
    regslice_both_out_V_last_V_U = new regslice_both<1>("regslice_both_out_V_last_V_U");
    regslice_both_out_V_last_V_U->ap_clk(ap_clk);
    regslice_both_out_V_last_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_out_V_last_V_U->data_in(grp_do_compute2_fu_390_out_r_TLAST);
    regslice_both_out_V_last_V_U->vld_in(grp_do_compute2_fu_390_out_r_TVALID);
    regslice_both_out_V_last_V_U->ack_in(regslice_both_out_V_last_V_U_ack_in_dummy);
    regslice_both_out_V_last_V_U->data_out(out_r_TLAST);
    regslice_both_out_V_last_V_U->vld_out(regslice_both_out_V_last_V_U_vld_out);
    regslice_both_out_V_last_V_U->ack_out(out_r_TREADY);
    regslice_both_out_V_last_V_U->apdone_blk(regslice_both_out_V_last_V_U_apdone_blk);
    regslice_both_out_V_keep_V_U = new regslice_both<8>("regslice_both_out_V_keep_V_U");
    regslice_both_out_V_keep_V_U->ap_clk(ap_clk);
    regslice_both_out_V_keep_V_U->ap_rst(ap_rst_n_inv);
    regslice_both_out_V_keep_V_U->data_in(grp_do_compute2_fu_390_out_r_TKEEP);
    regslice_both_out_V_keep_V_U->vld_in(grp_do_compute2_fu_390_out_r_TVALID);
    regslice_both_out_V_keep_V_U->ack_in(regslice_both_out_V_keep_V_U_ack_in_dummy);
    regslice_both_out_V_keep_V_U->data_out(out_r_TKEEP);
    regslice_both_out_V_keep_V_U->vld_out(regslice_both_out_V_keep_V_U_vld_out);
    regslice_both_out_V_keep_V_U->ack_out(out_r_TREADY);
    regslice_both_out_V_keep_V_U->apdone_blk(regslice_both_out_V_keep_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state3_on_subcall_done);
    sensitive << ( ap_sync_grp_do_compute2_fu_390_ap_ready );
    sensitive << ( ap_sync_grp_do_compute2_fu_390_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( regslice_both_out_V_data_V_U_apdone_blk );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( regslice_both_out_V_data_V_U_apdone_blk );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_grp_do_compute2_fu_390_ap_done);
    sensitive << ( grp_do_compute2_fu_390_ap_done );
    sensitive << ( ap_sync_reg_grp_do_compute2_fu_390_ap_done );

    SC_METHOD(thread_ap_sync_grp_do_compute2_fu_390_ap_ready);
    sensitive << ( grp_do_compute2_fu_390_ap_ready );
    sensitive << ( ap_sync_reg_grp_do_compute2_fu_390_ap_ready );

    SC_METHOD(thread_grp_do_compute2_fu_390_ap_continue);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_block_state3_on_subcall_done );

    SC_METHOD(thread_grp_do_compute2_fu_390_ap_start);
    sensitive << ( grp_do_compute2_fu_390_ap_start_reg );

    SC_METHOD(thread_grp_do_compute2_fu_390_out_r_TREADY);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( out_r_TREADY_int );

    SC_METHOD(thread_in_r_TREADY);
    sensitive << ( in_r_TVALID );
    sensitive << ( regslice_both_in_V_data_V_U_ack_in );

    SC_METHOD(thread_in_r_TREADY_int);
    sensitive << ( grp_do_compute2_fu_390_in_r_TREADY );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_out_r_TVALID);
    sensitive << ( regslice_both_out_V_data_V_U_vld_out );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_block_state3_on_subcall_done );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( regslice_both_out_V_data_V_U_apdone_blk );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0001";
    grp_do_compute2_fu_390_ap_start_reg = SC_LOGIC_0;
    ap_sync_reg_grp_do_compute2_fu_390_ap_ready = SC_LOGIC_0;
    ap_sync_reg_grp_do_compute2_fu_390_ap_done = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ultra_net_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, in_r_TDATA, "(port)in_r_TDATA");
    sc_trace(mVcdFile, in_r_TVALID, "(port)in_r_TVALID");
    sc_trace(mVcdFile, in_r_TREADY, "(port)in_r_TREADY");
    sc_trace(mVcdFile, in_r_TLAST, "(port)in_r_TLAST");
    sc_trace(mVcdFile, in_r_TKEEP, "(port)in_r_TKEEP");
    sc_trace(mVcdFile, out_r_TDATA, "(port)out_r_TDATA");
    sc_trace(mVcdFile, out_r_TVALID, "(port)out_r_TVALID");
    sc_trace(mVcdFile, out_r_TREADY, "(port)out_r_TREADY");
    sc_trace(mVcdFile, out_r_TLAST, "(port)out_r_TLAST");
    sc_trace(mVcdFile, out_r_TKEEP, "(port)out_r_TKEEP");
    sc_trace(mVcdFile, s_axi_control_AWVALID, "(port)s_axi_control_AWVALID");
    sc_trace(mVcdFile, s_axi_control_AWREADY, "(port)s_axi_control_AWREADY");
    sc_trace(mVcdFile, s_axi_control_AWADDR, "(port)s_axi_control_AWADDR");
    sc_trace(mVcdFile, s_axi_control_WVALID, "(port)s_axi_control_WVALID");
    sc_trace(mVcdFile, s_axi_control_WREADY, "(port)s_axi_control_WREADY");
    sc_trace(mVcdFile, s_axi_control_WDATA, "(port)s_axi_control_WDATA");
    sc_trace(mVcdFile, s_axi_control_WSTRB, "(port)s_axi_control_WSTRB");
    sc_trace(mVcdFile, s_axi_control_ARVALID, "(port)s_axi_control_ARVALID");
    sc_trace(mVcdFile, s_axi_control_ARREADY, "(port)s_axi_control_ARREADY");
    sc_trace(mVcdFile, s_axi_control_ARADDR, "(port)s_axi_control_ARADDR");
    sc_trace(mVcdFile, s_axi_control_RVALID, "(port)s_axi_control_RVALID");
    sc_trace(mVcdFile, s_axi_control_RREADY, "(port)s_axi_control_RREADY");
    sc_trace(mVcdFile, s_axi_control_RDATA, "(port)s_axi_control_RDATA");
    sc_trace(mVcdFile, s_axi_control_RRESP, "(port)s_axi_control_RRESP");
    sc_trace(mVcdFile, s_axi_control_BVALID, "(port)s_axi_control_BVALID");
    sc_trace(mVcdFile, s_axi_control_BREADY, "(port)s_axi_control_BREADY");
    sc_trace(mVcdFile, s_axi_control_BRESP, "(port)s_axi_control_BRESP");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, reps, "reps");
    sc_trace(mVcdFile, reps_read_reg_751, "reps_read_reg_751");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_out_r_TDATA, "grp_do_compute2_fu_390_out_r_TDATA");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_out_r_TLAST, "grp_do_compute2_fu_390_out_r_TLAST");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_out_r_TKEEP, "grp_do_compute2_fu_390_out_r_TKEEP");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_in_r_TREADY, "grp_do_compute2_fu_390_in_r_TREADY");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_start, "grp_do_compute2_fu_390_ap_start");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_out_r_TVALID, "grp_do_compute2_fu_390_out_r_TVALID");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_out_r_TREADY, "grp_do_compute2_fu_390_out_r_TREADY");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_done, "grp_do_compute2_fu_390_ap_done");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_ready, "grp_do_compute2_fu_390_ap_ready");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_idle, "grp_do_compute2_fu_390_ap_idle");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_continue, "grp_do_compute2_fu_390_ap_continue");
    sc_trace(mVcdFile, grp_do_compute2_fu_390_ap_start_reg, "grp_do_compute2_fu_390_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_sync_grp_do_compute2_fu_390_ap_ready, "ap_sync_grp_do_compute2_fu_390_ap_ready");
    sc_trace(mVcdFile, ap_sync_grp_do_compute2_fu_390_ap_done, "ap_sync_grp_do_compute2_fu_390_ap_done");
    sc_trace(mVcdFile, ap_block_state3_on_subcall_done, "ap_block_state3_on_subcall_done");
    sc_trace(mVcdFile, ap_sync_reg_grp_do_compute2_fu_390_ap_ready, "ap_sync_reg_grp_do_compute2_fu_390_ap_ready");
    sc_trace(mVcdFile, ap_sync_reg_grp_do_compute2_fu_390_ap_done, "ap_sync_reg_grp_do_compute2_fu_390_ap_done");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, regslice_both_out_V_data_V_U_apdone_blk, "regslice_both_out_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, regslice_both_in_V_data_V_U_apdone_blk, "regslice_both_in_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, in_r_TDATA_int, "in_r_TDATA_int");
    sc_trace(mVcdFile, in_r_TVALID_int, "in_r_TVALID_int");
    sc_trace(mVcdFile, in_r_TREADY_int, "in_r_TREADY_int");
    sc_trace(mVcdFile, regslice_both_in_V_data_V_U_ack_in, "regslice_both_in_V_data_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_in_V_last_V_U_apdone_blk, "regslice_both_in_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, in_r_TLAST_int, "in_r_TLAST_int");
    sc_trace(mVcdFile, regslice_both_in_V_last_V_U_vld_out, "regslice_both_in_V_last_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_in_V_last_V_U_ack_in, "regslice_both_in_V_last_V_U_ack_in");
    sc_trace(mVcdFile, regslice_both_in_V_keep_V_U_apdone_blk, "regslice_both_in_V_keep_V_U_apdone_blk");
    sc_trace(mVcdFile, in_r_TKEEP_int, "in_r_TKEEP_int");
    sc_trace(mVcdFile, regslice_both_in_V_keep_V_U_vld_out, "regslice_both_in_V_keep_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_in_V_keep_V_U_ack_in, "regslice_both_in_V_keep_V_U_ack_in");
    sc_trace(mVcdFile, out_r_TREADY_int, "out_r_TREADY_int");
    sc_trace(mVcdFile, regslice_both_out_V_data_V_U_vld_out, "regslice_both_out_V_data_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_out_V_last_V_U_apdone_blk, "regslice_both_out_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_out_V_last_V_U_ack_in_dummy, "regslice_both_out_V_last_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_out_V_last_V_U_vld_out, "regslice_both_out_V_last_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_out_V_keep_V_U_apdone_blk, "regslice_both_out_V_keep_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_out_V_keep_V_U_ack_in_dummy, "regslice_both_out_V_keep_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_out_V_keep_V_U_vld_out, "regslice_both_out_V_keep_V_U_vld_out");
#endif

    }
    mHdltvinHandle.open("ultra_net.hdltvin.dat");
    mHdltvoutHandle.open("ultra_net.hdltvout.dat");
}

ultra_net::~ultra_net() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete ultra_net_control_s_axi_U;
    delete grp_do_compute2_fu_390;
    delete regslice_both_in_V_data_V_U;
    delete regslice_both_in_V_last_V_U;
    delete regslice_both_in_V_keep_V_U;
    delete regslice_both_out_V_data_V_U;
    delete regslice_both_out_V_last_V_U;
    delete regslice_both_out_V_keep_V_U;
}

void ultra_net::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void ultra_net::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_grp_do_compute2_fu_390_ap_done = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(ap_block_state3_on_subcall_done.read(), ap_const_boolean_0))) {
            ap_sync_reg_grp_do_compute2_fu_390_ap_done = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_do_compute2_fu_390_ap_done.read())) {
            ap_sync_reg_grp_do_compute2_fu_390_ap_done = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_grp_do_compute2_fu_390_ap_ready = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(ap_block_state3_on_subcall_done.read(), ap_const_boolean_0))) {
            ap_sync_reg_grp_do_compute2_fu_390_ap_ready = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_do_compute2_fu_390_ap_ready.read())) {
            ap_sync_reg_grp_do_compute2_fu_390_ap_ready = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        grp_do_compute2_fu_390_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_grp_do_compute2_fu_390_ap_ready.read())))) {
            grp_do_compute2_fu_390_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_do_compute2_fu_390_ap_ready.read())) {
            grp_do_compute2_fu_390_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        reps_read_reg_751 = reps.read();
    }
}

void ultra_net::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void ultra_net::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void ultra_net::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void ultra_net::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void ultra_net::thread_ap_block_state3_on_subcall_done() {
    ap_block_state3_on_subcall_done = esl_seteq<1,1,1>(ap_const_logic_0, (ap_sync_grp_do_compute2_fu_390_ap_ready.read() & ap_sync_grp_do_compute2_fu_390_ap_done.read()));
}

void ultra_net::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(regslice_both_out_V_data_V_U_apdone_blk.read(), ap_const_logic_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void ultra_net::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ultra_net::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(regslice_both_out_V_data_V_U_apdone_blk.read(), ap_const_logic_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ultra_net::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void ultra_net::thread_ap_sync_grp_do_compute2_fu_390_ap_done() {
    ap_sync_grp_do_compute2_fu_390_ap_done = (grp_do_compute2_fu_390_ap_done.read() | ap_sync_reg_grp_do_compute2_fu_390_ap_done.read());
}

void ultra_net::thread_ap_sync_grp_do_compute2_fu_390_ap_ready() {
    ap_sync_grp_do_compute2_fu_390_ap_ready = (grp_do_compute2_fu_390_ap_ready.read() | ap_sync_reg_grp_do_compute2_fu_390_ap_ready.read());
}

void ultra_net::thread_grp_do_compute2_fu_390_ap_continue() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_state3_on_subcall_done.read(), ap_const_boolean_0))) {
        grp_do_compute2_fu_390_ap_continue = ap_const_logic_1;
    } else {
        grp_do_compute2_fu_390_ap_continue = ap_const_logic_0;
    }
}

void ultra_net::thread_grp_do_compute2_fu_390_ap_start() {
    grp_do_compute2_fu_390_ap_start = grp_do_compute2_fu_390_ap_start_reg.read();
}

void ultra_net::thread_grp_do_compute2_fu_390_out_r_TREADY() {
    grp_do_compute2_fu_390_out_r_TREADY = (ap_CS_fsm_state3.read() & out_r_TREADY_int.read());
}

void ultra_net::thread_in_r_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, in_r_TVALID.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_in_V_data_V_U_ack_in.read()))) {
        in_r_TREADY = ap_const_logic_1;
    } else {
        in_r_TREADY = ap_const_logic_0;
    }
}

void ultra_net::thread_in_r_TREADY_int() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        in_r_TREADY_int = grp_do_compute2_fu_390_in_r_TREADY.read();
    } else {
        in_r_TREADY_int = ap_const_logic_0;
    }
}

void ultra_net::thread_out_r_TVALID() {
    out_r_TVALID = regslice_both_out_V_data_V_U_vld_out.read();
}

void ultra_net::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_block_state3_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(regslice_both_out_V_data_V_U_apdone_blk.read(), ap_const_logic_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

void ultra_net::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_TDATA\" :  \"" << in_r_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_TVALID\" :  \"" << in_r_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"in_r_TREADY\" :  \"" << in_r_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_TLAST\" :  \"" << in_r_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_TKEEP\" :  \"" << in_r_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TDATA\" :  \"" << out_r_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TVALID\" :  \"" << out_r_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_r_TREADY\" :  \"" << out_r_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TLAST\" :  \"" << out_r_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TKEEP\" :  \"" << out_r_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_AWVALID\" :  \"" << s_axi_control_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_AWREADY\" :  \"" << s_axi_control_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_AWADDR\" :  \"" << s_axi_control_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WVALID\" :  \"" << s_axi_control_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_WREADY\" :  \"" << s_axi_control_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WDATA\" :  \"" << s_axi_control_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WSTRB\" :  \"" << s_axi_control_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_ARVALID\" :  \"" << s_axi_control_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_ARREADY\" :  \"" << s_axi_control_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_ARADDR\" :  \"" << s_axi_control_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RVALID\" :  \"" << s_axi_control_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_RREADY\" :  \"" << s_axi_control_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RDATA\" :  \"" << s_axi_control_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RRESP\" :  \"" << s_axi_control_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_BVALID\" :  \"" << s_axi_control_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_BREADY\" :  \"" << s_axi_control_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_BRESP\" :  \"" << s_axi_control_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
