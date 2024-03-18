#include <stdint.h>
#include <stdio.h>
#include "compress.h"
#include "assert.h"

uint32_t input_chaining_value[8] = {
		0xc22fee53,
		0x8f4ba729,
		0xad21d0a7,
		0x8d54506d,
		0xdb59b3ee,
		0x5fe55be1,
		0xf73aacb3,
		0x30b0e7e2
};
  uint32_t block_words[16] = {
		  0x656b616c,
		  0x64702e33,
		  0xa2e2966,
		  0x20703c0a,
		  0x67696c61,
		  0x63223d6e,
		  0x65746e65,
		  0xa3e2272,
		  0x676d693c,
		  0x63727320,
		  0x656d223d,
		  0x2f616964,
		  0x65657073,
		  0x76732e64,
		  0x61202267,
		  0x223d746c
  };
  uint64_t counter = 0;
  uint32_t block_len = 0x40;
  uint32_t flags = 0x2;

uint32_t out16_ref[16] = {
		0x5915285d,
		0x513bdad5,
		0xe46bcd42,
		0xc9b9ffb0,
		0xd6edc8b1,
		0x3012f4dc,
		0x8384ef0a,
		0xad3db02d,
		0x5c4519d5,
		0xb7c3dafc,
		0x42f914ee,
		0x56f3708d,
		0x99cf8fe9,
		0xfa503cd4,
		0xbbc65592,
		0xcfea5233
};
uint32_t out16[16] = {0};
int main(void)
{
	compress(input_chaining_value, block_words, counter,
	           block_len, flags, out16);

	  for(int i=0; i<16; i++){
	    assert(out16[i] == out16_ref[i]);
	  }
}

