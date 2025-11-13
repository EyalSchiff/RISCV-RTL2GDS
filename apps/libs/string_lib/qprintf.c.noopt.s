	.file	"qprintf.c"
	.option nopic
	.text
.Ltext0:
	.section	.text.divu10,"ax",@progbits
	.align	2
	.type	divu10, @function
divu10:
.LFB3:
	.file 1 "src/qprintf.c"
	.loc 1 23 0
	add	sp,sp,-48
.LCFI0:
	sw	s0,44(sp)
.LCFI1:
	add	s0,sp,48
.LCFI2:
	sw	a0,-36(s0)
	.loc 1 26 0
	lw	a5,-36(s0)
	srl	a4,a5,1
	lw	a5,-36(s0)
	srl	a5,a5,2
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 27 0
	lw	a5,-20(s0)
	srl	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 28 0
	lw	a5,-20(s0)
	srl	a5,a5,8
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 29 0
	lw	a5,-20(s0)
	srl	a5,a5,16
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 30 0
	lw	a5,-20(s0)
	srl	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 31 0
	lw	a4,-20(s0)
	mv	a5,a4
	sll	a5,a5,2
	add	a5,a5,a4
	sll	a5,a5,1
	mv	a4,a5
	lw	a5,-36(s0)
	sub	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 33 0
	lw	a5,-24(s0)
	add	a5,a5,6
	srl	a4,a5,4
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 34 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI3:
	add	sp,sp,48
.LCFI4:
	jr	ra
.LFE3:
	.size	divu10, .-divu10
	.globl	remu10_table
	.section	.data.remu10_table,"aw",@progbits
	.align	2
	.type	remu10_table, @object
	.size	remu10_table, 16
remu10_table:
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	0
	.section	.text.remu10,"ax",@progbits
	.align	2
	.type	remu10, @function
remu10:
.LFB4:
	.loc 1 41 0
	add	sp,sp,-32
.LCFI5:
	sw	s0,28(sp)
.LCFI6:
	add	s0,sp,32
.LCFI7:
	sw	a0,-20(s0)
	.loc 1 42 0
	lw	a4,-20(s0)
	li	a5,429498368
	add	a5,a5,-1639
	mul	a4,a4,a5
	lw	a5,-20(s0)
	srl	a5,a5,1
	add	a4,a4,a5
	lw	a5,-20(s0)
	srl	a5,a5,3
	add	a5,a4,a5
	srl	a5,a5,28
	sw	a5,-20(s0)
	.loc 1 43 0
	lui	a5,%hi(remu10_table)
	addi	a4,a5,%lo(remu10_table)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 44 0
	mv	a0,a5
	lw	s0,28(sp)
.LCFI8:
	add	sp,sp,32
.LCFI9:
	jr	ra
.LFE4:
	.size	remu10, .-remu10
	.section	.text.putchar,"ax",@progbits
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB5:
	.loc 1 49 0
	add	sp,sp,-32
.LCFI10:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI11:
	add	s0,sp,32
.LCFI12:
	sw	a0,-20(s0)
	.loc 1 50 0
	lw	a5,-20(s0)
	and	a5,a5,0xff
	mv	a0,a5
	call	uart_sendchar
	.loc 1 52 0
	lw	a5,-20(s0)
	.loc 1 53 0
	mv	a0,a5
	lw	ra,28(sp)
.LCFI13:
	lw	s0,24(sp)
.LCFI14:
	add	sp,sp,32
.LCFI15:
	jr	ra
.LFE5:
	.size	putchar, .-putchar
	.section	.text.qprintchar,"ax",@progbits
	.align	2
	.type	qprintchar, @function
qprintchar:
.LFB6:
	.loc 1 56 0
	add	sp,sp,-32
.LCFI16:
	sw	ra,28(sp)
	sw	s0,24(sp)
.LCFI17:
	add	s0,sp,32
.LCFI18:
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 57 0
	lw	a5,-20(s0)
	beqz	a5,.L8
	.loc 1 59 0
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	and	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 60 0
	lw	a5,-20(s0)
	lw	a5,0(a5)
	add	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 64 0
	j	.L10
.L8:
	.loc 1 63 0
	lw	a5,-24(s0)
	and	a5,a5,0xff
	mv	a0,a5
	call	putchar
.L10:
	.loc 1 64 0
	nop
	lw	ra,28(sp)
.LCFI19:
	lw	s0,24(sp)
.LCFI20:
	add	sp,sp,32
.LCFI21:
	jr	ra
.LFE6:
	.size	qprintchar, .-qprintchar
	.section	.text.qprints,"ax",@progbits
	.align	2
	.type	qprints, @function
qprints:
.LFB7:
	.loc 1 67 0
	add	sp,sp,-48
.LCFI22:
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
.LCFI23:
	add	s0,sp,48
.LCFI24:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 68 0
	li	s1,0
	li	s4,32
	.loc 1 70 0
	lw	a5,-44(s0)
	blez	a5,.L12
.LBB2:
	.loc 1 71 0
	li	s2,0
	.loc 1 73 0
	lw	s3,-40(s0)
	j	.L13
.L14:
	.loc 1 73 0 is_stmt 0 discriminator 3
	add	s2,s2,1
	add	s3,s3,1
.L13:
	.loc 1 73 0 discriminator 1
	lbu	a5,0(s3)
	bnez	a5,.L14
	.loc 1 74 0 is_stmt 1
	lw	a5,-44(s0)
	blt	s2,a5,.L15
	.loc 1 74 0 is_stmt 0 discriminator 1
	sw	zero,-44(s0)
	j	.L16
.L15:
	.loc 1 75 0 is_stmt 1
	lw	a5,-44(s0)
	sub	a5,a5,s2
	sw	a5,-44(s0)
.L16:
	.loc 1 76 0
	lw	a5,-48(s0)
	and	a5,a5,2
	beqz	a5,.L12
	.loc 1 76 0 is_stmt 0 discriminator 1
	li	s4,48
.L12:
.LBE2:
	.loc 1 78 0 is_stmt 1
	lw	a5,-48(s0)
	and	a5,a5,1
	bnez	a5,.L20
	.loc 1 79 0
	j	.L18
.L19:
	.loc 1 80 0 discriminator 2
	mv	a1,s4
	lw	a0,-36(s0)
	call	qprintchar
	.loc 1 81 0 discriminator 2
	add	s1,s1,1
	.loc 1 79 0 discriminator 2
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
.L18:
	.loc 1 79 0 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	bgtz	a5,.L19
	.loc 1 84 0 is_stmt 1
	j	.L20
.L21:
	.loc 1 85 0 discriminator 2
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	qprintchar
	.loc 1 86 0 discriminator 2
	add	s1,s1,1
	.loc 1 84 0 discriminator 2
	lw	a5,-40(s0)
	add	a5,a5,1
	sw	a5,-40(s0)
.L20:
	.loc 1 84 0 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	bnez	a5,.L21
	.loc 1 88 0 is_stmt 1
	j	.L22
.L23:
	.loc 1 89 0 discriminator 2
	mv	a1,s4
	lw	a0,-36(s0)
	call	qprintchar
	.loc 1 90 0 discriminator 2
	add	s1,s1,1
	.loc 1 88 0 discriminator 2
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
.L22:
	.loc 1 88 0 is_stmt 0 discriminator 1
	lw	a5,-44(s0)
	bgtz	a5,.L23
	.loc 1 93 0 is_stmt 1
	mv	a5,s1
	.loc 1 94 0
	mv	a0,a5
	lw	ra,44(sp)
.LCFI25:
	lw	s0,40(sp)
.LCFI26:
	lw	s1,36(sp)
.LCFI27:
	lw	s2,32(sp)
.LCFI28:
	lw	s3,28(sp)
.LCFI29:
	lw	s4,24(sp)
.LCFI30:
	add	sp,sp,48
.LCFI31:
	jr	ra
.LFE7:
	.size	qprints, .-qprints
	.section	.text.qprinti,"ax",@progbits
	.align	2
	.type	qprinti, @function
qprinti:
.LFB8:
	.loc 1 97 0
	add	sp,sp,-112
.LCFI32:
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
.LCFI33:
	add	s0,sp,112
.LCFI34:
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	mv	a5,a6
	sb	a5,-105(s0)
	.loc 1 100 0
	li	s3,0
	li	s2,0
	.loc 1 101 0
	lw	a5,-88(s0)
	sw	a5,-36(s0)
	.loc 1 103 0
	lw	a5,-88(s0)
	bnez	a5,.L26
	.loc 1 105 0
	li	a5,48
	sb	a5,-72(s0)
	.loc 1 106 0
	sb	zero,-71(s0)
	.loc 1 107 0
	add	a5,s0,-72
	lw	a3,-104(s0)
	lw	a2,-100(s0)
	mv	a1,a5
	lw	a0,-84(s0)
	call	qprints
	mv	a5,a0
	j	.L38
.L26:
	.loc 1 110 0
	lw	a5,-96(s0)
	beqz	a5,.L28
	.loc 1 110 0 is_stmt 0 discriminator 1
	lw	a4,-92(s0)
	li	a5,10
	bne	a4,a5,.L28
	.loc 1 110 0 discriminator 2
	lw	a5,-88(s0)
	bgez	a5,.L28
	.loc 1 112 0 is_stmt 1
	li	s3,1
	.loc 1 113 0
	lw	a5,-88(s0)
	sub	a5,zero,a5
	sw	a5,-36(s0)
.L28:
	.loc 1 116 0
	add	s1,s0,-72
	add	s1,s1,31
	.loc 1 117 0
	sb	zero,0(s1)
	.loc 1 120 0
	lw	a4,-92(s0)
	li	a5,16
	bne	a4,a5,.L34
	.loc 1 122 0
	j	.L30
.L32:
.LBB3:
	.loc 1 123 0
	lw	a5,-36(s0)
	and	a5,a5,15
	sw	a5,-40(s0)
	.loc 1 125 0
	lw	a4,-40(s0)
	li	a5,9
	ble	a4,a5,.L31
	.loc 1 126 0
	lbu	a5,-105(s0)
	add	a5,a5,-58
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
.L31:
	.loc 1 128 0
	lw	a5,-40(s0)
	and	a5,a5,0xff
	add	s1,s1,-1
	add	a5,a5,48
	and	a5,a5,0xff
	sb	a5,0(s1)
	.loc 1 129 0
	lw	a5,-36(s0)
	srl	a5,a5,4
	sw	a5,-36(s0)
.L30:
.LBE3:
	.loc 1 122 0
	lw	a5,-36(s0)
	bnez	a5,.L32
	j	.L33
.L35:
	.loc 1 134 0
	lw	a0,-36(s0)
	call	remu10
	mv	a5,a0
	and	a5,a5,0xff
	add	s1,s1,-1
	add	a5,a5,48
	and	a5,a5,0xff
	sb	a5,0(s1)
	.loc 1 135 0
	lw	a0,-36(s0)
	call	divu10
	sw	a0,-36(s0)
.L34:
	.loc 1 133 0
	lw	a5,-36(s0)
	bnez	a5,.L35
.L33:
	.loc 1 139 0
	beqz	s3,.L36
	.loc 1 140 0
	lw	a5,-100(s0)
	beqz	a5,.L37
	.loc 1 140 0 is_stmt 0 discriminator 1
	lw	a5,-104(s0)
	and	a5,a5,2
	beqz	a5,.L37
	.loc 1 142 0 is_stmt 1
	li	a1,45
	lw	a0,-84(s0)
	call	qprintchar
	.loc 1 143 0
	add	s2,s2,1
	.loc 1 144 0
	lw	a5,-100(s0)
	add	a5,a5,-1
	sw	a5,-100(s0)
	j	.L36
.L37:
	.loc 1 148 0
	add	s1,s1,-1
	li	a5,45
	sb	a5,0(s1)
.L36:
	.loc 1 151 0
	lw	a3,-104(s0)
	lw	a2,-100(s0)
	mv	a1,s1
	lw	a0,-84(s0)
	call	qprints
	mv	a5,a0
	add	a5,s2,a5
.L38:
	.loc 1 152 0 discriminator 1
	mv	a0,a5
	lw	ra,108(sp)
.LCFI35:
	lw	s0,104(sp)
.LCFI36:
	lw	s1,100(sp)
.LCFI37:
	lw	s2,96(sp)
.LCFI38:
	lw	s3,92(sp)
.LCFI39:
	add	sp,sp,112
.LCFI40:
	jr	ra
.LFE8:
	.size	qprinti, .-qprinti
	.section	.rodata
	.align	2
.LC0:
	.string	"(null)"
	.section	.text.qprint,"ax",@progbits
	.align	2
	.type	qprint, @function
qprint:
.LFB9:
	.loc 1 155 0
	add	sp,sp,-64
.LCFI41:
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
.LCFI42:
	add	s0,sp,64
.LCFI43:
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	.loc 1 157 0
	li	s1,0
	.loc 1 160 0
	j	.L40
.L59:
	.loc 1 162 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,37
	bne	a4,a5,.L62
	.loc 1 164 0
	lw	a5,-56(s0)
	add	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 165 0
	li	s3,0
	mv	s2,s3
	.loc 1 166 0
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	beqz	a5,.L63
	.loc 1 167 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,37
	beq	a4,a5,.L64
	.loc 1 168 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,45
	bne	a4,a5,.L46
	.loc 1 170 0
	lw	a5,-56(s0)
	add	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 171 0
	li	s3,1
	.loc 1 173 0
	j	.L46
.L47:
	.loc 1 175 0
	lw	a5,-56(s0)
	add	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 176 0
	or	s3,s3,2
.L46:
	.loc 1 173 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,48
	beq	a4,a5,.L47
	.loc 1 178 0
	j	.L48
.L50:
	.loc 1 179 0 discriminator 3
	mv	a5,s2
	sll	a5,a5,2
	add	a5,a5,s2
	sll	a5,a5,1
	mv	s2,a5
	.loc 1 180 0 discriminator 3
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	add	a5,a5,-48
	add	s2,s2,a5
	.loc 1 178 0 discriminator 3
	lw	a5,-56(s0)
	add	a5,a5,1
	sw	a5,-56(s0)
.L48:
	.loc 1 178 0 is_stmt 0 discriminator 1
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,47
	bleu	a4,a5,.L49
	.loc 1 178 0 discriminator 2
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,57
	bleu	a4,a5,.L50
.L49:
	.loc 1 182 0 is_stmt 1
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,115
	bne	a4,a5,.L51
.LBB4:
	.loc 1 183 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	ra,0(a5)
	.loc 1 184 0
	beqz	ra,.L52
	.loc 1 184 0 is_stmt 0 discriminator 1
	mv	a5,ra
	j	.L53
.L52:
	.loc 1 184 0 discriminator 2
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
.L53:
	.loc 1 184 0 discriminator 4
	mv	a3,s3
	mv	a2,s2
	mv	a1,a5
	lw	a0,-52(s0)
	call	qprints
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 185 0 is_stmt 1 discriminator 4
	j	.L54
.L51:
.LBE4:
	.loc 1 187 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,100
	bne	a4,a5,.L55
	.loc 1 188 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	a1,0(a5)
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,1
	li	a2,10
	lw	a0,-52(s0)
	call	qprinti
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 189 0
	j	.L54
.L55:
	.loc 1 191 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,117
	bne	a4,a5,.L56
	.loc 1 192 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	mv	a1,a5
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,10
	lw	a0,-52(s0)
	call	qprinti
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 193 0
	j	.L54
.L56:
	.loc 1 195 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L57
	.loc 1 196 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	mv	a1,a5
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,16
	lw	a0,-52(s0)
	call	qprinti
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 197 0
	j	.L54
.L57:
	.loc 1 199 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,88
	bne	a4,a5,.L58
	.loc 1 200 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	mv	a1,a5
	li	a6,65
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,16
	lw	a0,-52(s0)
	call	qprinti
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 201 0
	j	.L54
.L58:
	.loc 1 203 0
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	li	a5,99
	bne	a4,a5,.L54
	.loc 1 204 0
	lw	a5,-60(s0)
	add	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	and	a5,a5,0xff
	sb	a5,-36(s0)
	.loc 1 205 0
	sb	zero,-35(s0)
	.loc 1 206 0
	add	a5,s0,-36
	mv	a3,s3
	mv	a2,s2
	mv	a1,a5
	lw	a0,-52(s0)
	call	qprints
	mv	a5,a0
	add	s1,s1,a5
	.loc 1 207 0
	j	.L54
.L62:
	.loc 1 212 0
	nop
	j	.L41
.L64:
	.loc 1 167 0
	nop
.L41:
	.loc 1 213 0
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	qprintchar
	.loc 1 214 0
	add	s1,s1,1
.L54:
	.loc 1 160 0
	lw	a5,-56(s0)
	add	a5,a5,1
	sw	a5,-56(s0)
.L40:
	.loc 1 160 0 is_stmt 0 discriminator 1
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	bnez	a5,.L59
	j	.L43
.L63:
	.loc 1 166 0 is_stmt 1
	nop
.L43:
	.loc 1 217 0
	lw	a5,-52(s0)
	beqz	a5,.L60
	.loc 1 217 0 is_stmt 0 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sb	zero,0(a5)
.L60:
	.loc 1 219 0 is_stmt 1
	mv	a5,s1
	.loc 1 220 0
	mv	a0,a5
	lw	ra,60(sp)
.LCFI44:
	lw	s0,56(sp)
.LCFI45:
	lw	s1,52(sp)
.LCFI46:
	lw	s2,48(sp)
.LCFI47:
	lw	s3,44(sp)
.LCFI48:
	add	sp,sp,64
.LCFI49:
	jr	ra
.LFE9:
	.size	qprint, .-qprint
	.section	.text.printf,"ax",@progbits
	.align	2
	.globl	printf
	.type	printf, @function
printf:
.LFB10:
	.loc 1 223 0
	add	sp,sp,-80
.LCFI50:
	sw	ra,44(sp)
	sw	s0,40(sp)
.LCFI51:
	add	s0,sp,48
.LCFI52:
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 227 0
	add	a5,s0,32
	add	a5,a5,-28
	sw	a5,-24(s0)
	.loc 1 229 0
	lw	a5,-24(s0)
	mv	a2,a5
	lw	a1,-36(s0)
	li	a0,0
	call	qprint
	sw	a0,-20(s0)
	.loc 1 233 0
	lw	a5,-20(s0)
	.loc 1 234 0
	mv	a0,a5
	lw	ra,44(sp)
.LCFI53:
	lw	s0,40(sp)
.LCFI54:
	add	sp,sp,80
.LCFI55:
	jr	ra
.LFE10:
	.size	printf, .-printf
	.section	.text.puts,"ax",@progbits
	.align	2
	.globl	puts
	.type	puts, @function
puts:
.LFB11:
	.loc 1 238 0
	add	sp,sp,-48
.LCFI56:
	sw	ra,44(sp)
	sw	s0,40(sp)
.LCFI57:
	add	s0,sp,48
.LCFI58:
	sw	a0,-36(s0)
	.loc 1 239 0
	sw	zero,-20(s0)
	.loc 1 241 0
	j	.L68
.L69:
	.loc 1 242 0
	lw	a5,-20(s0)
	add	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a0,a5
	call	putchar
.L68:
	.loc 1 241 0
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bnez	a5,.L69
	.loc 1 244 0
	li	a0,10
	call	putchar
	.loc 1 246 0
	lw	a5,-20(s0)
	.loc 1 247 0
	mv	a0,a5
	lw	ra,44(sp)
.LCFI59:
	lw	s0,40(sp)
.LCFI60:
	add	sp,sp,48
.LCFI61:
	jr	ra
.LFE11:
	.size	puts, .-puts
	.section	.text.strcmp,"ax",@progbits
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.loc 1 250 0
	add	sp,sp,-48
.LCFI62:
	sw	s0,44(sp)
.LCFI63:
	add	s0,sp,48
.LCFI64:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 252 0
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 253 0
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 255 0
	j	.L72
.L75:
	.loc 1 257 0
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L77
	.loc 1 260 0
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 261 0
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L72:
	.loc 1 255 0
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	bnez	a5,.L75
	j	.L74
.L77:
	.loc 1 258 0
	nop
.L74:
	.loc 1 263 0
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	sub	a5,a4,a5
	.loc 1 264 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI65:
	add	sp,sp,48
.LCFI66:
	jr	ra
.LFE12:
	.size	strcmp, .-strcmp
	.section	.text.strcpy,"ax",@progbits
	.align	2
	.globl	strcpy
	.type	strcpy, @function
strcpy:
.LFB13:
	.loc 1 267 0
	add	sp,sp,-48
.LCFI67:
	sw	s0,44(sp)
.LCFI68:
	add	s0,sp,48
.LCFI69:
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 268 0
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 269 0
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 271 0
	j	.L79
.L80:
	.loc 1 273 0
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 275 0
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 276 0
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L79:
	.loc 1 271 0
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	bnez	a5,.L80
	.loc 1 279 0
	lw	a5,-36(s0)
	.loc 1 280 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI70:
	add	sp,sp,48
.LCFI71:
	jr	ra
.LFE13:
	.size	strcpy, .-strcpy
	.section	.text.strlen,"ax",@progbits
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB14:
	.loc 1 283 0
	add	sp,sp,-48
.LCFI72:
	sw	s0,44(sp)
.LCFI73:
	add	s0,sp,48
.LCFI74:
	sw	a0,-36(s0)
	.loc 1 284 0
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 285 0
	sw	zero,-24(s0)
	.loc 1 287 0
	lw	a5,-20(s0)
	bnez	a5,.L85
	.loc 1 288 0
	li	a5,0
	j	.L84
.L86:
	.loc 1 291 0
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L85:
	.loc 1 290 0
	lw	a5,-20(s0)
	add	a4,a5,1
	sw	a4,-20(s0)
	lbu	a5,0(a5)
	bnez	a5,.L86
	.loc 1 292 0
	lw	a5,-24(s0)
.L84:
	.loc 1 293 0
	mv	a0,a5
	lw	s0,44(sp)
.LCFI75:
	add	sp,sp,48
.LCFI76:
	jr	ra
.LFE14:
	.size	strlen, .-strlen
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.byte	0x20
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
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xc1
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI16-.LFB6
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xc1
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI22-.LFB7
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x89
	.byte	0x3
	.byte	0x92
	.byte	0x4
	.byte	0x93
	.byte	0x5
	.byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xc9
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xd2
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd3
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd4
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI32-.LFB8
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x89
	.byte	0x3
	.byte	0x92
	.byte	0x4
	.byte	0x93
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xc9
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xd2
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xd3
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI41-.LFB9
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x89
	.byte	0x3
	.byte	0x92
	.byte	0x4
	.byte	0x93
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xc9
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd2
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xd3
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI50-.LFB10
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0x81
	.byte	0x9
	.byte	0x88
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xc
	.byte	0x8
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xc
	.byte	0x2
	.byte	0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI56-.LFB11
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI62-.LFB12
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI67-.LFB13
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI72-.LFB14
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE22:
	.text
.Letext0:
	.file 2 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/lib/gcc/riscv32-unknown-elf/7.1.1/include/stddef.h"
	.file 3 "/ourwork/prime/users/udik/pulp_RI5CY/gdb/lib/gcc/riscv32-unknown-elf/7.1.1/include/stdarg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x50e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.byte	0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x28
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.4byte	.LASF35
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x63
	.4byte	0x7d
	.byte	0x6
	.4byte	0xa9
	.4byte	0xa9
	.byte	0x7
	.4byte	0x37
	.byte	0xf
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xa9
	.byte	0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x24
	.4byte	0x99
	.byte	0x5
	.byte	0x3
	.4byte	remu10_table
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x11a
	.4byte	0x2c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x10c
	.byte	0xb
	.string	"str"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xc
	.string	"s"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xc
	.string	"len"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0xb0
	.byte	0xd
	.byte	0x4
	.4byte	0xa9
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x10a
	.4byte	0x112
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x16d
	.byte	0xb
	.string	"s1"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xb
	.string	"s2"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xc
	.string	"s1p"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xc
	.string	"s2p"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf9
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bd
	.byte	0xf
	.string	"s1"
	.byte	0x1
	.byte	0xf9
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xf
	.string	"s2"
	.byte	0x1
	.byte	0xf9
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x10
	.string	"s1p"
	.byte	0x1
	.byte	0xfc
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.string	"s2p"
	.byte	0x1
	.byte	0xfd
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ef
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0xed
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0xef
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xde
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x233
	.byte	0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0xde
	.4byte	0x10c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x13
	.byte	0x10
	.string	"pc"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x10
	.string	"va"
	.byte	0x1
	.byte	0xe1
	.4byte	0x8e
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9a
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ca
	.byte	0xf
	.string	"out"
	.byte	0x1
	.byte	0x9a
	.4byte	0x2ca
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9a
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.string	"va"
	.byte	0x1
	.byte	0x9a
	.4byte	0x8e
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.string	"pad"
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.byte	0x1
	.byte	0x63
	.byte	0x10
	.string	"pc"
	.byte	0x1
	.byte	0x9d
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.string	"scr"
	.byte	0x1
	.byte	0x9e
	.4byte	0x2d0
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.string	"out"
	.byte	0x1
	.byte	0xd4
	.4byte	.L41
	.byte	0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x10
	.string	"s"
	.byte	0x1
	.byte	0xb7
	.4byte	0x112
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x112
	.byte	0x6
	.4byte	0xa9
	.4byte	0x2e0
	.byte	0x7
	.4byte	0x37
	.byte	0x1
	.byte	0
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3bc
	.byte	0xf
	.string	"out"
	.byte	0x1
	.byte	0x60
	.4byte	0x2ca
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0xf
	.string	"b"
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0xf
	.string	"sg"
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xf
	.string	"pad"
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x60
	.4byte	0xa9
	.byte	0x3
	.byte	0x91
	.byte	0x97,0x7f
	.byte	0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x62
	.4byte	0x3bc
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x10
	.string	"s"
	.byte	0x1
	.byte	0x63
	.4byte	0x112
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.string	"neg"
	.byte	0x1
	.byte	0x64
	.4byte	0x25
	.byte	0x1
	.byte	0x63
	.byte	0x10
	.string	"pc"
	.byte	0x1
	.byte	0x64
	.4byte	0x25
	.byte	0x1
	.byte	0x62
	.byte	0x18
	.string	"t"
	.byte	0x1
	.byte	0x65
	.4byte	0x37
	.byte	0x10
	.string	"u"
	.byte	0x1
	.byte	0x65
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x10
	.string	"t"
	.byte	0x1
	.byte	0x7b
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	0xa9
	.4byte	0x3cc
	.byte	0x7
	.4byte	0x37
	.byte	0x1f
	.byte	0
	.byte	0x14
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x45b
	.byte	0xf
	.string	"out"
	.byte	0x1
	.byte	0x42
	.4byte	0x2ca
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xf
	.string	"pad"
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x10
	.string	"pc"
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.byte	0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.byte	0x1
	.byte	0x64
	.byte	0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x48
	.4byte	0x10c
	.byte	0x1
	.byte	0x63
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x37
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x48b
	.byte	0xf
	.string	"str"
	.byte	0x1
	.byte	0x37
	.4byte	0x2ca
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xf
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b1
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1a
	.4byte	.LASF29
	.byte	0x1
	.byte	0x29
	.4byte	0x37
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d7
	.byte	0xf
	.string	"n"
	.byte	0x1
	.byte	0x29
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x17
	.4byte	0x37
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.string	"n"
	.byte	0x1
	.byte	0x17
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.string	"q"
	.byte	0x1
	.byte	0x18
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.string	"r"
	.byte	0x1
	.byte	0x18
	.4byte	0x37
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
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
	.byte	0x15
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
	.byte	0x16
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF28:
	.string	"putchar"
.LASF27:
	.string	"padchar"
.LASF12:
	.string	"va_list"
.LASF33:
	.string	"src/qprintf.c"
.LASF32:
	.string	"GNU C11 7.1.1 20170509 -march=rv32g -mabi=ilp32d -g -fdata-sections -ffunction-sections"
.LASF20:
	.string	"width"
.LASF1:
	.string	"long long int"
.LASF36:
	.string	"remu10_table"
.LASF23:
	.string	"letbase"
.LASF7:
	.string	"long int"
.LASF26:
	.string	"string"
.LASF18:
	.string	"printf"
.LASF22:
	.string	"qprinti"
.LASF25:
	.string	"qprints"
.LASF29:
	.string	"remu10"
.LASF2:
	.string	"long double"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF21:
	.string	"qprint"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"puts"
.LASF6:
	.string	"short unsigned int"
.LASF24:
	.string	"print_buf"
.LASF13:
	.string	"char"
.LASF14:
	.string	"strlen"
.LASF15:
	.string	"strcpy"
.LASF34:
	.string	"/ourwork/prime/users/udik/pulp_RI5CY/apps/libs/string_lib"
.LASF8:
	.string	"long unsigned int"
.LASF35:
	.string	"__builtin_va_list"
.LASF31:
	.string	"divu10"
.LASF30:
	.string	"qprintchar"
.LASF16:
	.string	"strcmp"
.LASF11:
	.string	"__gnuc_va_list"
.LASF19:
	.string	"format"
	.ident	"GCC: (GNU) 7.1.1 20170509"
