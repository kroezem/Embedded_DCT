# Embedded Discrete Cosine Transform (8x8)

Loeffler 8x8 DCT in C for ARMv7-A. Integer fixed point (Q17), stepwise optimizations, and NEON where we found performance benefits. Includes a simple benchmark and a 2D DCT path for 320x320 test images.

## TL;DR
- Target: ARM Cortex-A15 (ARMv7-A) under QEMU.
- Variants: Routine, Inline, Macro, Register, NeonS1, NeonReflect, NeonFull, Optimized.
- Best result: Optimized is 78.2% faster than baseline Routine.
- Why NEON only in Stage 1: later stages pay too much in lane shuffles and memory traffic.


## Run

### Benchmark

Prints CSV with ns per call for each variant.

```bash
./build/DCT
# Run,Routine,Inline,Macro,Register,NeonS1,NeonReflect,NeonFull,Optimized
# 0,373.60,254.33,234.83,174.14,85.33,91.75,121.63,81.42
```

Adjust runs and iterations in `main.c` if needed.

### 2D DCT on an image

```bash
python3 tools/make_header.py ./lenna.png   # writes lenna.h
# Add to images.h and select array in main.c:
# dct_image(LENNA, loeffler_optimized);
./build/DCT > dct_out.csv
```

## Results snapshot

Optimized variant average: 81.42 ns vs Routine 373.60 ns. Full breakdown is in the report.
