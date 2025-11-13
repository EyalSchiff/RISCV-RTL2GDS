	.file	"spi.c"
	.text
.Ltext0:
	.section	.text.spi_setup_slave,"ax",@progbits
	.align	2
	.globl	spi_setup_slave
	.type	spi_setup_slave, @function
spi_setup_slave:
.LFB0:
.LM1:
	.cfi_startproc
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM2:
	li	a1,0
	li	a0,4
.LM3:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM4:
	call	set_pin_function
.LVL0:
.LM5:
	li	a1,0
	li	a0,5
	call	set_pin_function
.LVL1:
.LM6:
	li	a1,0
	li	a0,6
	call	set_pin_function
.LVL2:
.LM7:
	li	a1,0
	li	a0,7
	call	set_pin_function
.LVL3:
.LM8:
	lw 	ra,12(sp)	# Non volatile Load offseted
.LM9:
	li	a1,0
	li	a0,3
.LM10:
	add	sp,sp,16
.LM11:
	tail	set_pin_function
.LVL4:
	.cfi_endproc
.LFE0:
	.size	spi_setup_slave, .-spi_setup_slave
	.section	.text.spi_setup_master,"ax",@progbits
	.align	2
	.globl	spi_setup_master
	.type	spi_setup_master, @function
spi_setup_master:
.LFB1:
.LM12:
	.cfi_startproc
.LVL5:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
.LM13:
	li	a1,0
	.cfi_offset 8, -8
.LM14:
	mv	s0,a0
.LM15:
	li	a0,15
.LVL6:
.LM16:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM17:
	call	set_pin_function
.LVL7:
.LM18:
	li	a1,0
	li	a0,14
	call	set_pin_function
.LVL8:
.LM19:
	li	a1,0
	li	a0,13
	call	set_pin_function
.LVL9:
.LM20:
	li	a1,0
	li	a0,12
	call	set_pin_function
.LVL10:
.LM21:
	blez	s0,.L3
.LM22:
	li	a1,0
	li	a0,16
	call	set_pin_function
.LVL11:
.LM23:
	p.beqimm	s0,1,.L3
.LM24:
	li	a1,0
	li	a0,11
	call	set_pin_function
.LVL12:
.LM25:
	p.beqimm	s0,2,.L3
.LM26:
	li	a1,0
	li	a0,0
	call	set_pin_function
.LVL13:
.LM27:
	p.beqimm	s0,3,.L3
.LM28:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL14:
.LM29:
	li	a1,0
	li	a0,1
.LM30:
	add	sp,sp,16
.LM31:
	tail	set_pin_function
.LVL15:
.L3:
.LM32:
	lw 	ra,12(sp)	# Non volatile Load offseted
	lw 	s0,8(sp)	# Non volatile Load offseted
.LVL16:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE1:
	.size	spi_setup_master, .-spi_setup_master
	.section	.text.spi_setup_cmd_addr,"ax",@progbits
	.align	2
	.globl	spi_setup_cmd_addr
	.type	spi_setup_cmd_addr, @function
spi_setup_cmd_addr:
.LFB2:
.LM33:
	.cfi_startproc
.LVL17:
.LM34:
	li	a6,16384
	add	a6,a6,-256
	sll	a3,a3,8
.LVL18:
.LM35:
	li	a4,32
.LM36:
	li	a5,437264384
.LM37:
	sub	a4,a4,a1
.LM38:
	and	a3,a3,a6
	p.bclr 	a1,a1,25,6 # Bit clear
.LVL19:
.LM39:
	sll	a0,a0,a4
.LVL20:
.LM40:
	add	a6,a5,8
.LM41:
	add	a4,a5,12
.LM42:
	or	a1,a3,a1
	add	a5,a5,16
.LM43:
	sw	a0,0(a6)
.LM44:
	sw	a2,0(a4)
.LM45:
	sw	a1,0(a5)
	ret
	.cfi_endproc
.LFE2:
	.size	spi_setup_cmd_addr, .-spi_setup_cmd_addr
	.section	.text.spi_setup_dummy,"ax",@progbits
	.align	2
	.globl	spi_setup_dummy
	.type	spi_setup_dummy, @function
spi_setup_dummy:
.LFB3:
.LM46:
	.cfi_startproc
.LVL21:
.LM47:
	sll	a1,a1,16
.LVL22:
	p.exthz	a0,a0
.LVL23:
	or	a1,a1,a0
	li	a5,437264384
	sw	a1,20(a5)
	ret
	.cfi_endproc
.LFE3:
	.size	spi_setup_dummy, .-spi_setup_dummy
	.section	.text.spi_set_datalen,"ax",@progbits
	.align	2
	.globl	spi_set_datalen
	.type	spi_set_datalen, @function
spi_set_datalen:
.LFB4:
.LM48:
	.cfi_startproc
.LVL24:
.LM49:
	li	a4,437264384
	add	a4,a4,16
	lw	a5,0(a4)
.LM50:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM51:
	sw	a5,12(sp)
.LM52:
	lw 	a5,12(sp)	# Non volatile Load offseted
	p.exthz	a5,a5
	sll	a0,a0,16
.LVL25:
	or	a0,a0,a5
	sw	a0,12(sp)
.LM53:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sw	a5,0(a4)
.LM54:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE4:
	.size	spi_set_datalen, .-spi_set_datalen
	.section	.text.spi_start_transaction,"ax",@progbits
	.align	2
	.globl	spi_start_transaction
	.type	spi_start_transaction, @function
spi_start_transaction:
.LFB5:
.LM55:
	.cfi_startproc
.LVL26:
.LM56:
	li	a5,1
	add	a1,a1,8
.LVL27:
	sll	a1,a5,a1
.LVL28:
	sll	a0,a5,a0
.LVL29:
	li	a5,4096
	add	a5,a5,-256
	and	a1,a1,a5
	p.bclr 	a0,a0,23,8 # Bit clear
	or	a0,a1,a0
	li	a5,437264384
	sw	a0,0(a5)
	ret
	.cfi_endproc
.LFE5:
	.size	spi_start_transaction, .-spi_start_transaction
	.section	.text.spi_get_status,"ax",@progbits
	.align	2
	.globl	spi_get_status
	.type	spi_get_status, @function
spi_get_status:
.LFB6:
.LM57:
	.cfi_startproc
.LM58:
	li	a5,437264384
	lw	a5,0(a5)
.LM59:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM60:
	sw	a5,12(sp)
.LM61:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE6:
	.size	spi_get_status, .-spi_get_status
	.section	.text.spi_write_fifo,"ax",@progbits
	.align	2
	.globl	spi_write_fifo
	.type	spi_write_fifo, @function
spi_write_fifo:
.LFB7:
.LM62:
	.cfi_startproc
.LVL30:
.LM63:
	p.extractu 	a5,a1,10,5 # Bit extract signed
.LM64:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM65:
	p.bclr 	a1,a1,26,5 # Bit clear
.LVL31:
.LM66:
	sw	a5,8(sp)
.LM67:
	beqz	a1,.L27
.LM68:
	lw 	a5,8(sp)	# Non volatile Load offseted
	add	a5,a5,1
	sw	a5,8(sp)
.L27:
.LM69:
	sw	zero,12(sp)
	lw 	a2,12(sp)	# Non volatile Load offseted
.LM70:
	li	a4,437264384
.LM71:
	lw 	a5,8(sp)	# Non volatile Load offseted
.LM72:
	li	a3,7
.LM73:
	add	a1,a4,24
.LM74:
	bge	a2,a5,.L26
.L29:
.LM75:
	lw	a5,0(a4)
	srl	a5,a5,24
	bgtu	a5,a3,.L29
.LM76:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sll	a5,a5,2
	p.lw	a5,a5(a0)	# load reg(reg)
	sw	a5,0(a1)
.LM77:
	lw 	a5,12(sp)	# Non volatile Load offseted
	add	a5,a5,1
	sw	a5,12(sp)
	lw 	a2,12(sp)	# Non volatile Load offseted
	lw 	a5,8(sp)	# Non volatile Load offseted
	blt	a2,a5,.L29
.L26:
.LM78:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE7:
	.size	spi_write_fifo, .-spi_write_fifo
	.section	.text.spi_read_fifo,"ax",@progbits
	.align	2
	.globl	spi_read_fifo
	.type	spi_read_fifo, @function
spi_read_fifo:
.LFB8:
.LM79:
	.cfi_startproc
.LVL32:
.LM80:
	p.extractu 	a5,a1,10,5 # Bit extract signed
.LM81:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM82:
	p.bclr 	a1,a1,26,5 # Bit clear
.LVL33:
.LM83:
	sw	a5,8(sp)
.LM84:
	beqz	a1,.L39
.LM85:
	lw 	a5,8(sp)	# Non volatile Load offseted
	add	a5,a5,1
	sw	a5,8(sp)
.L39:
.LM86:
	sw	zero,12(sp)
	lw 	a3,12(sp)	# Non volatile Load offseted
.LM87:
	li	a4,437264384
.LM88:
	lw 	a5,8(sp)	# Non volatile Load offseted
.LM89:
	add	a6,a4,32
.LM90:
	bge	a3,a5,.L38
.L41:
.LM91:
	lw	a5,0(a4)
	p.extractu 	a5,a5,7,16 # Bit extract signed
	beqz	a5,.L41
.LM92:
	lw 	a5,12(sp)	# Non volatile Load offseted
	lw	a1,0(a6)
.LM93:
	lw 	a3,12(sp)	# Non volatile Load offseted
	add	a3,a3,1
	sw	a3,12(sp)
.LM94:
	add	a2,sp,16
	sll	a5,a5,2
.LM95:
	lw 	a2,-4(a2)	# Non volatile Load offseted
	lw 	a3,8(sp)	# Non volatile Load offseted
.LM96:
	p.sw	a1,a5(a0)	# store reg(reg)
.LM97:
	blt	a2,a3,.L41
.L38:
.LM98:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE8:
	.size	spi_read_fifo, .-spi_read_fifo
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x362
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0xaf
	.byte	0x3
	.4byte	.LVL0
	.4byte	0x35a
	.4byte	0x52
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL1
	.4byte	0x35a
	.4byte	0x6a
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL2
	.4byte	0x35a
	.4byte	0x82
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL3
	.4byte	0x35a
	.4byte	0x9a
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x5
	.4byte	.LVL4
	.4byte	0x35a
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x16
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x190
	.byte	0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x16
	.4byte	0x190
	.4byte	.LLST0
	.byte	0x3
	.4byte	.LVL7
	.4byte	0x35a
	.4byte	0xeb
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3f
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL8
	.4byte	0x35a
	.4byte	0x103
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL9
	.4byte	0x35a
	.4byte	0x11b
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3d
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL10
	.4byte	0x35a
	.4byte	0x133
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL11
	.4byte	0x35a
	.4byte	0x14b
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL12
	.4byte	0x35a
	.4byte	0x163
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LVL13
	.4byte	0x35a
	.4byte	0x17b
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x5
	.4byte	.LVL15
	.4byte	0x35a
	.byte	0x4
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x4
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x27
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f4
	.byte	0x9
	.string	"cmd"
	.byte	0x1
	.byte	0x27
	.4byte	0x190
	.4byte	.LLST1
	.byte	0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x27
	.4byte	0x190
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF4
	.byte	0x1
	.byte	0x27
	.4byte	0x190
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x27
	.4byte	0x190
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF11
	.byte	0x1
	.byte	0x28
	.4byte	0x190
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x6
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x228
	.byte	0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2f
	.4byte	0x190
	.4byte	.LLST4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x2f
	.4byte	0x190
	.4byte	.LLST5
	.byte	0
	.byte	0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x33
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x25b
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x33
	.4byte	0x190
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x34
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	0x190
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x294
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3a
	.4byte	0x190
	.4byte	.LLST7
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3a
	.4byte	0x190
	.4byte	.LLST8
	.byte	0
	.byte	0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3e
	.4byte	0x190
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bc
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3f
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x308
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.4byte	0x308
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x44
	.4byte	0x190
	.4byte	.LLST9
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x45
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x190
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x52
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x35a
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x52
	.4byte	0x308
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x52
	.4byte	0x190
	.4byte	.LLST10
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x53
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x10
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x2
	.byte	0x4b
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7b
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
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
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib/inc"
	.byte	0
	.ascii	"src"
	.byte	0
	.byte	0
	.string	"spi.c"
	.byte	0x2
	.byte	0
	.byte	0
	.string	"gpio.h"
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
.LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x24
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
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x16
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
	.4byte	.LM12
	.byte	0x2c
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
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
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
	.4byte	.LM33
	.byte	0x3d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x14
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
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x14
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
	.byte	0x15
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
	.4byte	.LFE2
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x45
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
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
	.4byte	.LM48
	.byte	0x49
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x18
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
	.4byte	.LFE4
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x50
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x18
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
	.4byte	.LM57
	.byte	0x54
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x19
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
	.4byte	.LM62
	.byte	0x5a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x68
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x18
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
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"cmd_reg"
.LASF12:
	.string	"old_len"
.LASF26:
	.string	"set_pin_function"
.LASF7:
	.string	"dummy_rd"
.LASF1:
	.string	"spi_setup_cmd_addr"
.LASF17:
	.string	"status"
.LASF24:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF6:
	.string	"spi_setup_dummy"
.LASF16:
	.string	"spi_get_status"
.LASF4:
	.string	"addr"
.LASF14:
	.string	"trans_type"
.LASF18:
	.string	"spi_write_fifo"
.LASF0:
	.string	"spi_setup_master"
.LASF19:
	.string	"data"
.LASF20:
	.string	"num_words"
.LASF21:
	.string	"spi_read_fifo"
.LASF13:
	.string	"spi_start_transaction"
.LASF10:
	.string	"datalen"
.LASF15:
	.string	"csnum"
.LASF2:
	.string	"numcs"
.LASF23:
	.string	"src/spi.c"
.LASF25:
	.string	"spi_setup_slave"
.LASF3:
	.string	"cmdlen"
.LASF8:
	.string	"dummy_wr"
.LASF22:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF5:
	.string	"addrlen"
.LASF9:
	.string	"spi_set_datalen"
	.ident	"GCC: (GNU) 5.2.0"
