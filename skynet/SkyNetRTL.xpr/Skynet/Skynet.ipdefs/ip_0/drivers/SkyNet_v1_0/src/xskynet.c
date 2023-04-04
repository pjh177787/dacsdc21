// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xskynet.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSkynet_CfgInitialize(XSkynet *InstancePtr, XSkynet_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSkynet_Start(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL) & 0x80;
    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSkynet_IsDone(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSkynet_IsIdle(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSkynet_IsReady(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSkynet_EnableAutoRestart(XSkynet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XSkynet_DisableAutoRestart(XSkynet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_AP_CTRL, 0);
}

void XSkynet_Set_image_in_raw_pad(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IMAGE_IN_RAW_PAD_DATA, Data);
}

u32 XSkynet_Get_image_in_raw_pad(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IMAGE_IN_RAW_PAD_DATA);
    return Data;
}

void XSkynet_Set_conv_weight_1x1_all_V(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONV_WEIGHT_1X1_ALL_V_DATA, Data);
}

u32 XSkynet_Get_conv_weight_1x1_all_V(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONV_WEIGHT_1X1_ALL_V_DATA);
    return Data;
}

void XSkynet_Set_conv_weight_3x3_all_V(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONV_WEIGHT_3X3_ALL_V_DATA, Data);
}

u32 XSkynet_Get_conv_weight_3x3_all_V(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONV_WEIGHT_3X3_ALL_V_DATA);
    return Data;
}

void XSkynet_Set_bias_all_V(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_BIAS_ALL_V_DATA, Data);
}

u32 XSkynet_Get_bias_all_V(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_BIAS_ALL_V_DATA);
    return Data;
}

void XSkynet_Set_DDR_buff_merge_V(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_DDR_BUFF_MERGE_V_DATA, Data);
}

u32 XSkynet_Get_DDR_buff_merge_V(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_DDR_BUFF_MERGE_V_DATA);
    return Data;
}

void XSkynet_Set_predict_boxes(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_PREDICT_BOXES_DATA, Data);
}

u32 XSkynet_Get_predict_boxes(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_PREDICT_BOXES_DATA);
    return Data;
}

void XSkynet_Set_constant_r(XSkynet *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONSTANT_R_DATA, Data);
}

u32 XSkynet_Get_constant_r(XSkynet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_CONSTANT_R_DATA);
    return Data;
}

void XSkynet_InterruptGlobalEnable(XSkynet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_GIE, 1);
}

void XSkynet_InterruptGlobalDisable(XSkynet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_GIE, 0);
}

void XSkynet_InterruptEnable(XSkynet *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IER);
    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IER, Register | Mask);
}

void XSkynet_InterruptDisable(XSkynet *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IER);
    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IER, Register & (~Mask));
}

void XSkynet_InterruptClear(XSkynet *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSkynet_WriteReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_ISR, Mask);
}

u32 XSkynet_InterruptGetEnabled(XSkynet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_IER);
}

u32 XSkynet_InterruptGetStatus(XSkynet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSkynet_ReadReg(InstancePtr->Axilites_BaseAddress, XSKYNET_AXILITES_ADDR_ISR);
}

