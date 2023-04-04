// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XULTRA_NET_H
#define XULTRA_NET_H

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
#include "xultra_net_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XUltra_net_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XUltra_net;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XUltra_net_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XUltra_net_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XUltra_net_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XUltra_net_ReadReg(BaseAddress, RegOffset) \
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
int XUltra_net_Initialize(XUltra_net *InstancePtr, u16 DeviceId);
XUltra_net_Config* XUltra_net_LookupConfig(u16 DeviceId);
int XUltra_net_CfgInitialize(XUltra_net *InstancePtr, XUltra_net_Config *ConfigPtr);
#else
int XUltra_net_Initialize(XUltra_net *InstancePtr, const char* InstanceName);
int XUltra_net_Release(XUltra_net *InstancePtr);
#endif

void XUltra_net_Start(XUltra_net *InstancePtr);
u32 XUltra_net_IsDone(XUltra_net *InstancePtr);
u32 XUltra_net_IsIdle(XUltra_net *InstancePtr);
u32 XUltra_net_IsReady(XUltra_net *InstancePtr);
void XUltra_net_EnableAutoRestart(XUltra_net *InstancePtr);
void XUltra_net_DisableAutoRestart(XUltra_net *InstancePtr);

void XUltra_net_Set_reps(XUltra_net *InstancePtr, u32 Data);
u32 XUltra_net_Get_reps(XUltra_net *InstancePtr);

void XUltra_net_InterruptGlobalEnable(XUltra_net *InstancePtr);
void XUltra_net_InterruptGlobalDisable(XUltra_net *InstancePtr);
void XUltra_net_InterruptEnable(XUltra_net *InstancePtr, u32 Mask);
void XUltra_net_InterruptDisable(XUltra_net *InstancePtr, u32 Mask);
void XUltra_net_InterruptClear(XUltra_net *InstancePtr, u32 Mask);
u32 XUltra_net_InterruptGetEnabled(XUltra_net *InstancePtr);
u32 XUltra_net_InterruptGetStatus(XUltra_net *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
