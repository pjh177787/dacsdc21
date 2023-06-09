// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xskynet.h"

extern XSkynet_Config XSkynet_ConfigTable[];

XSkynet_Config *XSkynet_LookupConfig(u16 DeviceId) {
	XSkynet_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSKYNET_NUM_INSTANCES; Index++) {
		if (XSkynet_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSkynet_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSkynet_Initialize(XSkynet *InstancePtr, u16 DeviceId) {
	XSkynet_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSkynet_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSkynet_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

