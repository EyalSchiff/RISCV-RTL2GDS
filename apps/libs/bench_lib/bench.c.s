	.file	"bench.c"
	.text
.Ltext0:
	.section	.text.bench_timer_start,"ax",@progbits
	.align	2
	.globl	bench_timer_start
	.type	bench_timer_start, @function
bench_timer_start:
.LFB11:
.LM1:
	.cfi_startproc
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM2:
	li	a1,1
	li	a0,0
.LM3:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM4:
	call	set_gpio_pin_value
.LVL0:
.LM5:
	lw 	ra,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
.LM6:
	tail	start_timer
.LVL1:
	.cfi_endproc
.LFE11:
	.size	bench_timer_start, .-bench_timer_start
	.section	.text.bench_timer_stop,"ax",@progbits
	.align	2
	.globl	bench_timer_stop
	.type	bench_timer_stop, @function
bench_timer_stop:
.LFB12:
.LM7:
	.cfi_startproc
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM8:
	call	stop_timer
.LVL2:
.LM9:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM10:
	li	a1,0
	li	a0,0
.LM11:
	add	sp,sp,16
.LM12:
	tail	set_gpio_pin_value
.LVL3:
	.cfi_endproc
.LFE12:
	.size	bench_timer_stop, .-bench_timer_stop
	.section	.text.bench_timer_reset,"ax",@progbits
	.align	2
	.globl	bench_timer_reset
	.type	bench_timer_reset, @function
bench_timer_reset:
.LFB13:
.LM13:
	.cfi_startproc
.LM14:
	tail	reset_timer
.LVL4:
	.cfi_endproc
.LFE13:
	.size	bench_timer_reset, .-bench_timer_reset
	.section	.text.print_result,"ax",@progbits
	.align	2
	.globl	print_result
	.type	print_result, @function
print_result:
.LFB14:
.LM15:
	.cfi_startproc
.LVL5:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a1
.LM16:
	lw	a1,0(a0)
.LVL6:
	lui	a0,%hi(.LC0)
.LVL7:
	add	a0,a0,%lo(.LC0)
.LM17:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM18:
	call	printf
.LVL8:
.LM19:
	lw 	a5,4(s0)	# Non volatile Load offseted
	bnez	a5,.L7
.LM20:
	lui	a0,%hi(.LC1)
	add	a0,a0,%lo(.LC1)
	call	printf
.LVL9:
.LM21:
	lui	a0,%hi(.LC3)
	lw 	a1,4(s0)	# Non volatile Load offseted
	add	a0,a0,%lo(.LC3)
	call	printf
.LVL10:
.LM22:
	lw	a1,0(s0)
	beqz	a1,.L12
.L9:
.LM23:
	lui	a0,%hi(.LC4)
.LM24:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL11:
.LM25:
	add	a0,a0,%lo(.LC4)
.LM26:
	add	sp,sp,16
.LM27:
	tail	printf
.LVL12:
.L7:
.LM28:
	lui	a0,%hi(.LC2)
	add	a0,a0,%lo(.LC2)
	call	printf
.LVL13:
.LM29:
	lui	a0,%hi(.LC3)
	lw 	a1,4(s0)	# Non volatile Load offseted
	add	a0,a0,%lo(.LC3)
	call	printf
.LVL14:
.LM30:
	lw	a1,0(s0)
	bnez	a1,.L9
.L12:
.LM31:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL15:
.LM32:
	li	a0,10
.LM33:
	add	sp,sp,16
.LM34:
	tail	putchar
.LVL16:
	.cfi_endproc
.LFE14:
	.size	print_result, .-print_result
	.section	.text.print_summary,"ax",@progbits
	.align	2
	.globl	print_summary
	.type	print_summary, @function
print_summary:
.LFB15:
.LM35:
	.cfi_startproc
.LVL17:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LM36:
	lui	a0,%hi(.LC5)
.LVL18:
	add	a0,a0,%lo(.LC5)
.LM37:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM38:
	call	printf
.LVL19:
.LM39:
	beqz	s0,.L16
.LM40:
	lui	a0,%hi(.LC7)
.LM41:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL20:
.LM42:
	add	a0,a0,%lo(.LC7)
.LM43:
	add	sp,sp,16
.LM44:
	tail	puts
.LVL21:
.L16:
.LM45:
	lui	a0,%hi(.LC6)
.LM46:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL22:
.LM47:
	add	a0,a0,%lo(.LC6)
.LM48:
	add	sp,sp,16
.LM49:
	tail	puts
.LVL23:
	.cfi_endproc
.LFE15:
	.size	print_summary, .-print_summary
	.section	.text.run_benchmark,"ax",@progbits
	.align	2
	.globl	run_benchmark
	.type	run_benchmark, @function
run_benchmark:
.LFB16:
.LM50:
	.cfi_startproc
.LVL24:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
.LM51:
	li	a1,0
.LVL25:
	li	a0,0
.LVL26:
.LM52:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM53:
	call	set_gpio_pin_value
.LVL27:
.LM54:
	li	a1,1
	li	a0,0
	call	set_gpio_pin_direction
.LVL28:
.LM55:
	li	a1,1
	li	a0,0
	call	set_pin_function
.LVL29:
.LM56:
	sw	zero,4(s0)
.LBB6:
.LBB7:
.LM57:
	call	reset_timer
.LVL30:
.LBE7:
.LBE6:
.LM58:
	lui	a2,%hi(bench_timer_stop)
	lui	a1,%hi(bench_timer_start)
	mv	a0,s0
	lw 	a5,4(s1)	# Non volatile Load offseted
	add	a2,a2,%lo(bench_timer_stop)
	add	a1,a1,%lo(bench_timer_start)
	jalr	a5
.LVL31:
.LM59:
	call	get_time
.LVL32:
.LM60:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM61:
	sw	a0,0(s0)
.LM62:
	lw 	s1,4(sp)	# Non volatile Load offseted
.LVL33:
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL34:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE16:
	.size	run_benchmark, .-run_benchmark
	.section	.text.run_suite,"ax",@progbits
	.align	2
	.globl	run_suite
	.type	run_suite, @function
run_suite:
.LFB17:
.LM63:
	.cfi_startproc
.LVL35:
.LM64:
	lw	a5,0(a0)
.LM65:
	add	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
.LM66:
	beqz	a5,.L20
	add	a5,a0,8
	li	s3,0
.LVL36:
.L21:
.LM67:
	p.lw	a4,8(a5!)	# load post modify imm
	add	s3,s3,1
.LVL37:
	bnez	a4,.L21
.LVL38:
	add	s2,a0,4
	mv	s0,a0
.LM68:
	li	s1,0
	li	s4,0
	lui	s10,%hi(bench_timer_stop)
	lui	s9,%hi(bench_timer_start)
	lui	s8,%hi(.LC0)
	lui	s7,%hi(.LC3)
.LBB17:
.LBB18:
.LBB19:
.LM69:
	lui	s11,%hi(.LC2)
.LM70:
	lui	s6,%hi(.LC1)
.LM71:
	lui	s5,%hi(.LC4)
	j	.L26
.LVL39:
.L24:
.LM72:
	call	printf
.LVL40:
.LBE19:
.LBE18:
.LBE17:
.LM73:
	add	s1,s1,1
.LVL41:
.LBB30:
.LM74:
	lw 	a5,12(sp)	# Non volatile Load offseted
	add	s4,s4,a5
.LVL42:
	add	s2,s2,8
.LVL43:
	add	s0,s0,8
.LBE30:
.LM75:
	beq	s3,s1,.L35
.LVL44:
.L26:
.LBB31:
.LBB22:
.LBB23:
.LM76:
	li	a1,0
	li	a0,0
	call	set_gpio_pin_value
.LVL45:
.LM77:
	li	a1,1
	li	a0,0
	call	set_gpio_pin_direction
.LVL46:
.LM78:
	li	a1,1
	li	a0,0
	call	set_pin_function
.LVL47:
.LM79:
	sw	zero,12(sp)
.LBB24:
.LBB25:
.LM80:
	call	reset_timer
.LVL48:
.LBE25:
.LBE24:
.LM81:
	lw	a5,0(s2)
	add	a2,s10,%lo(bench_timer_stop)
	add	a1,s9,%lo(bench_timer_start)
	add	a0,sp,8
.LVL49:
	jalr	a5
.LVL50:
.LM82:
	call	get_time
.LVL51:
.LBE23:
.LBE22:
.LBB27:
.LBB20:
.LM83:
	lw	a1,0(s0)
.LBE20:
.LBE27:
.LBB28:
.LBB26:
.LM84:
	sw	a0,8(sp)
.LVL52:
.LBE26:
.LBE28:
.LBB29:
.LBB21:
.LM85:
	add	a0,s8,%lo(.LC0)
	call	printf
.LVL53:
.LM86:
	lw 	a5,12(sp)	# Non volatile Load offseted
.LM87:
	add	a0,s6,%lo(.LC1)
.LM88:
	beqz	a5,.L34
.LM89:
	add	a0,s11,%lo(.LC2)
.L34:
	call	printf
.LVL54:
.LM90:
	lw 	a1,12(sp)	# Non volatile Load offseted
	add	a0,s7,%lo(.LC3)
	call	printf
.LVL55:
.LM91:
	lw	a1,8(sp)
	add	a0,s5,%lo(.LC4)
.LM92:
	bnez	a1,.L24
.LM93:
	li	a0,10
	call	putchar
.LVL56:
.LBE21:
.LBE29:
.LBE31:
.LM94:
	add	s1,s1,1
.LVL57:
.LBB32:
.LM95:
	lw 	a5,12(sp)	# Non volatile Load offseted
	add	s4,s4,a5
.LVL58:
	add	s2,s2,8
.LVL59:
	add	s0,s0,8
.LBE32:
.LM96:
	bne	s3,s1,.L26
.LVL60:
.L35:
.LBB33:
.LBB34:
.LM97:
	lui	a0,%hi(.LC5)
	add	a0,a0,%lo(.LC5)
	call	printf
.LVL61:
.LM98:
	beqz	s4,.L29
.LM99:
	lui	a0,%hi(.LC7)
	add	a0,a0,%lo(.LC7)
	call	puts
.LVL62:
.L32:
.LBE34:
.LBE33:
.LM100:
	lw 	ra,76(sp)	# Non volatile Load offseted
	mv	a0,s4
	lw 	s0,72(sp)	# Non volatile Load offseted
	lw 	s1,68(sp)	# Non volatile Load offseted
	lw 	s2,64(sp)	# Non volatile Load offseted
	lw 	s3,60(sp)	# Non volatile Load offseted
	lw 	s4,56(sp)	# Non volatile Load offseted
	lw 	s5,52(sp)	# Non volatile Load offseted
	lw 	s6,48(sp)	# Non volatile Load offseted
	lw 	s7,44(sp)	# Non volatile Load offseted
	lw 	s8,40(sp)	# Non volatile Load offseted
	lw 	s9,36(sp)	# Non volatile Load offseted
	lw 	s10,32(sp)	# Non volatile Load offseted
	lw 	s11,28(sp)	# Non volatile Load offseted
	add	sp,sp,80
	jr	ra
.LVL63:
.L20:
.LBB36:
.LBB35:
.LM101:
	lui	a0,%hi(.LC5)
.LVL64:
	add	a0,a0,%lo(.LC5)
	call	printf
.LVL65:
.L29:
.LM102:
	lui	a0,%hi(.LC6)
	add	a0,a0,%lo(.LC6)
	call	puts
.LVL66:
	li	s4,0
	j	.L32
.LBE35:
.LBE36:
	.cfi_endproc
.LFE17:
	.size	run_suite, .-run_suite
	.section	.text.check_uint32,"ax",@progbits
	.align	2
	.globl	check_uint32
	.type	check_uint32, @function
check_uint32:
.LFB18:
.LM103:
	.cfi_startproc
.LVL67:
.LM104:
	beq	a2,a3,.L36
.LM105:
	lw 	a5,4(a0)	# Non volatile Load offseted
	add	a5,a5,1
	sw	a5,4(a0)
.LM106:
	lui	a0,%hi(.LC8)
.LVL68:
	add	a0,a0,%lo(.LC8)
	tail	printf
.LVL69:
.L36:
	ret
	.cfi_endproc
.LFE18:
	.size	check_uint32, .-check_uint32
	.section	.text.perf_print_all,"ax",@progbits
	.align	2
	.globl	perf_print_all
	.type	perf_print_all, @function
perf_print_all:
.LFB19:
.LM107:
	.cfi_startproc
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM108:
	li	a0,0
.LM109:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM110:
	call	cpu_perf_get
.LVL70:
	mv	a1,a0
	lui	a0,%hi(.LC9)
	add	a0,a0,%lo(.LC9)
	call	printf
.LVL71:
.LM111:
	li	a0,1
	call	cpu_perf_get
.LVL72:
	mv	a1,a0
	lui	a0,%hi(.LC10)
	add	a0,a0,%lo(.LC10)
	call	printf
.LVL73:
.LM112:
	li	a0,10
	call	cpu_perf_get
.LVL74:
	mv	a1,a0
	lui	a0,%hi(.LC11)
	add	a0,a0,%lo(.LC11)
	call	printf
.LVL75:
.LM113:
	li	a0,2
	call	cpu_perf_get
.LVL76:
	mv	a1,a0
	lui	a0,%hi(.LC12)
	add	a0,a0,%lo(.LC12)
	call	printf
.LVL77:
.LM114:
	li	a0,3
	call	cpu_perf_get
.LVL78:
	mv	a1,a0
	lui	a0,%hi(.LC13)
	add	a0,a0,%lo(.LC13)
	call	printf
.LVL79:
.LM115:
	li	a0,4
	call	cpu_perf_get
.LVL80:
	mv	a1,a0
	lui	a0,%hi(.LC14)
	add	a0,a0,%lo(.LC14)
	call	printf
.LVL81:
.LM116:
	li	a0,5
	call	cpu_perf_get
.LVL82:
	mv	a1,a0
	lui	a0,%hi(.LC15)
	add	a0,a0,%lo(.LC15)
	call	printf
.LVL83:
.LM117:
	li	a0,6
	call	cpu_perf_get
.LVL84:
	mv	a1,a0
	lui	a0,%hi(.LC16)
	add	a0,a0,%lo(.LC16)
	call	printf
.LVL85:
.LM118:
	li	a0,7
	call	cpu_perf_get
.LVL86:
	mv	a1,a0
	lui	a0,%hi(.LC17)
	add	a0,a0,%lo(.LC17)
	call	printf
.LVL87:
.LM119:
	li	a0,8
	call	cpu_perf_get
.LVL88:
	mv	a1,a0
	lui	a0,%hi(.LC18)
	add	a0,a0,%lo(.LC18)
	call	printf
.LVL89:
.LM120:
	li	a0,9
	call	cpu_perf_get
.LVL90:
	mv	a1,a0
	lui	a0,%hi(.LC19)
	add	a0,a0,%lo(.LC19)
	call	printf
.LVL91:
.LM121:
	li	a0,10
	call	cpu_perf_get
.LVL92:
	mv	a1,a0
	lui	a0,%hi(.LC20)
.LM122:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM123:
	add	a0,a0,%lo(.LC20)
.LM124:
	add	sp,sp,16
.LM125:
	tail	printf
.LVL93:
	.cfi_endproc
.LFE19:
	.size	perf_print_all, .-perf_print_all
	.section	.text.illegal_insn_handler_c,"ax",@progbits
	.align	2
	.weak	illegal_insn_handler_c
	.type	illegal_insn_handler_c, @function
illegal_insn_handler_c:
.LFB20:
.LM126:
	.cfi_startproc
.LM127:
 #APP
# 140 "src/bench.c" 1
	csrr a1, 0x341
# 0 "" 2
.LVL94:
.LM128:
 #NO_APP
	lui	a0,%hi(.LC21)
	lw	a2,0(a1)
.LM129:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM130:
	add	a0,a0,%lo(.LC21)
.LM131:
	sw	ra,12(sp)
.LVL95:
	.cfi_offset 1, -4
.LM132:
	call	printf
.LVL96:
.LM133:
	li	a0,1
	call	exit
.LVL97:
	.cfi_endproc
.LFE20:
	.size	illegal_insn_handler_c, .-illegal_insn_handler_c
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"== test: %s -> "
.LC1:
	.string	"success, "
	.zero	2
.LC2:
	.string	"fail, "
	.zero	1
.LC3:
	.string	"nr. of errors: %d"
	.zero	2
.LC4:
	.string	", execution time: %d\n"
	.zero	2
.LC5:
	.string	"==== SUMMARY: "
	.zero	1
.LC6:
	.string	"SUCCESS"
.LC7:
	.string	"FAIL"
	.zero	3
.LC8:
	.string	"%s: Actual %X, expected %X\n"
.LC9:
	.string	"Perf CYCLES:   %d\n"
	.zero	1
.LC10:
	.string	"Perf INSN:     %d\n"
	.zero	1
.LC11:
	.string	"Perf CINSN:    %d\n"
	.zero	1
.LC12:
	.string	"Perf LD_STALL: %d\n"
	.zero	1
.LC13:
	.string	"Perf JR_STALL: %d\n"
	.zero	1
.LC14:
	.string	"Perf IMISS:    %d\n"
	.zero	1
.LC15:
	.string	"Perf #LD:      %d\n"
	.zero	1
.LC16:
	.string	"Perf #ST:      %d\n"
	.zero	1
.LC17:
	.string	"Perf #JUMP:    %d\n"
	.zero	1
.LC18:
	.string	"Perf #BRANCH:  %d\n"
	.zero	1
.LC19:
	.string	"Perf #TAKEN:   %d\n"
	.zero	1
.LC20:
	.string	"Perf #RVC:     %d\n"
	.zero	1
.LC21:
	.string	"Illegal instruction encountered at address 0x%08X: %X\n"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x96c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x41
	.4byte	0x7a
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x6f
	.byte	0x5
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5
	.byte	0x14
	.4byte	0xb8
	.byte	0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x16
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x17
	.4byte	0x93
	.byte	0x5
	.4byte	.LASF17
	.byte	0x8
	.byte	0x5
	.byte	0x19
	.4byte	0xe8
	.byte	0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1a
	.4byte	0xe8
	.byte	0
	.byte	0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1b
	.4byte	0x11d
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x8
	.4byte	0x10a
	.byte	0x9
	.4byte	0x10a
	.byte	0x9
	.4byte	0x110
	.byte	0x9
	.4byte	0x110
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb8
	.byte	0x7
	.byte	0x4
	.4byte	0x116
	.byte	0xa
	.4byte	0x11d
	.byte	0xb
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf5
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1c
	.4byte	0xc3
	.byte	0xc
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x16d
	.byte	0xe
	.4byte	.LVL0
	.4byte	0x8e3
	.4byte	0x163
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL1
	.4byte	0x8ee
	.byte	0
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x15
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a0
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x8f9
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x8e3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x12e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bd
	.byte	0x10
	.4byte	.LVL4
	.4byte	0x904
	.byte	0
	.byte	0x14
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	0x1e0
	.byte	0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1e
	.4byte	0x1e0
	.byte	0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1e
	.4byte	0x10a
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x123
	.byte	0x13
	.4byte	0x1bd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a5
	.byte	0x16
	.4byte	0x1c9
	.4byte	.LLST0
	.byte	0x16
	.4byte	0x1d4
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL8
	.4byte	0x90f
	.4byte	0x222
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xe
	.4byte	.LVL9
	.4byte	0x90f
	.4byte	0x239
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL10
	.4byte	0x90f
	.4byte	0x250
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x90f
	.4byte	0x267
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0xe
	.4byte	.LVL13
	.4byte	0x90f
	.4byte	0x27e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xe
	.4byte	.LVL14
	.4byte	0x90f
	.4byte	0x295
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x91a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x2bd
	.byte	0x15
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2f
	.4byte	0x37
	.byte	0
	.byte	0x13
	.4byte	0x2a5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x31b
	.byte	0x16
	.4byte	0x2b1
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x90f
	.4byte	0x2f0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x17
	.4byte	.LVL21
	.4byte	0x929
	.4byte	0x307
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x12
	.4byte	.LVL23
	.4byte	0x929
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0x33e
	.byte	0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3a
	.4byte	0x1e0
	.byte	0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3a
	.4byte	0x10a
	.byte	0
	.byte	0x13
	.4byte	0x31b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f4
	.byte	0x16
	.4byte	0x327
	.4byte	.LLST3
	.byte	0x16
	.4byte	0x332
	.4byte	.LLST4
	.byte	0x18
	.4byte	0x12e
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x41
	.4byte	0x380
	.byte	0x11
	.4byte	.LVL30
	.4byte	0x904
	.byte	0
	.byte	0xe
	.4byte	.LVL27
	.4byte	0x8e3
	.4byte	0x398
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL28
	.4byte	0x938
	.4byte	0x3b0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xe
	.4byte	.LVL29
	.4byte	0x943
	.4byte	0x3c8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL31
	.4byte	0x3ea
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	bench_timer_start
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	bench_timer_stop
	.byte	0
	.byte	0x11
	.4byte	.LVL32
	.4byte	0x94e
	.byte	0
	.byte	0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0x48
	.4byte	0x37
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x5fa
	.byte	0x1b
	.4byte	.LASF29
	.byte	0x1
	.byte	0x48
	.4byte	0x1e0
	.4byte	.LLST5
	.byte	0x1c
	.string	"num"
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0x1d
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4e
	.4byte	0x37
	.4byte	.LLST7
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.4byte	.LLST8
	.byte	0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x588
	.byte	0x1f
	.4byte	.LASF24
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x20
	.4byte	0x1bd
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x55
	.4byte	0x4d4
	.byte	0x16
	.4byte	0x1d4
	.4byte	.LLST9
	.byte	0x16
	.4byte	0x1c9
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LVL40
	.4byte	0x90f
	.byte	0xe
	.4byte	.LVL53
	.4byte	0x90f
	.4byte	0x4a4
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x11
	.4byte	.LVL54
	.4byte	0x90f
	.byte	0xe
	.4byte	.LVL55
	.4byte	0x90f
	.4byte	0x4c4
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x21
	.4byte	.LVL56
	.4byte	0x91a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x31b
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.4byte	0x332
	.4byte	.LLST11
	.byte	0x16
	.4byte	0x327
	.4byte	.LLST12
	.byte	0x18
	.4byte	0x12e
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x41
	.4byte	0x512
	.byte	0x11
	.4byte	.LVL48
	.4byte	0x904
	.byte	0
	.byte	0xe
	.4byte	.LVL45
	.4byte	0x8e3
	.4byte	0x52a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL46
	.4byte	0x938
	.4byte	0x542
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xe
	.4byte	.LVL47
	.4byte	0x943
	.4byte	0x55a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL50
	.4byte	0x57d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	bench_timer_start
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	bench_timer_stop
	.byte	0
	.byte	0x11
	.4byte	.LVL51
	.4byte	0x94e
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x2a5
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	0x2b1
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LVL61
	.4byte	0x90f
	.4byte	0x5b7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0xe
	.4byte	.LVL62
	.4byte	0x929
	.4byte	0x5ce
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0xe
	.4byte	.LVL65
	.4byte	0x90f
	.4byte	0x5e5
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x21
	.4byte	.LVL66
	.4byte	0x929
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x674
	.byte	0x1b
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5f
	.4byte	0x10a
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5f
	.4byte	0x674
	.4byte	.LLST15
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5f
	.4byte	0x88
	.4byte	.LLST16
	.byte	0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5f
	.4byte	0x88
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LVL69
	.4byte	0x90f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67a
	.byte	0x23
	.4byte	0xee
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x67
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x889
	.byte	0xe
	.4byte	.LVL70
	.4byte	0x959
	.4byte	0x6a7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL71
	.4byte	0x90f
	.4byte	0x6be
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0xe
	.4byte	.LVL72
	.4byte	0x959
	.4byte	0x6d1
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xe
	.4byte	.LVL73
	.4byte	0x90f
	.4byte	0x6e8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0xe
	.4byte	.LVL74
	.4byte	0x959
	.4byte	0x6fb
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0xe
	.4byte	.LVL75
	.4byte	0x90f
	.4byte	0x712
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0xe
	.4byte	.LVL76
	.4byte	0x959
	.4byte	0x725
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xe
	.4byte	.LVL77
	.4byte	0x90f
	.4byte	0x73c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0xe
	.4byte	.LVL78
	.4byte	0x959
	.4byte	0x74f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0xe
	.4byte	.LVL79
	.4byte	0x90f
	.4byte	0x766
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0xe
	.4byte	.LVL80
	.4byte	0x959
	.4byte	0x779
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0xe
	.4byte	.LVL81
	.4byte	0x90f
	.4byte	0x790
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0xe
	.4byte	.LVL82
	.4byte	0x959
	.4byte	0x7a3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0xe
	.4byte	.LVL83
	.4byte	0x90f
	.4byte	0x7ba
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0xe
	.4byte	.LVL84
	.4byte	0x959
	.4byte	0x7cd
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0xe
	.4byte	.LVL85
	.4byte	0x90f
	.4byte	0x7e4
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0xe
	.4byte	.LVL86
	.4byte	0x959
	.4byte	0x7f7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0xe
	.4byte	.LVL87
	.4byte	0x90f
	.4byte	0x80e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0xe
	.4byte	.LVL88
	.4byte	0x959
	.4byte	0x821
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL89
	.4byte	0x90f
	.4byte	0x838
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0xe
	.4byte	.LVL90
	.4byte	0x959
	.4byte	0x84b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0xe
	.4byte	.LVL91
	.4byte	0x90f
	.4byte	0x862
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0xe
	.4byte	.LVL92
	.4byte	0x959
	.4byte	0x875
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x12
	.4byte	.LVL93
	.4byte	0x90f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x88
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e3
	.byte	0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8a
	.4byte	0x37
	.4byte	.LLST18
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8a
	.4byte	0x37
	.4byte	.LLST19
	.byte	0xe
	.4byte	.LVL96
	.4byte	0x90f
	.4byte	0x8d3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x21
	.4byte	.LVL97
	.4byte	0x964
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x51
	.byte	0x24
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3f
	.byte	0x24
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x41
	.byte	0x24
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3d
	.byte	0x24
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1b
	.byte	0x25
	.4byte	.LASF42
	.4byte	.LASF44
	.byte	0x9
	.byte	0
	.4byte	.LASF42
	.byte	0x25
	.4byte	.LASF43
	.4byte	.LASF45
	.byte	0x9
	.byte	0
	.4byte	.LASF43
	.byte	0x24
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4e
	.byte	0x24
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4b
	.byte	0x24
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0x43
	.byte	0x24
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xa
	.byte	0x36
	.byte	0x24
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5e
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x6e
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x82
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x82
	.byte	0x74
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x82
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x82
	.byte	0x74
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x82
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x82
	.byte	0x74
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x82
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x82
	.byte	0x74
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL63
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL69-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL94
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x4
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/bench_lib/inc"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/string_lib/in"
	.ascii	"c"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib/inc"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-mas"
	.ascii	"ter/install/lib/gcc/riscv32-unknown-elf/5.2.0/include"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-mas"
	.ascii	"ter/install/riscv32-unknown-elf/include"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-mas"
	.ascii	"ter/install/riscv32-unknown-elf/include/machine"
	.byte	0
	.ascii	"src"
	.byte	0
	.byte	0
	.string	"bench.c"
	.byte	0x7
	.byte	0
	.byte	0
	.string	"stddef.h"
	.byte	0x4
	.byte	0
	.byte	0
	.string	"machine/_default_types.h"
	.byte	0x5
	.byte	0
	.byte	0
	.string	"stdint.h"
	.byte	0x5
	.byte	0
	.byte	0
	.string	"bench.h"
	.byte	0x1
	.byte	0
	.byte	0
	.string	"gpio.h"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"timer.h"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"string_lib.h"
	.byte	0x2
	.byte	0
	.byte	0
	.string	"<built-in>"
	.byte	0
	.byte	0
	.byte	0
	.string	"cpu_hal.h"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"utils.h"
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
.LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x26
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x2b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x30
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x35
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x10
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE14
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x46
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x13
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x13
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE15
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x51
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x3
	.byte	0x5c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x3f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE16
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x5f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x6
	.byte	0x3
	.byte	0x59
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x20
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x6
	.byte	0x3d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x12
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x6a
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x3
	.byte	0x5c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x3f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x3
	.byte	0x5b
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x3c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x3
	.byte	0x5b
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x3f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x12
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x3
	.byte	0x5f
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x3e
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x3
	.byte	0x54
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM102
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE17
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM103
	.byte	0x76
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM106
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE18
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM107
	.byte	0x7d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM111
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM112
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM113
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM114
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM115
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM116
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM118
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM119
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM120
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM121
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM122
	.byte	0x26
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM123
	.byte	0x3
	.byte	0x71
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x26
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM125
	.byte	0x3
	.byte	0x71
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE19
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM126
	.byte	0x9f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM127
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM128
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM129
	.byte	0xf
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM130
	.byte	0x1f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM131
	.byte	0xf
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x1f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM133
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE20
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"bench_timer_start"
.LASF24:
	.string	"result"
.LASF40:
	.string	"reset_timer"
.LASF45:
	.string	"__builtin_puts"
.LASF23:
	.string	"bench_timer_stop"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF26:
	.string	"print_summary"
.LASF42:
	.string	"putchar"
.LASF9:
	.string	"__uint32_t"
.LASF49:
	.string	"cpu_perf_get"
.LASF27:
	.string	"run_benchmark"
.LASF21:
	.string	"testcase_t"
.LASF33:
	.string	"perf_print_all"
.LASF14:
	.string	"errors"
.LASF39:
	.string	"stop_timer"
.LASF31:
	.string	"actual"
.LASF54:
	.string	"bench_timer_reset"
.LASF38:
	.string	"start_timer"
.LASF36:
	.string	"insn"
.LASF55:
	.string	"run_suite"
.LASF1:
	.string	"long long int"
.LASF53:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/bench_lib"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"tests"
.LASF41:
	.string	"printf"
.LASF17:
	.string	"_testcase_t"
.LASF18:
	.string	"name"
.LASF50:
	.string	"exit"
.LASF15:
	.string	"testresult_t"
.LASF2:
	.string	"long double"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF28:
	.string	"check_uint32"
.LASF12:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF43:
	.string	"puts"
.LASF13:
	.string	"time"
.LASF35:
	.string	"exception_address"
.LASF6:
	.string	"short unsigned int"
.LASF30:
	.string	"fail_msg"
.LASF20:
	.string	"char"
.LASF16:
	.string	"_testresult_t"
.LASF44:
	.string	"__builtin_putchar"
.LASF19:
	.string	"test"
.LASF46:
	.string	"set_gpio_pin_direction"
.LASF32:
	.string	"expected"
.LASF10:
	.string	"long unsigned int"
.LASF48:
	.string	"get_time"
.LASF25:
	.string	"print_result"
.LASF37:
	.string	"set_gpio_pin_value"
.LASF52:
	.string	"src/bench.c"
.LASF47:
	.string	"set_pin_function"
.LASF34:
	.string	"illegal_insn_handler_c"
.LASF51:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
	.ident	"GCC: (GNU) 5.2.0"
