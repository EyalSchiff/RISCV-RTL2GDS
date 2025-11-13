	.file	"int.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.ISR_I2C,"ax",@progbits
	.align	2
	.weak	ISR_I2C
	.type	ISR_I2C, @function
ISR_I2C:
.LFB5:
	.file 1 "src/int.c"
	.loc 1 23 0
	add	sp,sp,-16
.LCFI0:
	sw	s0,12(sp)
.LCFI1:
	add	s0,sp,16
.LCFI2:
.L2:
	.loc 1 23 0 discriminator 1
	j	.L2
.LFE5:
	.size	ISR_I2C, .-ISR_I2C
	.section	.text.ISR_UART,"ax",@progbits
	.align	2
	.weak	ISR_UART
	.type	ISR_UART, @function
ISR_UART:
.LFB6:
	.loc 1 27 0
	add	sp,sp,-16
.LCFI3:
	sw	s0,12(sp)
.LCFI4:
	add	s0,sp,16
.LCFI5:
.L4:
	.loc 1 27 0 discriminator 1
	j	.L4
.LFE6:
	.size	ISR_UART, .-ISR_UART
	.section	.text.ISR_GPIO,"ax",@progbits
	.align	2
	.weak	ISR_GPIO
	.type	ISR_GPIO, @function
ISR_GPIO:
.LFB7:
	.loc 1 31 0
	add	sp,sp,-16
.LCFI6:
	sw	s0,12(sp)
.LCFI7:
	add	s0,sp,16
.LCFI8:
.L6:
	.loc 1 31 0 discriminator 1
	j	.L6
.LFE7:
	.size	ISR_GPIO, .-ISR_GPIO
	.section	.text.ISR_SPIM0,"ax",@progbits
	.align	2
	.weak	ISR_SPIM0
	.type	ISR_SPIM0, @function
ISR_SPIM0:
.LFB8:
	.loc 1 35 0
	add	sp,sp,-16
.LCFI9:
	sw	s0,12(sp)
.LCFI10:
	add	s0,sp,16
.LCFI11:
.L8:
	.loc 1 35 0 discriminator 1
	j	.L8
.LFE8:
	.size	ISR_SPIM0, .-ISR_SPIM0
	.section	.text.ISR_SPIM1,"ax",@progbits
	.align	2
	.weak	ISR_SPIM1
	.type	ISR_SPIM1, @function
ISR_SPIM1:
.LFB9:
	.loc 1 39 0
	add	sp,sp,-16
.LCFI12:
	sw	s0,12(sp)
.LCFI13:
	add	s0,sp,16
.LCFI14:
.L10:
	.loc 1 39 0 discriminator 1
	j	.L10
.LFE9:
	.size	ISR_SPIM1, .-ISR_SPIM1
	.section	.text.ISR_TA_OVF,"ax",@progbits
	.align	2
	.weak	ISR_TA_OVF
	.type	ISR_TA_OVF, @function
ISR_TA_OVF:
.LFB10:
	.loc 1 43 0
	add	sp,sp,-16
.LCFI15:
	sw	s0,12(sp)
.LCFI16:
	add	s0,sp,16
.LCFI17:
.L12:
	.loc 1 43 0 discriminator 1
	j	.L12
.LFE10:
	.size	ISR_TA_OVF, .-ISR_TA_OVF
	.section	.text.ISR_TA_CMP,"ax",@progbits
	.align	2
	.weak	ISR_TA_CMP
	.type	ISR_TA_CMP, @function
ISR_TA_CMP:
.LFB11:
	.loc 1 47 0
	add	sp,sp,-16
.LCFI18:
	sw	s0,12(sp)
.LCFI19:
	add	s0,sp,16
.LCFI20:
.L14:
	.loc 1 47 0 discriminator 1
	j	.L14
.LFE11:
	.size	ISR_TA_CMP, .-ISR_TA_CMP
	.section	.text.ISR_TB_OVF,"ax",@progbits
	.align	2
	.weak	ISR_TB_OVF
	.type	ISR_TB_OVF, @function
ISR_TB_OVF:
.LFB12:
	.loc 1 51 0
	add	sp,sp,-16
.LCFI21:
	sw	s0,12(sp)
.LCFI22:
	add	s0,sp,16
.LCFI23:
.L16:
	.loc 1 51 0 discriminator 1
	j	.L16
.LFE12:
	.size	ISR_TB_OVF, .-ISR_TB_OVF
	.section	.text.ISR_TB_CMP,"ax",@progbits
	.align	2
	.weak	ISR_TB_CMP
	.type	ISR_TB_CMP, @function
ISR_TB_CMP:
.LFB13:
	.loc 1 55 0
	add	sp,sp,-16
.LCFI24:
	sw	s0,12(sp)
.LCFI25:
	add	s0,sp,16
.LCFI26:
.L18:
	.loc 1 55 0 discriminator 1
	j	.L18
.LFE13:
	.size	ISR_TB_CMP, .-ISR_TB_CMP
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI15-.LFB10
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
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI18-.LFB11
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI21-.LFB12
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI24-.LFB13
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xc
	.byte	0x8
	.byte	0
	.align	2
.LEFDE16:
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
	.byte	0x10
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
	.byte	0x37
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.byte	0x23
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF16:
	.string	"ISR_GPIO"
.LASF15:
	.string	"ISR_SPIM0"
.LASF14:
	.string	"ISR_SPIM1"
.LASF13:
	.string	"ISR_TA_OVF"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF18:
	.string	"ISR_I2C"
.LASF12:
	.string	"ISR_TA_CMP"
.LASF11:
	.string	"ISR_TB_OVF"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"src/int.c"
.LASF19:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF17:
	.string	"ISR_UART"
.LASF10:
	.string	"ISR_TB_CMP"
.LASF1:
	.string	"long long int"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
	.ident	"GCC: (GNU) 7.1.1 20170509"
