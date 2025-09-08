	.arch armv7-a
	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"loeffler_optimized.c"
@ GNU C11 (GCC) version 8.2.1 20180801 (Red Hat 8.2.1-2) (armv7hl-redhat-linux-gnueabi)
@	compiled by GNU C version 8.2.1 20180801 (Red Hat 8.2.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
@ GGC heuristics: --param ggc-min-expand=98 --param ggc-min-heapsize=127659
@ options passed:  -fpreprocessed CMakeFiles/dct.dir/loeffler_optimized.c.i
@ -mfpu=neon-vfpv4 -mfloat-abi=hard -mtune=generic-armv7-a
@ -mabi=aapcs-linux -mtls-dialect=gnu -marm -march=armv7-a+neon-vfpv4
@ -auxbase-strip CMakeFiles/dct.dir/loeffler_optimized.c.o -g -O3
@ -std=gnu11 -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fauto-inc-dec -fbranch-count-reg
@ -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
@ -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
@ -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
@ -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
@ -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -floop-interchange
@ -floop-unroll-and-jam -flra-remat -flto-odr-type-merging -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
@ -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
@ -fpredictive-commoning -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
@ -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
@ -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
@ -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
@ -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
@ -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -marm -mbe32 -mglibc -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -munaligned-access
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	loeffler_optimized
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	loeffler_optimized, %function
loeffler_optimized:
.LVL0:
.LFB2007:
	.file 1 "/tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c"
	.loc 1 11 39 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 13 5 view .LVU1
.LBB37:
.LBI37:
	.file 2 "/usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h"
	.loc 2 10369 1 view .LVU2
.LBB38:
	.loc 2 10371 3 view .LVU3
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:10371:   return (int32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
	.loc 2 10371 10 is_stmt 0 view .LVU4
	mov	r3, r0	@ tmp170, v
.LBE38:
.LBE37:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:11: void loeffler_optimized(int32_t v[8]) {
	.loc 1 11 39 view .LVU5
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB40:
.LBB39:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:10371:   return (int32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
	.loc 2 10371 10 view .LVU6
	vld1.32	{d20-d21}, [r3]!	@ _83, MEM[(const int[4] *)v_33(D)]
.LVL1:
	.loc 2 10371 10 view .LVU7
.LBE39:
.LBE40:
	.loc 1 14 5 is_stmt 1 view .LVU8
.LBB41:
.LBI41:
	.loc 2 10369 1 view .LVU9
.LBB42:
	.loc 2 10371 3 view .LVU10
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:10371:   return (int32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
	.loc 2 10371 10 is_stmt 0 view .LVU11
	vld1.32	{d16-d17}, [r3]	@ _82, MEM[(const int[4] *)_1]
.LVL2:
	.loc 2 10371 10 view .LVU12
.LBE42:
.LBE41:
	.loc 1 15 5 is_stmt 1 view .LVU13
.LBB43:
.LBI43:
	.loc 2 8971 1 view .LVU14
.LBB44:
	.loc 2 8973 3 view .LVU15
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:8973:   return (int32x4_t) __builtin_shuffle (__a, (uint32x4_t) { 1, 0, 3, 2 });
	.loc 2 8973 10 is_stmt 0 view .LVU16
	vrev64.32	q8, q8	@ _81, _82
.LVL3:
	.loc 2 8973 10 view .LVU17
.LBE44:
.LBE43:
	.loc 1 16 5 is_stmt 1 view .LVU18
.LBB45:
.LBI45:
	.loc 2 8831 1 view .LVU19
.LBB46:
	.loc 2 8833 3 view .LVU20
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:8833:   return (int32x4_t)__builtin_neon_vextv4si (__a, __b, __c);
	.loc 2 8833 10 is_stmt 0 view .LVU21
	vext.32	q8, q8, q8, #2	@ _80, _81, _81,
.LVL4:
	.loc 2 8833 10 view .LVU22
.LBE46:
.LBE45:
	.loc 1 18 5 is_stmt 1 view .LVU23
.LBB47:
.LBI47:
	.loc 2 596 1 view .LVU24
.LBB48:
	.loc 2 598 3 view .LVU25
.LBE48:
.LBE47:
.LBB50:
.LBB51:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:1929:   return __a - __b;
	.loc 2 1929 14 is_stmt 0 view .LVU26
	vsub.i32	q9, q10, q8	@ _78, _83, _80
.LBE51:
.LBE50:
.LBB53:
.LBB54:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:8973:   return (int32x4_t) __builtin_shuffle (__a, (uint32x4_t) { 1, 0, 3, 2 });
	.loc 2 8973 10 view .LVU27
	vrev64.32	q9, q9	@ _77, _78
.LBE54:
.LBE53:
.LBB56:
.LBB57:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:8833:   return (int32x4_t)__builtin_neon_vextv4si (__a, __b, __c);
	.loc 2 8833 10 view .LVU28
	vext.32	q9, q9, q9, #2	@ _76, _77, _77,
.LBE57:
.LBE56:
.LBB59:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 84 view .LVU29
	movw	r10, #12785	@ tmp182,
.LBE59:
.LBB60:
.LBB61:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU30
	vmov.32	r7, d19[0]	@ _36,,
.LBE61:
.LBE60:
.LBB63:
.LBB64:
	vmov.32	r9, d18[1]	@ _35,,
.LBE64:
.LBE63:
.LBB66:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 79 view .LVU31
	movw	r6, #64277	@ tmp184,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 135 view .LVU32
	movw	r5, #52751	@ tmp189,
.LBE66:
.LBB67:
.LBB68:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU33
	vmov.32	r4, d19[1]	@ _37,,
.LBE68:
.LBE67:
.LBB70:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 79 view .LVU34
	movw	r1, #54491	@ tmp174,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 84 view .LVU35
	movw	r8, #36410	@ tmp172,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 135 view .LVU36
	movw	r2, #29126	@ tmp179,
.LBE70:
.LBB71:
.LBB49:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:598:   return __a + __b;
	.loc 2 598 14 view .LVU37
	vadd.i32	q8, q8, q10	@ _79, _80, _83
.LVL5:
	.loc 2 598 14 view .LVU38
.LBE49:
.LBE71:
	.loc 1 19 5 is_stmt 1 view .LVU39
.LBB72:
.LBI50:
	.loc 2 1927 1 view .LVU40
.LBB52:
	.loc 2 1929 3 view .LVU41
	.loc 2 1929 3 is_stmt 0 view .LVU42
.LBE52:
.LBE72:
	.loc 1 22 5 is_stmt 1 view .LVU43
.LBB73:
.LBI53:
	.loc 2 8971 1 view .LVU44
.LBB55:
	.loc 2 8973 3 view .LVU45
	.loc 2 8973 3 is_stmt 0 view .LVU46
.LBE55:
.LBE73:
	.loc 1 23 5 is_stmt 1 view .LVU47
.LBB74:
.LBI56:
	.loc 2 8831 1 view .LVU48
.LBB58:
	.loc 2 8833 3 view .LVU49
	.loc 2 8833 3 is_stmt 0 view .LVU50
.LBE58:
.LBE74:
	.loc 1 25 5 is_stmt 1 view .LVU51
.LBB75:
.LBI75:
	.loc 2 6247 1 view .LVU52
.LBB76:
	.loc 2 6249 3 view .LVU53
	.loc 2 6249 3 is_stmt 0 view .LVU54
.LBE76:
.LBE75:
.LBB79:
.LBB80:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU55
	vmov.32	r3, d18[0]	@ _34,,
.LVL6:
	.loc 2 6249 10 view .LVU56
.LBE80:
.LBE79:
.LBB82:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 84 view .LVU57
	smull	r10, fp, r7, r10	@ tmp181, _36, tmp182
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 79 view .LVU58
	smlal	r10, fp, r6, r9	@ tmp183, tmp184, _35
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 140 view .LVU59
	smull	r6, r7, r7, r6	@ tmp186, _36, tmp184
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 135 view .LVU60
	movt	r5, 65535	@ tmp189,
	smlal	r6, r7, r5, r9	@ tmp188, tmp189, _35
.LBE82:
.LBB83:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 84 view .LVU61
	smull	r8, r9, r4, r8	@ tmp171, _37, tmp172
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 140 view .LVU62
	smull	r4, r5, r4, r1	@ tmp176, _37, tmp174
.LBE83:
.LBB84:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 150 view .LVU63
	lsr	r6, r6, #16	@ tmp188, tmp188,
.LBE84:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:11: void loeffler_optimized(int32_t v[8]) {
	.loc 1 11 39 view .LVU64
	sub	sp, sp, #44	@,,
	.cfi_def_cfa_offset 80
.LVL7:
	.loc 1 26 5 is_stmt 1 view .LVU65
.LBB85:
.LBI85:
	.loc 2 6247 1 view .LVU66
.LBB86:
	.loc 2 6249 3 view .LVU67
.LBE86:
.LBE85:
.LBB88:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 150 is_stmt 0 view .LVU68
	orr	r6, r6, r7, lsl #16	@ tmp188, tmp188,,
.LBE88:
.LBB89:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 135 view .LVU69
	movt	r2, 65535	@ tmp179,
.LBE89:
.LBB90:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 150 view .LVU70
	asr	r7, r7, #16	@,,
.LBE90:
.LBB91:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 135 view .LVU71
	smlal	r4, r5, r2, r3	@ tmp178, tmp179, _34
.LBE91:
.LBB92:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 150 view .LVU72
	strd	r6, [sp, #32]	@ tmp188,,
.LBE92:
.LBB93:
.LBB94:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU73
	vmov.32	lr, d17[1]	@ _72,,
.LBE94:
.LBE93:
.LBB96:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 84 view .LVU74
	movw	r6, #20091	@ tmp194,
.LBE96:
.LBB97:
.LBB77:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU75
	add	ip, sp, #4	@ tmp265,,
.LVL8:
	.loc 2 6249 10 view .LVU76
.LBE77:
.LBE97:
.LBB98:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 79 view .LVU77
	smlal	r8, r9, r1, r3	@ tmp173, tmp174, _34
.LBE98:
.LBB99:
.LBB78:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU78
	vst1.32	{d16[0]}, [ip]	@,, %sfp
.LVL9:
	.loc 2 6249 10 view .LVU79
.LBE78:
.LBE99:
.LBB100:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 79 view .LVU80
	movw	ip, #35468	@ tmp196,
.LBE100:
.LBB101:
.LBB87:
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 view .LVU81
	vmov.32	r2, d16[1]	@ _74,,
.LVL10:
	.loc 2 6249 10 view .LVU82
.LBE87:
.LBE101:
	.loc 1 27 5 is_stmt 1 view .LVU83
.LBB102:
.LBI102:
	.loc 2 6247 1 view .LVU84
.LBB103:
	.loc 2 6249 3 view .LVU85
@ /usr/lib/gcc/armv7hl-redhat-linux-gnueabi/8/include/arm_neon.h:6249:   return (int32_t)__builtin_neon_vget_lanev4si (__a, __b);
	.loc 2 6249 10 is_stmt 0 view .LVU86
	vmov.32	r3, d17[0]	@ _73,,
.LVL11:
	.loc 2 6249 10 view .LVU87
.LBE103:
.LBE102:
	.loc 1 28 5 is_stmt 1 view .LVU88
.LBB104:
.LBI93:
	.loc 2 6247 1 view .LVU89
.LBB95:
	.loc 2 6249 3 view .LVU90
	.loc 2 6249 3 is_stmt 0 view .LVU91
.LBE95:
.LBE104:
	.loc 1 29 5 is_stmt 1 view .LVU92
.LBB105:
.LBI79:
	.loc 2 6247 1 view .LVU93
.LBB81:
	.loc 2 6249 3 view .LVU94
	.loc 2 6249 3 is_stmt 0 view .LVU95
.LBE81:
.LBE105:
	.loc 1 30 5 is_stmt 1 view .LVU96
.LBB106:
.LBI63:
	.loc 2 6247 1 view .LVU97
.LBB65:
	.loc 2 6249 3 view .LVU98
	.loc 2 6249 3 is_stmt 0 view .LVU99
.LBE65:
.LBE106:
	.loc 1 31 5 is_stmt 1 view .LVU100
.LBB107:
.LBI60:
	.loc 2 6247 1 view .LVU101
.LBB62:
	.loc 2 6249 3 view .LVU102
	.loc 2 6249 3 is_stmt 0 view .LVU103
.LBE62:
.LBE107:
	.loc 1 32 5 is_stmt 1 view .LVU104
.LBB108:
.LBI67:
	.loc 2 6247 1 view .LVU105
.LBB69:
	.loc 2 6249 3 view .LVU106
	.loc 2 6249 3 is_stmt 0 view .LVU107
.LBE69:
.LBE108:
	.loc 1 35 5 is_stmt 1 view .LVU108
.LBB109:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 150 is_stmt 0 view .LVU109
	lsr	r4, r4, #16	@ tmp178, tmp178,
	orr	r4, r4, r5, lsl #16	@ tmp178, tmp178,,
	asr	r5, r5, #16	@,,
	strd	r4, [sp, #16]	@ tmp178,,
.LBE109:
.LBB110:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 135 view .LVU110
	movw	r4, #45445	@ tmp213,
.LBE110:
.LBB111:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:44:     ROTATOR(s2_4, s2_7, C3, S3); // pair (4,7)
	.loc 1 44 94 view .LVU111
	lsr	r8, r8, #16	@ tmp173, tmp173,
	orr	r8, r8, r9, lsl #16	@ tmp173, tmp173,,
	asr	r9, r9, #16	@,,
	strd	r8, [sp, #8]	@ tmp173,,
.LBE111:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 47 view .LVU112
	movw	r8, #27146	@ tmp201,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:38:     int32_t s2_3 = s1_0 - s1_3;
	.loc 1 38 13 view .LVU113
	ldr	r1, [sp, #4]	@ _75, %sfp
.LBB112:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 84 view .LVU114
	movt	r6, 1	@ tmp194,
.LBE112:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:38:     int32_t s2_3 = s1_0 - s1_3;
	.loc 1 38 13 view .LVU115
	sub	r1, r1, lr	@ s2_3, _75, _72
.LBB113:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 84 view .LVU116
	smull	r6, r7, r1, r6	@ tmp193, s2_3, tmp194
.LBE113:
.LBB114:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:45:     ROTATOR(s2_5, s2_6, C1, S1); // pair (5,6)
	.loc 1 45 94 view .LVU117
	lsr	r10, r10, #16	@ tmp183, tmp183,
	orr	r10, r10, fp, lsl #16	@ tmp183, tmp183,,
	asr	fp, fp, #16	@,,
	strd	r10, [sp, #24]	@ tmp183,,
.LBE114:
.LBB115:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 140 view .LVU118
	smull	r10, fp, r1, ip	@ tmp210, s2_3, tmp196
.LBE115:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:37:     int32_t s2_2 = s1_1 - s1_2;
	.loc 1 37 13 view .LVU119
	sub	r1, r2, r3	@ s2_2, _74, _73
.LBB116:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 79 view .LVU120
	smlal	r6, r7, ip, r1	@ tmp195, tmp196, s2_2
.LBE116:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:56:     int32_t s3_6 = s2_4 - s2_6;
	.loc 1 56 13 view .LVU121
	ldr	r5, [sp, #32]	@ tmp247, %sfp
	ldr	ip, [sp, #8]	@ tmp246, %sfp
.LBB117:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 135 view .LVU122
	movt	r4, 65534	@ tmp213,
	smlal	r10, fp, r4, r1	@ tmp212, tmp213, s2_2
.LBE117:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:56:     int32_t s3_6 = s2_4 - s2_6;
	.loc 1 56 13 view .LVU123
	sub	r1, ip, r5	@ s3_6, tmp246, tmp247
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:55:     int32_t s3_5 = s2_7 - s2_5;
	.loc 1 55 13 view .LVU124
	ldr	ip, [sp, #16]	@ tmp248, %sfp
	ldr	r5, [sp, #24]	@ tmp249, %sfp
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 47 view .LVU125
	movt	r8, 1	@ tmp201,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:55:     int32_t s3_5 = s2_7 - s2_5;
	.loc 1 55 13 view .LVU126
	sub	r4, ip, r5	@ s3_5, tmp248, tmp249
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 47 view .LVU127
	smull	r4, r5, r4, r8	@ tmp200, s3_5, tmp201
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:62:     int32_t s4_6 = (int32_t) (((int64_t) s3_6 * R2) >> Q_SCALE);
	.loc 1 62 47 view .LVU128
	smull	r8, r9, r1, r8	@ tmp206, s3_6, tmp201
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:35:     int32_t s2_0 = s1_0 + s1_3;
	.loc 1 35 13 view .LVU129
	ldr	r1, [sp, #4]	@ _75, %sfp
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:36:     int32_t s2_1 = s1_1 + s1_2;
	.loc 1 36 13 view .LVU130
	add	r3, r3, r2	@ s2_1, _73, _74
.LVL12:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:35:     int32_t s2_0 = s1_0 + s1_3;
	.loc 1 35 13 view .LVU131
	add	lr, lr, r1	@ s2_0, _72, _75
.LVL13:
	.loc 1 36 5 is_stmt 1 view .LVU132
	.loc 1 37 5 view .LVU133
	.loc 1 38 5 view .LVU134
	.loc 1 39 5 view .LVU135
	.loc 1 40 5 view .LVU136
	.loc 1 41 5 view .LVU137
	.loc 1 42 5 view .LVU138
	.loc 1 44 5 view .LVU139
.LBB118:
	.loc 1 44 10 view .LVU140
	.loc 1 44 46 view .LVU141
	.loc 1 44 102 view .LVU142
	.loc 1 44 102 is_stmt 0 view .LVU143
.LBE118:
	.loc 1 45 5 is_stmt 1 view .LVU144
.LBB119:
	.loc 1 45 10 view .LVU145
	.loc 1 45 46 view .LVU146
	.loc 1 45 102 view .LVU147
	.loc 1 45 102 is_stmt 0 view .LVU148
.LBE119:
	.loc 1 48 5 is_stmt 1 view .LVU149
	.loc 1 49 5 view .LVU150
	.loc 1 50 5 view .LVU151
	.loc 1 51 5 view .LVU152
	.loc 1 52 5 view .LVU153
.LBB120:
	.loc 1 52 10 view .LVU154
	.loc 1 52 46 view .LVU155
	.loc 1 52 102 view .LVU156
	.loc 1 52 102 is_stmt 0 view .LVU157
.LBE120:
	.loc 1 54 5 is_stmt 1 view .LVU158
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:54:     int32_t s3_4 = s2_4 + s2_6;
	.loc 1 54 13 is_stmt 0 view .LVU159
	ldr	r2, [sp, #32]	@ tmp251, %sfp
.LVL14:
	.loc 1 54 13 view .LVU160
	ldr	r1, [sp, #8]	@ tmp252, %sfp
.LVL15:
.LBB121:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 150 view .LVU161
	lsr	r10, r10, #16	@ tmp214, tmp212,
.LBE121:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:54:     int32_t s3_4 = s2_4 + s2_6;
	.loc 1 54 13 view .LVU162
	add	ip, r2, r1	@ s3_4, tmp251, tmp252
.LVL16:
	.loc 1 55 5 is_stmt 1 view .LVU163
	.loc 1 56 5 view .LVU164
	.loc 1 57 5 view .LVU165
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:57:     int32_t s3_7 = s2_7 + s2_5;
	.loc 1 57 13 is_stmt 0 view .LVU166
	ldr	r2, [sp, #24]	@ tmp253, %sfp
	ldr	r1, [sp, #16]	@ tmp254, %sfp
.LBB122:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 94 view .LVU167
	lsr	r6, r6, #16	@ tmp197, tmp195,
.LBE122:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:57:     int32_t s3_7 = s2_7 + s2_5;
	.loc 1 57 13 view .LVU168
	add	r1, r2, r1	@ s3_7, tmp253, tmp254
.LVL17:
	.loc 1 60 5 is_stmt 1 view .LVU169
	.loc 1 61 5 view .LVU170
	.loc 1 62 5 view .LVU171
	.loc 1 63 5 view .LVU172
	.loc 1 66 5 view .LVU173
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 56 is_stmt 0 view .LVU174
	lsr	r4, r4, #16	@ tmp202, tmp200,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:62:     int32_t s4_6 = (int32_t) (((int64_t) s3_6 * R2) >> Q_SCALE);
	.loc 1 62 56 view .LVU175
	lsr	r8, r8, #16	@ tmp208, tmp206,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:48:     int32_t s3_0 = s2_0 + s2_1;
	.loc 1 48 13 view .LVU176
	add	r2, lr, r3	@ s3_0, s2_0, s2_1
.LVL18:
.LBB123:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 150 view .LVU177
	orr	r10, r10, fp, lsl #16	@ tmp214, tmp214,,
.LBE123:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:49:     int32_t s3_1 = s2_0 - s2_1;
	.loc 1 49 13 view .LVU178
	sub	lr, lr, r3	@ s3_1, s2_0, s2_1
.LVL19:
.LBB124:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 94 view .LVU179
	orr	r6, r6, r7, lsl #16	@ tmp197, tmp197,,
.LBE124:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:63:     int32_t s4_7 = s3_7 + s3_4;
	.loc 1 63 13 view .LVU180
	add	r3, ip, r1	@ s4_7, s3_4, s3_7
.LVL20:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 56 view .LVU181
	orr	r4, r4, r5, lsl #16	@ tmp202, tmp202,,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:62:     int32_t s4_6 = (int32_t) (((int64_t) s3_6 * R2) >> Q_SCALE);
	.loc 1 62 56 view .LVU182
	orr	r8, r8, r9, lsl #16	@ tmp208, tmp208,,
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:60:     int32_t s4_4 = s3_7 - s3_4;
	.loc 1 60 13 view .LVU183
	sub	r1, r1, ip	@ s4_4, s3_7, s3_4
.LVL21:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:66:     v[0] = s3_0;
	.loc 1 66 10 view .LVU184
	str	r2, [r0]	@ s3_0, *v_33(D)
	.loc 1 67 5 is_stmt 1 view .LVU185
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:70:     v[4] = s3_1;
	.loc 1 70 10 is_stmt 0 view .LVU186
	str	lr, [r0, #16]	@ s3_1, MEM[(int32_t *)v_33(D) + 16B]
.LVL22:
.LBB125:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:52:     ROTATOR(s3_2, s3_3, R2C6, R2S6);
	.loc 1 52 109 view .LVU187
	str	r10, [r0, #24]	@ tmp214, MEM[(int32_t *)v_33(D) + 24B]
.LBE125:
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:67:     v[1] = s4_7;
	.loc 1 67 10 view .LVU188
	stmib	r0, {r3, r6}	@ v,,
	.loc 1 68 5 is_stmt 1 view .LVU189
	.loc 1 69 5 view .LVU190
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:73:     v[7] = s4_4;
	.loc 1 73 10 is_stmt 0 view .LVU191
	str	r1, [r0, #28]	@ s4_4, MEM[(int32_t *)v_33(D) + 28B]
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:61:     int32_t s4_5 = (int32_t) (((int64_t) s3_5 * R2) >> Q_SCALE);
	.loc 1 61 13 view .LVU192
	str	r4, [r0, #12]	@ tmp202, MEM[(int32_t *)v_33(D) + 12B]
	.loc 1 70 5 is_stmt 1 view .LVU193
	.loc 1 71 5 view .LVU194
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:62:     int32_t s4_6 = (int32_t) (((int64_t) s3_6 * R2) >> Q_SCALE);
	.loc 1 62 13 is_stmt 0 view .LVU195
	str	r8, [r0, #20]	@ tmp208, MEM[(int32_t *)v_33(D) + 20B]
	.loc 1 72 5 is_stmt 1 view .LVU196
	.loc 1 73 5 view .LVU197
@ /tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c:74: }
	.loc 1 74 1 is_stmt 0 view .LVU198
	add	sp, sp, #44	@,,
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.loc 1 74 1 view .LVU199
	.cfi_endproc
.LFE2007:
	.size	loeffler_optimized, .-loeffler_optimized
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/stdint-intn.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x28
	.byte	0x14
	.4byte	0x33
	.uleb128 0x5
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2e
	.byte	0x2c
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1a
	.byte	0x13
	.4byte	0x5d
	.uleb128 0x5
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1b
	.byte	0x13
	.4byte	0x6e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x42
	.byte	0x1b
	.4byte	0xd4
	.uleb128 0x6
	.4byte	.LASF17
	.4byte	0x33
	.4byte	0xe4
	.uleb128 0x7
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x51
	.byte	0x1c
	.4byte	0xf0
	.uleb128 0x6
	.4byte	.LASF18
	.4byte	0x2c
	.4byte	0x100
	.uleb128 0x7
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB2007
	.4byte	.LFE2007-.LFB2007
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b4
	.uleb128 0x9
	.ascii	"v\000"
	.byte	0x1
	.byte	0xb
	.byte	0x21
	.4byte	0x6b4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.ascii	"lo\000"
	.byte	0x1
	.byte	0xd
	.byte	0xf
	.4byte	0xc8
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xa
	.ascii	"hi\000"
	.byte	0x1
	.byte	0xe
	.byte	0xf
	.4byte	0xc8
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.byte	0xf
	.4byte	0xc8
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x12
	.byte	0xf
	.4byte	0xc8
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.byte	0xf
	.4byte	0xc8
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x8f
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3c
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3f
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x39d
	.uleb128 0xe
	.ascii	"_ta\000"
	.byte	0x1
	.byte	0x2c
	.byte	0x12
	.4byte	0xa0
	.uleb128 0xe
	.ascii	"_tb\000"
	.byte	0x1
	.byte	0x2c
	.byte	0x20
	.4byte	0xa0
	.byte	0
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x3bf
	.uleb128 0xe
	.ascii	"_ta\000"
	.byte	0x1
	.byte	0x2d
	.byte	0x12
	.4byte	0xa0
	.uleb128 0xe
	.ascii	"_tb\000"
	.byte	0x1
	.byte	0x2d
	.byte	0x20
	.4byte	0xa0
	.byte	0
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0x1c0
	.4byte	0x3e1
	.uleb128 0xe
	.ascii	"_ta\000"
	.byte	0x1
	.byte	0x34
	.byte	0x12
	.4byte	0xa0
	.uleb128 0xe
	.ascii	"_tb\000"
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.4byte	0xa0
	.byte	0
	.uleb128 0xf
	.4byte	0x6ba
	.4byte	.LBI37
	.byte	.LVU2
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd
	.byte	0x14
	.4byte	0x404
	.uleb128 0x10
	.4byte	0x6cc
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.uleb128 0x11
	.4byte	0x6ba
	.4byte	.LBI41
	.byte	.LVU9
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0x42b
	.uleb128 0x10
	.4byte	0x6cc
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x11
	.4byte	0x6e0
	.4byte	.LBI43
	.byte	.LVU14
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xf
	.byte	0x18
	.4byte	0x452
	.uleb128 0x10
	.4byte	0x6f2
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.uleb128 0x11
	.4byte	0x700
	.4byte	.LBI45
	.byte	.LVU19
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x493
	.uleb128 0x10
	.4byte	0x72c
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x10
	.4byte	0x71f
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x10
	.4byte	0x712
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.uleb128 0xf
	.4byte	0x794
	.4byte	.LBI47
	.byte	.LVU24
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x12
	.byte	0x16
	.4byte	0x4c3
	.uleb128 0x10
	.4byte	0x7af
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x10
	.4byte	0x7a2
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.uleb128 0xf
	.4byte	0x767
	.4byte	.LBI50
	.byte	.LVU40
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x13
	.byte	0x17
	.4byte	0x4eb
	.uleb128 0x12
	.4byte	0x786
	.uleb128 0x10
	.4byte	0x779
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.uleb128 0xf
	.4byte	0x6e0
	.4byte	.LBI53
	.byte	.LVU44
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x506
	.uleb128 0x12
	.4byte	0x6f2
	.byte	0
	.uleb128 0xf
	.4byte	0x700
	.4byte	.LBI56
	.byte	.LVU48
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	0x533
	.uleb128 0x10
	.4byte	0x72c
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x12
	.4byte	0x71f
	.uleb128 0x12
	.4byte	0x712
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI60
	.byte	.LVU101
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.4byte	0x563
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI63
	.byte	.LVU97
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0x593
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI67
	.byte	.LVU105
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0x20
	.byte	0x14
	.4byte	0x5c3
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST40
	.4byte	.LVUS40
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI75
	.byte	.LVU52
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.byte	0x19
	.byte	0x14
	.4byte	0x5f3
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST42
	.4byte	.LVUS42
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI79
	.byte	.LVU93
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.4byte	0x623
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST44
	.4byte	.LVUS44
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI85
	.byte	.LVU66
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.4byte	0x653
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST46
	.4byte	.LVUS46
	.byte	0
	.uleb128 0xf
	.4byte	0x73a
	.4byte	.LBI93
	.byte	.LVU89
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0x1c
	.byte	0x14
	.4byte	0x683
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST48
	.4byte	.LVUS48
	.byte	0
	.uleb128 0x13
	.4byte	0x73a
	.4byte	.LBI102
	.byte	.LVU84
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.uleb128 0x10
	.4byte	0x759
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x10
	.4byte	0x74c
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x2881
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.4byte	0x6da
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x2881
	.byte	0x1c
	.4byte	0x6da
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x230b
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.4byte	0x700
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x230b
	.byte	0x18
	.4byte	0xc8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x227f
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.4byte	0x73a
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x227f
	.byte	0x16
	.4byte	0xc8
	.uleb128 0x16
	.ascii	"__b\000"
	.byte	0x2
	.2byte	0x227f
	.byte	0x25
	.4byte	0xc8
	.uleb128 0x16
	.ascii	"__c\000"
	.byte	0x2
	.2byte	0x227f
	.byte	0x34
	.4byte	0x69
	.byte	0
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x1867
	.byte	0x1
	.4byte	0x8f
	.byte	0x3
	.4byte	0x767
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x1867
	.byte	0x1b
	.4byte	0xc8
	.uleb128 0x16
	.ascii	"__b\000"
	.byte	0x2
	.2byte	0x1867
	.byte	0x2a
	.4byte	0x69
	.byte	0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x787
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.4byte	0x794
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x787
	.byte	0x16
	.4byte	0xc8
	.uleb128 0x16
	.ascii	"__b\000"
	.byte	0x2
	.2byte	0x787
	.byte	0x25
	.4byte	0xc8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x254
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.uleb128 0x16
	.ascii	"__a\000"
	.byte	0x2
	.2byte	0x254
	.byte	0x16
	.4byte	0xc8
	.uleb128 0x16
	.ascii	"__b\000"
	.byte	0x2
	.2byte	0x254
	.byte	0x25
	.4byte	0xc8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU12
	.uleb128 .LVU17
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU17
	.uleb128 .LVU38
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU38
	.uleb128 0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU50
	.uleb128 0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU65
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU79
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU82
	.uleb128 .LVU160
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU87
	.uleb128 .LVU131
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU91
	.uleb128 .LVU132
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU132
	.uleb128 .LVU179
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU133
	.uleb128 .LVU181
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU142
	.uleb128 0
.LLST11:
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU147
	.uleb128 0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU148
	.uleb128 0
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU143
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU150
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU151
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU163
	.uleb128 0
.LLST17:
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU164
	.uleb128 0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x8
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU165
	.uleb128 0
.LLST19:
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU169
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST20:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU170
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST21:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU171
	.uleb128 0
.LLST22:
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1d
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x16a0a
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU172
	.uleb128 0
.LLST23:
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1d
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x16a0a
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x40
	.byte	0xf7
	.uleb128 0x25
	.byte	0x26
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU173
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST24:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE2007-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU2
	.uleb128 .LVU7
.LLST25:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU9
	.uleb128 .LVU12
.LLST26:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU14
	.uleb128 .LVU17
.LLST27:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU19
	.uleb128 .LVU22
.LLST28:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU19
	.uleb128 .LVU22
.LLST29:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU24
	.uleb128 .LVU38
.LLST31:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU24
	.uleb128 .LVU38
.LLST32:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST33:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x114
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU48
	.uleb128 .LVU50
.LLST34:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU101
	.uleb128 .LVU103
.LLST35:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU101
	.uleb128 .LVU103
.LLST36:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU97
	.uleb128 .LVU99
.LLST37:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU97
	.uleb128 .LVU99
.LLST38:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST39:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST40:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU52
	.uleb128 .LVU54
.LLST41:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU52
	.uleb128 .LVU54
.LLST42:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU93
	.uleb128 .LVU95
.LLST43:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU93
	.uleb128 .LVU95
.LLST44:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x112
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU66
	.uleb128 .LVU82
.LLST45:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU66
	.uleb128 .LVU82
.LLST46:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU89
	.uleb128 .LVU91
.LLST47:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU89
	.uleb128 .LVU91
.LLST48:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU84
	.uleb128 .LVU87
.LLST49:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU84
	.uleb128 .LVU87
.LLST50:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x110
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"__int64_t\000"
.LASF52:
	.ascii	"vrev64q_s32\000"
.LASF9:
	.ascii	"long long int\000"
.LASF5:
	.ascii	"signed char\000"
.LASF56:
	.ascii	"GNU C11 8.2.1 20180801 (Red Hat 8.2.1-2) -mfpu=neon"
	.ascii	"-vfpv4 -mfloat-abi=hard -mtune=generic-armv7-a -mab"
	.ascii	"i=aapcs-linux -mtls-dialect=gnu -marm -march=armv7-"
	.ascii	"a+neon-vfpv4 -g -O3 -std=gnu11\000"
.LASF10:
	.ascii	"long int\000"
.LASF20:
	.ascii	"hi_rev\000"
.LASF59:
	.ascii	"loeffler_optimized\000"
.LASF47:
	.ascii	"s4_4\000"
.LASF48:
	.ascii	"s4_5\000"
.LASF49:
	.ascii	"s4_6\000"
.LASF50:
	.ascii	"s4_7\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF53:
	.ascii	"vextq_s32\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF51:
	.ascii	"vld1q_s32\000"
.LASF43:
	.ascii	"s3_4\000"
.LASF39:
	.ascii	"s3_0\000"
.LASF40:
	.ascii	"s3_1\000"
.LASF41:
	.ascii	"s3_2\000"
.LASF42:
	.ascii	"s3_3\000"
.LASF44:
	.ascii	"s3_5\000"
.LASF45:
	.ascii	"s3_6\000"
.LASF46:
	.ascii	"s3_7\000"
.LASF54:
	.ascii	"vgetq_lane_s32\000"
.LASF60:
	.ascii	"vaddq_s32\000"
.LASF58:
	.ascii	"/tmp/tmp.Ftjp5poh6g/DCT/cmake-build-debug-seng-vm\000"
.LASF21:
	.ascii	"sums\000"
.LASF55:
	.ascii	"vsubq_s32\000"
.LASF14:
	.ascii	"float\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF16:
	.ascii	"uint32x4_t\000"
.LASF6:
	.ascii	"short int\000"
.LASF31:
	.ascii	"s2_0\000"
.LASF32:
	.ascii	"s2_1\000"
.LASF33:
	.ascii	"s2_2\000"
.LASF34:
	.ascii	"s2_3\000"
.LASF35:
	.ascii	"s2_4\000"
.LASF57:
	.ascii	"/tmp/tmp.Ftjp5poh6g/DCT/loeffler_optimized.c\000"
.LASF37:
	.ascii	"s2_6\000"
.LASF38:
	.ascii	"s2_7\000"
.LASF11:
	.ascii	"char\000"
.LASF19:
	.ascii	"__builtin_neon_poly128\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF22:
	.ascii	"diffs\000"
.LASF36:
	.ascii	"s2_5\000"
.LASF23:
	.ascii	"s1_0\000"
.LASF24:
	.ascii	"s1_1\000"
.LASF25:
	.ascii	"s1_2\000"
.LASF26:
	.ascii	"s1_3\000"
.LASF27:
	.ascii	"s1_4\000"
.LASF28:
	.ascii	"s1_5\000"
.LASF29:
	.ascii	"s1_6\000"
.LASF30:
	.ascii	"s1_7\000"
.LASF18:
	.ascii	"__simd128_uint32_t\000"
.LASF15:
	.ascii	"int32x4_t\000"
.LASF17:
	.ascii	"__simd128_int32_t\000"
.LASF13:
	.ascii	"int64_t\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
