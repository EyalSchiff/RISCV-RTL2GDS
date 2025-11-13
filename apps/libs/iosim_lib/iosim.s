	.file	"iosim.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.write_to_port,"ax",@progbits
	.align	2
	.globl	write_to_port
	.type	write_to_port, @function
write_to_port:
.LFB0:
	.file 1 "src/iosim.c"
	.loc 1 11 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 12 0
	li	a5,437260288
	addi	a5,a5,8
	sw	zero,0(a5)
	.loc 1 13 0
	lw	a5,-20(s0)
	slli	a5,a5,2
	slli	a4,a5,24
	lw	a5,-24(s0)
	slli	a5,a5,16
	add	a3,a4,a5
	li	a5,437260288
	addi	a5,a5,8
	li	a4,-2147483648
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 14 0
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	write_to_port, .-write_to_port
	.section	.text.read_from_port,"ax",@progbits
	.align	2
	.globl	read_from_port
	.type	read_from_port, @function
read_from_port:
.LFB1:
	.loc 1 19 0
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 20 0
	li	a5,437260288
	addi	a5,a5,8
	sw	zero,0(a5)
	.loc 1 21 0
	lw	a5,-36(s0)
	slli	a5,a5,2
	slli	a3,a5,24
	li	a5,437260288
	addi	a5,a5,8
	li	a4,1073741824
	add	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 22 0
	li	a5,437260288
	addi	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 24 0
	lw	a5,-20(s0)
	.loc 1 25 0
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	read_from_port, .-read_from_port
	.section	.text.sim_finish,"ax",@progbits
	.align	2
	.globl	sim_finish
	.type	sim_finish, @function
sim_finish:
.LFB2:
	.loc 1 29 0
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 30 0
	li	a1,0
	li	a0,2
	call	write_to_port
	.loc 1 31 0
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	sim_finish, .-sim_finish
	.section	.text.bm_putc,"ax",@progbits
	.align	2
	.globl	bm_putc
	.type	bm_putc, @function
bm_putc:
.LFB3:
	.loc 1 34 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 36 0
	lbu	a5,-17(s0)
	mv	a1,a5
	li	a0,1
	call	write_to_port
	.loc 1 37 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	bm_putc, .-bm_putc
	.section	.text.bm_access_file,"ax",@progbits
	.align	2
	.globl	bm_access_file
	.type	bm_access_file, @function
bm_access_file:
.LFB4:
	.loc 1 40 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 41 0
	lw	a1,-20(s0)
	li	a0,5
	call	write_to_port
	.loc 1 42 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	bm_access_file, .-bm_access_file
	.section	.text.bm_fputc,"ax",@progbits
	.align	2
	.globl	bm_fputc
	.type	bm_fputc, @function
bm_fputc:
.LFB5:
	.loc 1 44 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 45 0
	lw	a0,-20(s0)
	call	bm_access_file
	.loc 1 46 0
	lbu	a5,-21(s0)
	mv	a1,a5
	li	a0,1
	call	write_to_port
	.loc 1 47 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	bm_fputc, .-bm_fputc
	.section	.text.bm_putd,"ax",@progbits
	.align	2
	.globl	bm_putd
	.type	bm_putd, @function
bm_putd:
.LFB6:
	.loc 1 50 0
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 51 0
	lw	a5,-68(s0)
	bnez	a5,.L9
	.loc 1 51 0 is_stmt 0 discriminator 1
	li	a0,48
	call	bm_putc
	.loc 1 68 0 is_stmt 1 discriminator 1
	j	.L17
.L9:
.LBB2:
	.loc 1 55 0
	sw	zero,-20(s0)
	.loc 1 56 0
	lw	a5,-68(s0)
	srli	a5,a5,31
	andi	a5,a5,0xff
	sb	a5,-21(s0)
	.loc 1 57 0
	lbu	a5,-21(s0)
	beqz	a5,.L12
	.loc 1 57 0 is_stmt 0 discriminator 1
	lw	a5,-68(s0)
	sub	a5,zero,a5
	sw	a5,-68(s0)
	.loc 1 59 0 is_stmt 1 discriminator 1
	j	.L12
.L13:
.LBB3:
	.loc 1 60 0
	lw	a4,-68(s0)
	li	a5,10
	div	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 61 0
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	sub	a5,zero,a5
	lw	a4,-68(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 62 0
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	addi	a4,a4,48
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-36(a5)
	.loc 1 63 0
	lw	a5,-28(s0)
	sw	a5,-68(s0)
.L12:
.LBE3:
	.loc 1 59 0
	lw	a5,-68(s0)
	bnez	a5,.L13
	.loc 1 65 0
	lbu	a5,-21(s0)
	beqz	a5,.L15
	.loc 1 65 0 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	li	a4,45
	sb	a4,-36(a5)
	.loc 1 66 0 is_stmt 1 discriminator 1
	j	.L15
.L16:
	.loc 1 66 0 is_stmt 0 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	addi	a5,a5,-1
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-36(a5)
	mv	a0,a5
	call	bm_putc
.L15:
	.loc 1 66 0 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L16
.L17:
.LBE2:
	.loc 1 68 0 is_stmt 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	bm_putd, .-bm_putd
	.section	.text.bm_fputd,"ax",@progbits
	.align	2
	.globl	bm_fputd
	.type	bm_fputd, @function
bm_fputd:
.LFB7:
	.loc 1 70 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 71 0
	lw	a0,-20(s0)
	call	bm_access_file
	.loc 1 72 0
	lw	a0,-24(s0)
	call	bm_putd
	.loc 1 73 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	bm_fputd, .-bm_fputd
	.section	.text.bm_puts,"ax",@progbits
	.align	2
	.globl	bm_puts
	.type	bm_puts, @function
bm_puts:
.LFB8:
	.loc 1 77 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 78 0
	j	.L20
.L21:
	.loc 1 78 0 is_stmt 0 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	bm_putc
.L20:
	.loc 1 78 0 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bnez	a5,.L21
	.loc 1 79 0 is_stmt 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bm_puts, .-bm_puts
	.section	.text.bm_fputs,"ax",@progbits
	.align	2
	.globl	bm_fputs
	.type	bm_fputs, @function
bm_fputs:
.LFB9:
	.loc 1 82 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 83 0
	lw	a0,-20(s0)
	call	bm_access_file
	.loc 1 84 0
	lw	a0,-24(s0)
	call	bm_puts
	.loc 1 85 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bm_fputs, .-bm_fputs
	.section	.text.bm_putllh,"ax",@progbits
	.align	2
	.globl	bm_putllh
	.type	bm_putllh, @function
bm_putllh:
.LFB10:
	.loc 1 143 0
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	.loc 1 144 0
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	or	a5,a5,a4
	bnez	a5,.L24
	.loc 1 144 0 is_stmt 0 discriminator 1
	li	a0,48
	call	bm_putc
	.loc 1 160 0 is_stmt 1 discriminator 1
	j	.L32
.L24:
.LBB4:
	.loc 1 148 0
	sw	zero,-20(s0)
	.loc 1 150 0
	j	.L26
.L29:
.LBB5:
	.loc 1 151 0
	lw	a5,-68(s0)
	slli	a5,a5,28
	lw	a4,-72(s0)
	srli	a4,a4,4
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-68(s0)
	srai	a5,a5,4
	sw	a5,-28(s0)
	.loc 1 152 0
	lbu	a5,-72(s0)
	andi	a5,a5,15
	sb	a5,-33(s0)
	.loc 1 154 0
	lbu	a4,-33(s0)
	li	a5,9
	bgtu	a4,a5,.L27
	.loc 1 154 0 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lbu	a4,-33(s0)
	addi	a4,a4,48
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-40(a5)
	j	.L28
.L27:
	.loc 1 155 0 is_stmt 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lbu	a4,-33(s0)
	addi	a4,a4,55
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-40(a5)
.L28:
	.loc 1 156 0
	lw	a5,-32(s0)
	lw	a6,-28(s0)
	sw	a5,-72(s0)
	sw	a6,-68(s0)
.L26:
.LBE5:
	.loc 1 150 0
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	or	a5,a5,a4
	bnez	a5,.L29
	.loc 1 158 0
	j	.L30
.L31:
	.loc 1 158 0 is_stmt 0 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	addi	a5,a5,-1
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-40(a5)
	mv	a0,a5
	call	bm_putc
.L30:
	.loc 1 158 0 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L31
.L32:
.LBE4:
	.loc 1 160 0 is_stmt 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bm_putllh, .-bm_putllh
	.section	.text.bm_puth,"ax",@progbits
	.align	2
	.globl	bm_puth
	.type	bm_puth, @function
bm_puth:
.LFB11:
	.loc 1 205 0
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 208 0
	lw	a5,-52(s0)
	bnez	a5,.L34
	.loc 1 208 0 is_stmt 0 discriminator 1
	li	a0,48
	call	bm_putc
	.loc 1 223 0 is_stmt 1 discriminator 1
	j	.L42
.L34:
.LBB6:
	.loc 1 211 0
	sw	zero,-20(s0)
	.loc 1 214 0
	j	.L36
.L39:
.LBB7:
	.loc 1 216 0
	lw	a5,-52(s0)
	andi	a5,a5,0xff
	andi	a5,a5,15
	sw	a5,-24(s0)
	.loc 1 217 0
	lw	a4,-24(s0)
	li	a5,9
	bgtu	a4,a5,.L37
	.loc 1 217 0 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	addi	a4,a4,48
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-28(a5)
	j	.L38
.L37:
	.loc 1 218 0 is_stmt 1
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	addi	a4,a4,55
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-28(a5)
.L38:
	.loc 1 219 0
	lw	a5,-52(s0)
	srli	a5,a5,4
	sw	a5,-52(s0)
.L36:
.LBE7:
	.loc 1 214 0
	lw	a5,-52(s0)
	bnez	a5,.L39
	.loc 1 221 0
	j	.L40
.L41:
	.loc 1 221 0 is_stmt 0 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	addi	a5,a5,-1
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-28(a5)
	mv	a0,a5
	call	bm_putc
.L40:
	.loc 1 221 0 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L41
.L42:
.LBE6:
	.loc 1 223 0 is_stmt 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bm_puth, .-bm_puth
	.section	.text.bm_fputh,"ax",@progbits
	.align	2
	.globl	bm_fputh
	.type	bm_fputh, @function
bm_fputh:
.LFB12:
	.loc 1 225 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 226 0
	lw	a0,-20(s0)
	call	bm_access_file
	.loc 1 227 0
	lw	a0,-24(s0)
	call	bm_puth
	.loc 1 228 0
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bm_fputh, .-bm_fputh
	.section	.text.bm_getc,"ax",@progbits
	.align	2
	.globl	bm_getc
	.type	bm_getc, @function
bm_getc:
.LFB13:
	.loc 1 232 0
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 233 0
	li	a0,3
	call	read_from_port
	mv	a5,a0
	.loc 1 234 0
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bm_getc, .-bm_getc
	.section	.text.bm_fgetc,"ax",@progbits
	.align	2
	.globl	bm_fgetc
	.type	bm_fgetc, @function
bm_fgetc:
.LFB14:
	.loc 1 236 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 237 0
	lw	a0,-20(s0)
	call	bm_access_file
	.loc 1 238 0
	li	a0,3
	call	read_from_port
	mv	a5,a0
	.loc 1 239 0
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bm_fgetc, .-bm_fgetc
	.section	.text.bm_isspace,"ax",@progbits
	.align	2
	.globl	bm_isspace
	.type	bm_isspace, @function
bm_isspace:
.LFB15:
	.loc 1 243 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 244 0
	lbu	a4,-17(s0)
	li	a5,8
	bleu	a4,a5,.L49
	.loc 1 244 0 is_stmt 0 discriminator 1
	lbu	a4,-17(s0)
	li	a5,13
	bleu	a4,a5,.L50
.L49:
	.loc 1 244 0 discriminator 4
	lbu	a4,-17(s0)
	li	a5,32
	bne	a4,a5,.L51
.L50:
	.loc 1 244 0 discriminator 5
	li	a5,1
	j	.L52
.L51:
	.loc 1 244 0 discriminator 6
	li	a5,0
.L52:
	.loc 1 244 0 discriminator 8
	andi	a5,a5,0xff
	.loc 1 245 0 is_stmt 1 discriminator 8
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15:
	.size	bm_isspace, .-bm_isspace
	.section	.text.bm_fgets,"ax",@progbits
	.align	2
	.globl	bm_fgets
	.type	bm_fgets, @function
bm_fgets:
.LFB16:
	.loc 1 250 0
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 251 0
	sb	zero,-17(s0)
	.loc 1 255 0
	sw	zero,-24(s0)
	.loc 1 256 0
	lw	a5,-40(s0)
	sb	zero,0(a5)
	.loc 1 258 0
	lw	a0,-36(s0)
	call	bm_access_file
	.loc 1 260 0
	j	.L55
.L58:
	.loc 1 261 0
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	bm_isspace
	mv	a5,a0
	beqz	a5,.L56
	.loc 1 262 0
	lbu	a5,-17(s0)
	beqz	a5,.L55
	.loc 1 263 0
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	.loc 1 264 0
	li	a5,1
	j	.L57
.L56:
	.loc 1 269 0
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 270 0
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
.L55:
	.loc 1 260 0
	call	bm_getc
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	li	a5,255
	bne	a4,a5,.L58
	.loc 1 275 0
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	.loc 1 277 0
	li	a5,0
.L57:
	.loc 1 280 0
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE16:
	.size	bm_fgets, .-bm_fgets
	.section	.text.decimal_str_to_uint,"ax",@progbits
	.align	2
	.globl	decimal_str_to_uint
	.type	decimal_str_to_uint, @function
decimal_str_to_uint:
.LFB17:
	.loc 1 284 0
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 286 0
	sw	zero,-20(s0)
	.loc 1 287 0
	sb	zero,-25(s0)
	.loc 1 288 0
	sw	zero,-24(s0)
	.loc 1 290 0
	j	.L60
.L61:
	.loc 1 290 0 is_stmt 0 discriminator 2
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	lbu	a5,-25(s0)
	add	a5,a4,a5
	addi	a5,a5,-48
	sw	a5,-24(s0)
.L60:
	.loc 1 290 0 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	bnez	a5,.L61
	.loc 1 291 0 is_stmt 1
	lw	a5,-24(s0)
	.loc 1 293 0
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE17:
	.size	decimal_str_to_uint, .-decimal_str_to_uint
	.section	.rodata
	.align	2
.LC0:
	.string	"\nERROR reading into hex a non hex char.\n"
	.section	.text.hex_str_to_uint,"ax",@progbits
	.align	2
	.globl	hex_str_to_uint
	.type	hex_str_to_uint, @function
hex_str_to_uint:
.LFB18:
	.loc 1 299 0
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 301 0
	sw	zero,-20(s0)
	.loc 1 302 0
	sb	zero,-25(s0)
	.loc 1 303 0
	sw	zero,-24(s0)
	.loc 1 305 0
	j	.L64
.L73:
.LBB8:
	.loc 1 306 0
	lbu	a4,-25(s0)
	li	a5,47
	bleu	a4,a5,.L65
	.loc 1 306 0 is_stmt 0 discriminator 1
	lbu	a4,-25(s0)
	li	a5,57
	bgtu	a4,a5,.L65
	.loc 1 306 0 discriminator 3
	lbu	a5,-25(s0)
	addi	a5,a5,-48
	andi	a5,a5,0xff
	j	.L66
.L65:
	.loc 1 306 0 discriminator 4
	lbu	a4,-25(s0)
	li	a5,64
	bleu	a4,a5,.L67
	.loc 1 307 0 is_stmt 1
	lbu	a4,-25(s0)
	li	a5,70
	bgtu	a4,a5,.L67
	.loc 1 306 0
	lbu	a5,-25(s0)
	addi	a5,a5,-55
	andi	a5,a5,0xff
	j	.L66
.L67:
	.loc 1 306 0 is_stmt 0 discriminator 6
	lbu	a4,-25(s0)
	li	a5,96
	bleu	a4,a5,.L69
	.loc 1 308 0 is_stmt 1
	lbu	a4,-25(s0)
	li	a5,102
	bgtu	a4,a5,.L69
	.loc 1 306 0
	lbu	a5,-25(s0)
	addi	a5,a5,-87
	andi	a5,a5,0xff
	j	.L66
.L69:
	.loc 1 306 0 is_stmt 0 discriminator 8
	li	a5,88
.L66:
	.loc 1 306 0 discriminator 12
	sb	a5,-26(s0)
	.loc 1 310 0 is_stmt 1 discriminator 12
	lbu	a4,-26(s0)
	li	a5,88
	bne	a4,a5,.L71
	.loc 1 311 0
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	li	a0,0
	call	bm_fputs
	.loc 1 312 0
	call	sim_finish
	.loc 1 313 0
	li	a5,0
	j	.L72
.L71:
	.loc 1 317 0
	lw	a5,-24(s0)
	slli	a4,a5,4
	lbu	a5,-26(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L64:
.LBE8:
	.loc 1 305 0
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	bnez	a5,.L73
	.loc 1 319 0
	lw	a5,-24(s0)
.L72:
	.loc 1 320 0
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE18:
	.size	hex_str_to_uint, .-hex_str_to_uint
	.section	.text.bm_fopen_r,"ax",@progbits
	.align	2
	.globl	bm_fopen_r
	.type	bm_fopen_r, @function
bm_fopen_r:
.LFB19:
	.loc 1 323 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 324 0
	li	a1,4
	li	a0,2
	call	write_to_port
	.loc 1 325 0
	lw	a0,-20(s0)
	call	bm_puts
	.loc 1 326 0
	li	a1,1
	li	a0,2
	call	write_to_port
	.loc 1 327 0
	li	a0,4
	call	read_from_port
	mv	a5,a0
	.loc 1 328 0
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bm_fopen_r, .-bm_fopen_r
	.section	.text.bm_fopen_w,"ax",@progbits
	.align	2
	.globl	bm_fopen_w
	.type	bm_fopen_w, @function
bm_fopen_w:
.LFB20:
	.loc 1 332 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 333 0
	li	a1,4
	li	a0,2
	call	write_to_port
	.loc 1 334 0
	lw	a0,-20(s0)
	call	bm_puts
	.loc 1 335 0
	li	a1,2
	li	a0,2
	call	write_to_port
	.loc 1 336 0
	li	a0,4
	call	read_from_port
	mv	a5,a0
	.loc 1 337 0
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE20:
	.size	bm_fopen_w, .-bm_fopen_w
	.section	.text.bm_time_stamp,"ax",@progbits
	.align	2
	.globl	bm_time_stamp
	.type	bm_time_stamp, @function
bm_time_stamp:
.LFB21:
	.loc 1 341 0
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 342 0
	li	a1,4
	li	a0,2
	call	write_to_port
	.loc 1 343 0
	lw	a0,-20(s0)
	call	bm_puts
	.loc 1 344 0
	li	a1,5
	li	a0,2
	call	write_to_port
	.loc 1 345 0
	li	a0,6
	call	read_from_port
	mv	a5,a0
	.loc 1 346 0
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE21:
	.size	bm_time_stamp, .-bm_time_stamp
	.section	.sdata.bm_malloc_ptr.1572,"aw",@progbits
	.align	2
	.type	bm_malloc_ptr.1572, @object
	.size	bm_malloc_ptr.1572, 4
bm_malloc_ptr.1572:
	.word	bm_malloc_pool.1571
	.section	.rodata
	.align	2
.LC1:
	.string	"\nSW ERROR: bm_malloc out of memory\n\n"
	.section	.text.bm_malloc,"ax",@progbits
	.align	2
	.globl	bm_malloc
	.type	bm_malloc, @function
bm_malloc:
.LFB22:
	.loc 1 354 0
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 359 0
	lui	a5,%hi(bm_malloc_ptr.1572)
	lw	a5,%lo(bm_malloc_ptr.1572)(a5)
	sw	a5,-20(s0)
	.loc 1 360 0
	lui	a5,%hi(bm_malloc_ptr.1572)
	lw	a4,%lo(bm_malloc_ptr.1572)(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lui	a5,%hi(bm_malloc_ptr.1572)
	sw	a4,%lo(bm_malloc_ptr.1572)(a5)
	.loc 1 361 0
	lui	a5,%hi(bm_malloc_ptr.1572)
	lw	a4,%lo(bm_malloc_ptr.1572)(a5)
	lui	a5,%hi(bm_malloc_pool.1571+4096)
	addi	a5,a5,%lo(bm_malloc_pool.1571+4096)
	bleu	a4,a5,.L81
	.loc 1 363 0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	li	a0,0
	call	bm_fputs
	.loc 1 364 0
	call	sim_finish
	.loc 1 365 0
	li	a5,0
	j	.L82
.L81:
	.loc 1 367 0
	lw	a5,-20(s0)
.L82:
	.loc 1 368 0
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE22:
	.size	bm_malloc, .-bm_malloc
	.section	.bss.bm_malloc_pool.1571,"aw",@nobits
	.align	2
	.type	bm_malloc_pool.1571, @object
	.size	bm_malloc_pool.1571, 4096
bm_malloc_pool.1571:
	.zero	4096
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x596
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x160
	.4byte	0x82
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x82
	.byte	0x3
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x160
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x163
	.4byte	0x8b
	.byte	0x5
	.byte	0x3
	.4byte	bm_malloc_pool.1571
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x164
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	bm_malloc_ptr.1572
	.byte	0x5
	.string	"ret"
	.byte	0x1
	.2byte	0x166
	.4byte	0x82
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.4byte	0xa3
	.4byte	0x9c
	.byte	0x9
	.4byte	0x9c
	.2byte	0xfff
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0xb
	.byte	0x4
	.4byte	0xa3
	.byte	0x2
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x155
	.4byte	0x9c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xda
	.byte	0x3
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x155
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x14c
	.4byte	0x9c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x104
	.byte	0x3
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x14c
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x143
	.4byte	0x9c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e
	.byte	0x3
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x143
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x12b
	.4byte	0x9c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x196
	.byte	0xc
	.string	"s"
	.byte	0x1
	.2byte	0x12b
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"c"
	.byte	0x1
	.2byte	0x12e
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x5
	.string	"v"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x4
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x132
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x11c
	.4byte	0x9c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e5
	.byte	0xc
	.string	"s"
	.byte	0x1
	.2byte	0x11c
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"c"
	.byte	0x1
	.2byte	0x11f
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x5
	.string	"v"
	.byte	0x1
	.2byte	0x120
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0xfa
	.4byte	0xa3
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x242
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0xfa
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0xfa
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0xfb
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x12
	.string	"c"
	.byte	0x1
	.byte	0xfe
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.string	"si"
	.byte	0x1
	.byte	0xff
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf2
	.4byte	0xa3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x268
	.byte	0x14
	.string	"c"
	.byte	0x1
	.byte	0xf2
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xec
	.4byte	0x9c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x290
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0xec
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe8
	.4byte	0x84
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d5
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe1
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0xe1
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x16
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x331
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0xcd
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x12
	.string	"si"
	.byte	0x1
	.byte	0xd3
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.string	"s"
	.byte	0x1
	.byte	0xd4
	.4byte	0x331
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xd
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x12
	.string	"hc"
	.byte	0x1
	.byte	0xd8
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0xa3
	.4byte	0x341
	.byte	0x17
	.4byte	0x9c
	.byte	0x13
	.byte	0
	.byte	0x16
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ad
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0x8f
	.4byte	0x3ad
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x12
	.string	"s"
	.byte	0x1
	.byte	0x93
	.4byte	0x331
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x12
	.string	"si"
	.byte	0x1
	.byte	0x94
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x97
	.4byte	0x3ad
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x98
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF25
	.byte	0x16
	.4byte	.LASF26
	.byte	0x1
	.byte	0x52
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3e4
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x52
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"s"
	.byte	0x1
	.byte	0x52
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x16
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x406
	.byte	0x14
	.string	"s"
	.byte	0x1
	.byte	0x4d
	.4byte	0xaa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x46
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x436
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x46
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0x46
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x32
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b0
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0x32
	.4byte	0x84
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x12
	.string	"s"
	.byte	0x1
	.byte	0x36
	.4byte	0x331
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.string	"si"
	.byte	0x1
	.byte	0x37
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.string	"neg"
	.byte	0x1
	.byte	0x38
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3c
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3d
	.4byte	0x84
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e0
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2c
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"c"
	.byte	0x1
	.byte	0x2c
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x504
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x28
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x526
	.byte	0x14
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x13
	.4byte	0x9c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x56d
	.byte	0x14
	.string	"idx"
	.byte	0x1
	.byte	0x13
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x16
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.string	"idx"
	.byte	0x1
	.byte	0xb
	.4byte	0x9c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"v"
	.byte	0x1
	.byte	0xb
	.4byte	0x9c
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
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0xf
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.4byte	0xcc
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"decimal_str_to_uint"
.LASF37:
	.string	"GNU C11 7.2.0 -march=rv32im -mabi=ilp32 -ggdb -fdata-sections -ffunction-sections"
.LASF10:
	.string	"bm_fopen_r"
.LASF18:
	.string	"bm_isspace"
.LASF8:
	.string	"bm_fopen_w"
.LASF35:
	.string	"read_from_port"
.LASF42:
	.string	"write_to_port"
.LASF4:
	.string	"bm_malloc"
.LASF6:
	.string	"size"
.LASF17:
	.string	"str_on"
.LASF19:
	.string	"bm_fgetc"
.LASF16:
	.string	"str_buf"
.LASF9:
	.string	"file_name"
.LASF12:
	.string	"cval"
.LASF30:
	.string	"v_div10"
.LASF14:
	.string	"bm_fgets"
.LASF36:
	.string	"GPIO_REG_PADIN_val"
.LASF41:
	.string	"sim_finish"
.LASF15:
	.string	"file_idx"
.LASF2:
	.string	"unsigned int"
.LASF24:
	.string	"v_rem16"
.LASF3:
	.string	"char"
.LASF33:
	.string	"bm_access_file"
.LASF23:
	.string	"v_div16"
.LASF5:
	.string	"bm_time_stamp"
.LASF31:
	.string	"v_mod10"
.LASF39:
	.string	"/project/generic/users/udik/ws/pulp/pulp_RI5CY/apps/libs/iosim_lib"
.LASF25:
	.string	"long long int"
.LASF34:
	.string	"bm_putc"
.LASF40:
	.string	"bm_getc"
.LASF0:
	.string	"bm_malloc_pool"
.LASF29:
	.string	"bm_putd"
.LASF32:
	.string	"bm_fputc"
.LASF28:
	.string	"bm_fputd"
.LASF21:
	.string	"bm_puth"
.LASF20:
	.string	"bm_fputh"
.LASF7:
	.string	"time_stam_str"
.LASF11:
	.string	"hex_str_to_uint"
.LASF1:
	.string	"bm_malloc_ptr"
.LASF27:
	.string	"bm_puts"
.LASF22:
	.string	"bm_putllh"
.LASF26:
	.string	"bm_fputs"
.LASF38:
	.string	"src/iosim.c"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bits) 7.2.0"
