// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcompress.h"

extern XCompress_Config XCompress_ConfigTable[];

#ifdef SDT
XCompress_Config *XCompress_LookupConfig(UINTPTR BaseAddress) {
	XCompress_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCompress_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCompress_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XCompress_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompress_Initialize(XCompress *InstancePtr, UINTPTR BaseAddress) {
	XCompress_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompress_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompress_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCompress_Config *XCompress_LookupConfig(u16 DeviceId) {
	XCompress_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPRESS_NUM_INSTANCES; Index++) {
		if (XCompress_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompress_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompress_Initialize(XCompress *InstancePtr, u16 DeviceId) {
	XCompress_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompress_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompress_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

