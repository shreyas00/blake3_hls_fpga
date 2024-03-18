#include "compress.h"

static uint32_t IV[8] = {
    0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A,
    0x510E527F, 0x9B05688C, 0x1F83D9AB, 0x5BE0CD19,
};

static size_t MSG_PERMUTATION[16] = {2, 6,  3,  10, 7, 0,  4,  13,
                                     1, 11, 12, 5,  9, 14, 15, 8};

inline static uint32_t rotate_right(uint32_t x, int n) {
  return (x >> n) | (x << (32 - n));
}

// The mixing function, G, which mixes either a column or a diagonal.
#define g(state, a, b, c, d, mx, my) \
		  state[a] = state[a] + state[b] + mx; \
		  state[d] = rotate_right(state[d] ^ state[a], 16); \
		  state[c] = state[c] + state[d]; \
		  state[b] = rotate_right(state[b] ^ state[c], 12);\
		  state[a] = state[a] + state[b] + my;\
		  state[d] = rotate_right(state[d] ^ state[a], 8);\
		  state[c] = state[c] + state[d];\
		  state[b] = rotate_right(state[b] ^ state[c], 7);

inline static void round_function(uint32_t state[16], uint32_t m[16]) {
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=m
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=state
    //  Mix the columns.
    g(state, 0, 4, 8, 12, m[0], m[1]);
    g(state, 1, 5, 9, 13, m[2], m[3]);
    g(state, 2, 6, 10, 14, m[4], m[5]);
    g(state, 3, 7, 11, 15, m[6], m[7]);
    
    // Mix the diagonals.
    g(state, 0, 5, 10, 15, m[8], m[9]);
    g(state, 1, 6, 11, 12, m[10], m[11]);
    g(state, 2, 7, 8, 13, m[12], m[13]);
    g(state, 3, 4, 9, 14, m[14], m[15]);
}

inline static void permute(uint32_t m[16]) {
  uint32_t permuted[16];
  permute_label0:for (size_t i = 0; i < 16; i++) {
#pragma HLS UNROLL factor=16
    permuted[i] = m[MSG_PERMUTATION[i]];
  }
  permute_label1:for (size_t i = 0; i < 16; i++) {
#pragma HLS UNROLL factor=16
	  m[i] = permuted[i];
  }
//  memcpy(m, permuted, sizeof(permuted));
}


void compress(const uint32_t chaining_value[8],
                            const uint32_t block_words[16], uint64_t counter,
                            uint32_t block_len, uint32_t flags,
                            uint32_t out[16]) {
	#pragma HLS INTERFACE m_axi port=chaining_value offset=slave bundle=data0
	#pragma HLS INTERFACE s_axilite register port=chaining_value bundle=ctrl

	#pragma HLS INTERFACE m_axi port=block_words offset=slave bundle=data1
	#pragma HLS INTERFACE s_axilite register port=block_words bundle=ctrl

	#pragma HLS INTERFACE s_axilite register port=counter bundle=ctrl

    #pragma HLS INTERFACE s_axilite register port=block_len bundle=ctrl

    #pragma HLS INTERFACE s_axilite register port=flags bundle=ctrl

    #pragma HLS INTERFACE m_axi port=out offset=slave bundle=data2
    #pragma HLS INTERFACE s_axilite register port=out bundle=ctrl

	#pragma HLS INTERFACE s_axilite register port=return bundle=ctrl
  uint32_t state[16] = {
      chaining_value[0],
      chaining_value[1],
      chaining_value[2],
      chaining_value[3],
      chaining_value[4],
      chaining_value[5],
      chaining_value[6],
      chaining_value[7],
      IV[0],
      IV[1],
      IV[2],
      IV[3],
      (uint32_t)counter,
      (uint32_t)(counter >> 32),
      block_len,
      flags,
  };

  uint32_t block[16];
  compress_label2:for(size_t i = 0; i < 16; i++) {
#pragma HLS UNROLL factor=16
	  block[i] = block_words[i];
  }

  round_function(state, block); // round 1
  permute(block);
  round_function(state, block); // round 2
  permute(block);
  round_function(state, block); // round 3
  permute(block);
  round_function(state, block); // round 4
  permute(block);
  round_function(state, block); // round 5
  permute(block);
  round_function(state, block); // round 6
  permute(block);
  round_function(state, block); // round 7

  compress_label4:for (size_t i = 0; i < 8; i++) {
    #pragma HLS UNROLL
    state[i] ^= state[i + 8];
    state[i + 8] ^= chaining_value[i];
  }


  compress_label3:for (size_t i = 0; i < 16; i++) {
    #pragma HLS UNROLL factor=16
	  out[i] = state[i];
  }
}

