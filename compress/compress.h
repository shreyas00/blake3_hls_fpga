#include "stdint.h"

#ifndef COMPRESS_H
#define COMPRESS_H
extern void compress(const uint32_t chaining_value[8],
                            const uint32_t block_words[16], uint64_t counter,
                            uint32_t block_len, uint32_t flags,
                            uint32_t out[16]);
#endif
