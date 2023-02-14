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
	.file	"battle.c"
	.text
	.align	2
	.global	battleInterruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	battleInterruptHandler, %function
battleInterruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L25
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L3
	ldr	r3, .L25+4
	ldr	r1, [r3]
	cmp	r1, #19
	ble	.L4
	ldr	r1, .L25+8
	ldr	r0, [r1]
	cmp	r0, r2
	str	r2, [r3]
	moveq	r3, #1
	streq	r3, [r1]
	bne	.L21
.L3:
	ldr	r3, .L25
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L7
	ldr	r3, .L25+12
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L9
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L9
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L22
	ldr	r0, .L25+16
	ldr	r1, .L25+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L9:
	ldr	r3, .L25+24
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L23
.L13:
	mov	r2, #1
	ldr	r3, .L25
	strh	r2, [r3, #2]	@ movhi
.L7:
	mov	r1, #1
	ldr	r3, .L25
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L23:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L13
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L24
	ldr	r0, .L25+16
	ldr	r1, .L25+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L13
.L4:
	ldr	r2, .L25+28
	ldr	r2, [r2]
	cmp	r2, #0
	addeq	r1, r1, #1
	streq	r1, [r3]
	b	.L3
.L21:
	cmp	r0, #1
	streq	r2, [r1]
	b	.L3
.L22:
	ldm	r3, {r0, r1}
	ldr	r3, .L25+32
	mov	lr, pc
	bx	r3
	b	.L9
.L24:
	ldm	r3, {r0, r1}
	ldr	r3, .L25+36
	mov	lr, pc
	bx	r3
	b	.L13
.L26:
	.align	2
.L25:
	.word	67109376
	.word	time_s
	.word	battleState
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	instructions3
	.word	playSoundA
	.word	playSoundB
	.size	battleInterruptHandler, .-battleInterruptHandler
	.align	2
	.global	initFox
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFox, %function
initFox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #84
	mov	r2, #0
	mov	ip, #50
	mov	r0, #4
	ldr	r3, .L29
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	fox
	.size	initFox, .-initFox
	.align	2
	.global	updateFox
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFox, %function
updateFox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L62
	ldr	r3, .L62+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	push	{r4, r5, r6, lr}
	bne	.L32
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L32:
	ldr	r5, .L62+8
	ldrh	r3, [r5]
	add	r2, r2, #1
	tst	r3, #1
	str	r2, [r1, #24]
	beq	.L34
	ldr	r2, .L62+12
	ldrh	r2, [r2]
	ands	r4, r2, #1
	beq	.L60
.L34:
	tst	r3, #2
	beq	.L31
	ldr	r3, .L62+12
	ldrh	r2, [r3]
	ands	r2, r2, #2
	bne	.L31
	ldr	r4, .L62+16
	ldr	r3, [r4, #48]
	cmp	r3, #0
	ble	.L38
	ldr	r5, .L62+20
	ldr	r3, [r5]
	cmp	r3, #4
	ble	.L61
.L39:
	ldr	r3, [r5]
	cmp	r3, #5
	beq	.L43
.L31:
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	ldr	r6, .L62+24
	ldr	r2, [r6]
	cmp	r2, #0
	ble	.L34
	ldr	r3, .L62+28
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L62+32
	ldr	r3, .L62+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+40
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	ldr	r2, .L62+44
	cmp	r3, #0
	str	r3, [r2]
	beq	.L35
	ldr	r2, [r6]
	cmp	r2, #0
	ble	.L35
	ldr	r1, .L62+48
	sub	r3, r2, #1
	cmp	r0, #1
	add	r0, r1, r3, lsl #6
	str	r4, [r0, #60]
	bne	.L36
	cmp	r3, #0
	subne	r3, r2, #2
	addne	r1, r1, r3, lsl #6
	strne	r4, [r1, #60]
.L36:
	str	r3, [r6]
.L35:
	mov	lr, #0
	mov	ip, #15
	mov	r1, #1
	ldr	r2, .L62+52
	ldr	r0, .L62+56
	str	lr, [r2]
	ldr	r2, .L62+60
	ldrh	r3, [r5]
	str	ip, [r0]
	str	r1, [r2]
	b	.L34
.L38:
	ldrne	r5, .L62+20
	bne	.L39
.L43:
	mov	r3, #1
	mov	r1, #0
	ldr	ip, .L62+64
	ldr	r0, .L62+60
	ldr	r2, .L62+52
	str	r3, [ip, #44]
	str	r3, [r0]
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	bx	lr
.L61:
	ldr	r3, .L62+68
	ldr	r0, .L62+72
	ldr	r1, [r3]
	ldr	r3, .L62+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #4
	bgt	.L41
	mov	r0, #1
	ldr	r2, .L62+76
	add	r1, r3, r0
	cmp	r1, #5
	add	ip, r2, r3, lsl #6
	addne	r3, r3, #2
	addne	r2, r2, r1, lsl #6
	str	r0, [ip, #60]
	str	r1, [r5]
	strne	r0, [r2, #60]
	strne	r3, [r5]
.L41:
	mov	ip, #0
	mov	r1, #1
	ldr	r3, [r4, #48]
	ldr	r0, .L62+52
	ldr	r2, .L62+60
	sub	r3, r3, #1
	str	r3, [r4, #48]
	str	ip, [r0]
	str	r1, [r2]
	b	.L31
.L63:
	.align	2
.L62:
	.word	fox
	.word	1717986919
	.word	oldButtons
	.word	buttons
	.word	player
	.word	playerHeartCount
	.word	enemyHeartCount
	.word	hit_sound_length
	.word	hit_sound_data
	.word	playSoundB
	.word	rand
	.word	damage
	.word	enemyHearts
	.word	time_s
	.word	enemyHit
	.word	battleState
	.word	popUp
	.word	heal_sound_length
	.word	heal_sound_data
	.word	playerHearts
	.size	updateFox, .-updateFox
	.align	2
	.global	animateFox
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateFox, %function
animateFox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L67
	ldr	r3, .L67+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L65
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L65:
	add	r2, r2, #1
	str	r2, [r1, #24]
	bx	lr
.L68:
	.align	2
.L67:
	.word	fox
	.word	1717986919
	.size	animateFox, .-animateFox
	.align	2
	.global	drawFox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFox, %function
drawFox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	ldr	r0, .L73+4
	ldr	ip, .L73+8
	ldr	r3, [r3]
	ldr	r2, [r0]
	ldr	r1, [ip]
	cmp	r3, #0
	ldr	r3, .L73+12
	str	lr, [sp, #-4]!
	orrgt	r2, r2, #4096
	lsl	lr, r1, #3
	strh	r2, [r3, lr]	@ movhi
	ldr	r2, [r0, #36]
	ldr	r0, [r0, #4]
	lsl	r2, r2, #6
	add	r3, r3, lr
	add	r1, r1, #1
	orr	r0, r0, #16384
	add	r2, r2, #2
	str	r1, [ip]
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L74:
	.align	2
.L73:
	.word	foxHit
	.word	fox
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawFox, .-drawFox
	.align	2
	.global	initSpirit
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpirit, %function
initSpirit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #28
	mov	r2, #0
	mov	ip, #180
	mov	r0, #4
	ldr	r3, .L77
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L78:
	.align	2
.L77:
	.word	spirit
	.size	initSpirit, .-initSpirit
	.align	2
	.global	updateSpirit
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpirit, %function
updateSpirit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L101
	ldr	r2, .L101+4
	ldr	r3, [r1, #24]
	smull	ip, r0, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r0, asr #2
	add	r2, r2, r2, lsl #2
	subs	r2, r3, r2, lsl #1
	push	{r4, r5, r6, r7, r8, lr}
	bne	.L80
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r2, [r1, #36]
.L80:
	ldr	r4, .L101+8
	add	r3, r3, #1
	smull	r0, r2, r4, r3
	asr	r4, r3, #31
	rsb	r4, r4, r2, asr #2
	rsb	r2, r4, r4, lsl #3
	rsb	r4, r4, r2, lsl #3
	subs	r4, r3, r4, lsl #1
	str	r3, [r1, #24]
	bne	.L79
	ldr	r3, .L101+12
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L83
	ldr	r6, .L101+16
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L84
	mov	r3, #1
	mov	r2, r3
	ldr	r5, .L101+20
	str	r3, [r5]
.L85:
	mov	r0, #0
	mov	lr, r0
	ldr	r7, .L101+24
	ldr	ip, .L101+28
	ldr	r3, [r7]
.L89:
	cmp	r3, #0
	subgt	r3, r3, #1
	add	r4, r4, #1
	addgt	r1, ip, r3, lsl #6
	movgt	r0, #1
	strgt	lr, [r1, #60]
	cmp	r4, r2
	mov	r4, #1
	blt	.L89
	cmp	r0, #0
	strne	r3, [r7]
	ldr	r3, .L101+32
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L101+36
	ldr	r3, .L101+40
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, [r5]
	ldr	r3, .L101+44
	cmp	r2, r1
	str	r1, [r3]
	movgt	r1, #15
	ldrgt	r3, .L101+48
	strgt	r1, [r3]
.L93:
	mov	r1, #0
	ldr	r3, .L101+52
	str	r2, [r6]
	str	r1, [r3]
.L79:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L83:
	ldr	r3, .L101+56
	mov	lr, pc
	bx	r3
	subs	r2, r0, #0
	and	r2, r2, #1
	ldr	r5, .L101+20
	rsblt	r2, r2, #0
	str	r2, [r5]
	ldr	r6, .L101+16
.L87:
	cmp	r2, #0
	bgt	.L85
	mov	r1, #0
	ldr	r3, .L101+44
	str	r1, [r3]
	b	.L93
.L84:
	ldr	r3, .L101+56
	mov	lr, pc
	bx	r3
	subs	r2, r0, #0
	and	r2, r2, #1
	ldr	r5, .L101+20
	rsblt	r2, r2, #0
	add	r2, r2, #1
	str	r2, [r5]
	b	.L87
.L102:
	.align	2
.L101:
	.word	spirit
	.word	1717986919
	.word	156180629
	.word	player
	.word	prevDamage
	.word	spiritDamage
	.word	playerHeartCount
	.word	playerHearts
	.word	hit_sound_length
	.word	hit_sound_data
	.word	playSoundB
	.word	time_s
	.word	foxHit
	.word	battleState
	.word	rand
	.size	updateSpirit, .-updateSpirit
	.align	2
	.global	animateSpirit
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSpirit, %function
animateSpirit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L106
	ldr	r3, .L106+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L104
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L104:
	add	r2, r2, #1
	str	r2, [r1, #24]
	bx	lr
.L107:
	.align	2
.L106:
	.word	spirit
	.word	1717986919
	.size	animateSpirit, .-animateSpirit
	.align	2
	.global	drawSpirit
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSpirit, %function
drawSpirit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L112
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	movgt	lr, #67108864
	movgt	r4, #4352
	ldr	r0, .L112+4
	ldr	ip, .L112+8
	ldr	r2, [r0]
	ldr	r1, [ip]
	ldrgt	r3, .L112+12
	ldrle	r3, .L112+12
	strhgt	r4, [lr, #76]	@ movhi
	orrgt	r2, r2, #4096
	lsl	lr, r1, #3
	strh	r2, [r3, lr]	@ movhi
	ldr	r2, [r0, #36]
	ldr	r0, [r0, #4]
	add	r2, r2, #320
	add	r3, r3, lr
	add	r1, r1, #1
	orr	r0, r0, #16384
	lsl	r2, r2, #1
	str	r1, [ip]
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	enemyHit
	.word	spirit
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawSpirit, .-drawSpirit
	.align	2
	.global	initHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #156
	mov	lr, #94
	mov	ip, #1
	mov	r1, #0
	mov	r0, #2
	ldr	r3, .L120
.L115:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #236
	str	lr, [r3]
	str	ip, [r3, #60]
	str	r1, [r3, #36]
	str	r1, [r3, #24]
	str	r0, [r3, #40]
	add	r3, r3, #64
	bne	.L115
	mov	r2, #20
	mov	lr, #30
	mov	ip, #1
	mov	r1, #0
	mov	r0, #2
	ldr	r3, .L120+4
.L116:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #100
	str	lr, [r3]
	str	ip, [r3, #60]
	str	r1, [r3, #36]
	str	r1, [r3, #24]
	str	r0, [r3, #40]
	add	r3, r3, #64
	bne	.L116
	ldr	lr, [sp], #4
	bx	lr
.L121:
	.align	2
.L120:
	.word	playerHearts
	.word	enemyHearts
	.size	initHearts, .-initHearts
	.align	2
	.global	initBattleMode
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBattleMode, %function
initBattleMode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #5
	mov	r4, #0
	mov	r10, #67108864
	mov	r9, #49152
	mov	r8, #195
	mov	r7, #33
	mov	r6, #1
	mov	r2, #16
	mov	lr, #84
	mov	r5, #50
	mov	r1, #4
	mov	ip, #28
	mov	r0, #180
	ldr	fp, .L124
	str	r3, [fp]
	ldr	fp, .L124+4
	str	r3, [fp]
	ldr	r3, .L124+8
	str	r4, [r3]
	ldr	r3, .L124+12
	str	r4, [r3]
	ldr	r3, .L124+16
	str	r4, [r3]
	ldr	r3, .L124+20
	str	r4, [r3]
	ldr	r3, .L124+24
	str	r4, [r3]
	ldrh	r3, [r10, #4]
	orr	r3, r3, #8
	strh	r3, [r10, #4]	@ movhi
	ldr	r3, .L124+28
	strh	r4, [r3, #10]	@ movhi
	strh	r9, [r3, #8]	@ movhi
	strh	r8, [r3, #10]	@ movhi
	add	r3, r3, #256
	strh	r7, [r3]	@ movhi
	strh	r6, [r3, #8]	@ movhi
	ldr	r3, .L124+32
	ldr	r6, .L124+36
	str	r6, [r3, #4092]
	ldr	r3, .L124+40
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	lr, [r3]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r5, [r3, #4]
	str	r1, [r3, #40]
	ldr	r3, .L124+44
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r1, [r3, #40]
	str	ip, [r3]
	str	r0, [r3, #4]
	bl	initHearts
	mov	r2, #90
	ldr	r3, .L124+48
	str	r5, [r3]
	str	r4, [r3, #60]
	str	r2, [r3, #4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L125:
	.align	2
.L124:
	.word	enemyHeartCount
	.word	playerHeartCount
	.word	time_s
	.word	foxHit
	.word	enemyHit
	.word	prevDamage
	.word	battleState
	.word	67109120
	.word	50360320
	.word	battleInterruptHandler
	.word	fox
	.word	spirit
	.word	popUp
	.size	initBattleMode, .-initBattleMode
	.align	2
	.global	animateHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateHearts, %function
animateHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L134
	ldr	r0, .L134+4
	ldr	ip, .L134+8
	push	{r4, r5, lr}
	add	lr, r1, #320
.L131:
	ldr	r4, [r1, #24]
	smull	r3, r2, ip, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r4, r3, lsl #1
	bne	.L127
	add	r2, r1, #36
	ldm	r2, {r2, r5}
	sub	r5, r5, #1
	cmp	r2, r5
	add	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L127:
	ldr	r2, [r0, #24]
	smull	r3, r5, ip, r2
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #2
	add	r3, r3, r3, lsl #2
	add	r4, r4, #1
	subs	r3, r2, r3, lsl #1
	str	r4, [r1, #24]
	bne	.L129
	add	r4, r0, #36
	ldm	r4, {r4, r5}
	sub	r5, r5, #1
	cmp	r4, r5
	add	r4, r4, #1
	strlt	r4, [r0, #36]
	strge	r3, [r0, #36]
.L129:
	add	r1, r1, #64
	add	r2, r2, #1
	cmp	r1, lr
	str	r2, [r0, #24]
	add	r0, r0, #64
	bne	.L131
	pop	{r4, r5, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	playerHearts
	.word	enemyHearts
	.word	1717986919
	.size	animateHearts, .-animateHearts
	.align	2
	.global	updateBattleMode
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBattleMode, %function
updateBattleMode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L148
	bl	animateHearts
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L146
	cmp	r3, #1
	beq	.L147
.L138:
	ldr	r3, .L148+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L139
	ldr	r3, .L148+8
	ldrh	r3, [r3]
	ands	r3, r3, #512
	ldreq	r2, .L148+12
	streq	r3, [r2, #44]
.L139:
	ldr	r2, .L148+16
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	ldr	r2, .L148+20
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L146:
	bl	updateFox
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L138
.L147:
	bl	updateSpirit
	b	.L138
.L149:
	.align	2
.L148:
	.word	battleState
	.word	oldButtons
	.word	buttons
	.word	popUp
	.word	enemyHit
	.word	foxHit
	.size	updateBattleMode, .-updateBattleMode
	.align	2
	.global	drawHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHearts, %function
drawHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L160
	ldr	r2, .L160+4
	ldr	lr, [r4]
	add	r2, r2, lr, lsl #3
	mov	r1, r2
	mov	r7, #512
	ldr	r3, .L160+8
	add	ip, r3, #320
.L153:
	ldr	r0, [r3, #60]
	cmp	r0, #0
	ldrne	r0, [r3, #36]
	ldrne	r6, [r3]
	ldrne	r5, [r3, #4]
	addne	r0, r0, #8
	add	r3, r3, #64
	strheq	r7, [r1]	@ movhi
	strhne	r0, [r1, #4]	@ movhi
	strhne	r6, [r1]	@ movhi
	strhne	r5, [r1, #2]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L153
	mov	r6, #512
	ldr	r3, .L160+12
	add	r0, r3, #320
.L156:
	ldr	r1, [r3, #60]
	cmp	r1, #0
	ldrne	r1, [r3, #36]
	ldmne	r3, {r5, ip}
	addne	r1, r1, #40
	add	r3, r3, #64
	strheq	r6, [r2, #40]	@ movhi
	strhne	r1, [r2, #44]	@ movhi
	strhne	r5, [r2, #40]	@ movhi
	strhne	ip, [r2, #42]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L156
	add	lr, lr, #10
	str	lr, [r4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	shadowOAMcounter
	.word	shadowOAM
	.word	playerHearts
	.word	enemyHearts
	.size	drawHearts, .-drawHearts
	.align	2
	.global	drawBattleMode
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBattleMode, %function
drawBattleMode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r4, .L168
	str	r3, [r4]
	bl	drawFox
	bl	drawSpirit
	bl	drawHearts
	ldr	r1, .L168+4
	ldr	r3, [r1, #44]
	cmp	r3, #0
	bne	.L163
	mov	r0, #512
	ldr	r3, [r4]
	ldr	r1, .L168+8
	lsl	r2, r3, #3
	strh	r0, [r1, r2]	@ movhi
.L164:
	ldr	r2, .L168+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #11
	ldreq	r2, .L168+16
	ldreq	r2, [r2]
	rsbeq	r2, r2, #31
	lsleq	r2, r2, #16
	ldr	r1, .L168+20
	lsreq	r2, r2, #16
	strh	r2, [r1, #12]	@ movhi
	add	r3, r3, #2
	ldr	r2, .L168+24
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r4, .L168+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L168+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L163:
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	lr, #384
	ldr	r3, [r4]
	ldr	r0, .L168+8
	ldr	ip, [r1]
	add	r1, r0, r3, lsl #3
	strh	r2, [r1, #2]	@ movhi
	lsl	r2, r3, #3
	strh	lr, [r1, #4]	@ movhi
	strh	ip, [r0, r2]	@ movhi
	b	.L164
.L169:
	.align	2
.L168:
	.word	shadowOAMcounter
	.word	popUp
	.word	shadowOAM
	.word	battleState
	.word	time_s
	.word	100721856
	.word	waitForVBlank
	.word	DMANow
	.size	drawBattleMode, .-drawBattleMode
	.align	2
	.global	initPopUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPopUp, %function
initPopUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #50
	mov	r1, #90
	mov	r2, #0
	ldr	r3, .L171
	stm	r3, {r0, r1}
	str	r2, [r3, #60]
	bx	lr
.L172:
	.align	2
.L171:
	.word	popUp
	.size	initPopUp, .-initPopUp
	.align	2
	.global	drawPopUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPopUp, %function
drawPopUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L179
	ldr	r3, [r0, #44]
	ldr	r2, .L179+4
	cmp	r3, #0
	ldr	r3, [r2]
	bne	.L174
	mov	ip, #512
	ldr	r0, .L179+8
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	ip, [r0, r1]	@ movhi
	str	r3, [r2]
	bx	lr
.L174:
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	push	{r4, lr}
	mov	r4, #384
	ldr	ip, .L179+8
	ldr	lr, [r0]
	add	r0, ip, r3, lsl #3
	strh	r1, [r0, #2]	@ movhi
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	r4, [r0, #4]	@ movhi
	strh	lr, [ip, r1]	@ movhi
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L180:
	.align	2
.L179:
	.word	popUp
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawPopUp, .-drawPopUp
	.align	2
	.global	initFinalBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinalBattle, %function
initFinalBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r1, #1
	mov	r2, #67108864
	mov	lr, #33
	mov	ip, #49152
	mov	r0, #195
	ldr	r5, .L183
	str	r3, [r5]
	ldr	r5, .L183+4
	str	r3, [r5]
	ldr	r3, .L183+8
	str	r4, [r3]
	ldr	r3, .L183+12
	str	r4, [r3]
	ldr	r3, .L183+16
	str	r4, [r3]
	ldr	r3, .L183+20
	str	r4, [r3]
	ldr	r3, .L183+24
	str	r4, [r3]
	ldr	r3, .L183+28
	str	r4, [r3]
	ldr	r3, .L183+32
	str	r1, [r3]
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	add	r2, r2, #512
	strh	r1, [r2, #8]	@ movhi
	strh	lr, [r2]	@ movhi
	ldr	r3, .L183+36
	ldr	r1, .L183+40
	ldr	r2, .L183+44
	strh	r4, [r3, #10]	@ movhi
	str	r1, [r2, #4092]
	strh	ip, [r3, #8]	@ movhi
	ldr	r2, .L183+48
	strh	r0, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r7, #84
	mov	r6, #50
	mov	r5, #4
	mov	r1, #16
	mov	lr, #20
	mov	r2, #32
	mov	ip, #170
	mov	r0, #2
	ldr	r3, .L183+52
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #40]
	str	r4, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldr	r3, .L183+56
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	lr, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	b	initHearts
.L184:
	.align	2
.L183:
	.word	enemyHeartCount
	.word	playerHeartCount
	.word	battleState
	.word	shadowOAMcounter
	.word	prevAttack
	.word	time_s
	.word	foxHit
	.word	enemyHit
	.word	instructions3
	.word	67109120
	.word	battleInterruptHandler
	.word	50360320
	.word	setupSounds
	.word	fox
	.word	shaman
	.size	initFinalBattle, .-initFinalBattle
	.align	2
	.global	drawFinalBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinalBattle, %function
drawFinalBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	lr, .L191
	ldr	r1, [lr, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	mov	ip, #2
	ldr	r0, .L191+4
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #36]
	add	r3, r3, #9
	ldr	r4, .L191+8
	add	r3, r3, r2, lsl #5
	lsl	r3, r3, #1
	ldr	r2, [lr, #36]
	ldr	r5, [r0]
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, [r0, #4]
	ldr	lr, [lr]
	lsl	r2, r2, #7
	add	r2, r2, #14
	orr	r3, r3, #16384
	strh	r5, [r4]	@ movhi
	ldr	r5, .L191+12
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	strh	r2, [r4, #12]	@ movhi
	strh	lr, [r4, #8]	@ movhi
	str	ip, [r5]
	bl	drawHearts
	ldr	r3, .L191+16
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #27
	ldreq	r3, .L191+20
	ldreq	r3, [r3]
	ldr	r2, .L191+24
	addeq	r3, r3, #7
	lsleq	r3, r3, #16
	ldr	r1, .L191+28
	lsreq	r3, r3, #16
	ldr	r2, [r2]
	strh	r3, [r1, #12]	@ movhi
	ldr	r3, [r5]
	cmp	r2, #0
	add	r2, r3, #1
	bne	.L187
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r4, r2]	@ movhi
.L188:
	add	r3, r3, #2
	ldr	r2, .L191+32
	str	r3, [r5]
	ldr	r4, .L191+36
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L191+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L187:
	mov	ip, #50
	mov	r0, #776
	lsl	r1, r2, #3
	strh	ip, [r4, r1]	@ movhi
	ldr	r1, .L191+40
	add	r2, r4, r2, lsl #3
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	b	.L188
.L192:
	.align	2
.L191:
	.word	shaman
	.word	fox
	.word	shadowOAM
	.word	shadowOAMcounter
	.word	battleState
	.word	time_s
	.word	instructions3
	.word	100721856
	.word	waitForVBlank
	.word	DMANow
	.word	-16294
	.size	drawFinalBattle, .-drawFinalBattle
	.align	2
	.global	initFox2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFox2, %function
initFox2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #84
	mov	ip, #50
	mov	r0, #4
	ldr	r3, .L195
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L196:
	.align	2
.L195:
	.word	fox
	.size	initFox2, .-initFox2
	.align	2
	.global	updateFox2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFox2, %function
updateFox2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L225
	ldrh	r3, [r3]
	tst	r3, #1
	push	{r4, r5, r6, lr}
	beq	.L198
	ldr	r2, .L225+4
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L221
.L198:
	tst	r3, #2
	beq	.L201
	ldr	r2, .L225+4
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L222
.L201:
	tst	r3, #256
	beq	.L197
	ldr	r3, .L225+4
	ldrh	r3, [r3]
	ands	r3, r3, #256
	bne	.L197
	ldr	r0, .L225+8
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L197
	mov	r4, #3
	ldr	ip, .L225+12
	ldr	r1, .L225+16
	ldr	lr, [ip, #24]
	str	r4, [ip, #28]
	ldr	r4, [r1]
	add	lr, lr, #1
	cmp	r4, #1
	str	lr, [ip, #24]
	sub	ip, r2, #1
	beq	.L223
	ldr	r2, .L225+20
	add	r2, r2, ip, lsl #6
	str	ip, [r0]
	str	r3, [r2, #60]
.L204:
	mov	lr, #3
	mov	ip, #0
	mov	r2, #1
	ldr	r0, .L225+24
	ldr	r3, .L225+28
	str	lr, [r1]
	str	ip, [r0]
	str	r2, [r3]
.L197:
	pop	{r4, r5, r6, lr}
	bx	lr
.L222:
	ldr	r0, .L225+8
	ldr	r1, [r0]
	cmp	r1, #0
	ble	.L201
	mov	r4, #1
	mov	lr, #2
	sub	r1, r1, #1
	ldr	ip, .L225+12
	str	r1, [r0]
	ldr	r0, .L225+20
	add	r1, r0, r1, lsl #6
	ldr	r0, [ip, #24]
	str	r2, [r1, #60]
	ldr	r1, .L225+16
	add	r0, r0, r4
	str	lr, [r1]
	str	r0, [ip, #24]
	ldr	r1, .L225+24
	ldr	r0, .L225+28
	str	lr, [ip, #28]
	str	r4, [r0]
	str	r2, [r1]
	b	.L201
.L221:
	ldr	ip, .L225+8
	ldr	r0, [ip]
	cmp	r0, #0
	ble	.L198
	mov	r6, #1
	ldr	lr, .L225+12
	ldr	r1, .L225+16
	ldr	r4, [lr, #24]
	ldr	r5, [r1]
	add	r4, r4, r6
	cmp	r5, #2
	str	r6, [lr, #28]
	str	r4, [lr, #24]
	sub	lr, r0, #1
	beq	.L224
	ldr	r0, .L225+20
	add	r0, r0, lr, lsl #6
	str	lr, [ip]
	str	r2, [r0, #60]
.L200:
	mov	r2, #1
	mov	ip, #0
	ldr	lr, .L225+28
	ldr	r0, .L225+24
	str	r2, [r1]
	str	r2, [lr]
	str	ip, [r0]
	b	.L198
.L224:
	ldr	r4, .L225+20
	ldr	r6, .L225+32
	str	lr, [ip]
	cmp	lr, #0
	add	lr, r4, lr, lsl #6
	str	r2, [lr, #60]
	str	r5, [r6]
	subne	r0, r0, #2
	addne	r4, r4, r0, lsl #6
	strne	r2, [r4, #60]
	strne	r0, [ip]
	b	.L200
.L223:
	mov	r5, #2
	ldr	lr, .L225+20
	ldr	r4, .L225+32
	str	ip, [r0]
	cmp	ip, #0
	add	ip, lr, ip, lsl #6
	str	r3, [ip, #60]
	str	r5, [r4]
	subne	r2, r2, #2
	addne	lr, lr, r2, lsl #6
	strne	r3, [lr, #60]
	strne	r2, [r0]
	b	.L204
.L226:
	.align	2
.L225:
	.word	oldButtons
	.word	buttons
	.word	enemyHeartCount
	.word	fox
	.word	prevAttack
	.word	enemyHearts
	.word	time_s
	.word	battleState
	.word	damage
	.size	updateFox2, .-updateFox2
	.align	2
	.global	drawFox2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFox2, %function
drawFox2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L229
	ldr	ip, .L229+4
	ldr	r3, [r1, #28]
	push	{r4, r5, lr}
	ldr	r4, [r1, #36]
	ldr	r2, [ip]
	ldr	lr, .L229+8
	add	r3, r3, #9
	add	r3, r3, r4, lsl #5
	ldr	r0, [r1, #4]
	add	r4, lr, r2, lsl #3
	ldr	r5, [r1]
	lsl	r3, r3, #1
	strh	r3, [r4, #4]	@ movhi
	orr	r1, r0, #16384
	lsl	r3, r2, #3
	add	r2, r2, #1
	strh	r1, [r4, #2]	@ movhi
	strh	r5, [lr, r3]	@ movhi
	str	r2, [ip]
	pop	{r4, r5, lr}
	bx	lr
.L230:
	.align	2
.L229:
	.word	fox
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawFox2, .-drawFox2
	.align	2
	.global	initShaman
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShaman, %function
initShaman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #32
	mov	lr, #20
	mov	r2, #0
	mov	ip, #170
	mov	r0, #2
	ldr	r3, .L233
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L234:
	.align	2
.L233:
	.word	shaman
	.size	initShaman, .-initShaman
	.align	2
	.global	updateShaman
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShaman, %function
updateShaman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L251
	ldr	r3, .L251+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L236
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L236:
	ldr	r0, .L251+8
	ldr	r3, .L251+12
	add	r2, r2, #1
	mla	r3, r2, r3, r0
	ldr	r0, .L251+16
	cmp	r0, r3, ror #3
	str	r2, [r1, #24]
	bxcc	lr
	ldr	r3, .L251+20
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r3, r0, #1
	ldr	r2, .L251+24
	cmp	r3, #0
	str	r3, [r2]
	beq	.L239
	ldr	r1, .L251+28
	ldr	r2, [r1]
	cmp	r2, #0
	ble	.L239
	mov	lr, #0
	ldr	ip, .L251+32
	sub	r3, r2, #1
	cmp	r0, #1
	add	r0, ip, r3, lsl #6
	str	lr, [r0, #60]
	bne	.L240
	cmp	r3, lr
	subne	r3, r2, #2
	addne	ip, ip, r3, lsl #6
	strne	lr, [ip, #60]
.L240:
	str	r3, [r1]
.L239:
	mov	r3, #0
	ldr	r0, .L251+36
	ldr	r1, .L251+40
	ldr	r2, .L251+44
	str	r3, [r0, #28]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L252:
	.align	2
.L251:
	.word	shaman
	.word	1717986919
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	rand
	.word	spiritDamage
	.word	playerHeartCount
	.word	playerHearts
	.word	fox
	.word	time_s
	.word	battleState
	.size	updateShaman, .-updateShaman
	.align	2
	.global	updateFinalBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinalBattle, %function
updateFinalBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	animateHearts
	ldr	r1, .L266
	ldr	r3, .L266+4
	ldr	r2, [r1, #24]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L254
	ldr	r0, [r1, #40]
	ldr	ip, [r1, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	addlt	ip, ip, #1
	strlt	ip, [r1, #36]
	strge	r3, [r1, #36]
.L254:
	ldr	r4, .L266+8
	ldr	r3, [r4]
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [r1, #24]
	bne	.L256
	ldr	r3, .L266+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L265
.L258:
	ldr	r3, .L266+16
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L253
	ldr	r3, .L266+20
	ldrh	r3, [r3]
	ands	r3, r3, #512
	ldreq	r2, .L266+12
	streq	r3, [r2]
.L253:
	pop	{r4, lr}
	bx	lr
.L265:
	bl	updateFox2
	ldr	r3, [r4]
.L256:
	cmp	r3, #1
	bne	.L258
	ldr	r3, .L266+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L258
	bl	updateShaman
	b	.L258
.L267:
	.align	2
.L266:
	.word	fox
	.word	1717986919
	.word	battleState
	.word	instructions3
	.word	oldButtons
	.word	buttons
	.size	updateFinalBattle, .-updateFinalBattle
	.align	2
	.global	drawShaman
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShaman, %function
drawShaman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L270
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	ip, .L270+4
	push	{r4, lr}
	ldr	r3, [ip]
	ldr	lr, .L270+8
	ldr	r2, [r0, #36]
	ldr	r4, [r0]
	lsl	r2, r2, #7
	add	r0, lr, r3, lsl #3
	strh	r1, [r0, #2]	@ movhi
	add	r2, r2, #14
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	r4, [lr, r1]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	str	r3, [ip]
	pop	{r4, lr}
	bx	lr
.L271:
	.align	2
.L270:
	.word	shaman
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawShaman, .-drawShaman
	.align	2
	.global	enableBattleInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	enableBattleInterrupts, %function
enableBattleInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #49152
	mov	lr, #0
	mov	r2, #195
	mov	ip, #32
	ldr	r3, .L274
	ldr	r0, .L274+4
	strh	lr, [r3, #10]	@ movhi
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L275:
	.align	2
.L274:
	.word	67109120
	.word	67109376
	.size	enableBattleInterrupts, .-enableBattleInterrupts
	.align	2
	.global	setupBattleInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupBattleInterrupts, %function
setupBattleInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	push	{r4, lr}
	mov	r1, #49152
	mov	r4, #0
	mov	lr, #195
	mov	ip, #33
	mov	r0, #1
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L278
	strh	r4, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	lr, [r3, #10]	@ movhi
	ldr	r1, .L278+4
	ldr	r3, .L278+8
	add	r2, r2, #512
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	pop	{r4, lr}
	str	r3, [r1, #4092]
	bx	lr
.L279:
	.align	2
.L278:
	.word	67109120
	.word	50360320
	.word	battleInterruptHandler
	.size	setupBattleInterrupts, .-setupBattleInterrupts
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L283
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #11
	ldreq	r3, .L283+4
	ldreq	r3, [r3]
	rsbeq	r3, r3, #31
	lsleq	r3, r3, #16
	ldr	r2, .L283+8
	ldr	r1, .L283+12
	lsreq	r3, r3, #16
	strh	r3, [r1, #12]	@ movhi
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L284:
	.align	2
.L283:
	.word	battleState
	.word	time_s
	.word	shadowOAMcounter
	.word	100721856
	.size	drawTimer, .-drawTimer
	.align	2
	.global	drawTimer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer2, %function
drawTimer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L288
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #27
	ldreq	r3, .L288+4
	ldreq	r3, [r3]
	addeq	r3, r3, #7
	lsleq	r3, r3, #16
	ldr	r2, .L288+8
	ldr	r1, .L288+12
	lsreq	r3, r3, #16
	strh	r3, [r1, #12]	@ movhi
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L289:
	.align	2
.L288:
	.word	battleState
	.word	time_s
	.word	shadowOAMcounter
	.word	100721856
	.size	drawTimer2, .-drawTimer2
	.comm	instructions3,4,4
	.comm	time_s,4,4
	.comm	prevAttack,4,4
	.comm	enemyHit,4,4
	.comm	foxHit,4,4
	.comm	battleState,4,4
	.comm	prevDamage,4,4
	.comm	spiritDamage,4,4
	.comm	damage,4,4
	.comm	playerHeartCount,4,4
	.comm	enemyHeartCount,4,4
	.comm	shadowOAMcounter,4,4
	.comm	popUp,64,4
	.comm	enemyHearts,320,4
	.comm	playerHearts,320,4
	.comm	shaman,64,4
	.comm	spirit,64,4
	.comm	fox,64,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
