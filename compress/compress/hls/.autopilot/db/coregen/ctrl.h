// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of chaining_value
//        bit 31~0 - chaining_value[31:0] (Read/Write)
// 0x14 : Data signal of chaining_value
//        bit 31~0 - chaining_value[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of block_words
//        bit 31~0 - block_words[31:0] (Read/Write)
// 0x20 : Data signal of block_words
//        bit 31~0 - block_words[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of counter
//        bit 31~0 - counter[31:0] (Read/Write)
// 0x2c : Data signal of counter
//        bit 31~0 - counter[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of block_len
//        bit 31~0 - block_len[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of flags
//        bit 31~0 - flags[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x48 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CTRL_ADDR_AP_CTRL             0x00
#define CTRL_ADDR_GIE                 0x04
#define CTRL_ADDR_IER                 0x08
#define CTRL_ADDR_ISR                 0x0c
#define CTRL_ADDR_CHAINING_VALUE_DATA 0x10
#define CTRL_BITS_CHAINING_VALUE_DATA 64
#define CTRL_ADDR_BLOCK_WORDS_DATA    0x1c
#define CTRL_BITS_BLOCK_WORDS_DATA    64
#define CTRL_ADDR_COUNTER_DATA        0x28
#define CTRL_BITS_COUNTER_DATA        64
#define CTRL_ADDR_BLOCK_LEN_DATA      0x34
#define CTRL_BITS_BLOCK_LEN_DATA      32
#define CTRL_ADDR_FLAGS_DATA          0x3c
#define CTRL_BITS_FLAGS_DATA          32
#define CTRL_ADDR_OUT_R_DATA          0x44
#define CTRL_BITS_OUT_R_DATA          64
