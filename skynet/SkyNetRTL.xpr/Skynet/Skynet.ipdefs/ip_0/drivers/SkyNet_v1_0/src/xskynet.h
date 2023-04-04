// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSKYNET_H
#define XSKYNET_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xskynet_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XSkynet_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XSkynet;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSkynet_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSkynet_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSkynet_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSkynet_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSkynet_Initialize(XSkynet *InstancePtr, u16 DeviceId);
XSkynet_Config* XSkynet_LookupConfig(u16 DeviceId);
int XSkynet_CfgInitialize(XSkynet *InstancePtr, XSkynet_Config *ConfigPtr);
#else
int XSkynet_Initialize(XSkynet *InstancePtr, const char* InstanceName);
int XSkynet_Release(XSkynet *InstancePtr);
#endif

void XSkynet_Start(XSkynet *InstancePtr);
u32 XSkynet_IsDone(XSkynet *InstancePtr);
u32 XSkynet_IsIdle(XSkynet *InstancePtr);
u32 XSkynet_IsReady(XSkynet *InstancePtr);
void XSkynet_EnableAutoRestart(XSkynet *InstancePtr);
void XSkynet_DisableAutoRestart(XSkynet *InstancePtr);

void XSkynet_Set_image_in_raw_pad(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_image_in_raw_pad(XSkynet *InstancePtr);
void XSkynet_Set_conv_weight_1x1_all_V(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_conv_weight_1x1_all_V(XSkynet *InstancePtr);
void XSkynet_Set_conv_weight_3x3_all_V(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_conv_weight_3x3_all_V(XSkynet *InstancePtr);
void XSkynet_Set_bias_all_V(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_bias_all_V(XSkynet *InstancePtr);
void XSkynet_Set_DDR_buff_merge_V(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_DDR_buff_merge_V(XSkynet *InstancePtr);
void XSkynet_Set_predict_boxes(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_predict_boxes(XSkynet *InstancePtr);
void XSkynet_Set_constant_r(XSkynet *InstancePtr, u32 Data);
u32 XSkynet_Get_constant_r(XSkynet *InstancePtr);

void XSkynet_InterruptGlobalEnable(XSkynet *InstancePtr);
void XSkynet_InterruptGlobalDisable(XSkynet *InstancePtr);
void XSkynet_InterruptEnable(XSkynet *InstancePtr, u32 Mask);
void XSkynet_InterruptDisable(XSkynet *InstancePtr, u32 Mask);
void XSkynet_InterruptClear(XSkynet *InstancePtr, u32 Mask);
u32 XSkynet_InterruptGetEnabled(XSkynet *InstancePtr);
u32 XSkynet_InterruptGetStatus(XSkynet *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
