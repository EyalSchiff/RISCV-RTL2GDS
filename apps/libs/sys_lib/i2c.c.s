	.file	"i2c.c"
	.text
.Ltext0:
	.section	.text.i2c_setup,"ax",@progbits
	.align	2
	.globl	i2c_setup
	.type	i2c_setup, @function
i2c_setup:
.LFB0:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	li	a5,437276672
	p.sw	a0,4(a5!)	# store post inc
.LM3:
	sw	a1,0(a5)
	ret
	.cfi_endproc
.LFE0:
	.size	i2c_setup, .-i2c_setup
	.section	.text.i2c_get_ack,"ax",@progbits
	.align	2
	.globl	i2c_get_ack
	.type	i2c_get_ack, @function
i2c_get_ack:
.LFB1:
.LM4:
	.cfi_startproc
.LBB10:
.LBB11:
.LM5:
	li	a4,437276672
.LBE11:
.LBE10:
.LM6:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB13:
.LBB12:
.LM7:
	add	a4,a4,12
.L3:
.LM8:
	lw	a5,0(a4)
	sw	a5,4(sp)
.LM9:
	lw 	a5,4(sp)	# Non volatile Load offseted
.LBE12:
.LBE13:
.LM10:
	and	a5,a5,2
	beqz	a5,.L3
.LBB14:
.LBB15:
.LM11:
	li	a4,437276672
	add	a4,a4,12
.L6:
	lw	a5,0(a4)
	sw	a5,8(sp)
.LM12:
	lw 	a5,8(sp)	# Non volatile Load offseted
.LBE15:
.LBE14:
.LM13:
	and	a5,a5,2
	bnez	a5,.L6
.LBB16:
.LBB17:
.LM14:
	lw	a5,0(a4)
	sw	a5,12(sp)
.LM15:
	lw 	a0,12(sp)	# Non volatile Load offseted
.LBE17:
.LBE16:
.LM16:
	and	a0,a0,128
.LM17:
	seqz	a0,a0
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE1:
	.size	i2c_get_ack, .-i2c_get_ack
	.section	.text.i2c_send_data,"ax",@progbits
	.align	2
	.globl	i2c_send_data
	.type	i2c_send_data, @function
i2c_send_data:
.LFB2:
.LM18:
	.cfi_startproc
.LVL1:
.LM19:
	li	a5,437276672
	sw	a0,16(a5)
	ret
	.cfi_endproc
.LFE2:
	.size	i2c_send_data, .-i2c_send_data
	.section	.text.i2c_send_command,"ax",@progbits
	.align	2
	.globl	i2c_send_command
	.type	i2c_send_command, @function
i2c_send_command:
.LFB3:
.LM20:
	.cfi_startproc
.LVL2:
.LM21:
	li	a5,437276672
	sw	a0,20(a5)
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_send_command, .-i2c_send_command
	.section	.text.i2c_get_status,"ax",@progbits
	.align	2
	.globl	i2c_get_status
	.type	i2c_get_status, @function
i2c_get_status:
.LFB4:
.LM22:
	.cfi_startproc
.LM23:
	li	a5,437276672
.LM24:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM25:
	lw 	a5,12(a5)	# Non volatile Load offseted
	sw	a5,12(sp)
.LM26:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE4:
	.size	i2c_get_status, .-i2c_get_status
	.section	.text.i2c_get_data,"ax",@progbits
	.align	2
	.globl	i2c_get_data
	.type	i2c_get_data, @function
i2c_get_data:
.LFB5:
.LM27:
	.cfi_startproc
.LM28:
	li	a5,437276672
.LM29:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM30:
	lw 	a5,8(a5)	# Non volatile Load offseted
	sw	a5,12(sp)
.LM31:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE5:
	.size	i2c_get_data, .-i2c_get_data
	.section	.text.i2c_busy,"ax",@progbits
	.align	2
	.globl	i2c_busy
	.type	i2c_busy, @function
i2c_busy:
.LFB6:
.LM32:
	.cfi_startproc
.LBB18:
.LBB19:
.LM33:
	li	a5,437276672
.LBE19:
.LBE18:
.LM34:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB21:
.LBB20:
.LM35:
	lw 	a5,12(a5)	# Non volatile Load offseted
	sw	a5,12(sp)
.LM36:
	lw 	a0,12(sp)	# Non volatile Load offseted
.LBE20:
.LBE21:
.LM37:
	p.extractu 	a0,a0,0,6 # Bit extract signed
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE6:
	.size	i2c_busy, .-i2c_busy
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF9
	.byte	0xc
	.4byte	.LASF10
	.4byte	.LASF11
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.byte	0x1
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF13
	.byte	0x1
	.byte	0x21
	.4byte	0x48
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	0x41
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d
	.byte	0x7
	.4byte	.LASF0
	.byte	0x1
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LASF1
	.byte	0x1
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x12
	.4byte	0x41
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x101
	.byte	0x9
	.4byte	0x25
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x13
	.4byte	0xb8
	.byte	0xa
	.4byte	.Ldebug_ranges0+0
	.byte	0xb
	.4byte	0x35
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x25
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x14
	.4byte	0xde
	.byte	0xd
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0xb
	.4byte	0x35
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	0x25
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0xb
	.4byte	0x35
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF3
	.byte	0x1
	.byte	0x18
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x124
	.byte	0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x18
	.4byte	0x41
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x6
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x147
	.byte	0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1c
	.4byte	0x41
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xf
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x163
	.byte	0xb
	.4byte	0x35
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x26
	.4byte	0x41
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x18b
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x27
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x11
	.4byte	.LASF8
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	0x25
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2d
	.byte	0xa
	.4byte	.Ldebug_ranges0+0x18
	.byte	0xb
	.4byte	0x35
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
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
	.ascii	"src"
	.byte	0
	.byte	0
	.string	"i2c.c"
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
.LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x23
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x28
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x27
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x3
	.byte	0x70
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x27
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x3
	.byte	0x70
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x26
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x3
	.byte	0x71
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x25
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x3
	.byte	0x72
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x2e
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x32
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
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
	.4byte	.LM22
	.byte	0x36
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x19
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
	.4byte	.LM27
	.byte	0x3c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
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
	.4byte	.LM32
	.byte	0x42
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0xd
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x21
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0xd
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x22
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"i2c_setup"
.LASF10:
	.string	"src/i2c.c"
.LASF5:
	.string	"i2c_send_command"
.LASF6:
	.string	"i2c_get_ack"
.LASF9:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF8:
	.string	"i2c_busy"
.LASF12:
	.string	"i2c_get_status"
.LASF4:
	.string	"value"
.LASF11:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF13:
	.string	"status"
.LASF3:
	.string	"i2c_send_data"
.LASF0:
	.string	"prescaler"
.LASF1:
	.string	"enable"
.LASF7:
	.string	"i2c_get_data"
	.ident	"GCC: (GNU) 5.2.0"
