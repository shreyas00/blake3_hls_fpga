// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompress.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompress_CfgInitialize(XCompress *InstancePtr, XCompress_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompress_Start(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL) & 0x80;
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompress_IsDone(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompress_IsIdle(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompress_IsReady(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompress_EnableAutoRestart(XCompress *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL, 0x80);
}

void XCompress_DisableAutoRestart(XCompress *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_AP_CTRL, 0);
}

void XCompress_Set_chaining_value(XCompress *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_CHAINING_VALUE_DATA, (u32)(Data));
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_CHAINING_VALUE_DATA + 4, (u32)(Data >> 32));
}

u64 XCompress_Get_chaining_value(XCompress *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_CHAINING_VALUE_DATA);
    Data += (u64)XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_CHAINING_VALUE_DATA + 4) << 32;
    return Data;
}

void XCompress_Set_block_words(XCompress *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_WORDS_DATA, (u32)(Data));
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_WORDS_DATA + 4, (u32)(Data >> 32));
}

u64 XCompress_Get_block_words(XCompress *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_WORDS_DATA);
    Data += (u64)XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_WORDS_DATA + 4) << 32;
    return Data;
}

void XCompress_Set_counter(XCompress *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_COUNTER_DATA, (u32)(Data));
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_COUNTER_DATA + 4, (u32)(Data >> 32));
}

u64 XCompress_Get_counter(XCompress *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_COUNTER_DATA);
    Data += (u64)XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_COUNTER_DATA + 4) << 32;
    return Data;
}

void XCompress_Set_block_len(XCompress *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_LEN_DATA, Data);
}

u32 XCompress_Get_block_len(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_BLOCK_LEN_DATA);
    return Data;
}

void XCompress_Set_flags(XCompress *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_FLAGS_DATA, Data);
}

u32 XCompress_Get_flags(XCompress *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_FLAGS_DATA);
    return Data;
}

void XCompress_Set_out_r(XCompress *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_OUT_R_DATA, (u32)(Data));
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCompress_Get_out_r(XCompress *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_OUT_R_DATA);
    Data += (u64)XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XCompress_InterruptGlobalEnable(XCompress *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_GIE, 1);
}

void XCompress_InterruptGlobalDisable(XCompress *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_GIE, 0);
}

void XCompress_InterruptEnable(XCompress *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_IER);
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_IER, Register | Mask);
}

void XCompress_InterruptDisable(XCompress *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_IER);
    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_IER, Register & (~Mask));
}

void XCompress_InterruptClear(XCompress *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompress_WriteReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_ISR, Mask);
}

u32 XCompress_InterruptGetEnabled(XCompress *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_IER);
}

u32 XCompress_InterruptGetStatus(XCompress *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompress_ReadReg(InstancePtr->Ctrl_BaseAddress, XCOMPRESS_CTRL_ADDR_ISR);
}

