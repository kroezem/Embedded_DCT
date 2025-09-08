#include "dct.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

static void reflector(int32_t *a, int32_t *b) {
    int32_t sum = *a + *b;
    int32_t diff = *a - *b;
    *a = sum;
    *b = diff;
}

static void rotator(int32_t *a, int32_t *b, int32_t cos_c, int32_t sin_c) {
    int64_t tmp_a = *a, tmp_b = *b;
    *a = ROUND_SHIFT_Q(tmp_a * cos_c + tmp_b * sin_c);
    *b = ROUND_SHIFT_Q(-tmp_a * sin_c + tmp_b * cos_c);
}

void loeffler_routine(int32_t v[8]) {
    /* STAGE 1 */
    reflector(&v[0], &v[7]);
    reflector(&v[1], &v[6]);
    reflector(&v[2], &v[5]);
    reflector(&v[3], &v[4]);

    /* STAGE 2 */
    reflector(&v[0], &v[3]);
    reflector(&v[1], &v[2]);
    rotator(&v[4], &v[7], C3, S3);
    rotator(&v[5], &v[6], C1, S1);

    /* STAGE 3 */
    reflector(&v[0], &v[1]);
    rotator(&v[2], &v[3], R2C6, R2S6);
    reflector(&v[4], &v[6]);
    reflector(&v[7], &v[5]);

    /* STAGE 4 */
    reflector(&v[7], &v[4]);
    v[5] = ROUND_SHIFT_Q((int64_t) v[5] * R2);
    v[6] = ROUND_SHIFT_Q((int64_t) v[6] * R2);

    /* REORDER OUTPUT */
    int32_t tmp[8];
    memcpy(tmp, v, sizeof tmp);
    v[0] = tmp[0];
    v[1] = tmp[7];
    v[2] = tmp[2];
    v[3] = tmp[5];
    v[4] = tmp[1];
    v[5] = tmp[6];
    v[6] = tmp[3];
    v[7] = tmp[4];
}
