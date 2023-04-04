// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xultra_net.h"

extern XUltra_net_Config XUltra_net_ConfigTable[];

XUltra_net_Config *XUltra_net_LookupConfig(u16 DeviceId) {
	XUltra_net_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XULTRA_NET_NUM_INSTANCES; Index++) {
		if (XUltra_net_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XUltra_net_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XUltra_net_Initialize(XUltra_net *InstancePtr, u16 DeviceId) {
	XUltra_net_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XUltra_net_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XUltra_net_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

