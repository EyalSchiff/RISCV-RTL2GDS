	.file	"timer.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.reset_timer,"ax",@progbits
	.align	2
	.globl	reset_timer
	.type	reset_timer, @function
reset_timer:
.LFB0:
	.file 1 "src/timer.c"
	.loc 1 13 0
	add	sp,sp,-16
.LCFI0:
	sw	s0,12(sp)
.LCFI1:
	add	s0,sp,16
.LCFI2:
	.loc 1 14 0
	li	a5,437268480
	sw	zero,0(a5)
	.loc 1 15 0
	nop
	lw	s0,12(sp)
.LCFI3:
	add	sp,sp,16
.LCFI4:
	jr	ra
.LFE0:
	.size	reset_timer, .-reset_timer
	.section	.text.start_timer,"ax",@progbits
	.align	2
	.globl	start_timer
	.type	start_timer, @function
start_timer:
.LFB1:
	.loc 1 17 0
	add	sp,sp,-16
.LCFI5:
	sw	s0,12(sp)
.LCFI6:
	add	s0,sp,16
.LCFI7:
	.loc 1 18 0
	li	a5,437268480
	add	a5,a5,4
	li	a4,1
	sw	a4,0(a5)
	.loc 1 19 0
	nop
	lw	s0,12(sp)
.LCFI8:
	add	sp,sp,16
.LCFI9:
	jr	ra
.LFE1:
	.size	start_timer, .-start_timer
	.section	.text.stop_timer,"ax",@progbits
	.align	2
	.globl	stop_timer
	.type	stop_timer, @function
stop_timer:
.LFB2:
	.loc 1 21 0
	add	sp,sp,-16
.LCFI10:
	sw	s0,12(sp)
.LCFI11:
	add	s0,sp,16
.LCFI12:
	.loc 1 22 0
	li	a5,437268480
	add	a5,a5,4
	sw	zero,0(a5)
	.loc 1 23 0
	nop
	lw	s0,12(sp)
.LCFI13:
	add	sp,sp,16
.LCFI14:
	jr	ra
.LFE2:
	.size	stop_timer, .-stop_timer
	.section	.text.get_time,"ax",@progbits
	.align	2
	.globl	get_time
	.type	get_time, @function
get_time:
.LFB3:
	.loc 1 25 0
	add	sp,sp,-16
.LCFI15:
	sw	s0,12(sp)
.LCFI16:
	add	s0,sp,16
.LCFI17:
	.loc 1 26 0
	li	a5,437268480
	lw	a5,0(a5)
	.loc 1 27 0
	mv	a0,a5
	lw	s0,12(sp)
.LCFI18:
	add	sp,sp,16
.LCFI19:
	jr	ra
.LFE3:
	.size	get_time, .-get_time
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
	.byte	0x10
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI10-.LFB2
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI15-.LFB3
	.byte	0xe
	.byte	0x10
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
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x71
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF3
	.byte	0xc
	.4byte	.LASF4
	.4byte	.LASF5
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF6
	.byte	0x1
	.byte	0x19
	.4byte	0x3a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x15
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x11
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.byte	0x97,0x42
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"reset_timer"
.LASF5:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF0:
	.string	"stop_timer"
.LASF3:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF4:
	.string	"src/timer.c"
.LASF1:
	.string	"start_timer"
.LASF6:
	.string	"get_time"
	.ident	"GCC: (GNU) 7.1.1 20170509"
