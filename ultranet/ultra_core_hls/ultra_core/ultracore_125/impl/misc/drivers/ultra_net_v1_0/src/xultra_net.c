// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xultra_net.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XUltra_net_CfgInitialize(XUltra_net *InstancePtr, XUltra_net_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XUltra_net_Start(XUltra_net *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL) & 0x80;
    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XUltra_net_IsDone(XUltra_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XUltra_net_IsIdle(XUltra_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XUltra_net_IsReady(XUltra_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XUltra_net_EnableAutoRestart(XUltra_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XUltra_net_DisableAutoRestart(XUltra_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_AP_CTRL, 0);
}

void XUltra_net_Set_reps(XUltra_net *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_REPS_DATA, Data);
}

u32 XUltra_net_Get_reps(XUltra_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_REPS_DATA);
    return Data;
}

void XUltra_net_InterruptGlobalEnable(XUltra_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_GIE, 1);
}

void XUltra_net_InterruptGlobalDisable(XUltra_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_GIE, 0);
}

void XUltra_net_InterruptEnable(XUltra_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_IER);
    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_IER, Register | Mask);
}

void XUltra_net_InterruptDisable(XUltra_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_IER);
    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_IER, Register & (~Mask));
}

void XUltra_net_InterruptClear(XUltra_net *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUltra_net_WriteReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_ISR, Mask);
}

u32 XUltra_net_InterruptGetEnabled(XUltra_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_IER);
}

u32 XUltra_net_InterruptGetStatus(XUltra_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XUltra_net_ReadReg(InstancePtr->Control_BaseAddress, XULTRA_NET_CONTROL_ADDR_ISR);
}

