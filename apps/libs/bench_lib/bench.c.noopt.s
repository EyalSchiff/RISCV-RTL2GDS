	.file	"bench.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.bench_timer_start,"ax",@progbits
	.align	2
	.globl	bench_timer_start
	.type	bench_timer_start, @function
bench_timer_start:
.LFB11:
	.file 1 "src/bench.c"
	.loc 1 16 0
	add	sp,sp,-16
.LCFI0:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI1:
	add	s0,sp,16
.LCFI2:
	.loc 1 17 0
	li	a1,1
	li	a0,0
	call	set_gpio_pin_value
	.loc 1 18 0
	call	start_timer
	.loc 1 19 0
	nop
	lw	ra,12(sp)
.LCFI3:
	lw	s0,8(sp)
.LCFI4:
	add	sp,sp,16
.LCFI5:
	jr	ra
.LFE11:
	.size	bench_timer_start, .-bench_timer_start
	.section	.text.bench_timer_stop,"ax",@progbits
	.align	2
	.globl	bench_timer_stop
	.type	bench_timer_stop, @function
bench_timer_stop:
.LFB12:
	.loc 1 21 0
	add	sp,sp,-16
.LCFI6:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI7:
	add	s0,sp,16
.LCFI8:
	.loc 1 22 0
	call	stop_timer
	.loc 1 23 0
	li	a1,0
	li	a0,0
	call	set_gpio_pin_value
	.loc 1 24 0
	nop
	lw	ra,12(sp)
.LCFI9:
	lw	s0,8(sp)
.LCFI10:
	add	sp,sp,16
.LCFI11:
	jr	ra
.LFE12:
	.size	bench_timer_stop, .-bench_timer_stop
	.section	.text.bench_timer_reset,"ax",@progbits
	.align	2
	.globl	bench_timer_reset
	.type	bench_timer_reset, @function
bench_timer_reset:
.LFB13:
	.loc 1 26 0
	add	sp,sp,-16
.LCFI12:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI13:
	add	s0,sp,16
.LCFI14:
	.loc 1 27 0
	call	reset_timer
	.loc 1 28 0
	nop
	lw	ra,12(sp)
.LCFI15:
	lw	s0,8(sp)
.LCFI16:
	add	sp,sp,16
.LCFI17:
	jr	ra
.LFE13:
	.size	bench_timer_reset, .-bench_timer_reset
	.section	.rodata
	.align	2
.LC0:
	.string	"== test: %s -> "
	.align	2
.LC1:
	.string	"success, "
	.align	2
.LC2:
	.string	"fail, "
	.align	2
.LC3:
	.string	"nr. of errors: %d"
	.align	2
.LC4:
	.string	", execution time: %d\n"
	.section	.text.print_result,"ax",@progbits
	.align	2
	.globl	print_result
	.type	print_result, @function
print_result:
.LFB14:
	.loc 1 31 0
	add	sp,sp,-32
.LCFI18:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI19:
	add	s0,sp,32
.LCFI20:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 32 0
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 34 0
	lw	a5,-24(s0)
	lw	a5,4(a5)
	bnez	a5,.L5
	.loc 1 35 0
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L6
.L5:
	.loc 1 37 0
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L6:
	.loc 1 39 0
	lw	a5,-24(s0)
	lw	a5,4(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 41 0
	lw	a5,-24(s0)
	lw	a5,0(a5)
	bnez	a5,.L7
	.loc 1 42 0
	li	a0,10
	call	putchar
	.loc 1 45 0
	j	.L9
.L7:
	.loc 1 44 0
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L9:
	.loc 1 45 0
	nop
	lw	ra,28(sp)
.LCFI21:
	lw	s0,24(sp)
.LCFI22:
	add	sp,sp,32
.LCFI23:
	jr	ra
.LFE14:
	.size	print_result, .-print_result
	.section	.rodata
	.align	2
.LC5:
	.string	"==== SUMMARY: "
	.align	2
.LC6:
	.string	"SUCCESS"
	.align	2
.LC7:
	.string	"FAIL"
	.section	.text.print_summary,"ax",@progbits
	.align	2
	.globl	print_summary
	.type	print_summary, @function
print_summary:
.LFB15:
	.loc 1 48 0
	add	sp,sp,-32
.LCFI24:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI25:
	add	s0,sp,32
.LCFI26:
	sw	a0,-20(s0)
	.loc 1 49 0
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 51 0
	lw	a5,-20(s0)
	bnez	a5,.L11
	.loc 1 52 0
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	.loc 1 56 0
	j	.L13
.L11:
	.loc 1 54 0
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
.L13:
	.loc 1 56 0
	nop
	lw	ra,28(sp)
.LCFI27:
	lw	s0,24(sp)
.LCFI28:
	add	sp,sp,32
.LCFI29:
	jr	ra
.LFE15:
	.size	print_summary, .-print_summary
	.section	.text.run_benchmark,"ax",@progbits
	.align	2
	.globl	run_benchmark
	.type	run_benchmark, @function
run_benchmark:
.LFB16:
	.loc 1 59 0
	add	sp,sp,-32
.LCFI30:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI31:
	add	s0,sp,32
.LCFI32:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 60 0
	li	a1,0
	li	a0,0
	call	set_gpio_pin_value
	.loc 1 61 0
	li	a1,1
	li	a0,0
	call	set_gpio_pin_direction
	.loc 1 62 0
	li	a1,1
	li	a0,0
	call	set_pin_function
	.loc 1 63 0
	lw	a5,-24(s0)
	sw	zero,4(a5)
	.loc 1 65 0
	call	bench_timer_reset
	.loc 1 67 0
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lui	a5,%hi(bench_timer_stop)
	addi	a2,a5,%lo(bench_timer_stop)
	lui	a5,%hi(bench_timer_start)
	addi	a1,a5,%lo(bench_timer_start)
	lw	a0,-24(s0)
	jalr	a4
.LVL0:
	.loc 1 69 0
	call	get_time
	mv	a4,a0
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 70 0
	nop
	lw	ra,28(sp)
.LCFI33:
	lw	s0,24(sp)
.LCFI34:
	add	sp,sp,32
.LCFI35:
	jr	ra
.LFE16:
	.size	run_benchmark, .-run_benchmark
	.section	.text.run_suite,"ax",@progbits
	.align	2
	.globl	run_suite
	.type	run_suite, @function
run_suite:
.LFB17:
	.loc 1 73 0
	add	sp,sp,-64
.LCFI36:
	sw	ra,60(sp)
	sw	s0,56(sp)
.LCFI37:
	add	s0,sp,64
.LCFI38:
	sw	a0,-52(s0)
	.loc 1 75 0
	sw	zero,-20(s0)
	.loc 1 76 0
	j	.L16
.L17:
	.loc 1 76 0 is_stmt 0 discriminator 2
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L16:
	.loc 1 76 0 discriminator 1
	lw	a5,-20(s0)
	sll	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bnez	a5,.L17
	.loc 1 78 0 is_stmt 1
	sw	zero,-24(s0)
	.loc 1 82 0
	sw	zero,-28(s0)
	j	.L18
.L19:
.LBB2:
	.loc 1 84 0 discriminator 3
	lw	a5,-28(s0)
	sll	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	add	a4,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	run_benchmark
	.loc 1 85 0 discriminator 3
	lw	a5,-28(s0)
	sll	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	add	a4,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	print_result
	.loc 1 87 0 discriminator 3
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
.LBE2:
	.loc 1 82 0 discriminator 3
	lw	a5,-28(s0)
	add	a5,a5,1
	sw	a5,-28(s0)
.L18:
	.loc 1 82 0 is_stmt 0 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L19
	.loc 1 90 0 is_stmt 1
	lw	a0,-24(s0)
	call	print_summary
	.loc 1 92 0
	lw	a5,-24(s0)
	.loc 1 93 0
	mv	a0,a5
	lw	ra,60(sp)
.LCFI39:
	lw	s0,56(sp)
.LCFI40:
	add	sp,sp,64
.LCFI41:
	jr	ra
.LFE17:
	.size	run_suite, .-run_suite
	.section	.rodata
	.align	2
.LC8:
	.string	"%s: Actual %X, expected %X\n"
	.section	.text.check_uint32,"ax",@progbits
	.align	2
	.globl	check_uint32
	.type	check_uint32, @function
check_uint32:
.LFB18:
	.loc 1 96 0
	add	sp,sp,-32
.LCFI42:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI43:
	add	s0,sp,32
.LCFI44:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 97 0
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L23
	.loc 1 98 0
	lw	a5,-20(s0)
	lw	a5,4(a5)
	add	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 99 0
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L23:
	.loc 1 101 0
	nop
	lw	ra,28(sp)
.LCFI45:
	lw	s0,24(sp)
.LCFI46:
	add	sp,sp,32
.LCFI47:
	jr	ra
.LFE18:
	.size	check_uint32, .-check_uint32
	.section	.rodata
	.align	2
.LC9:
	.string	"Perf CYCLES:   %d\n"
	.align	2
.LC10:
	.string	"Perf INSN:     %d\n"
	.align	2
.LC11:
	.string	"Perf CINSN:    %d\n"
	.align	2
.LC12:
	.string	"Perf LD_STALL: %d\n"
	.align	2
.LC13:
	.string	"Perf JR_STALL: %d\n"
	.align	2
.LC14:
	.string	"Perf IMISS:    %d\n"
	.align	2
.LC15:
	.string	"Perf #LD:      %d\n"
	.align	2
.LC16:
	.string	"Perf #ST:      %d\n"
	.align	2
.LC17:
	.string	"Perf #JUMP:    %d\n"
	.align	2
.LC18:
	.string	"Perf #BRANCH:  %d\n"
	.align	2
.LC19:
	.string	"Perf #TAKEN:   %d\n"
	.align	2
.LC20:
	.string	"Perf #RVC:     %d\n"
	.section	.text.perf_print_all,"ax",@progbits
	.align	2
	.globl	perf_print_all
	.type	perf_print_all, @function
perf_print_all:
.LFB19:
	.loc 1 103 0
	add	sp,sp,-16
.LCFI48:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI49:
	add	s0,sp,16
.LCFI50:
	.loc 1 105 0
	li	a0,0
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	.loc 1 106 0
	li	a0,1
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	.loc 1 107 0
	li	a0,10
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 1 108 0
	li	a0,2
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 1 109 0
	li	a0,3
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 1 110 0
	li	a0,4
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	.loc 1 111 0
	li	a0,5
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 1 112 0
	li	a0,6
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	.loc 1 113 0
	li	a0,7
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	.loc 1 114 0
	li	a0,8
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	.loc 1 115 0
	li	a0,9
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 1 116 0
	li	a0,10
	call	cpu_perf_get
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	.loc 1 131 0
	nop
	lw	ra,12(sp)
.LCFI51:
	lw	s0,8(sp)
.LCFI52:
	add	sp,sp,16
.LCFI53:
	jr	ra
.LFE19:
	.size	perf_print_all, .-perf_print_all
	.section	.rodata
	.align	2
.LC21:
	.string	"Illegal instruction encountered at address 0x%08X: %X\n"
	.section	.text.illegal_insn_handler_c,"ax",@progbits
	.align	2
	.weak	illegal_insn_handler_c
	.type	illegal_insn_handler_c, @function
illegal_insn_handler_c:
.LFB20:
	.loc 1 137 0
	add	sp,sp,-32
.LCFI54:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI55:
	add	s0,sp,32
.LCFI56:
	.loc 1 140 0
 #APP
# 140 "src/bench.c" 1
	csrr a5, 0x341
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 1 144 0
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 145 0
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	.loc 1 146 0
	li	a0,1
	call	exit
.LFE20:
	.size	illegal_insn_handler_c, .-illegal_insn_handler_c
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI12-.LFB13
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI18-.LFB14
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI24-.LFB15
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI30-.LFB16
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI36-.LFB17
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI42-.LFB18
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI48-.LFB19
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI54-.LFB20
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE18:
	.text
.Letext0:
	.file 2 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/lib/gcc/riscv32-unknown-elf/7.1.1/include/stddef.h"
	.file 3 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/riscv32-unknown-elf/sys-include/machine/_default_types.h"
	.file 4 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/riscv32-unknown-elf/sys-include/sys/_stdint.h"
	.file 5 "/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/bench_lib/inc/bench.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2f0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x10
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
	.byte	0x4f
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
	.byte	0x30
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
	.4byte	0x122
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
	.4byte	0xee
	.byte	0x9
	.4byte	0x10f
	.byte	0xa
	.4byte	0x10f
	.byte	0xa
	.4byte	0x115
	.byte	0xa
	.4byte	0x115
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb8
	.byte	0x7
	.byte	0x4
	.4byte	0x11b
	.byte	0xb
	.4byte	0x122
	.byte	0xc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xfa
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1c
	.4byte	0xc3
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x88
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x165
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8a
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8a
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x67
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c4
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5f
	.4byte	0x10f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5f
	.4byte	0x88
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5f
	.4byte	0x88
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf5
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x48
	.4byte	0x37
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x232
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x48
	.4byte	0x232
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.string	"num"
	.byte	0x1
	.byte	0x4b
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4e
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x13
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x128
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x26a
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3a
	.4byte	0x232
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3a
	.4byte	0x10f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x28e
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2f
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c0
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1e
	.4byte	0x232
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1e
	.4byte	0x10f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x15
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x18
	.byte	0
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
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
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"bench_timer_start"
.LASF26:
	.string	"result"
.LASF36:
	.string	"bench_timer_stop"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"print_summary"
.LASF9:
	.string	"__uint32_t"
.LASF31:
	.string	"run_benchmark"
.LASF21:
	.string	"testcase_t"
.LASF34:
	.string	"perf_print_all"
.LASF14:
	.string	"errors"
.LASF28:
	.string	"actual"
.LASF35:
	.string	"bench_timer_reset"
.LASF23:
	.string	"insn"
.LASF38:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF22:
	.string	"exception_address"
.LASF1:
	.string	"long long int"
.LASF40:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/bench_lib"
.LASF7:
	.string	"long int"
.LASF30:
	.string	"tests"
.LASF17:
	.string	"_testcase_t"
.LASF18:
	.string	"name"
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
.LASF25:
	.string	"check_uint32"
.LASF12:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"time"
.LASF6:
	.string	"short unsigned int"
.LASF27:
	.string	"fail_msg"
.LASF20:
	.string	"char"
.LASF16:
	.string	"_testresult_t"
.LASF19:
	.string	"test"
.LASF29:
	.string	"expected"
.LASF10:
	.string	"long unsigned int"
.LASF33:
	.string	"print_result"
.LASF39:
	.string	"src/bench.c"
.LASF24:
	.string	"illegal_insn_handler_c"
.LASF41:
	.string	"run_suite"
	.ident	"GCC: (GNU) 7.1.1 20170509"
