#include "dct.h"
#include <arm_neon.h>
#include <stdint.h>
#include <string.h>

static inline void reflector_vec(int32x4_t *vec_a, int32x4_t *vec_b) {
    int32x4_t sum = vaddq_s32(*vec_a, *vec_b);
    int32x4_t diff = vsubq_s32(*vec_a, *vec_b);
    *vec_a = sum;
    *vec_b = diff;
}

static inline void rotator_vec(int32x4_t *vec_a, int32x4_t *vec_b,
                               int32x4_t cos_vec, int32x4_t sin_vec) {
    int32x4_t a = *vec_a;
    int32x4_t b = *vec_b;

    // Low lanes
    int64x2_t a_cos_low = vmull_s32(vget_low_s32(a), vget_low_s32(cos_vec));
    int64x2_t b_sin_low = vmull_s32(vget_low_s32(b), vget_low_s32(sin_vec));
    int64x2_t new_a_low = vaddq_s64(a_cos_low, b_sin_low);

    int64x2_t b_cos_low = vmull_s32(vget_low_s32(b), vget_low_s32(cos_vec));
    int64x2_t a_sin_low = vmull_s32(vget_low_s32(a), vget_low_s32(sin_vec));
    int64x2_t new_b_low = vsubq_s64(b_cos_low, a_sin_low);

    // High lanes
    int64x2_t a_cos_high = vmull_s32(vget_high_s32(a), vget_high_s32(cos_vec));
    int64x2_t b_sin_high = vmull_s32(vget_high_s32(b), vget_high_s32(sin_vec));
    int64x2_t new_a_high = vaddq_s64(a_cos_high, b_sin_high);

    int64x2_t b_cos_high = vmull_s32(vget_high_s32(b), vget_high_s32(cos_vec));
    int64x2_t a_sin_high = vmull_s32(vget_high_s32(a), vget_high_s32(sin_vec));
    int64x2_t new_b_high = vsubq_s64(b_cos_high, a_sin_high);

    // Scale back to Q_SCALE
    new_a_low = vshrq_n_s64(new_a_low, Q_SCALE);
    new_b_low = vshrq_n_s64(new_b_low, Q_SCALE);
    new_a_high = vshrq_n_s64(new_a_high, Q_SCALE);
    new_b_high = vshrq_n_s64(new_b_high, Q_SCALE);

    *vec_a = vcombine_s32(vmovn_s64(new_a_low), vmovn_s64(new_a_high));
    *vec_b = vcombine_s32(vmovn_s64(new_b_low), vmovn_s64(new_b_high));
}

// Stage 1: load, pairwise sum/diff, reorder
static inline void stage1_vec(int32_t data[8]) {
    int32x4_t lower = vld1q_s32(&data[0]); // v0 v1 v2 v3
    int32x4_t upper = vld1q_s32(&data[4]); // v4 v5 v6 v7

    // Reverse upper order to match scalar reference
    int32x4_t upper_rev = vrev64q_s32(upper);
    upper_rev = vextq_s32(upper_rev, upper_rev, 2);

    int32x4_t sums = vaddq_s32(lower, upper_rev);
    int32x4_t diffs = vsubq_s32(lower, upper_rev);

    // Reverse diffs to match scalar output
    int32x4_t diffs_rev = vrev64q_s32(diffs);
    diffs_rev = vextq_s32(diffs_rev, diffs_rev, 2);

    vst1q_s32(&data[0], sums);
    vst1q_s32(&data[4], diffs_rev);
}

// Scalar reflector
static inline void reflector_s(int32_t *a, int32_t *b) {
    int32_t sum = *a + *b;
    int32_t diff = *a - *b;
    *a = sum;
    *b = diff;
}

// Scalar rotator
static inline void rotator_s(int32_t *a, int32_t *b, int32_t c, int32_t s) {
    int64_t ta = *a, tb = *b;
    *a = ROUND_SHIFT_Q(ta * c + tb * s);
    *b = ROUND_SHIFT_Q(-ta * s + tb * c);
}

// Stage 1 vectorized, remainder scalar
void loeffler_neon_s1(int32_t data[8]) {
    stage1_vec(data);

    reflector_s(&data[0], &data[3]);
    reflector_s(&data[1], &data[2]);
    rotator_s(&data[4], &data[7], C3, S3);
    rotator_s(&data[5], &data[6], C1, S1);

    reflector_s(&data[0], &data[1]);
    rotator_s(&data[2], &data[3], R2C6, R2S6);
    reflector_s(&data[4], &data[6]);
    reflector_s(&data[7], &data[5]);

    reflector_s(&data[7], &data[4]);
    data[5] = ROUND_SHIFT_Q((int64_t) data[5] * R2);
    data[6] = ROUND_SHIFT_Q((int64_t) data[6] * R2);

    // Final reordering
    int32_t t0 = data[0], t1 = data[1], t2 = data[2], t3 = data[3];
    int32_t t4 = data[4], t5 = data[5], t6 = data[6], t7 = data[7];
    data[0] = t0;
    data[1] = t7;
    data[2] = t2;
    data[3] = t5;
    data[4] = t1;
    data[5] = t6;
    data[6] = t3;
    data[7] = t4;
}

// Vector reflectors, scalar rest
void loeffler_neon_reflect(int32_t data[8]) {
    stage1_vec(data);

    // Stage 2 reflectors
    {
        int32x4_t vec_a = {data[0], data[1], 0, 0};
        int32x4_t vec_b = {data[3], data[2], 0, 0};
        reflector_vec(&vec_a, &vec_b);
        data[0] = vgetq_lane_s32(vec_a, 0);
        data[1] = vgetq_lane_s32(vec_a, 1);
        data[3] = vgetq_lane_s32(vec_b, 0);
        data[2] = vgetq_lane_s32(vec_b, 1);
    }
    rotator_s(&data[4], &data[7], C3, S3);
    rotator_s(&data[5], &data[6], C1, S1);

    // Stage 3
    reflector_s(&data[0], &data[1]);
    reflector_s(&data[4], &data[6]);
    reflector_s(&data[7], &data[5]);
    rotator_s(&data[2], &data[3], R2C6, R2S6);

    // Stage 4
    reflector_s(&data[7], &data[4]);
    data[5] = ROUND_SHIFT_Q((int64_t) data[5] * R2);
    data[6] = ROUND_SHIFT_Q((int64_t) data[6] * R2);

    // Final reorder
    int32_t t0 = data[0], t1 = data[1], t2 = data[2], t3 = data[3];
    int32_t t4 = data[4], t5 = data[5], t6 = data[6], t7 = data[7];
    data[0] = t0;
    data[1] = t7;
    data[2] = t2;
    data[3] = t5;
    data[4] = t1;
    data[5] = t6;
    data[6] = t3;
    data[7] = t4;
}

// Fully vectorized version
void loeffler_neon_full(int32_t data[8]) {
    stage1_vec(data);

    // Stage 2 reflectors
    {
        int32x4_t vec_a = {data[0], data[1], 0, 0};
        int32x4_t vec_b = {data[3], data[2], 0, 0};
        reflector_vec(&vec_a, &vec_b);
        data[0] = vgetq_lane_s32(vec_a, 0);
        data[1] = vgetq_lane_s32(vec_a, 1);
        data[3] = vgetq_lane_s32(vec_b, 0);
        data[2] = vgetq_lane_s32(vec_b, 1);
    }

    // Stage 2 rotators
    {
        int32x4_t vec_a = {data[4], data[5], 0, 0};
        int32x4_t vec_b = {data[7], data[6], 0, 0};
        int32x4_t cos_vec = {C3, C1, 0, 0};
        int32x4_t sin_vec = {S3, S1, 0, 0};
        rotator_vec(&vec_a, &vec_b, cos_vec, sin_vec);
        data[4] = vgetq_lane_s32(vec_a, 0);
        data[5] = vgetq_lane_s32(vec_a, 1);
        data[7] = vgetq_lane_s32(vec_b, 0);
        data[6] = vgetq_lane_s32(vec_b, 1);
    }

    // Stage 3
    reflector_s(&data[0], &data[1]);
    {
        int32x4_t vec_a = {data[2], 0, 0, 0};
        int32x4_t vec_b = {data[3], 0, 0, 0};
        int32x4_t cos_vec = {R2C6, 0, 0, 0};
        int32x4_t sin_vec = {R2S6, 0, 0, 0};
        rotator_vec(&vec_a, &vec_b, cos_vec, sin_vec);
        data[2] = vgetq_lane_s32(vec_a, 0);
        data[3] = vgetq_lane_s32(vec_b, 0);
    }
    reflector_s(&data[4], &data[6]);
    reflector_s(&data[7], &data[5]);

    // Stage 4
    reflector_s(&data[7], &data[4]); {
        int32x4_t vec_a = {data[5], data[6], 0, 0};
        int32x4_t zero_vec = vdupq_n_s32(0);
        int32x4_t cos_vec = {R2, R2, 0, 0};
        rotator_vec(&vec_a, &zero_vec, cos_vec, zero_vec);
        data[5] = vgetq_lane_s32(vec_a, 0);
        data[6] = vgetq_lane_s32(vec_a, 1);
    }

    // Final reorder
    int32_t t0 = data[0], t1 = data[1], t2 = data[2], t3 = data[3];
    int32_t t4 = data[4], t5 = data[5], t6 = data[6], t7 = data[7];
    data[0] = t0;
    data[1] = t7;
    data[2] = t2;
    data[3] = t5;
    data[4] = t1;
    data[5] = t6;
    data[6] = t3;
    data[7] = t4;
}
