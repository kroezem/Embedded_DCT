#include "dct.h"
#include <stdint.h>
#include <arm_neon.h>

#define ROTATOR(a, b, C, S) do {                            \
    int64_t _ta = (a), _tb = (b);                           \
    (a) = ROUND_SHIFT_Q(( _ta*(C) + _tb*(S)));              \
    (b) = ROUND_SHIFT_Q((-_ta*(S) + _tb*(C)));              \
} while (0)

void loeffler_optimized(int32_t v[8]) {

    // stage 1 (NEON)
    int32x4_t lo = vld1q_s32(&v[0]); // v0 v1 v2 v3
    int32x4_t hi = vld1q_s32(&v[4]); // v4 v5 v6 v7
    int32x4_t hi_rev = vrev64q_s32(hi);
    hi_rev = vextq_s32(hi_rev, hi_rev, 2); // v7 v6 v5 v4

    int32x4_t sums = vaddq_s32(lo, hi_rev); // [v0+v7, v1+v6, v2+v5, v3+v4]
    int32x4_t diffs = vsubq_s32(lo, hi_rev); // [v0-v7, v1-v6, v2-v5, v3-v4]

    // Reverse diffs: [v0-v7,v1-v6,v2-v5,v3-v4] → [v3-v4,v2-v5,v1-v6,v0-v7]
    diffs = vrev64q_s32(diffs);
    diffs = vextq_s32(diffs, diffs, 2);

    int32_t s1_0 = vgetq_lane_s32(sums, 0);
    int32_t s1_1 = vgetq_lane_s32(sums, 1);
    int32_t s1_2 = vgetq_lane_s32(sums, 2);
    int32_t s1_3 = vgetq_lane_s32(sums, 3);
    int32_t s1_4 = vgetq_lane_s32(diffs, 0);
    int32_t s1_5 = vgetq_lane_s32(diffs, 1);
    int32_t s1_6 = vgetq_lane_s32(diffs, 2);
    int32_t s1_7 = vgetq_lane_s32(diffs, 3);

    // stage 2
    int32_t s2_0 = s1_0 + s1_3;
    int32_t s2_1 = s1_1 + s1_2;
    int32_t s2_2 = s1_1 - s1_2;
    int32_t s2_3 = s1_0 - s1_3;
    int32_t s2_4 = s1_4;
    int32_t s2_5 = s1_5;
    int32_t s2_6 = s1_6;
    int32_t s2_7 = s1_7;

    ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
    ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)

    // stage 3
    int32_t s3_0 = s2_0 + s2_1;
    int32_t s3_1 = s2_0 - s2_1;
    int32_t s3_2 = s2_2;
    int32_t s3_3 = s2_3;
    ROTATOR(s3_2, s3_3, R2C6, R2S6);

    int32_t s3_4 = s2_4 + s2_6;
    int32_t s3_5 = s2_7 - s2_5;
    int32_t s3_6 = s2_4 - s2_6;
    int32_t s3_7 = s2_7 + s2_5;

    // stage 4
    int32_t s4_0 = s3_0;
    int32_t s4_1 = s3_1;
    int32_t s4_2 = s3_2;
    int32_t s4_3 = s3_3;

    int32_t s4_4 = s3_7 - s3_4;
    int32_t s4_5 = ROUND_SHIFT_Q((int64_t)s3_5 * (int64_t)R2);
    int32_t s4_6 = ROUND_SHIFT_Q((int64_t)s3_6 * (int64_t)R2);
    int32_t s4_7 = s3_7 + s3_4;

    // Final order
    v[0] = s4_0;
    v[1] = s4_7;
    v[2] = s4_2;
    v[3] = s4_5;
    v[4] = s4_1;
    v[5] = s4_6;
    v[6] = s4_3;
    v[7] = s4_4;
}
