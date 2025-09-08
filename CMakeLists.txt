cmake_minimum_required(VERSION 3.12.1)
project(DCT C)

set(CMAKE_C_STANDARD 11)

add_library(dct STATIC
        loeffler_optimized.c
        loeffler_inline.c
        loeffler_macro.c
        loeffler_routine.c
        loeffler_neon.c
        loeffler_register.c
)

set_source_files_properties(loeffler_neon.c loeffler_optimized.c
        PROPERTIES COMPILE_FLAGS "-march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard -O3")

add_executable(DCT main.c images.h)

target_link_libraries(DCT PRIVATE dct)
