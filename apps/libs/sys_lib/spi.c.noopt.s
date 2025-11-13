	.file	"spi.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.spi_setup_slave,"ax",@progbits
	.align	2
	.globl	spi_setup_slave
	.type	spi_setup_slave, @function
spi_setup_slave:
.LFB0:
	.file 1 "src/spi.c"
	.loc 1 14 0
	add	sp,sp,-16
.LCFI0:
	sw	ra,12(sp)
	sw	s0,8(sp)
.LCFI1:
	add	s0,sp,16
.LCFI2:
	.loc 1 15 0
	li	a1,0
	li	a0,4
	call	set_pin_function
	.loc 1 16 0
	li	a1,0
	li	a0,5
	call	set_pin_function
	.loc 1 17 0
	li	a1,0
	li	a0,6
	call	set_pin_function
	.loc 1 18 0
	li	a1,0
	li	a0,7
	call	set_pin_function
	.loc 1 19 0
	li	a1,0
	li	a0,3
	call	set_pin_function
	.loc 1 20 0
	nop
	lw	ra,12(sp)
.LCFI3:
	lw	s0,8(sp)
.LCFI4:
	add	sp,sp,16
.LCFI5:
	jr	ra
.LFE0:
	.size	spi_setup_slave, .-spi_setup_slave
	.section	.text.spi_setup_master,"ax",@progbits
	.align	2
	.globl	spi_setup_master
	.type	spi_setup_master, @function
spi_setup_master:
.LFB1:
	.loc 1 22 0
	add	sp,sp,-32
.LCFI6:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI7:
	add	s0,sp,32
.LCFI8:
	sw	a0,-20(s0)
	.loc 1 23 0
	li	a1,0
	li	a0,15
	call	set_pin_function
	.loc 1 24 0
	li	a1,0
	li	a0,14
	call	set_pin_function
	.loc 1 25 0
	li	a1,0
	li	a0,13
	call	set_pin_function
	.loc 1 26 0
	li	a1,0
	li	a0,12
	call	set_pin_function
	.loc 1 27 0
	lw	a5,-20(s0)
	blez	a5,.L3
	.loc 1 28 0
	li	a1,0
	li	a0,16
	call	set_pin_function
.L3:
	.loc 1 29 0
	lw	a4,-20(s0)
	li	a5,1
	ble	a4,a5,.L4
	.loc 1 30 0
	li	a1,0
	li	a0,11
	call	set_pin_function
.L4:
	.loc 1 31 0
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L5
	.loc 1 32 0
	li	a1,0
	li	a0,0
	call	set_pin_function
.L5:
	.loc 1 33 0
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L7
	.loc 1 34 0
	li	a1,0
	li	a0,1
	call	set_pin_function
.L7:
	.loc 1 35 0
	nop
	lw	ra,28(sp)
.LCFI9:
	lw	s0,24(sp)
.LCFI10:
	add	sp,sp,32
.LCFI11:
	jr	ra
.LFE1:
	.size	spi_setup_master, .-spi_setup_master
	.section	.text.spi_setup_cmd_addr,"ax",@progbits
	.align	2
	.globl	spi_setup_cmd_addr
	.type	spi_setup_cmd_addr, @function
spi_setup_cmd_addr:
.LFB2:
	.loc 1 39 0
	add	sp,sp,-48
.LCFI12:
	sw	s0,44(sp)
.LCFI13:
	add	s0,sp,48
.LCFI14:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 41 0
	li	a4,32
	lw	a5,-40(s0)
	sub	a5,a4,a5
	lw	a4,-36(s0)
	sll	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 42 0
	li	a5,437264384
	add	a5,a5,8
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 43 0
	li	a5,437264384
	add	a5,a5,12
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 44 0
	lw	a5,-40(s0)
	and	a3,a5,63
	lw	a5,-48(s0)
	sll	a4,a5,8
	li	a5,16384
	add	a5,a5,-256
	and	a4,a4,a5
	li	a5,437264384
	add	a5,a5,16
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 45 0
	nop
	lw	s0,44(sp)
.LCFI15:
	add	sp,sp,48
.LCFI16:
	jr	ra
.LFE2:
	.size	spi_setup_cmd_addr, .-spi_setup_cmd_addr
	.section	.text.spi_setup_dummy,"ax",@progbits
	.align	2
	.globl	spi_setup_dummy
	.type	spi_setup_dummy, @function
spi_setup_dummy:
.LFB3:
	.loc 1 47 0
	add	sp,sp,-32
.LCFI17:
	sw	s0,28(sp)
.LCFI18:
	add	s0,sp,32
.LCFI19:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 48 0
	lw	a5,-24(s0)
	sll	a5,a5,16
	mv	a3,a5
	lw	a4,-20(s0)
	li	a5,65536
	add	a5,a5,-1
	and	a5,a4,a5
	or	a4,a3,a5
	li	a5,437264384
	add	a5,a5,20
	sw	a4,0(a5)
	.loc 1 49 0
	nop
	lw	s0,28(sp)
.LCFI20:
	add	sp,sp,32
.LCFI21:
	jr	ra
.LFE3:
	.size	spi_setup_dummy, .-spi_setup_dummy
	.section	.text.spi_set_datalen,"ax",@progbits
	.align	2
	.globl	spi_set_datalen
	.type	spi_set_datalen, @function
spi_set_datalen:
.LFB4:
	.loc 1 51 0
	add	sp,sp,-48
.LCFI22:
	sw	s0,44(sp)
.LCFI23:
	add	s0,sp,48
.LCFI24:
	sw	a0,-36(s0)
	.loc 1 53 0
	li	a5,437264384
	add	a5,a5,16
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 54 0
	lw	a5,-36(s0)
	sll	a5,a5,16
	mv	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	li	a5,65536
	add	a5,a5,-1
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 55 0
	li	a5,437264384
	add	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 56 0
	nop
	lw	s0,44(sp)
.LCFI25:
	add	sp,sp,48
.LCFI26:
	jr	ra
.LFE4:
	.size	spi_set_datalen, .-spi_set_datalen
	.section	.text.spi_start_transaction,"ax",@progbits
	.align	2
	.globl	spi_start_transaction
	.type	spi_start_transaction, @function
spi_start_transaction:
.LFB5:
	.loc 1 58 0
	add	sp,sp,-32
.LCFI27:
	sw	s0,28(sp)
.LCFI28:
	add	s0,sp,32
.LCFI29:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 59 0
	lw	a5,-24(s0)
	add	a5,a5,8
	li	a4,1
	sll	a4,a4,a5
	li	a5,4096
	add	a5,a5,-256
	and	a3,a4,a5
	li	a4,1
	lw	a5,-20(s0)
	sll	a5,a4,a5
	and	a4,a5,255
	li	a5,437264384
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 60 0
	nop
	lw	s0,28(sp)
.LCFI30:
	add	sp,sp,32
.LCFI31:
	jr	ra
.LFE5:
	.size	spi_start_transaction, .-spi_start_transaction
	.section	.text.spi_get_status,"ax",@progbits
	.align	2
	.globl	spi_get_status
	.type	spi_get_status, @function
spi_get_status:
.LFB6:
	.loc 1 62 0
	add	sp,sp,-32
.LCFI32:
	sw	s0,28(sp)
.LCFI33:
	add	s0,sp,32
.LCFI34:
	.loc 1 64 0
	li	a5,437264384
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 65 0
	lw	a5,-20(s0)
	.loc 1 66 0
	mv	a0,a5
	lw	s0,28(sp)
.LCFI35:
	add	sp,sp,32
.LCFI36:
	jr	ra
.LFE6:
	.size	spi_get_status, .-spi_get_status
	.section	.text.spi_write_fifo,"ax",@progbits
	.align	2
	.globl	spi_write_fifo
	.type	spi_write_fifo, @function
spi_write_fifo:
.LFB7:
	.loc 1 68 0
	add	sp,sp,-48
.LCFI37:
	sw	s0,44(sp)
.LCFI38:
	add	s0,sp,48
.LCFI39:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 71 0
	lw	a5,-40(s0)
	sra	a5,a5,5
	and	a5,a5,2047
	sw	a5,-20(s0)
	.loc 1 73 0
	lw	a5,-40(s0)
	and	a5,a5,31
	beqz	a5,.L15
	.loc 1 74 0
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 1 76 0
	sw	zero,-24(s0)
	j	.L16
.L18:
	.loc 1 77 0
	nop
.L17:
	.loc 1 77 0 is_stmt 0 discriminator 1
	li	a5,437264384
	lw	a5,0(a5)
	sra	a5,a5,24
	and	a4,a5,255
	li	a5,7
	bgt	a4,a5,.L17
	.loc 1 78 0 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	li	a5,437264384
	add	a5,a5,24
	lw	a4,0(a4)
	sw	a4,0(a5)
	.loc 1 76 0 discriminator 2
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L16:
	.loc 1 76 0 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L18
	.loc 1 80 0 is_stmt 1
	nop
	lw	s0,44(sp)
.LCFI40:
	add	sp,sp,48
.LCFI41:
	jr	ra
.LFE7:
	.size	spi_write_fifo, .-spi_write_fifo
	.section	.text.spi_read_fifo,"ax",@progbits
	.align	2
	.globl	spi_read_fifo
	.type	spi_read_fifo, @function
spi_read_fifo:
.LFB8:
	.loc 1 82 0
	add	sp,sp,-48
.LCFI42:
	sw	s0,44(sp)
.LCFI43:
	add	s0,sp,48
.LCFI44:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 85 0
	lw	a5,-40(s0)
	sra	a5,a5,5
	and	a5,a5,2047
	sw	a5,-20(s0)
	.loc 1 87 0
	lw	a5,-40(s0)
	and	a5,a5,31
	beqz	a5,.L20
	.loc 1 88 0
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 90 0
	sw	zero,-24(s0)
	j	.L21
.L23:
	.loc 1 91 0
	nop
.L22:
	.loc 1 91 0 is_stmt 0 discriminator 1
	li	a5,437264384
	lw	a5,0(a5)
	sra	a5,a5,16
	and	a5,a5,255
	beqz	a5,.L22
	.loc 1 92 0 is_stmt 1 discriminator 2
	li	a5,437264384
	add	a4,a5,32
	lw	a5,-24(s0)
	sll	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	.loc 1 90 0 discriminator 2
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L21:
	.loc 1 90 0 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L23
	.loc 1 94 0 is_stmt 1
	nop
	lw	s0,44(sp)
.LCFI45:
	add	sp,sp,48
.LCFI46:
	jr	ra
.LFE8:
	.size	spi_read_fifo, .-spi_read_fifo
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
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LCFI6-.LFB1
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
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
	.4byte	.LCFI12-.LFB2
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
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
	.4byte	.LCFI17-.LFB3
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
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
	.4byte	.LCFI22-.LFB4
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
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
	.4byte	.LCFI27-.LFB5
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
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
	.4byte	.LCFI32-.LFB6
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
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
	.4byte	.LCFI37-.LFB7
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
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
	.4byte	.LCFI42-.LFB8
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE16:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x52
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x71
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x52
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x53
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x77
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.4byte	0x77
	.byte	0x2
	.4byte	.LASF4
	.byte	0x1
	.byte	0x44
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xcf
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x44
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x44
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x9
	.4byte	.LASF5
	.byte	0x1
	.byte	0x3e
	.4byte	0x77
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xf7
	.byte	0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF7
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x129
	.byte	0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x3a
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3a
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2
	.4byte	.LASF10
	.byte	0x1
	.byte	0x33
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x15b
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x33
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x34
	.4byte	0x7e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x18d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2f
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2f
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e9
	.byte	0xa
	.string	"cmd"
	.byte	0x1
	.byte	0x27
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.4byte	.LASF17
	.byte	0x1
	.byte	0x27
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0x27
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.4byte	.LASF19
	.byte	0x1
	.byte	0x28
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x20d
	.byte	0x3
	.4byte	.LASF21
	.byte	0x1
	.byte	0x16
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe
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
	.byte	0x18
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
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
.LASF19:
	.string	"cmd_reg"
.LASF4:
	.string	"spi_write_fifo"
.LASF11:
	.string	"old_len"
.LASF13:
	.string	"dummy_rd"
.LASF9:
	.string	"csnum"
.LASF22:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF6:
	.string	"status"
.LASF24:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/sys_lib"
.LASF20:
	.string	"spi_setup_master"
.LASF25:
	.string	"spi_setup_slave"
.LASF2:
	.string	"num_words"
.LASF8:
	.string	"trans_type"
.LASF5:
	.string	"spi_get_status"
.LASF0:
	.string	"data"
.LASF17:
	.string	"addr"
.LASF7:
	.string	"spi_start_transaction"
.LASF18:
	.string	"addrlen"
.LASF21:
	.string	"numcs"
.LASF23:
	.string	"src/spi.c"
.LASF3:
	.string	"spi_read_fifo"
.LASF15:
	.string	"spi_setup_cmd_addr"
.LASF16:
	.string	"cmdlen"
.LASF14:
	.string	"dummy_wr"
.LASF12:
	.string	"spi_setup_dummy"
.LASF1:
	.string	"datalen"
.LASF10:
	.string	"spi_set_datalen"
	.ident	"GCC: (GNU) 7.1.1 20170509"
