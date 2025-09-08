#include "dct.h"
#include <stdint.h>
#include <string.h>

#define REFLECTOR(a, b) do {                   \
    int32_t _ta = *(a);                        \
    int32_t _tb = *(b);                        \
    *(a) = (int32_t)(_ta + _tb);               \
    *(b) = (int32_t)(_ta - _tb);               \
} while (0)

#define ROTATOR(a, b, cosc, sinc) do {                                  \
    int64_t _ta = *(a);                                                 \
    int64_t _tb = *(b);                                                 \
    *(a) = ROUND_SHIFT_Q(_ta * (cosc) + _tb * (sinc));                  \
    *(b) = ROUND_SHIFT_Q(-_ta * (sinc) + _tb * (cosc));                 \
} while (0)


void loeffler_macro(int32_t v[8]) {
    /* stage 1 */
    REFLECTOR(&v[0], &v[7]);
    REFLECTOR(&v[1], &v[6]);
    REFLECTOR(&v[2], &v[5]);
    REFLECTOR(&v[3], &v[4]);

    /* stage 2 */
    REFLECTOR(&v[0], &v[3]);
    REFLECTOR(&v[1], &v[2]);
    ROTATOR(&v[4], &v[7], C3, S3);
    ROTATOR(&v[5], &v[6], C1, S1);

    /* stage 3 */
    REFLECTOR(&v[0], &v[1]);
    ROTATOR(&v[2], &v[3], R2C6, R2S6);
    REFLECTOR(&v[4], &v[6]);
    REFLECTOR(&v[7], &v[5]);

    /* stage 4 */
    REFLECTOR(&v[7], &v[4]);
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
