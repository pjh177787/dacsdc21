// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "loadInReg9_8u_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic loadInReg9_8u_s::ap_const_logic_1 = sc_dt::Log_1;
const bool loadInReg9_8u_s::ap_const_boolean_1 = true;
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_8 = "1000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_F = "1111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_10 = "10000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_17 = "10111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_18 = "11000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_1F = "11111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_20 = "100000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_27 = "100111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_28 = "101000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_2F = "101111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_30 = "110000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_37 = "110111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_38 = "111000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_3F = "111111";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_40 = "1000000";
const sc_lv<32> loadInReg9_8u_s::ap_const_lv32_47 = "1000111";
const sc_logic loadInReg9_8u_s::ap_const_logic_0 = sc_dt::Log_0;

loadInReg9_8u_s::loadInReg9_8u_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_ready);

    SC_METHOD(thread_ap_return_0);
    sensitive << ( trunc_ln647_fu_54_p1 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_5);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_6);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_7);
    sensitive << ( inData_V );

    SC_METHOD(thread_ap_return_8);
    sensitive << ( inData_V );

    SC_METHOD(thread_trunc_ln647_fu_54_p1);
    sensitive << ( inData_V );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "loadInReg9_8u_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, inData_V, "(port)inData_V");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
    sc_trace(mVcdFile, ap_return_5, "(port)ap_return_5");
    sc_trace(mVcdFile, ap_return_6, "(port)ap_return_6");
    sc_trace(mVcdFile, ap_return_7, "(port)ap_return_7");
    sc_trace(mVcdFile, ap_return_8, "(port)ap_return_8");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, trunc_ln647_fu_54_p1, "trunc_ln647_fu_54_p1");
#endif

    }
}

loadInReg9_8u_s::~loadInReg9_8u_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void loadInReg9_8u_s::thread_ap_ready() {
    ap_ready = ap_const_logic_1;
}

void loadInReg9_8u_s::thread_ap_return_0() {
    ap_return_0 = trunc_ln647_fu_54_p1.read();
}

void loadInReg9_8u_s::thread_ap_return_1() {
    ap_return_1 = inData_V.read().range(15, 8);
}

void loadInReg9_8u_s::thread_ap_return_2() {
    ap_return_2 = inData_V.read().range(23, 16);
}

void loadInReg9_8u_s::thread_ap_return_3() {
    ap_return_3 = inData_V.read().range(31, 24);
}

void loadInReg9_8u_s::thread_ap_return_4() {
    ap_return_4 = inData_V.read().range(39, 32);
}

void loadInReg9_8u_s::thread_ap_return_5() {
    ap_return_5 = inData_V.read().range(47, 40);
}

void loadInReg9_8u_s::thread_ap_return_6() {
    ap_return_6 = inData_V.read().range(55, 48);
}

void loadInReg9_8u_s::thread_ap_return_7() {
    ap_return_7 = inData_V.read().range(63, 56);
}

void loadInReg9_8u_s::thread_ap_return_8() {
    ap_return_8 = inData_V.read().range(71, 64);
}

void loadInReg9_8u_s::thread_trunc_ln647_fu_54_p1() {
    trunc_ln647_fu_54_p1 = inData_V.read().range(8-1, 0);
}

}

