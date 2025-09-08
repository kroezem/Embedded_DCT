#include <stdio.h>
#include <stdint.h>
#include "dct.h"
#include "images.h"
#include <stdlib.h>
#include <time.h>


// CSV IS EASY TO COPY AND PASTE FROM STDOUT
static void write_csv(const int32_t img[IMAGE_HEIGHT][IMAGE_WIDTH]) {
    for (int r = 0; r < IMAGE_HEIGHT; ++r) {
        for (int c = 0; c < IMAGE_WIDTH; ++c) {
            if (c) putchar(',');
            printf("%d", img[r][c]);
        }
        putchar('\n');
    }
}

// RUN 2D DCT WITH PROVIDED LOEFFLER FUNC
void dct_block(int32_t block[8][8], void (*loeffler_func)(int32_t [8])) {
    // 1D DCT ON ROWS
    for (int r = 0; r < 8; ++r) {
        loeffler_func(block[r]);
    }

    // 1D DCT ON COLS
    for (int c = 0; c < 8; ++c) {
        int32_t col[8];

        // CREATE COL
        for (int r = 0; r < 8; ++r) {
            col[r] = block[r][c];
        }

        loeffler_func(col);

        // WRITE COL BACK
        for (int r = 0; r < 8; ++r) {
            block[r][c] = col[r];
        }
    }
}

void dct_image(const uint8_t *img, void (*loeffler_func)(int32_t [8])) {
    static int32_t dct_out[IMAGE_HEIGHT][IMAGE_WIDTH];

    for (int r = 0; r < IMAGE_HEIGHT; r += 8)
        for (int c = 0; c < IMAGE_WIDTH; c += 8) {
            int32_t block[8][8];

            // PREP BLOCK FOR DCT
            for (int i = 0; i < 8; ++i)
                for (int j = 0; j < 8; ++j)
                    block[i][j] = img[(r + i) * IMAGE_WIDTH + (c + j)] << Q_SCALE;

            // 2D DCT
            dct_block(block, loeffler_func);

            // WRITE BLOCK
            for (int i = 0; i < 8; ++i)
                for (int j = 0; j < 8; ++j)
                    dct_out[r + i][c + j] = ROUND_SHIFT_Q(block[i][j]);
        }

    write_csv(dct_out);
}


static double bench_loop(void (*loeffler_function)(int32_t [8]), int iterations) {
    static const int16_t input_raw[8] = {212, 87, 222, 113, 15, 137, 87, 14};
    int32_t v[8], input[8];

    for (int j = 0; j < 8; ++j) // SCALE INPUT VALUES
        input[j] = (int32_t) input_raw[j] << Q_SCALE;

    struct timespec t0, t1;
    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &t0);


    for (int i = 0; i < iterations; ++i) {
        // LOOP FOR N ITERATIONS
        for (int j = 0; j < 8; ++j) // RESET INPUT
            v[j] = input[j];
        loeffler_function(v);
    }

    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &t1); //RETURN AVG NS PER ITERATION
    return ((t1.tv_sec - t0.tv_sec) * 1e9 + (t1.tv_nsec - t0.tv_nsec)) / iterations;
}

static void benchmark(int runs, int iterations) {
    printf("Run,Routine,Inline,Macro,Register,NeonS1,NeonReflect,NeonFull,Optimized\n");
    for (unsigned run = 0; run < runs; run++) {
        printf("%u", run);
        printf(",%.2f", bench_loop(loeffler_routine, iterations));
        printf(",%.2f", bench_loop(loeffler_inline, iterations));
        printf(",%.2f", bench_loop(loeffler_macro, iterations));
        printf(",%.2f", bench_loop(loeffler_register, iterations));
        printf(",%.2f", bench_loop(loeffler_neon_s1, iterations));
        printf(",%.2f", bench_loop(loeffler_neon_reflect, iterations));
        printf(",%.2f", bench_loop(loeffler_neon_full, iterations));
        printf(",%.2f", bench_loop(loeffler_optimized, iterations));
        putchar('\n');
        fflush(stdout);
    }
}


int main(void) {
    dct_image(LENNA, loeffler_optimized);
    // benchmark(100, 1000000);
    return 0;
}
