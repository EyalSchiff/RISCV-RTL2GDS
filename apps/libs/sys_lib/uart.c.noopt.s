	.file	"uart.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.uart_set_cfg,"ax",@progbits
	.align	2
	.globl	uart_set_cfg
	.type	uart_set_cfg, @function
uart_set_cfg:
.LFB3:
	.file 1 "src/uart.c"
	.loc 1 26 0
	add	sp,sp,-32
.LCFI0:
	sw	s0,28(sp)
.LCFI1:
	add	s0,sp,32
.LCFI2:
	sw	a0,-20(s0)
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 1 28 0
	li	a5,437284864
	add	a5,a5,4
	lw	a4,0(a5)
	li	a5,437284864
	add	a5,a5,4
	or	a4,a4,2
	sw	a4,0(a5)
	.loc 1 29 0
	li	a5,437256192
	add	a5,a5,12
	li	a4,131
	sw	a4,0(a5)
	.loc 1 30 0
	lhu	a5,-22(s0)
	srl	a5,a5,8
	sll	a5,a5,16
	srl	a5,a5,16
	mv	a4,a5
	li	a5,437256192
	add	a5,a5,4
	and	a4,a4,255
	sw	a4,0(a5)
	.loc 1 31 0
	lhu	a4,-22(s0)
	li	a5,437256192
	and	a4,a4,255
	sw	a4,0(a5)
	.loc 1 32 0
	li	a5,437256192
	add	a5,a5,8
	li	a4,167
	sw	a4,0(a5)
	.loc 1 33 0
	li	a5,437256192
	add	a5,a5,12
	li	a4,3
	sw	a4,0(a5)
	.loc 1 35 0
	li	a5,437256192
	add	a5,a5,4
	lw	a5,0(a5)
	and	a4,a5,240
	li	a5,437256192
	add	a5,a5,4
	or	a4,a4,2
	sw	a4,0(a5)
	.loc 1 36 0
	nop
	lw	s0,28(sp)
.LCFI3:
	add	sp,sp,32
.LCFI4:
	jr	ra
.LFE3:
	.size	uart_set_cfg, .-uart_set_cfg
	.section	.text.uart_send,"ax",@progbits
	.align	2
	.globl	uart_send
	.type	uart_send, @function
uart_send:
.LFB4:
	.loc 1 38 0
	add	sp,sp,-48
.LCFI5:
	sw	s0,44(sp)
.LCFI6:
	add	s0,sp,48
.LCFI7:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 41 0
	j	.L3
.L7:
	.loc 1 43 0
	sw	zero,-20(s0)
	j	.L4
.L6:
	.loc 1 45 0
	nop
.L5:
	.loc 1 45 0 is_stmt 0 discriminator 1
	li	a5,437256192
	add	a5,a5,20
	lw	a5,0(a5)
	and	a5,a5,32
	beqz	a5,.L5
	.loc 1 47 0 is_stmt 1 discriminator 2
	lw	a5,-36(s0)
	add	a4,a5,1
	sw	a4,-36(s0)
	lbu	a4,0(a5)
	li	a5,437256192
	sw	a4,0(a5)
	.loc 1 49 0 discriminator 2
	lw	a5,-40(s0)
	add	a5,a5,-1
	sw	a5,-40(s0)
	.loc 1 43 0 discriminator 2
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 43 0 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bgtu	a4,a5,.L3
	.loc 1 43 0 discriminator 3
	lw	a5,-40(s0)
	bnez	a5,.L6
.L3:
	.loc 1 41 0 is_stmt 1
	lw	a5,-40(s0)
	bnez	a5,.L7
	.loc 1 52 0
	nop
	lw	s0,44(sp)
.LCFI8:
	add	sp,sp,48
.LCFI9:
	jr	ra
.LFE4:
	.size	uart_send, .-uart_send
	.section	.text.uart_getchar,"ax",@progbits
	.align	2
	.globl	uart_getchar
	.type	uart_getchar, @function
uart_getchar:
.LFB5:
	.loc 1 54 0
	add	sp,sp,-16
.LCFI10:
	sw	s0,12(sp)
.LCFI11:
	add	s0,sp,16
.LCFI12:
	.loc 1 55 0
	nop
.L9:
	.loc 1 55 0 is_stmt 0 discriminator 1
	li	a5,437256192
	add	a5,a5,20
	lw	a5,0(a5)
	and	a4,a5,1
	li	a5,1
	bne	a4,a5,.L9
	.loc 1 57 0 is_stmt 1
	li	a5,437256192
	lw	a5,0(a5)
	and	a5,a5,0xff
	.loc 1 58 0
	mv	a0,a5
	lw	s0,12(sp)
.LCFI13:
	add	sp,sp,16
.LCFI14:
	jr	ra
.LFE5:
	.size	uart_getchar, .-uart_getchar
	.section	.text.uart_sendchar,"ax",@progbits
	.align	2
	.globl	uart_sendchar
	.type	uart_sendchar, @function
uart_sendchar:
.LFB6:
	.loc 1 60 0
	add	sp,sp,-32
.LCFI15:
	sw	s0,28(sp)
.LCFI16:
	add	s0,sp,32
.LCFI17:
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 62 0
	nop
.L12:
	.loc 1 62 0 is_stmt 0 discriminator 1
	li	a5,437256192
	add	a5,a5,20
	lw	a5,0(a5)
	and	a5,a5,32
	beqz	a5,.L12
	.loc 1 65 0 is_stmt 1
	li	a5,437256192
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 1 66 0
	nop
	lw	s0,28(sp)
.LCFI18:
	add	sp,sp,32
.LCFI19:
	jr	ra
.LFE6:
	.size	uart_sendchar, .-uart_sendchar
	.section	.text.uart_wait_tx_done,"ax",@progbits
	.align	2
	.globl	uart_wait_tx_done
	.type	uart_wait_tx_done, @function
uart_wait_tx_done:
.LFB7:
	.loc 1 68 0
	add	sp,sp,-16
.LCFI20:
	sw	s0,12(sp)
.LCFI21:
	add	s0,sp,16
.LCFI22:
	.loc 1 70 0
	nop
.L14:
	.loc 1 70 0 is_stmt 0 discriminator 1
	li	a5,437256192
	add	a5,a5,20
	lw	a5,0(a5)
	and	a5,a5,64
	beqz	a5,.L14
	.loc 1 71 0 is_stmt 1
	nop
	lw	s0,12(sp)
.LCFI23:
	add	sp,sp,16
.LCFI24:
	jr	ra
.LFE7:
	.size	uart_wait_tx_done, .-uart_wait_tx_done
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
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
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
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
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
	.4byte	.LCFI15-.LFB6
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xc
	.byte	0x8
	.byte	0
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
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
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
	.4byte	0x14d
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x39
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
	.byte	0x24
	.4byte	0x3a
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x44
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb4
	.byte	0x7
	.string	"c"
	.byte	0x1
	.byte	0x3c
	.4byte	0xbb
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x8
	.4byte	0xb4
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x36
	.4byte	0xb4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x26
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0x7
	.string	"str"
	.byte	0x1
	.byte	0x26
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x7
	.string	"len"
	.byte	0x1
	.byte	0x26
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xbb
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.4byte	0x76
	.byte	0x2
	.byte	0x91
	.byte	0x6a
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.4byte	0x6f
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
.LASF20:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF19:
	.string	"src/uart.c"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"clk_counter"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"__uint16_t"
.LASF12:
	.string	"uart_wait_tx_done"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF18:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF21:
	.string	"uart_set_cfg"
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"uart_getchar"
.LASF11:
	.string	"char"
.LASF15:
	.string	"uart_send"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint16_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"uart_sendchar"
.LASF16:
	.string	"parity"
	.ident	"GCC: (GNU) 7.1.1 20170509"
