	.file	"uart.c"
	.text
.Ltext0:
	.section	.text.uart_set_cfg,"ax",@progbits
	.align	2
	.globl	uart_set_cfg
	.type	uart_set_cfg, @function
uart_set_cfg:
.LFB3:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	li	a4,437284864
	add	a4,a4,4
	lw	a2,0(a4)
.LM3:
	li	a5,437256192
.LM4:
	p.bset 	a2,a2,0,1 # Bit set
	sw	a2,0(a4)
.LM5:
	add	a3,a5,4
.LM6:
	add	a0,a5,12
.LVL1:
.LM7:
	srl	a6,a1,8
.LM8:
	li	a4,131
.LM9:
	and	a1,a1,0xff
.LVL2:
.LM10:
	sw	a4,0(a0)
.LM11:
	sw	a6,0(a3)
.LM12:
	li	a4,167
.LM13:
	p.sw	a1,8(a5!)	# store post modify imm
.LM14:
	sw	a4,0(a5)
.LM15:
	li	a5,3
	sw	a5,0(a0)
.LM16:
	lw	a5,0(a3)
	and	a5,a5,240
	p.bset 	a5,a5,0,1 # Bit set
	sw	a5,0(a3)
	ret
	.cfi_endproc
.LFE3:
	.size	uart_set_cfg, .-uart_set_cfg
	.section	.text.uart_send,"ax",@progbits
	.align	2
	.globl	uart_send
	.type	uart_send, @function
uart_send:
.LFB4:
.LM17:
	.cfi_startproc
.LVL3:
.LM18:
	li	a4,437256192
	add	a4,a4,20
.LM19:
	beqz	a1,.L2
.L18:
.LVL4:
.LM20:
	li	a3,64
.LVL5:
.L4:
	lw	a5,0(a4)
	and	a5,a5,32
	beqz	a5,.L4
.LM21:
	p.lbu	a2,1(a0!)	# load post inc, ext
.LVL6:
	li	a5,437256192
.LM22:
	add	a1,a1,-1
.LVL7:
.LM23:
	sw	a2,0(a5)
.LM24:
	add	a3,a3,-1
	bnez	a3,.L13
.LM25:
	bnez	a1,.L18
.L2:
	ret
.L13:
.LM26:
	bnez	a1,.L4
	ret
	.cfi_endproc
.LFE4:
	.size	uart_send, .-uart_send
	.section	.text.uart_getchar,"ax",@progbits
	.align	2
	.globl	uart_getchar
	.type	uart_getchar, @function
uart_getchar:
.LFB5:
.LM27:
	.cfi_startproc
.LM28:
	li	a4,437256192
	add	a4,a4,20
.L20:
.LM29:
	lw	a5,0(a4)
	p.bclr 	a5,a5,30,1 # Bit clear
	beqz	a5,.L20
.LM30:
	li	a5,437256192
	lw	a0,0(a5)
.LM31:
	and	a0,a0,0xff
	ret
	.cfi_endproc
.LFE5:
	.size	uart_getchar, .-uart_getchar
	.section	.text.uart_sendchar,"ax",@progbits
	.align	2
	.globl	uart_sendchar
	.type	uart_sendchar, @function
uart_sendchar:
.LFB6:
.LM32:
	.cfi_startproc
.LVL8:
.LM33:
	li	a4,437256192
	add	a4,a4,20
.L24:
.LM34:
	lw	a5,0(a4)
	and	a5,a5,32
	beqz	a5,.L24
.LM35:
	li	a5,437256192
	sw	a0,0(a5)
	ret
	.cfi_endproc
.LFE6:
	.size	uart_sendchar, .-uart_sendchar
	.section	.text.uart_wait_tx_done,"ax",@progbits
	.align	2
	.globl	uart_wait_tx_done
	.type	uart_wait_tx_done, @function
uart_wait_tx_done:
.LFB7:
.LM36:
	.cfi_startproc
.LM37:
	li	a4,437256192
	add	a4,a4,20
.L28:
.LM38:
	lw	a5,0(a4)
	and	a5,a5,64
	beqz	a5,.L28
.LM39:
	ret
	.cfi_endproc
.LFE7:
	.size	uart_wait_tx_done, .-uart_wait_tx_done
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x155
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.4byte	0x45
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
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
	.byte	0x21
	.4byte	0x3a
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1a
	.4byte	0x68
	.4byte	.LLST0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1a
	.4byte	0x76
	.4byte	.LLST1
	.byte	0x7
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.4byte	0x6f
	.byte	0
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x26
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xff
	.byte	0x8
	.string	"str"
	.byte	0x1
	.byte	0x26
	.4byte	0xff
	.4byte	.LLST2
	.byte	0x8
	.string	"len"
	.byte	0x1
	.byte	0x26
	.4byte	0x6f
	.4byte	.LLST3
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x6f
	.4byte	.LLST4
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x10c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0xb
	.4byte	0x105
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x36
	.4byte	0x105
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x147
	.byte	0xd
	.string	"c"
	.byte	0x1
	.byte	0x3c
	.4byte	0x10c
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x97,0x42
	.byte	0x19
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-mas"
	.ascii	"ter/install/riscv32-unknown-elf/include"
	.byte	0
	.ascii	"/ourwork/prime/users/udik/pulp_RI5CY/ri5cy_gnu_toolchain-mas"
	.ascii	"ter/install/riscv32-unknown-elf/include/machine"
	.byte	0
	.ascii	"src"
	.byte	0
	.byte	0
	.string	"uart.c"
	.byte	0x3
	.byte	0
	.byte	0
	.string	"machine/_default_types.h"
	.byte	0x1
	.byte	0
	.byte	0
	.string	"stdint.h"
	.byte	0x1
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
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x16
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
	.4byte	.LM7
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x16
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x19
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
	.4byte	.LM17
	.byte	0x3c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x1e
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x13
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x15
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x3
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
	.byte	0x4c
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
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
	.4byte	.LM32
	.byte	0x52
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x6
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
	.4byte	.LM36
	.byte	0x5a
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x19
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF20:
	.string	"src/uart.c"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"clk_counter"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"__uint16_t"
.LASF18:
	.string	"uart_wait_tx_done"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF13:
	.string	"uart_set_cfg"
.LASF6:
	.string	"long long int"
.LASF17:
	.string	"uart_getchar"
.LASF15:
	.string	"char"
.LASF14:
	.string	"uart_send"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint16_t"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"uart_sendchar"
.LASF11:
	.string	"parity"
	.ident	"GCC: (GNU) 5.2.0"
