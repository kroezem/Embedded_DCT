#include "dct.h"
#include <stdint.h>

#define ROTATOR(a, b, cosc, sinc) do {                                 \
    int64_t _ta = (a);                                                 \
    int64_t _tb = (b);                                                 \
    (a) = ROUND_SHIFT_Q(_ta * (cosc) + _tb * (sinc));                   \
    (b) = ROUND_SHIFT_Q(-_ta * (sinc) + _tb * (cosc));                  \
} while (0)

void loeffler_register(int32_t v[8]) {
    /* STAGE 1 */
    int32_t x0 = v[0] + v[7];
    int32_t x1 = v[1] + v[6];
    int32_t x2 = v[2] + v[5];
    int32_t x3 = v[3] + v[4];
    int32_t x4 = v[3] - v[4];
    int32_t x5 = v[2] - v[5];
    int32_t x6 = v[1] - v[6];
    int32_t x7 = v[0] - v[7];


    /* STAGE 2 */
    int32_t y0 = x0 + x3;
    int32_t y1 = x1 + x2;
    int32_t y2 = x1 - x2;
    int32_t y3 = x0 - x3;

    int32_t y4 = x4;
    int32_t y5 = x5;
    int32_t y6 = x6;
    int32_t y7 = x7;
    ROTATOR(y4, y7, C3, S3);
    ROTATOR(y5, y6, C1, S1);

    /* STAGE 3 */
    int32_t z0 = y0 + y1;
    int32_t z1 = y0 - y1;

    int32_t z2 = y2;
    int32_t z3 = y3;
    ROTATOR(z2, z3, R2C6, R2S6);

    int32_t z4 = y4 + y6;
    int32_t z5 = y7 - y5;
    int32_t z6 = y4 - y6;
    int32_t z7 = y7 + y5;

    /* STAGE 4 */
    int32_t w4 = z7 - z4;
    int32_t w5 = ROUND_SHIFT_Q((int64_t) z5 * R2);
    int32_t w6 = ROUND_SHIFT_Q((int64_t) z6 * R2);
    int32_t w7 = z7 + z4;

    /* REORDER OUTPUT */
    v[0] = z0;
    v[1] = w7;
    v[2] = z2;
    v[3] = w5;
    v[4] = z1;
    v[5] = w6;
    v[6] = z3;
    v[7] = w4;
}
