// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCOMPRESS_H
#define XCOMPRESS_H

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
#include "xcompress_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XCompress_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XCompress;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompress_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompress_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompress_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompress_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XCompress_Initialize(XCompress *InstancePtr, UINTPTR BaseAddress);
XCompress_Config* XCompress_LookupConfig(UINTPTR BaseAddress);
#else
int XCompress_Initialize(XCompress *InstancePtr, u16 DeviceId);
XCompress_Config* XCompress_LookupConfig(u16 DeviceId);
#endif
int XCompress_CfgInitialize(XCompress *InstancePtr, XCompress_Config *ConfigPtr);
#else
int XCompress_Initialize(XCompress *InstancePtr, const char* InstanceName);
int XCompress_Release(XCompress *InstancePtr);
#endif

void XCompress_Start(XCompress *InstancePtr);
u32 XCompress_IsDone(XCompress *InstancePtr);
u32 XCompress_IsIdle(XCompress *InstancePtr);
u32 XCompress_IsReady(XCompress *InstancePtr);
void XCompress_EnableAutoRestart(XCompress *InstancePtr);
void XCompress_DisableAutoRestart(XCompress *InstancePtr);

void XCompress_Set_chaining_value(XCompress *InstancePtr, u64 Data);
u64 XCompress_Get_chaining_value(XCompress *InstancePtr);
void XCompress_Set_block_words(XCompress *InstancePtr, u64 Data);
u64 XCompress_Get_block_words(XCompress *InstancePtr);
void XCompress_Set_counter(XCompress *InstancePtr, u64 Data);
u64 XCompress_Get_counter(XCompress *InstancePtr);
void XCompress_Set_block_len(XCompress *InstancePtr, u32 Data);
u32 XCompress_Get_block_len(XCompress *InstancePtr);
void XCompress_Set_flags(XCompress *InstancePtr, u32 Data);
u32 XCompress_Get_flags(XCompress *InstancePtr);
void XCompress_Set_out_r(XCompress *InstancePtr, u64 Data);
u64 XCompress_Get_out_r(XCompress *InstancePtr);

void XCompress_InterruptGlobalEnable(XCompress *InstancePtr);
void XCompress_InterruptGlobalDisable(XCompress *InstancePtr);
void XCompress_InterruptEnable(XCompress *InstancePtr, u32 Mask);
void XCompress_InterruptDisable(XCompress *InstancePtr, u32 Mask);
void XCompress_InterruptClear(XCompress *InstancePtr, u32 Mask);
u32 XCompress_InterruptGetEnabled(XCompress *InstancePtr);
u32 XCompress_InterruptGetStatus(XCompress *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
