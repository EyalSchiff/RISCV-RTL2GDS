	.file	"exceptions.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.default_exception_handler_c,"ax",@progbits
	.align	2
	.weak	default_exception_handler_c
	.type	default_exception_handler_c, @function
default_exception_handler_c:
.LFB3:
	.file 1 "src/exceptions.c"
	.loc 1 18 0
	add	sp,sp,-16
.LCFI0:
	sw	s0,12(sp)
.LCFI1:
	add	s0,sp,16
.LCFI2:
.L2:
	.loc 1 19 0 discriminator 1
	j	.L2
.LFE3:
	.size	default_exception_handler_c, .-default_exception_handler_c
	.section	.text.illegal_insn_handler_c,"ax",@progbits
	.align	2
	.weak	illegal_insn_handler_c
	.type	illegal_insn_handler_c, @function
illegal_insn_handler_c:
.LFB4:
	.loc 1 25 0
	add	sp,sp,-16
.LCFI3:
	sw	s0,12(sp)
.LCFI4:
	add	s0,sp,16
.LCFI5:
.L4:
	.loc 1 26 0 discriminator 1
	j	.L4
.LFE4:
	.size	illegal_insn_handler_c, .-illegal_insn_handler_c
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
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE2:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF5
	.byte	0xc
	.4byte	.LASF6
	.4byte	.LASF7
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x18
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0x11
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.byte	0x8
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
	.byte	0xe
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
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"default_exception_handler_c"
.LASF6:
	.string	"src/exceptions.c"
.LASF7:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF2:
	.string	"long double"
.LASF5:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF3:
	.string	"illegal_insn_handler_c"
.LASF1:
	.string	"long long int"
	.ident	"GCC: (GNU) 7.1.1 20170509"
