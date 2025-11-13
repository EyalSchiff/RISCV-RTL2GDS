	.file	"gpio.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.set_pin_function,"ax",@progbits
	.align	2
	.globl	set_pin_function
	.type	set_pin_function, @function
set_pin_function:
.LFB0:
	.file 1 "src/gpio.c"
	.loc 1 13 0
	add	sp,sp,-48
.LCFI0:
	sw	s0,44(sp)
.LCFI1:
	add	s0,sp,48
.LCFI2:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 18 0
	li	a5,437284864
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 19 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 20 0
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 21 0
	li	a5,437284864
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 22 0
	nop
	lw	s0,44(sp)
.LCFI3:
	add	sp,sp,48
.LCFI4:
	jr	ra
.LFE0:
	.size	set_pin_function, .-set_pin_function
	.section	.text.get_pin_function,"ax",@progbits
	.align	2
	.globl	get_pin_function
	.type	get_pin_function, @function
get_pin_function:
.LFB1:
	.loc 1 24 0
	add	sp,sp,-48
.LCFI5:
	sw	s0,44(sp)
.LCFI6:
	add	s0,sp,48
.LCFI7:
	sw	a0,-36(s0)
	.loc 1 26 0
	li	a5,437284864
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 27 0
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sra	a5,a4,a5
	and	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 28 0
	lw	a5,-20(s0)
	.loc 1 29 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI8:
	add	sp,sp,48
.LCFI9:
	jr	ra
.LFE1:
	.size	get_pin_function, .-get_pin_function
	.section	.text.set_gpio_pin_direction,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_direction
	.type	set_gpio_pin_direction, @function
set_gpio_pin_direction:
.LFB2:
	.loc 1 31 0
	add	sp,sp,-48
.LCFI10:
	sw	s0,44(sp)
.LCFI11:
	add	s0,sp,48
.LCFI12:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 33 0
	li	a5,437260288
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 34 0
	lw	a5,-40(s0)
	bnez	a5,.L5
	.loc 1 35 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L6
.L5:
	.loc 1 37 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
.L6:
	.loc 1 38 0
	li	a5,437260288
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 39 0
	nop
	lw	s0,44(sp)
.LCFI13:
	add	sp,sp,48
.LCFI14:
	jr	ra
.LFE2:
	.size	set_gpio_pin_direction, .-set_gpio_pin_direction
	.section	.text.get_gpio_pin_direction,"ax",@progbits
	.align	2
	.globl	get_gpio_pin_direction
	.type	get_gpio_pin_direction, @function
get_gpio_pin_direction:
.LFB3:
	.loc 1 41 0
	add	sp,sp,-48
.LCFI15:
	sw	s0,44(sp)
.LCFI16:
	add	s0,sp,48
.LCFI17:
	sw	a0,-36(s0)
	.loc 1 43 0
	li	a5,437260288
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 44 0
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sll	a5,a5,1
	sra	a5,a4,a5
	and	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 45 0
	lw	a5,-20(s0)
	.loc 1 47 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI18:
	add	sp,sp,48
.LCFI19:
	jr	ra
.LFE3:
	.size	get_gpio_pin_direction, .-get_gpio_pin_direction
	.section	.text.set_gpio_pin_value,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_value
	.type	set_gpio_pin_value, @function
set_gpio_pin_value:
.LFB4:
	.loc 1 49 0
	add	sp,sp,-48
.LCFI20:
	sw	s0,44(sp)
.LCFI21:
	add	s0,sp,48
.LCFI22:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 51 0
	li	a5,437260288
	add	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 52 0
	lw	a5,-40(s0)
	bnez	a5,.L10
	.loc 1 53 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L11
.L10:
	.loc 1 55 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
.L11:
	.loc 1 56 0
	li	a5,437260288
	add	a5,a5,8
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 57 0
	nop
	lw	s0,44(sp)
.LCFI23:
	add	sp,sp,48
.LCFI24:
	jr	ra
.LFE4:
	.size	set_gpio_pin_value, .-set_gpio_pin_value
	.section	.text.get_gpio_pin_value,"ax",@progbits
	.align	2
	.globl	get_gpio_pin_value
	.type	get_gpio_pin_value, @function
get_gpio_pin_value:
.LFB5:
	.loc 1 59 0
	add	sp,sp,-48
.LCFI25:
	sw	s0,44(sp)
.LCFI26:
	add	s0,sp,48
.LCFI27:
	sw	a0,-36(s0)
	.loc 1 61 0
	li	a5,437260288
	add	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 62 0
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sra	a5,a4,a5
	and	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 63 0
	lw	a5,-20(s0)
	.loc 1 64 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI28:
	add	sp,sp,48
.LCFI29:
	jr	ra
.LFE5:
	.size	get_gpio_pin_value, .-get_gpio_pin_value
	.section	.text.set_gpio_pin_irq_en,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_irq_en
	.type	set_gpio_pin_irq_en, @function
set_gpio_pin_irq_en:
.LFB6:
	.loc 1 66 0
	add	sp,sp,-48
.LCFI30:
	sw	s0,44(sp)
.LCFI31:
	add	s0,sp,48
.LCFI32:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 68 0
	li	a5,437260288
	add	a5,a5,12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 69 0
	lw	a5,-40(s0)
	bnez	a5,.L15
	.loc 1 70 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a5,a5
	lw	a4,-20(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L16
.L15:
	.loc 1 72 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
.L16:
	.loc 1 73 0
	li	a5,437260288
	add	a5,a5,12
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 74 0
	nop
	lw	s0,44(sp)
.LCFI33:
	add	sp,sp,48
.LCFI34:
	jr	ra
.LFE6:
	.size	set_gpio_pin_irq_en, .-set_gpio_pin_irq_en
	.section	.text.set_gpio_pin_irq_type,"ax",@progbits
	.align	2
	.globl	set_gpio_pin_irq_type
	.type	set_gpio_pin_irq_type, @function
set_gpio_pin_irq_type:
.LFB7:
	.loc 1 76 0
	add	sp,sp,-48
.LCFI35:
	sw	s0,44(sp)
.LCFI36:
	add	s0,sp,48
.LCFI37:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 80 0
	li	a5,437260288
	add	a5,a5,16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 81 0
	li	a5,437260288
	add	a5,a5,20
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 83 0
	lw	a5,-40(s0)
	and	a5,a5,1
	bnez	a5,.L18
	.loc 1 84 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a5,a5
	lw	a4,-20(s0)
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L19
.L18:
	.loc 1 86 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
.L19:
	.loc 1 88 0
	lw	a5,-40(s0)
	and	a5,a5,2
	bnez	a5,.L20
	.loc 1 89 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	not	a5,a5
	lw	a4,-24(s0)
	and	a5,a4,a5
	sw	a5,-24(s0)
	j	.L21
.L20:
	.loc 1 91 0
	li	a4,1
	lw	a5,-36(s0)
	sll	a5,a4,a5
	lw	a4,-24(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
.L21:
	.loc 1 93 0
	li	a5,437260288
	add	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 94 0
	li	a5,437260288
	add	a5,a5,20
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 95 0
	nop
	lw	s0,44(sp)
.LCFI38:
	add	sp,sp,48
.LCFI39:
	jr	ra
.LFE7:
	.size	set_gpio_pin_irq_type, .-set_gpio_pin_irq_type
	.section	.text.get_gpio_irq_status,"ax",@progbits
	.align	2
	.globl	get_gpio_irq_status
	.type	get_gpio_irq_status, @function
get_gpio_irq_status:
.LFB8:
	.loc 1 97 0
	add	sp,sp,-16
.LCFI40:
	sw	s0,12(sp)
.LCFI41:
	add	s0,sp,16
.LCFI42:
	.loc 1 98 0
	li	a5,437260288
	add	a5,a5,24
	lw	a5,0(a5)
	.loc 1 99 0
	mv	a0,a5
	lw	s0,12(sp)
.LCFI43:
	add	sp,sp,16
.LCFI44:
	jr	ra
.LFE8:
	.size	get_gpio_irq_status, .-get_gpio_irq_status
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
	.byte	0x30
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI10-.LFB2
	.byte	0xe
	.byte	0x30
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
	.byte	0x30
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI20-.LFB4
	.byte	0xe
	.byte	0x30
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI25-.LFB5
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
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
	.4byte	.LCFI30-.LFB6
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI35-.LFB7
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI40-.LFB8
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE16:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x234
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x61
	.4byte	0x3a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	0x3a
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x94
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4c
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4d
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4e
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x42
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd2
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x42
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF6
	.byte	0x1
	.byte	0x42
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x8
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3b
	.4byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x106
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3b
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x8
	.string	"v"
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x31
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x144
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x31
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF8
	.byte	0x1
	.byte	0x31
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x8
	.string	"v"
	.byte	0x1
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x29
	.4byte	0x3a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x17a
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x29
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2a
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ba
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1f
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1f
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x18
	.4byte	0x3a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f0
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0x18
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x19
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0xd
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd
	.4byte	0x3a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.4byte	0x3a
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xa
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
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"pinnumber"
.LASF1:
	.string	"type"
.LASF15:
	.string	"old_function"
.LASF5:
	.string	"set_gpio_pin_irq_en"
.LASF6:
	.string	"enable"
.LASF17:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF14:
	.string	"get_pin_function"
.LASF2:
	.string	"type0"
.LASF3:
	.string	"type1"
.LASF19:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF20:
	.string	"get_gpio_irq_status"
.LASF22:
	.string	"addr"
.LASF16:
	.string	"function"
.LASF12:
	.string	"set_gpio_pin_direction"
.LASF7:
	.string	"set_gpio_pin_value"
.LASF18:
	.string	"src/gpio.c"
.LASF10:
	.string	"get_gpio_pin_direction"
.LASF11:
	.string	"old_dir"
.LASF4:
	.string	"set_gpio_pin_irq_type"
.LASF8:
	.string	"value"
.LASF13:
	.string	"direction"
.LASF21:
	.string	"set_pin_function"
.LASF9:
	.string	"get_gpio_pin_value"
	.ident	"GCC: (GNU) 7.1.1 20170509"
