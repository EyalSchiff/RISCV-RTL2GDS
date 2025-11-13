	.file	"utils.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.exit,"ax",@progbits
	.align	2
	.globl	exit
	.type	exit, @function
exit:
.LFB3:
	.file 1 "src/utils.c"
	.loc 1 20 0
	add	sp,sp,-32
.LCFI0:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI1:
	add	s0,sp,32
.LCFI2:
	sw	a0,-20(s0)
	.loc 1 21 0
	lw	a0,-20(s0)
	call	eoc
.L2:
	.loc 1 22 0 discriminator 1
	j	.L2
.LFE3:
	.size	exit, .-exit
	.section	.text.eoc,"ax",@progbits
	.align	2
	.globl	eoc
	.type	eoc, @function
eoc:
.LFB4:
	.loc 1 26 0
	add	sp,sp,-32
.LCFI3:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI4:
	add	s0,sp,32
.LCFI5:
	sw	a0,-20(s0)
	.loc 1 27 0
	lw	a5,-20(s0)
	beqz	a5,.L4
	.loc 1 28 0
	li	a5,437284864
	add	a5,a5,20
	li	a4,1
	sw	a4,0(a5)
	j	.L5
.L4:
	.loc 1 30 0
	li	a5,437284864
	add	a5,a5,20
	sw	zero,0(a5)
.L5:
	.loc 1 33 0
	li	a5,437284864
	add	a5,a5,4
	lw	a4,0(a5)
	li	a5,437284864
	add	a5,a5,4
	or	a4,a4,4
	sw	a4,0(a5)
	.loc 1 35 0
	li	a1,1
	li	a0,8
	call	set_pin_function
	.loc 1 36 0
	li	a1,1
	li	a0,8
	call	set_gpio_pin_direction
	.loc 1 37 0
	li	a1,1
	li	a0,8
	call	set_gpio_pin_value
	.loc 1 38 0
	nop
	lw	ra,28(sp)
.LCFI6:
	lw	s0,24(sp)
.LCFI7:
	add	sp,sp,32
.LCFI8:
	jr	ra
.LFE4:
	.size	eoc, .-eoc
	.section	.text.sleep_busy,"ax",@progbits
	.align	2
	.globl	sleep_busy
	.type	sleep_busy, @function
sleep_busy:
.LFB5:
	.loc 1 42 0
	add	sp,sp,-48
.LCFI9:
	sw	s0,44(sp)
.LCFI10:
	add	s0,sp,48
.LCFI11:
	sw	a0,-36(s0)
.LBB2:
	.loc 1 43 0
	sw	zero,-20(s0)
	j	.L7
.L8:
	.loc 1 44 0 discriminator 3
 #APP
# 44 "src/utils.c" 1
	nop
# 0 "" 2
	.loc 1 43 0 discriminator 3
 #NO_APP
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L7:
	.loc 1 43 0 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L8
.LBE2:
	.loc 1 45 0 is_stmt 1
	nop
	lw	s0,44(sp)
.LCFI12:
	add	sp,sp,48
.LCFI13:
	jr	ra
.LFE5:
	.size	sleep_busy, .-sleep_busy
	.section	.rodata
	.align	2
.LC0:
	.string	"cpu_perf_set: not implemented yet"
	.section	.text.cpu_perf_set,"ax",@progbits
	.align	2
	.globl	cpu_perf_set
	.type	cpu_perf_set, @function
cpu_perf_set:
.LFB6:
	.loc 1 49 0
	add	sp,sp,-32
.LCFI14:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI15:
	add	s0,sp,32
.LCFI16:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 50 0
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 51 0
	nop
	lw	ra,28(sp)
.LCFI17:
	lw	s0,24(sp)
.LCFI18:
	add	sp,sp,32
.LCFI19:
	jr	ra
.LFE6:
	.size	cpu_perf_set, .-cpu_perf_set
	.section	.rodata
	.align	2
.LC1:
	.string	"CSR %d not yet supported\n"
	.section	.text.cpu_perf_get,"ax",@progbits
	.align	2
	.globl	cpu_perf_get
	.type	cpu_perf_get, @function
cpu_perf_get:
.LFB7:
	.loc 1 53 0
	add	sp,sp,-48
.LCFI20:
	sw	ra,44(sp)
	sw	s0,40(sp)
.LCFI21:
	add	s0,sp,48
.LCFI22:
	sw	a0,-36(s0)
	.loc 1 54 0
	sw	zero,-20(s0)
	.loc 1 56 0
	lw	a4,-36(s0)
	li	a5,15
	bgtu	a4,a5,.L11
	lw	a5,-36(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L13)
	addi	a5,a5,%lo(.L13)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.cpu_perf_get,"a",@progbits
	.align	2
	.align	2
.L13:
	.word	.L12
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.section	.text.cpu_perf_get
.L12:
	.loc 1 57 0
 #APP
# 57 "src/utils.c" 1
	csrr a5, 0x780
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L14:
	.loc 1 58 0
 #APP
# 58 "src/utils.c" 1
	csrr a5, 0x781
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L15:
	.loc 1 59 0
 #APP
# 59 "src/utils.c" 1
	csrr a5, 0x782
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L16:
	.loc 1 60 0
 #APP
# 60 "src/utils.c" 1
	csrr a5, 0x783
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L17:
	.loc 1 61 0
 #APP
# 61 "src/utils.c" 1
	csrr a5, 0x784
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L18:
	.loc 1 62 0
 #APP
# 62 "src/utils.c" 1
	csrr a5, 0x785
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L19:
	.loc 1 63 0
 #APP
# 63 "src/utils.c" 1
	csrr a5, 0x786
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L20:
	.loc 1 64 0
 #APP
# 64 "src/utils.c" 1
	csrr a5, 0x787
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L21:
	.loc 1 65 0
 #APP
# 65 "src/utils.c" 1
	csrr a5, 0x788
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L22:
	.loc 1 66 0
 #APP
# 66 "src/utils.c" 1
	csrr a5, 0x789
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L23:
	.loc 1 67 0
 #APP
# 67 "src/utils.c" 1
	csrr a5, 0x78A
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L24:
	.loc 1 68 0
 #APP
# 68 "src/utils.c" 1
	csrr a5, 0x78B
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L25:
	.loc 1 69 0
 #APP
# 69 "src/utils.c" 1
	csrr a5, 0x78C
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L26:
	.loc 1 70 0
 #APP
# 70 "src/utils.c" 1
	csrr a5, 0x78D
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L27:
	.loc 1 71 0
 #APP
# 71 "src/utils.c" 1
	csrr a5, 0x78E
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L28:
	.loc 1 72 0
 #APP
# 72 "src/utils.c" 1
	csrr a5, 0x78F
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	j	.L29
.L11:
	.loc 1 73 0
	lw	a1,-36(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	nop
.L29:
	.loc 1 75 0
	lw	a5,-20(s0)
	.loc 1 76 0
	mv	a0,a5
	lw	ra,44(sp)
.LCFI23:
	lw	s0,40(sp)
.LCFI24:
	add	sp,sp,48
.LCFI25:
	jr	ra
.LFE7:
	.size	cpu_perf_get, .-cpu_perf_get
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x20
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI14-.LFB6
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI20-.LFB7
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 2 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/riscv32-unknown-elf/sys-include/machine/_default_types.h"
	.file 3 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/riscv32-unknown-elf/sys-include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.4byte	0x53
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	0x68
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x35
	.4byte	0x74
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xc3
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x35
	.4byte	0x74
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x36
	.4byte	0x7b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x31
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xf5
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x31
	.4byte	0x74
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x31
	.4byte	0x74
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x29
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x12f
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x29
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xd
	.string	"eoc"
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x151
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
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
	.byte	0xe
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
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
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
	.byte	0x5
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
	.byte	0xf
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
	.byte	0x87,0x1
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"cpu_perf_set"
.LASF20:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF13:
	.string	"value"
.LASF16:
	.string	"iter"
.LASF21:
	.string	"cpu_perf_get"
.LASF17:
	.string	"exit"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"__uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF15:
	.string	"sleep_busy"
.LASF18:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF12:
	.string	"counterId"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"src/utils.c"
.LASF11:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 7.1.1 20170509"
