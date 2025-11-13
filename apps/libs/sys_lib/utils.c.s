	.file	"utils.c"
	.text
.Ltext0:
	.section	.text.eoc,"ax",@progbits
	.align	2
	.globl	eoc
	.type	eoc, @function
eoc:
.LFB4:
.LM1:
	.cfi_startproc
.LVL0:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM2:
	bnez	a0,.L6
.LM3:
	li	a5,437284864
	sw	zero,20(a5)
.L3:
.LM4:
	li	a5,437284864
	add	a5,a5,4
	lw	a4,0(a5)
.LM5:
	li	a1,1
.LM6:
	p.bset 	a4,a4,0,2 # Bit set
.LM7:
	li	a0,8
.LVL1:
.LM8:
	sw	a4,0(a5)
.LM9:
	call	set_pin_function
.LVL2:
.LM10:
	li	a1,1
	li	a0,8
	call	set_gpio_pin_direction
.LVL3:
.LM11:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM12:
	li	a1,1
	li	a0,8
.LM13:
	add	sp,sp,16
.LM14:
	tail	set_gpio_pin_value
.LVL4:
.L6:
.LM15:
	li	a4,1
	li	a5,437284864
	sw	a4,20(a5)
	j	.L3
	.cfi_endproc
.LFE4:
	.size	eoc, .-eoc
	.section	.text.exit,"ax",@progbits
	.align	2
	.globl	exit
	.type	exit, @function
exit:
.LFB3:
.LM16:
	.cfi_startproc
.LVL5:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM17:
	call	eoc
.LVL6:
.L8:
	j	.L8
	.cfi_endproc
.LFE3:
	.size	exit, .-exit
	.section	.text.sleep_busy,"ax",@progbits
	.align	2
	.globl	sleep_busy
	.type	sleep_busy, @function
sleep_busy:
.LFB5:
.LM18:
	.cfi_startproc
.LVL7:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM19:
	sw	a0,12(sp)
.LBB2:
.LM20:
	lw 	a5,12(sp)	# Non volatile Load offseted
	blez	a5,.L10
.LM21:
	li	a5,0
.LVL8:
.L12:
.LM22:
 #APP
# 44 "src/utils.c" 1
	nop
# 0 "" 2
.LM23:
 #NO_APP
	add	a5,a5,1
.LVL9:
	lw 	a4,12(sp)	# Non volatile Load offseted
	bgt	a4,a5,.L12
.LVL10:
.L10:
.LBE2:
.LM24:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sleep_busy, .-sleep_busy
	.section	.text.cpu_perf_set,"ax",@progbits
	.align	2
	.globl	cpu_perf_set
	.type	cpu_perf_set, @function
cpu_perf_set:
.LFB6:
.LM25:
	.cfi_startproc
.LVL11:
.LM26:
	lui	a0,%hi(.LC0)
.LVL12:
	add	a0,a0,%lo(.LC0)
	tail	puts
.LVL13:
	.cfi_endproc
.LFE6:
	.size	cpu_perf_set, .-cpu_perf_set
	.section	.text.cpu_perf_get,"ax",@progbits
	.align	2
	.globl	cpu_perf_get
	.type	cpu_perf_get, @function
cpu_perf_get:
.LFB7:
.LM27:
	.cfi_startproc
.LVL14:
.LM28:
	li	a5,15
	bgtu	a0,a5,.L17
	lui	a5,%hi(.L19)
	sll	a0,a0,2
.LVL15:
	add	a5,a5,%lo(.L19)
	p.lw	a0,a0(a5)	# load reg(reg)
	jr	a0
	.section	.rodata.cpu_perf_get,"a",@progbits
	.align	2
	.align	2
.L19:
	.word	.L18
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.section	.text.cpu_perf_get
.L33:
.LM29:
 #APP
# 71 "src/utils.c" 1
	csrr a0, 0x78E
# 0 "" 2
.LVL16:
 #NO_APP
	ret
.LVL17:
.L34:
.LM30:
 #APP
# 72 "src/utils.c" 1
	csrr a0, 0x78F
# 0 "" 2
.LVL18:
 #NO_APP
	ret
.LVL19:
.L18:
.LM31:
 #APP
# 57 "src/utils.c" 1
	csrr a0, 0x780
# 0 "" 2
.LVL20:
.LM32:
 #NO_APP
	ret
.LVL21:
.L20:
.LM33:
 #APP
# 58 "src/utils.c" 1
	csrr a0, 0x781
# 0 "" 2
.LVL22:
 #NO_APP
	ret
.LVL23:
.L21:
.LM34:
 #APP
# 59 "src/utils.c" 1
	csrr a0, 0x782
# 0 "" 2
.LVL24:
 #NO_APP
	ret
.LVL25:
.L22:
.LM35:
 #APP
# 60 "src/utils.c" 1
	csrr a0, 0x783
# 0 "" 2
.LVL26:
 #NO_APP
	ret
.LVL27:
.L23:
.LM36:
 #APP
# 61 "src/utils.c" 1
	csrr a0, 0x784
# 0 "" 2
.LVL28:
 #NO_APP
	ret
.LVL29:
.L24:
.LM37:
 #APP
# 62 "src/utils.c" 1
	csrr a0, 0x785
# 0 "" 2
.LVL30:
 #NO_APP
	ret
.LVL31:
.L25:
.LM38:
 #APP
# 63 "src/utils.c" 1
	csrr a0, 0x786
# 0 "" 2
.LVL32:
 #NO_APP
	ret
.LVL33:
.L26:
.LM39:
 #APP
# 64 "src/utils.c" 1
	csrr a0, 0x787
# 0 "" 2
.LVL34:
 #NO_APP
	ret
.LVL35:
.L27:
.LM40:
 #APP
# 65 "src/utils.c" 1
	csrr a0, 0x788
# 0 "" 2
.LVL36:
 #NO_APP
	ret
.LVL37:
.L28:
.LM41:
 #APP
# 66 "src/utils.c" 1
	csrr a0, 0x789
# 0 "" 2
.LVL38:
 #NO_APP
	ret
.LVL39:
.L29:
.LM42:
 #APP
# 67 "src/utils.c" 1
	csrr a0, 0x78A
# 0 "" 2
.LVL40:
 #NO_APP
	ret
.LVL41:
.L30:
.LM43:
 #APP
# 68 "src/utils.c" 1
	csrr a0, 0x78B
# 0 "" 2
.LVL42:
 #NO_APP
	ret
.LVL43:
.L31:
.LM44:
 #APP
# 69 "src/utils.c" 1
	csrr a0, 0x78C
# 0 "" 2
.LVL44:
 #NO_APP
	ret
.LVL45:
.L32:
.LM45:
 #APP
# 70 "src/utils.c" 1
	csrr a0, 0x78D
# 0 "" 2
.LVL46:
 #NO_APP
	ret
.LVL47:
.L17:
	mv	a1,a0
.LM46:
	lui	a0,%hi(.LC1)
.LVL48:
.LM47:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM48:
	add	a0,a0,%lo(.LC1)
.LM49:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM50:
	call	printf
.LVL49:
.LM51:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM52:
	li	a0,0
.LVL50:
.LM53:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE7:
	.size	cpu_perf_get, .-cpu_perf_get
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"cpu_perf_set: not implemented yet"
	.zero	2
.LC1:
	.string	"CSR %d not yet supported\n"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x233
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
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
	.byte	0x41
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x48
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.byte	0x5
	.string	"eoc"
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xef
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0x68
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LVL2
	.4byte	0x1fb
	.4byte	0xc2
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x7
	.4byte	.LVL3
	.4byte	0x206
	.4byte	0xda
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x9
	.4byte	.LVL4
	.4byte	0x211
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x123
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x68
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LVL6
	.4byte	0x88
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x29
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x15d
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x29
	.4byte	0x15d
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x68
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	0x68
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x31
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a9
	.byte	0x11
	.4byte	.LASF15
	.byte	0x1
	.byte	0x31
	.4byte	0x6f
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x31
	.4byte	0x6f
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LVL13
	.4byte	0x21c
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x35
	.4byte	0x6f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fb
	.byte	0x11
	.4byte	.LASF15
	.byte	0x1
	.byte	0x35
	.4byte	0x6f
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x36
	.4byte	0x76
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LVL49
	.4byte	0x22b
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4b
	.byte	0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x4e
	.byte	0x14
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x51
	.byte	0x15
	.4byte	.LASF26
	.4byte	.LASF27
	.byte	0x6
	.byte	0
	.4byte	.LASF26
	.byte	0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x87,0x1
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
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
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/string_lib/in"
	.ascii	"c"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib/inc"
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
	.string	"utils.c"
	.byte	0x5
	.byte	0
	.byte	0
	.string	"machine/_default_types.h"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"stdint.h"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"gpio.h"
	.byte	0x2
	.byte	0
	.byte	0
	.string	"string_lib.h"
	.byte	0x1
	.byte	0
	.byte	0
	.string	"<built-in>"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x30
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0xe
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x2a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x40
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x47
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x4b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x26
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x3
	.byte	0x71
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x2a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x3
	.byte	0x6e
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x3
	.byte	0x6c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x2b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x3
	.byte	0x6c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x2b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x3
	.byte	0x6a
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x2d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"cpu_perf_set"
.LASF25:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF16:
	.string	"value"
.LASF13:
	.string	"iter"
.LASF21:
	.string	"set_gpio_pin_value"
.LASF18:
	.string	"cpu_perf_get"
.LASF19:
	.string	"set_pin_function"
.LASF27:
	.string	"__builtin_puts"
.LASF17:
	.string	"exit"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"set_gpio_pin_direction"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"puts"
.LASF9:
	.string	"__uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"sleep_busy"
.LASF15:
	.string	"counterId"
.LASF6:
	.string	"long long int"
.LASF22:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF23:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF11:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"src/utils.c"
	.ident	"GCC: (GNU) 5.2.0"
