	.file	"int.c"
	.text
.Ltext0:
	.section	.text.ISR_I2C,"ax",@progbits
	.align	2
	.weak	ISR_I2C
	.type	ISR_I2C, @function
ISR_I2C:
.LFB5:
.LM1:
	.cfi_startproc
.L2:
	j	.L2
	.cfi_endproc
.LFE5:
	.size	ISR_I2C, .-ISR_I2C
	.section	.text.ISR_UART,"ax",@progbits
	.align	2
	.weak	ISR_UART
	.type	ISR_UART, @function
ISR_UART:
.LFB6:
.LM2:
	.cfi_startproc
.L4:
	j	.L4
	.cfi_endproc
.LFE6:
	.size	ISR_UART, .-ISR_UART
	.section	.text.ISR_GPIO,"ax",@progbits
	.align	2
	.weak	ISR_GPIO
	.type	ISR_GPIO, @function
ISR_GPIO:
.LFB7:
.LM3:
	.cfi_startproc
.L6:
	j	.L6
	.cfi_endproc
.LFE7:
	.size	ISR_GPIO, .-ISR_GPIO
	.section	.text.ISR_SPIM0,"ax",@progbits
	.align	2
	.weak	ISR_SPIM0
	.type	ISR_SPIM0, @function
ISR_SPIM0:
.LFB8:
.LM4:
	.cfi_startproc
.L8:
	j	.L8
	.cfi_endproc
.LFE8:
	.size	ISR_SPIM0, .-ISR_SPIM0
	.section	.text.ISR_SPIM1,"ax",@progbits
	.align	2
	.weak	ISR_SPIM1
	.type	ISR_SPIM1, @function
ISR_SPIM1:
.LFB9:
.LM5:
	.cfi_startproc
.L10:
	j	.L10
	.cfi_endproc
.LFE9:
	.size	ISR_SPIM1, .-ISR_SPIM1
	.section	.text.ISR_TA_OVF,"ax",@progbits
	.align	2
	.weak	ISR_TA_OVF
	.type	ISR_TA_OVF, @function
ISR_TA_OVF:
.LFB10:
.LM6:
	.cfi_startproc
.L12:
	j	.L12
	.cfi_endproc
.LFE10:
	.size	ISR_TA_OVF, .-ISR_TA_OVF
	.section	.text.ISR_TA_CMP,"ax",@progbits
	.align	2
	.weak	ISR_TA_CMP
	.type	ISR_TA_CMP, @function
ISR_TA_CMP:
.LFB11:
.LM7:
	.cfi_startproc
.L14:
	j	.L14
	.cfi_endproc
.LFE11:
	.size	ISR_TA_CMP, .-ISR_TA_CMP
	.section	.text.ISR_TB_OVF,"ax",@progbits
	.align	2
	.weak	ISR_TB_OVF
	.type	ISR_TB_OVF, @function
ISR_TB_OVF:
.LFB12:
.LM8:
	.cfi_startproc
.L16:
	j	.L16
	.cfi_endproc
.LFE12:
	.size	ISR_TB_OVF, .-ISR_TB_OVF
	.section	.text.ISR_TB_CMP,"ax",@progbits
	.align	2
	.weak	ISR_TB_CMP
	.type	ISR_TB_CMP, @function
ISR_TB_CMP:
.LFB13:
.LM9:
	.cfi_startproc
.L18:
	j	.L18
	.cfi_endproc
.LFE13:
	.size	ISR_TB_CMP, .-ISR_TB_CMP
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x108
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
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x1
	.byte	0x17
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x23
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF18
	.byte	0x1
	.byte	0x37
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
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
	.string	"int.c"
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
.LELTP0:
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x2d
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
	.4byte	.LM2
	.byte	0x31
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
	.4byte	.LM3
	.byte	0x35
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
	.4byte	.LM4
	.byte	0x39
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x3d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x41
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x45
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x49
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x4d
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF12:
	.string	"ISR_GPIO"
.LASF13:
	.string	"ISR_SPIM0"
.LASF14:
	.string	"ISR_SPIM1"
.LASF15:
	.string	"ISR_TA_OVF"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF10:
	.string	"ISR_I2C"
.LASF16:
	.string	"ISR_TA_CMP"
.LASF17:
	.string	"ISR_TB_OVF"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"src/int.c"
.LASF11:
	.string	"ISR_UART"
.LASF18:
	.string	"ISR_TB_CMP"
.LASF1:
	.string	"long long int"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"GNU C11 5.2.0 -m32 -m32 -march=IMXpulpv2 -g -O3 -fdata-sections -ffunction-sections"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
	.ident	"GCC: (GNU) 5.2.0"
