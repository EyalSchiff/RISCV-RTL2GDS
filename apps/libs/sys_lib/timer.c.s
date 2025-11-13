	.file	"timer.c"
	.text
.Ltext0:
	.section	.text.reset_timer,"ax",@progbits
	.align	2
	.globl	reset_timer
	.type	reset_timer, @function
reset_timer:
.LFB0:
.LM1:
	.cfi_startproc
.LM2:
	li	a5,437268480
	sw	zero,0(a5)
	ret
	.cfi_endproc
.LFE0:
	.size	reset_timer, .-reset_timer
	.section	.text.start_timer,"ax",@progbits
	.align	2
	.globl	start_timer
	.type	start_timer, @function
start_timer:
.LFB1:
.LM3:
	.cfi_startproc
.LM4:
	li	a4,1
	li	a5,437268480
	sw	a4,4(a5)
	ret
	.cfi_endproc
.LFE1:
	.size	start_timer, .-start_timer
	.section	.text.stop_timer,"ax",@progbits
	.align	2
	.globl	stop_timer
	.type	stop_timer, @function
stop_timer:
.LFB2:
.LM5:
	.cfi_startproc
.LM6:
	li	a5,437268480
	sw	zero,4(a5)
	ret
	.cfi_endproc
.LFE2:
	.size	stop_timer, .-stop_timer
	.section	.text.get_time,"ax",@progbits
	.align	2
	.globl	get_time
	.type	get_time, @function
get_time:
.LFB3:
.LM7:
	.cfi_startproc
.LM8:
	li	a5,437268480
	lw	a0,0(a5)
.LM9:
	ret
	.cfi_endproc
.LFE3:
	.size	get_time, .-get_time
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
	.4byte	.LASF0
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x11
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LASF2
	.byte	0x1
	.byte	0x15
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x19
	.4byte	0x6d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.string	"timer.c"
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
	.4byte	.LFE0
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x27
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
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
	.4byte	.LM5
	.byte	0x2b
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
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
	.4byte	.LM7
	.byte	0x2f
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF2:
	.string	"stop_timer"
.LASF4:
	.string	"src/timer.c"
.LASF0:
	.string	"reset_timer"
.LASF3:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF6:
	.string	"get_time"
.LASF1:
	.string	"start_timer"
	.ident	"GCC: (GNU) 5.2.0"
