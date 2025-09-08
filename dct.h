#ifndef DCT_H
#define DCT_H

#include <stdint.h>

#define Q_SCALE 17
#define Q_ONE   (1 << Q_SCALE)
#define ROUND_SHIFT_Q(x)    (int32_t)(((x) + (1LL << (Q_SCALE-1))) >> Q_SCALE)

// HARDCODED SCALED CONSTANTS
#define C1  128554      // cos(pi/16) << 17
#define C3  108982      // cos(3*pi/16) << 17
#define S1  25570       // sin(pi/16) << 17
#define S3  72820       // sin(3*pi/16) << 17
#define R2C6  70936     // (√2*cos(6*pi/16)) << 17
#define R2S6  171254    // (√2*cos(6*pi/16)) << 17
#define R2  185364      // √2 << 17


void loeffler_optimized(int32_t v[8]);

void loeffler_inline(int32_t v[8]);

void loeffler_macro(int32_t v[8]);

void loeffler_routine(int32_t v[8]);

void loeffler_register(int32_t v[8]);

void loeffler_neon_s1(int32_t v[8]);

void loeffler_neon_reflect(int32_t v[8]);

void loeffler_neon_full(int32_t v[8]);

#endif
