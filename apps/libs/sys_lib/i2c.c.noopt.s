	.file	"i2c.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.i2c_setup,"ax",@progbits
	.align	2
	.globl	i2c_setup
	.type	i2c_setup, @function
i2c_setup:
.LFB0:
	.file 1 "src/i2c.c"
	.loc 1 13 0
	add	sp,sp,-32
.LCFI0:
	sw	s0,28(sp)
.LCFI1:
	add	s0,sp,32
.LCFI2:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 14 0
	li	a5,437276672
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 15 0
	li	a5,437276672
	add	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 16 0
	nop
	lw	s0,28(sp)
.LCFI3:
	add	sp,sp,32
.LCFI4:
	jr	ra
.LFE0:
	.size	i2c_setup, .-i2c_setup
	.section	.text.i2c_get_ack,"ax",@progbits
	.align	2
	.globl	i2c_get_ack
	.type	i2c_get_ack, @function
i2c_get_ack:
.LFB1:
	.loc 1 18 0
	add	sp,sp,-16
.LCFI5:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI6:
	add	s0,sp,16
.LCFI7:
	.loc 1 19 0
	nop
.L3:
	.loc 1 19 0 is_stmt 0 discriminator 1
	call	i2c_get_status
	mv	a5,a0
	and	a5,a5,2
	beqz	a5,.L3
	.loc 1 20 0 is_stmt 1
	nop
.L4:
	.loc 1 20 0 is_stmt 0 discriminator 1
	call	i2c_get_status
	mv	a5,a0
	and	a5,a5,2
	bnez	a5,.L4
	.loc 1 21 0 is_stmt 1
	call	i2c_get_status
	mv	a5,a0
	and	a5,a5,128
	seqz	a5,a5
	and	a5,a5,0xff
	.loc 1 22 0
	mv	a0,a5
	lw	ra,12(sp)
.LCFI8:
	lw	s0,8(sp)
.LCFI9:
	add	sp,sp,16
.LCFI10:
	jr	ra
.LFE1:
	.size	i2c_get_ack, .-i2c_get_ack
	.section	.text.i2c_send_data,"ax",@progbits
	.align	2
	.globl	i2c_send_data
	.type	i2c_send_data, @function
i2c_send_data:
.LFB2:
	.loc 1 24 0
	add	sp,sp,-32
.LCFI11:
	sw	s0,28(sp)
.LCFI12:
	add	s0,sp,32
.LCFI13:
	sw	a0,-20(s0)
	.loc 1 25 0
	li	a5,437276672
	add	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 26 0
	nop
	lw	s0,28(sp)
.LCFI14:
	add	sp,sp,32
.LCFI15:
	jr	ra
.LFE2:
	.size	i2c_send_data, .-i2c_send_data
	.section	.text.i2c_send_command,"ax",@progbits
	.align	2
	.globl	i2c_send_command
	.type	i2c_send_command, @function
i2c_send_command:
.LFB3:
	.loc 1 28 0
	add	sp,sp,-32
.LCFI16:
	sw	s0,28(sp)
.LCFI17:
	add	s0,sp,32
.LCFI18:
	sw	a0,-20(s0)
	.loc 1 29 0
	li	a5,437276672
	add	a5,a5,20
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 30 0
	nop
	lw	s0,28(sp)
.LCFI19:
	add	sp,sp,32
.LCFI20:
	jr	ra
.LFE3:
	.size	i2c_send_command, .-i2c_send_command
	.section	.text.i2c_get_status,"ax",@progbits
	.align	2
	.globl	i2c_get_status
	.type	i2c_get_status, @function
i2c_get_status:
.LFB4:
	.loc 1 32 0
	add	sp,sp,-32
.LCFI21:
	sw	s0,28(sp)
.LCFI22:
	add	s0,sp,32
.LCFI23:
	.loc 1 34 0
	li	a5,437276672
	add	a5,a5,12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 35 0
	lw	a5,-20(s0)
	.loc 1 36 0
	mv	a0,a5
	lw	s0,28(sp)
.LCFI24:
	add	sp,sp,32
.LCFI25:
	jr	ra
.LFE4:
	.size	i2c_get_status, .-i2c_get_status
	.section	.text.i2c_get_data,"ax",@progbits
	.align	2
	.globl	i2c_get_data
	.type	i2c_get_data, @function
i2c_get_data:
.LFB5:
	.loc 1 38 0
	add	sp,sp,-32
.LCFI26:
	sw	s0,28(sp)
.LCFI27:
	add	s0,sp,32
.LCFI28:
	.loc 1 40 0
	li	a5,437276672
	add	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 41 0
	lw	a5,-20(s0)
	.loc 1 42 0
	mv	a0,a5
	lw	s0,28(sp)
.LCFI29:
	add	sp,sp,32
.LCFI30:
	jr	ra
.LFE5:
	.size	i2c_get_data, .-i2c_get_data
	.section	.text.i2c_busy,"ax",@progbits
	.align	2
	.globl	i2c_busy
	.type	i2c_busy, @function
i2c_busy:
.LFB6:
	.loc 1 44 0
	add	sp,sp,-16
.LCFI31:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI32:
	add	s0,sp,16
.LCFI33:
	.loc 1 45 0
	call	i2c_get_status
	mv	a5,a0
	and	a5,a5,64
	add	a5,a5,-64
	seqz	a5,a5
	and	a5,a5,0xff
	.loc 1 46 0
	mv	a0,a5
	lw	ra,12(sp)
.LCFI34:
	lw	s0,8(sp)
.LCFI35:
	add	sp,sp,16
.LCFI36:
	jr	ra
.LFE6:
	.size	i2c_busy, .-i2c_busy
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI5-.LFB1
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI11-.LFB2
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI16-.LFB3
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI21-.LFB4
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI26-.LFB5
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI31-.LFB6
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE12:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF10
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF12
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	0x3a
	.byte	0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x26
	.4byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x20
	.4byte	0x3a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x96
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xba
	.byte	0x8
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1c
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x18
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xde
	.byte	0x8
	.4byte	.LASF5
	.byte	0x1
	.byte	0x18
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF7
	.byte	0x1
	.byte	0x12
	.4byte	0x3a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0xd
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x8
	.4byte	.LASF9
	.byte	0x1
	.byte	0xd
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x68
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
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x97,0x42
	.byte	0x19
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
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"i2c_setup"
.LASF11:
	.string	"src/i2c.c"
.LASF3:
	.string	"i2c_send_command"
.LASF6:
	.string	"i2c_busy"
.LASF7:
	.string	"i2c_get_ack"
.LASF1:
	.string	"i2c_get_status"
.LASF5:
	.string	"value"
.LASF12:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF2:
	.string	"status"
.LASF4:
	.string	"i2c_send_data"
.LASF8:
	.string	"prescaler"
.LASF10:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF9:
	.string	"enable"
.LASF0:
	.string	"i2c_get_data"
	.ident	"GCC: (GNU) 7.1.1 20170509"
