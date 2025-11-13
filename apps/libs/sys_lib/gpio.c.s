	.file	"gpio.c"
	.text
.Ltext0:
	.section	.text.set_pin_function,"ax",@progbits
	.align	2
	.globl	set_pin_function
	.type	set_pin_function, @function
set_pin_function:
.LFB0:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	li	a3,437284864
	lw	a5,0(a3)
.LM3:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM4:
	sw	a5,12(sp)
.LM5:
	li	a5,1
	sll	a5,a5,a0
	lw 	a4,12(sp)	# Non volatile Load offseted
	not	a5,a5
	and	a5,a5,a4
	sw	a5,12(sp)
.LM6:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sll	a1,a1,a0
.LVL1:
	or	a0,a1,a5
.LVL2:
	sw	a0,12(sp)
.LM7:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sw	a5,0(a3)
.LM8:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE0:
	.size	set_pin_function, .-set_pin_function
	.section	.text.get_pin_function,"ax",@progbits
	.align	2
	.globl	get_pin_function
	.type	get_pin_function, @function
get_pin_function:
.LFB1:
.LM9:
	.cfi_startproc
.LVL3:
.LM10:
	li	a5,437284864
	lw	a5,0(a5)
.LM11:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM12:
	sw	a5,12(sp)
.LM13:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sra	a0,a5,a0
.LVL4:
	p.bclr 	a0,a0,30,1 # Bit clear
	sw	a0,12(sp)
.LM14:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE1:
	.size	get_pin_function, .-get_pin_function
	.section	.text.set_gpio_pin_direction,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_direction
	.type	set_gpio_pin_direction, @function
set_gpio_pin_direction:
.LFB2:
.LM15:
	.cfi_startproc
.LVL5:
.LM16:
	li	a5,437260288
	lw	a5,0(a5)
.LM17:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM18:
	sw	a5,12(sp)
.LM19:
	beqz	a1,.L10
.LM20:
	li	a4,1
	lw 	a5,12(sp)	# Non volatile Load offseted
	sll	a0,a4,a0
.LVL6:
	or	a0,a0,a5
	sw	a0,12(sp)
.LM21:
	lw 	a4,12(sp)	# Non volatile Load offseted
	li	a5,437260288
	sw	a4,0(a5)
.LM22:
	add	sp,sp,16
	jr	ra
.LVL7:
.L10:
.LM23:
	li	a5,1
	sll	a0,a5,a0
.LVL8:
	not	a0,a0
	lw 	a5,12(sp)	# Non volatile Load offseted
	and	a0,a0,a5
	sw	a0,12(sp)
.LM24:
	lw 	a4,12(sp)	# Non volatile Load offseted
	li	a5,437260288
	sw	a4,0(a5)
.LM25:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE2:
	.size	set_gpio_pin_direction, .-set_gpio_pin_direction
	.section	.text.get_gpio_pin_direction,"ax",@progbits
	.align	2
	.globl	get_gpio_pin_direction
	.type	get_gpio_pin_direction, @function
get_gpio_pin_direction:
.LFB3:
.LM26:
	.cfi_startproc
.LVL9:
.LM27:
	li	a5,437260288
	lw	a5,0(a5)
.LM28:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM29:
	sw	a5,12(sp)
.LM30:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sll	a0,a0,1
.LVL10:
	sra	a0,a5,a0
	p.bclr 	a0,a0,30,1 # Bit clear
	sw	a0,12(sp)
.LM31:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE3:
	.size	get_gpio_pin_direction, .-get_gpio_pin_direction
	.section	.text.set_gpio_pin_value,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_value
	.type	set_gpio_pin_value, @function
set_gpio_pin_value:
.LFB4:
.LM32:
	.cfi_startproc
.LVL11:
.LM33:
	li	a5,437260288
.LM34:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM35:
	lw 	a5,8(a5)	# Non volatile Load offseted
	sw	a5,12(sp)
.LM36:
	beqz	a1,.L17
.LM37:
	li	a4,1
	lw 	a5,12(sp)	# Non volatile Load offseted
	sll	a0,a4,a0
.LVL12:
	or	a0,a0,a5
	sw	a0,12(sp)
.LM38:
	lw 	a4,12(sp)	# Non volatile Load offseted
	li	a5,437260288
	sw	a4,8(a5)
.LM39:
	add	sp,sp,16
	jr	ra
.LVL13:
.L17:
.LM40:
	li	a5,1
	sll	a0,a5,a0
.LVL14:
	not	a0,a0
	lw 	a5,12(sp)	# Non volatile Load offseted
	and	a0,a0,a5
	sw	a0,12(sp)
.LM41:
	lw 	a4,12(sp)	# Non volatile Load offseted
	li	a5,437260288
	sw	a4,8(a5)
.LM42:
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE4:
	.size	set_gpio_pin_value, .-set_gpio_pin_value
	.section	.text.get_gpio_pin_value,"ax",@progbits
	.align	2
	.globl	get_gpio_pin_value
	.type	get_gpio_pin_value, @function
get_gpio_pin_value:
.LFB5:
.LM43:
	.cfi_startproc
.LVL15:
.LM44:
	li	a5,437260288
.LM45:
	add	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM46:
	lw 	a5,4(a5)	# Non volatile Load offseted
	sw	a5,12(sp)
.LM47:
	lw 	a5,12(sp)	# Non volatile Load offseted
	sra	a0,a5,a0
.LVL16:
	p.bclr 	a0,a0,30,1 # Bit clear
	sw	a0,12(sp)
.LM48:
	lw 	a0,12(sp)	# Non volatile Load offseted
	add	sp,sp,16
	jr	ra
	.cfi_endproc
.LFE5:
	.size	get_gpio_pin_value, .-get_gpio_pin_value
	.section	.text.set_gpio_pin_irq_en,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_irq_en
	.type	set_gpio_pin_irq_en, @function
set_gpio_pin_irq_en:
.LFB6:
.LM49:
	.cfi_startproc
.LVL17:
.LM50:
	li	a5,437260288
.LM51:
	li	a4,1
.LM52:
	lw 	a5,12(a5)	# Non volatile Load offseted
.LVL18:
.LM53:
	sll	a0,a4,a0
.LVL19:
.LM54:
	beqz	a1,.L23
.LM55:
	or	a5,a0,a5
.LVL20:
.LM56:
	li	a4,437260288
	sw	a5,12(a4)
	ret
.L23:
.LM57:
	not	a0,a0
	and	a5,a0,a5
.LVL21:
.LM58:
	li	a4,437260288
	sw	a5,12(a4)
	ret
	.cfi_endproc
.LFE6:
	.size	set_gpio_pin_irq_en, .-set_gpio_pin_irq_en
	.section	.text.set_gpio_pin_irq_type,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_irq_type
	.type	set_gpio_pin_irq_type, @function
set_gpio_pin_irq_type:
.LFB7:
.LM59:
	.cfi_startproc
.LVL22:
.LM60:
	li	a5,437260288
.LM61:
	p.bclr 	a3,a1,30,1 # Bit clear
.LM62:
	lw 	a4,16(a5)	# Non volatile Load offseted
.LVL23:
.LM63:
	lw 	a5,20(a5)	# Non volatile Load offseted
.LVL24:
.LM64:
	bnez	a3,.L25
.LM65:
	li	a3,1
	sll	a0,a3,a0
.LVL25:
	not	a3,a0
	and	a4,a3,a4
.LVL26:
.L26:
.LM66:
	and	a1,a1,2
.LVL27:
.LM67:
	or	a3,a5,a0
.LM68:
	bnez	a1,.L28
.LM69:
	not	a0,a0
	and	a3,a0,a5
.LVL28:
.L28:
.LM70:
	li	a5,437260288
	add	a2,a5,16
.LM71:
	add	a5,a5,20
.LM72:
	sw	a4,0(a2)
.LM73:
	sw	a3,0(a5)
	ret
.LVL29:
.L25:
.LM74:
	li	a3,1
	sll	a0,a3,a0
.LVL30:
	or	a4,a4,a0
.LVL31:
	j	.L26
	.cfi_endproc
.LFE7:
	.size	set_gpio_pin_irq_type, .-set_gpio_pin_irq_type
	.section	.text.get_gpio_irq_status,"ax",@progbits
	.align	2
	.globl	get_gpio_irq_status
	.type	get_gpio_irq_status, @function
get_gpio_irq_status:
.LFB8:
.LM75:
	.cfi_startproc
.LM76:
	li	a0,437260288
.LM77:
	lw 	a0,24(a0)	# Non volatile Load offseted
	ret
	.cfi_endproc
.LFE8:
	.size	get_gpio_irq_status, .-get_gpio_irq_status
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x23e
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
	.4byte	.LASF3
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x72
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0xd
	.4byte	0x72
	.4byte	.LLST0
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0xd
	.4byte	0x72
	.4byte	.LLST1
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0xe
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0xf
	.4byte	0x72
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x7
	.4byte	0x72
	.byte	0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x18
	.4byte	0x72
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x18
	.4byte	0x72
	.4byte	.LLST2
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x19
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x2
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xf5
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1f
	.4byte	0x72
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1f
	.4byte	0x72
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x20
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0x29
	.4byte	0x72
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x12c
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x29
	.4byte	0x72
	.4byte	.LLST4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2a
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x2
	.4byte	.LASF9
	.byte	0x1
	.byte	0x31
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x31
	.4byte	0x72
	.4byte	.LLST5
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x31
	.4byte	0x72
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.string	"v"
	.byte	0x1
	.byte	0x32
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3b
	.4byte	0x72
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x19f
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3b
	.4byte	0x72
	.4byte	.LLST6
	.byte	0xa
	.string	"v"
	.byte	0x1
	.byte	0x3c
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x1
	.byte	0x42
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1dc
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x42
	.4byte	0x72
	.4byte	.LLST7
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x42
	.4byte	0x72
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0x72
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x2
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x22c
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0x72
	.4byte	.LLST8
	.byte	0x3
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4c
	.4byte	0x72
	.4byte	.LLST9
	.byte	0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4d
	.4byte	0x72
	.byte	0x1
	.byte	0x5e
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4e
	.4byte	0x72
	.4byte	.LLST10
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x61
	.4byte	0x72
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xa
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
	.byte	0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
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
	.ascii	"src"
	.byte	0
	.byte	0
	.string	"gpio.c"
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
	.byte	0x1c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x12
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x1c
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
	.4byte	.LM9
	.byte	0x2e
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x19
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
	.4byte	.LM15
	.byte	0x35
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x1a
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
	.byte	0x13
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
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
	.4byte	.LM26
	.byte	0x3f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x1a
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
	.4byte	.LM32
	.byte	0x47
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x1a
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
	.byte	0x13
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
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
	.4byte	.LM43
	.byte	0x51
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM48
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
	.4byte	.LM49
	.byte	0x58
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x1a
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
	.4byte	.LM59
	.byte	0x62
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x1a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0xf
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
	.4byte	.LM75
	.byte	0x77
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"pinnumber"
.LASF15:
	.string	"type"
.LASF2:
	.string	"old_function"
.LASF3:
	.string	"set_pin_function"
.LASF13:
	.string	"enable"
.LASF7:
	.string	"get_pin_function"
.LASF16:
	.string	"type0"
.LASF17:
	.string	"type1"
.LASF20:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF22:
	.string	"get_gpio_irq_status"
.LASF21:
	.string	"addr"
.LASF10:
	.string	"value"
.LASF1:
	.string	"function"
.LASF4:
	.string	"set_gpio_pin_direction"
.LASF9:
	.string	"set_gpio_pin_value"
.LASF19:
	.string	"src/gpio.c"
.LASF6:
	.string	"old_dir"
.LASF12:
	.string	"set_gpio_pin_irq_en"
.LASF14:
	.string	"set_gpio_pin_irq_type"
.LASF8:
	.string	"get_gpio_pin_direction"
.LASF5:
	.string	"direction"
.LASF18:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF11:
	.string	"get_gpio_pin_value"
	.ident	"GCC: (GNU) 5.2.0"
