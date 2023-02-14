	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r1, #0
	mov	r0, #16
	mov	ip, #4
	ldr	r3, .L3
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	bx	lr
.L4:
	.align	2
.L3:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L13
	ldr	r2, [r1, #24]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r0, .L13+4
	add	r3, r3, r3, lsl #16
	ldr	ip, .L13+8
	add	r3, r2, r3, lsl #1
	add	r0, r3, r0
	cmp	ip, r0, ror #2
	bcc	.L6
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L6:
	ldr	r3, .L13+12
	ldrh	r0, [r3, #48]
	tst	r0, #64
	bne	.L8
	mov	r3, #3
	add	r2, r2, #1
	str	r2, [r1, #24]
	str	r3, [r1, #28]
	bx	lr
.L8:
	ldrh	r0, [r3, #48]
	tst	r0, #128
	bne	.L10
	mov	r3, #2
	add	r2, r2, #1
	str	r2, [r1, #24]
	str	r3, [r1, #28]
	bx	lr
.L10:
	ldrh	r0, [r3, #48]
	ands	r0, r0, #32
	bne	.L11
	add	r2, r2, #1
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	bx	lr
.L11:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #1
	movne	r3, #0
	addeq	r2, r2, r3
	streq	r2, [r1, #24]
	streq	r3, [r1, #28]
	strne	r3, [r1, #36]
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.word	715827880
	.word	357913940
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L53
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	sub	sp, sp, #20
	bne	.L17
	ldr	r4, .L53+4
	ldr	r2, [r4, #4]
	cmp	r2, #0
	bgt	.L48
.L17:
	ldr	r3, .L53
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L21
	ldr	r4, .L53+4
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	add	r0, r2, r1
	cmp	r0, #512
	blt	.L49
.L21:
	ldr	r3, .L53
	ldrh	r3, [r3, #48]
	ands	r2, r3, #64
	bne	.L25
	ldr	r4, .L53+4
	ldr	r3, [r4]
	cmp	r3, #0
	bgt	.L50
.L25:
	ldr	r3, .L53
	ldrh	r3, [r3, #48]
	ands	r2, r3, #128
	bne	.L29
	ldr	r4, .L53+4
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	add	r0, r3, r1
	cmp	r0, #512
	blt	.L51
.L29:
	ldr	r3, .L53+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L33
	ldr	r3, .L53+12
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L52
.L33:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	animatePlayer
.L50:
	ldr	r1, [r4, #8]
	add	ip, r4, #16
	rsb	r1, r1, #0
	ldm	ip, {ip, lr}
	ldr	r0, .L53+16
	str	r2, [sp, #8]
	str	r1, [sp, #12]
	ldr	r2, [r4, #4]
	ldr	r0, [r0]
	mov	r1, #512
	stm	sp, {ip, lr}
	ldr	r5, .L53+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L25
	ldr	r1, .L53+24
	ldr	r3, [r4]
	ldr	r2, [r1]
	ldr	r0, [r4, #8]
	cmp	r2, #0
	sub	r3, r3, r0
	str	r3, [r4]
	ble	.L25
	sub	r3, r3, r2
	cmp	r3, #80
	bgt	.L25
	ldr	r3, [r4, #52]
	cmp	r3, #0
	subeq	r2, r2, #1
	subne	r2, r2, #2
	str	r2, [r1]
	b	.L25
.L48:
	ldr	r1, [r4, #12]
	add	ip, r4, #16
	rsb	r1, r1, #0
	ldm	ip, {ip, lr}
	ldr	r0, .L53+16
	str	r3, [sp, #12]
	str	r1, [sp, #8]
	ldr	r3, [r4]
	ldr	r0, [r0]
	mov	r1, #512
	stm	sp, {ip, lr}
	ldr	r5, .L53+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L17
	ldr	r1, .L53+28
	ldr	r3, [r4, #4]
	ldr	r2, [r1]
	ldr	r0, [r4, #12]
	cmp	r2, #0
	sub	r3, r3, r0
	str	r3, [r4, #4]
	ble	.L17
	sub	r3, r3, r2
	cmp	r3, #119
	bgt	.L17
	ldr	r3, [r4, #52]
	cmp	r3, #0
	subeq	r2, r2, #1
	subne	r2, r2, #2
	str	r2, [r1]
	b	.L17
.L49:
	str	r3, [sp, #12]
	str	r1, [sp]
	ldr	lr, [r4, #12]
	ldr	ip, [r4, #20]
	ldr	r0, .L53+16
	mov	r1, #512
	ldr	r0, [r0]
	ldr	r3, [r4]
	stmib	sp, {ip, lr}
	ldr	r5, .L53+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L21
	ldr	r1, .L53+28
	ldr	r3, [r4, #4]
	ldr	r2, [r1]
	ldr	r0, [r4, #12]
	cmp	r2, #272
	add	r3, r3, r0
	str	r3, [r4, #4]
	bge	.L21
	sub	r3, r3, r2
	cmp	r3, #120
	ble	.L21
	ldr	r3, [r4, #52]
	cmp	r3, #0
	addeq	r2, r2, #1
	addne	r2, r2, #2
	str	r2, [r1]
	b	.L21
.L51:
	stmib	sp, {r1, r2}
	ldr	lr, [r4, #8]
	ldr	ip, [r4, #16]
	ldr	r0, .L53+16
	mov	r1, #512
	ldr	r0, [r0]
	ldr	r2, [r4, #4]
	str	lr, [sp, #12]
	str	ip, [sp]
	ldr	r5, .L53+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L29
	ldr	r1, .L53+24
	ldr	r3, [r4]
	ldr	r2, [r1]
	ldr	r0, [r4, #8]
	cmp	r2, #352
	add	r3, r3, r0
	str	r3, [r4]
	bge	.L29
	sub	r3, r3, r2
	cmp	r3, #80
	ble	.L29
	ldr	r3, [r4, #52]
	cmp	r3, #0
	addeq	r2, r2, #1
	addne	r2, r2, #2
	str	r2, [r1]
	b	.L29
.L52:
	ldr	r4, .L53+4
	ldr	r0, [r4, #20]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, r3}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L53+16
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #512
	ldr	r5, .L53+20
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	bne	.L33
	mov	r3, #2
	mov	r2, #5
	str	r0, [r4, #52]
	str	r2, [r4, #48]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	b	.L33
.L54:
	.align	2
.L53:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	collisionCheck
	.word	vOff
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L57
	ldr	r2, .L57+4
	ldr	r3, [ip, #4]
	ldr	r1, [r2]
	ldr	r2, .L57+8
	push	{r4, r5, r6, lr}
	ldr	lr, .L57+12
	ldr	r6, [ip, #36]
	ldr	r5, [r2]
	ldr	r0, [ip, #28]
	sub	r3, r3, r1
	ldr	r1, [ip]
	ldr	r2, [lr]
	ldr	r4, .L57+16
	lsl	r3, r3, #23
	add	r0, r0, r6, lsl #5
	sub	r1, r1, r5
	lsr	r3, r3, #23
	add	ip, r4, r2, lsl #3
	lsl	r5, r2, #3
	orr	r3, r3, #16384
	lsl	r0, r0, #1
	and	r1, r1, #255
	add	r2, r2, #1
	strh	r1, [r4, r5]	@ movhi
	str	r2, [lr]
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, r2
	mov	r8, r2
	mov	r6, r2
	mov	r1, #32
	mov	r4, #2
	mov	r5, #1
	ldr	ip, .L76
	add	r9, ip, #64
	mov	lr, ip
	mov	r3, ip
	ldr	r7, [ip, #4]
	ldm	r9, {r9, r10}
	ldr	ip, [ip]
	ldr	fp, .L76+4
.L62:
	cmp	r2, #0
	beq	.L66
	cmp	r2, #1
	beq	.L67
	cmp	r2, #2
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r4, [r3, #40]
	str	r5, [r3, #60]
	str	r4, [r3, #56]
	bne	.L65
	mov	r2, #40
	mov	r3, #440
	cmp	r6, #0
	strne	r7, [lr, #4]
	strne	ip, [lr]
	cmp	r8, #0
	strne	r10, [lr, #68]
	strne	r9, [lr, #64]
	str	r2, [lr, #132]
	str	r3, [lr, #128]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L66:
	mvn	ip, #0
	mov	r6, #1
	mov	r7, #170
.L60:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r4, [r3, #40]
	str	r5, [r3, #60]
	str	r2, [r3, #56]
.L65:
	add	r2, r2, #1
	add	r3, r3, #64
	b	.L62
.L67:
	mov	r9, #180
	mov	r8, r2
	mov	r10, fp
	b	.L60
.L77:
	.align	2
.L76:
	.word	enemies
	.word	450
	.size	initEnemies, .-initEnemies
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	ldr	r3, .L81
	smull	ip, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L79
	ldr	r1, [r0, #40]
	ldr	ip, [r0, #36]
	sub	r1, r1, #1
	cmp	ip, r1
	addlt	ip, ip, #1
	strlt	ip, [r0, #36]
	strge	r3, [r0, #36]
.L79:
	add	r2, r2, #1
	str	r2, [r0, #24]
	bx	lr
.L82:
	.align	2
.L81:
	.word	1717986919
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L89
	ldr	r1, [r0]
	ldr	r3, [r0, #20]
	ldr	r2, [r2]
	add	r3, r1, r3
	sub	r3, r3, r2
	ldr	ip, .L89+4
	cmp	r3, #0
	ldr	r3, [ip]
	blt	.L86
	sub	r2, r1, r2
	cmp	r2, #160
	bgt	.L86
	push	{r4, r5, lr}
	ldr	r4, .L89+8
	ldr	r1, [r0, #4]
	ldr	lr, [r0, #16]
	ldr	r4, [r4]
	add	lr, r1, lr
	sub	lr, lr, r4
	cmp	lr, #0
	blt	.L84
	sub	r1, r1, r4
	cmp	r1, #240
	bgt	.L84
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	mvn	lr, r1, lsl #17
	mvn	lr, lr, lsr #17
	ldr	r1, [r0, #36]
	ldr	r4, .L89+12
	add	r1, r1, #64
	add	r5, r4, r3, lsl #3
	lsl	r1, r1, #2
	and	r2, r2, #255
	lsl	r0, r3, #3
	strh	lr, [r5, #2]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r2, [r4, r0]	@ movhi
.L84:
	add	r3, r3, #1
	str	r3, [ip]
	pop	{r4, r5, lr}
	bx	lr
.L86:
	add	r3, r3, #1
	str	r3, [ip]
	bx	lr
.L90:
	.align	2
.L89:
	.word	vOff
	.word	shadowOAMcounter
	.word	hOff
	.word	shadowOAM
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	initRaccoons
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRaccoons, %function
initRaccoons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, r2
	mov	r8, r2
	mov	r4, r2
	mov	r0, #16
	mov	lr, #2
	ldr	r5, .L113
	ldr	r6, [r5, #132]
	sub	sp, sp, #20
	str	r6, [sp, #8]
	ldr	r6, [r5, #128]
	add	r10, r5, #64
	mov	ip, r5
	mov	r3, r5
	str	r6, [sp, #12]
	str	r2, [sp, #4]
	ldm	r10, {r10, fp}
	ldm	r5, {r5, r6}
	ldr	r9, .L113+4
.L94:
	cmp	r2, #0
	beq	.L99
	cmp	r2, #1
	beq	.L100
	cmp	r2, #2
	beq	.L101
	mov	r7, #3
	cmp	r2, r7
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r1, [r3, #36]
	str	lr, [r3, #40]
	str	r1, [r3, #24]
	str	r7, [r3, #56]
	bne	.L98
	mov	r2, #30
	ldr	r3, [sp, #4]
	cmp	r4, #0
	stmne	ip, {r5, r6}
	cmp	r8, #0
	strne	fp, [ip, #68]
	strne	r10, [ip, #64]
	cmp	r3, #0
	ldrne	r3, [sp, #8]
	strne	r3, [ip, #132]
	ldrne	r3, [sp, #12]
	strne	r3, [ip, #128]
	ldr	r3, .L113+8
	str	r2, [ip, #192]
	str	r3, [ip, #196]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L99:
	mov	r5, #120
	mov	r4, #1
	mov	r6, #15
.L92:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r1, [r3, #36]
	str	lr, [r3, #40]
	str	r1, [r3, #24]
	str	r2, [r3, #56]
.L98:
	add	r2, r2, #1
	add	r3, r3, #64
	b	.L94
.L100:
	mov	r10, #250
	mov	r8, r2
	mov	fp, #180
	b	.L92
.L101:
	mov	r7, #1
	str	r9, [sp, #12]
	stmib	sp, {r7, r9}
	b	.L92
.L114:
	.align	2
.L113:
	.word	raccoons
	.word	350
	.word	430
	.size	initRaccoons, .-initRaccoons
	.align	2
	.global	init
	.syntax unified
	.arm
	.fpu softvfp
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r2, #1
	mov	r1, #16
	mov	r5, #4
	ldr	r3, .L117
	ldr	r0, .L117+4
	str	r4, [r3]
	ldr	r3, .L117+8
	str	r4, [r0]
	str	r4, [r3]
	ldr	r0, .L117+12
	ldr	r3, .L117+16
	str	r4, [r0]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	str	r5, [r3, #40]
	bl	initEnemies
	bl	initRaccoons
	mov	r2, #32
	ldr	r3, .L117+20
	ldr	r0, .L117+24
	ldr	r1, .L117+28
	str	r5, [r3, #40]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	vOff
	.word	hOff
	.word	hOff1
	.word	shadowOAMcounter
	.word	player
	.word	finalBoss
	.word	430
	.word	450
	.size	init, .-init
	.align	2
	.global	updateRaccoons
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRaccoons, %function
updateRaccoons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L125
	push	{r4, lr}
	ldr	r4, .L125+4
	add	lr, r1, #256
.L122:
	ldr	r2, [r1, #24]
	smull	r3, r0, r4, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L120
	add	r0, r1, #36
	ldm	r0, {r0, ip}
	sub	ip, ip, #1
	cmp	r0, ip
	add	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L120:
	add	r2, r2, #1
	str	r2, [r1, #24]
	add	r1, r1, #64
	cmp	r1, lr
	bne	.L122
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	raccoons
	.word	1717986919
	.size	updateRaccoons, .-updateRaccoons
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	ldr	r3, .L139
	ldr	r4, .L139+4
	add	r0, r3, #192
.L131:
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L128
	ldr	r1, [r3, #24]
	smull	r2, ip, r4, r1
	asr	r2, r1, #31
	rsb	r2, r2, ip, asr #2
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2, lsl #1
	bne	.L129
	add	ip, r3, #36
	ldm	ip, {ip, lr}
	sub	lr, lr, #1
	cmp	ip, lr
	add	ip, ip, #1
	strlt	ip, [r3, #36]
	strge	r2, [r3, #36]
.L129:
	add	r1, r1, #1
	str	r1, [r3, #24]
.L128:
	add	r3, r3, #64
	cmp	r3, r0
	bne	.L131
	bl	updateRaccoons
	ldr	r1, .L139+8
	ldr	r3, .L139+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L132
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L132:
	add	r2, r2, #1
	str	r2, [r1, #24]
	pop	{r4, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	enemies
	.word	1717986919
	.word	finalBoss
	.size	update, .-update
	.align	2
	.global	drawRaccoons
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRaccoons, %function
drawRaccoons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L155
	ldr	r1, [r0]
	ldr	r3, [r0, #20]
	ldr	r2, [r2]
	add	r3, r1, r3
	sub	r3, r3, r2
	ldr	ip, .L155+4
	cmp	r3, #0
	ldr	r3, [ip]
	blt	.L149
	sub	r2, r1, r2
	cmp	r2, #160
	bgt	.L149
	push	{r4, r5, lr}
	ldr	r4, .L155+8
	ldr	lr, [r0, #4]
	ldr	r1, [r0, #16]
	ldr	r4, [r4]
	add	r1, lr, r1
	sub	r1, r1, r4
	cmp	r1, #0
	blt	.L143
	sub	lr, lr, r4
	cmp	lr, #240
	bgt	.L143
	ldr	r1, [r0, #44]
	cmp	r1, #1
	beq	.L152
	ldr	r1, [r0, #56]
	cmp	r1, #3
	cmpne	r1, #0
	ldr	r4, .L155+12
	lsl	lr, lr, #23
	lsr	lr, lr, #23
	orr	lr, lr, #16384
	add	r5, r4, r3, lsl #3
	strh	lr, [r5, #2]	@ movhi
	and	r2, r2, #255
	lsl	lr, r3, #3
	strh	r2, [r4, lr]	@ movhi
	beq	.L153
	cmp	r1, #1
	beq	.L154
	cmp	r1, #2
	ldreq	r2, [r0, #36]
	addeq	r2, r2, #356
	lsleq	r2, r2, #1
	strheq	r2, [r5, #4]	@ movhi
.L143:
	add	r3, r3, #1
	str	r3, [ip]
	pop	{r4, r5, lr}
	bx	lr
.L149:
	add	r3, r3, #1
	str	r3, [ip]
	bx	lr
.L153:
	ldr	r2, [r0, #36]
	add	r2, r2, #352
	lsl	r2, r2, #1
	strh	r2, [r5, #4]	@ movhi
	b	.L143
.L152:
	mov	r0, #512
	ldr	r1, .L155+12
	lsl	r2, r3, #3
	strh	r0, [r1, r2]	@ movhi
	b	.L143
.L154:
	ldr	r2, [r0, #36]
	add	r2, r2, #352
	add	r2, r2, #2
	lsl	r2, r2, #1
	strh	r2, [r5, #4]	@ movhi
	b	.L143
.L156:
	.align	2
.L155:
	.word	vOff
	.word	shadowOAMcounter
	.word	hOff
	.word	shadowOAM
	.size	drawRaccoons, .-drawRaccoons
	.align	2
	.global	initFinalBoss
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinalBoss, %function
initFinalBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #32
	mov	r2, #0
	mov	r0, #4
	str	lr, [sp, #-4]!
	ldr	r3, .L159
	ldr	lr, .L159+4
	ldr	ip, .L159+8
	str	r1, [r3, #20]
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L160:
	.align	2
.L159:
	.word	finalBoss
	.word	430
	.word	450
	.size	initFinalBoss, .-initFinalBoss
	.align	2
	.global	updateFinalBoss
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinalBoss, %function
updateFinalBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L164
	ldr	r3, .L164+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L162
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L162:
	add	r2, r2, #1
	str	r2, [r1, #24]
	bx	lr
.L165:
	.align	2
.L164:
	.word	finalBoss
	.word	1717986919
	.size	updateFinalBoss, .-updateFinalBoss
	.align	2
	.global	drawFinalBoss
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinalBoss, %function
drawFinalBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L172
	ldr	r2, .L172+4
	ldr	r1, [r0]
	ldr	r3, [r0, #20]
	ldr	r2, [r2]
	add	r3, r1, r3
	sub	r3, r3, r2
	ldr	ip, .L172+8
	cmp	r3, #0
	ldr	r3, [ip]
	blt	.L169
	sub	r2, r1, r2
	cmp	r2, #160
	bgt	.L169
	push	{r4, r5, lr}
	ldr	r4, .L172+12
	ldr	r1, [r0, #4]
	ldr	lr, [r0, #16]
	ldr	r4, [r4]
	add	lr, r1, lr
	sub	lr, lr, r4
	cmp	lr, #0
	blt	.L167
	sub	r1, r1, r4
	cmp	r1, #240
	bgt	.L167
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	mvn	lr, r1, lsl #17
	mvn	lr, lr, lsr #17
	ldr	r1, [r0, #36]
	ldr	r4, .L172+16
	add	r1, r1, #66
	add	r5, r4, r3, lsl #3
	lsl	r1, r1, #2
	and	r2, r2, #255
	lsl	r0, r3, #3
	strh	lr, [r5, #2]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r2, [r4, r0]	@ movhi
.L167:
	add	r3, r3, #1
	str	r3, [ip]
	pop	{r4, r5, lr}
	bx	lr
.L169:
	add	r3, r3, #1
	str	r3, [ip]
	bx	lr
.L173:
	.align	2
.L172:
	.word	finalBoss
	.word	vOff
	.word	shadowOAMcounter
	.word	hOff
	.word	shadowOAM
	.size	drawFinalBoss, .-drawFinalBoss
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r3, .L176
	ldr	r5, .L176+4
	str	r2, [r3]
	bl	drawPlayer
	mov	r0, r5
	bl	drawEnemies
	ldr	r4, .L176+8
	add	r0, r5, #64
	bl	drawEnemies
	add	r0, r5, #128
	bl	drawEnemies
	mov	r0, r4
	bl	drawRaccoons
	add	r0, r4, #64
	bl	drawRaccoons
	add	r0, r4, #128
	bl	drawRaccoons
	add	r0, r4, #192
	bl	drawRaccoons
	bl	drawFinalBoss
	mov	r3, #67108864
	ldr	r2, .L176+12
	ldrh	r1, [r2]
	ldr	r2, .L176+16
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L176+20
	strh	r1, [r3, #22]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L176+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L176+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	shadowOAMcounter
	.word	enemies
	.word	raccoons
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	draw, .-draw
	.global	collisionMap
	.comm	shadowOAMcounter,4,4
	.comm	finalBoss,64,4
	.comm	raccoons,256,4
	.comm	enemies,192,4
	.comm	player,64,4
	.comm	shadowOAM,1024,4
	.comm	hOff1,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collision1Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
