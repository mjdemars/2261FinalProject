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
	.file	"minigame.c"
	.text
	.align	2
	.global	initP1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initP1, %function
initP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #140
	mov	ip, #112
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	p1
	.size	initP1, .-initP1
	.align	2
	.global	updateP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateP1, %function
updateP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L20
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L7
	ldr	r2, .L20+4
	ldr	r1, [r2, #4]
	ldr	r0, [r2, #12]
	cmp	r1, r0
	subge	r1, r1, r0
	strge	r1, [r2, #4]
	strge	r3, [r2, #28]
.L7:
	ldr	r3, .L20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L8
	ldr	r3, .L20+4
	add	r0, r3, #12
	ldr	r1, [r3, #4]
	ldm	r0, {r0, r2}
	add	r2, r1, r2
	rsb	ip, r0, #240
	cmp	r2, ip
	movle	r2, #1
	addle	r1, r1, r0
	strle	r1, [r3, #4]
	strle	r2, [r3, #28]
.L8:
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L20+12
	ldrh	r3, [r3]
	tst	r3, #2
	bxne	lr
	ldr	r3, .L20+16
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L10
	ldr	r2, [r3, #124]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L10:
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldr	r1, .L20+4
	ldm	r1, {r0, r1}
	add	r0, r0, #8
	str	r0, [r3, r2, lsl #6]
	add	r1, r1, #8
	add	r3, r3, r2, lsl #6
	str	lr, [r3, #60]
	str	r1, [r3, #4]
	str	ip, [r3, #44]
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	67109120
	.word	p1
	.word	oldButtons
	.word	buttons
	.word	bullets
	.size	updateP1, .-updateP1
	.align	2
	.global	drawP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawP1, %function
drawP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L27
	ldr	r0, [r3, #28]
	cmp	r0, #0
	push	{r4, lr}
	moveq	lr, #10
	movne	lr, #12
	ldr	r1, .L27+4
	ldrh	r2, [r3, #4]
	ldrh	ip, [r3]
	ldr	r3, [r1]
	ldr	r0, .L27+8
	lsl	r4, r3, #3
	strh	ip, [r0, r4]	@ movhi
	orr	r2, r2, #16384
	add	r0, r0, r3, lsl #3
	add	r3, r3, #1
	strh	lr, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	str	r3, [r1]
	pop	{r4, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	p1
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawP1, .-drawP1
	.align	2
	.global	drawMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMinigame, %function
drawMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L48
	ldr	r3, [r4, #44]
	ldr	r5, .L48+4
	cmp	r3, #1
	ldr	r3, [r5]
	beq	.L46
	ldr	r1, [r4, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	mov	r0, #392
	ldr	r6, .L48+8
	add	r2, r6, r3, lsl #3
	strh	r1, [r2, #2]	@ movhi
	ldr	r1, [r4]
	lsl	r3, r3, #3
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r6, r3]	@ movhi
.L31:
	mov	r3, #0
	str	r3, [r5]
	bl	drawP1
	ldr	r3, [r4, #44]
	cmp	r3, #1
	beq	.L47
.L32:
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L48+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L48+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L46:
	mov	r2, #512
	ldr	r6, .L48+8
	lsl	r3, r3, #3
	strh	r2, [r6, r3]	@ movhi
	b	.L31
.L47:
	ldr	r3, .L48+20
	ldr	r2, [r3, #60]
	cmp	r2, #1
	moveq	r1, #72
	movne	r1, #512
	ldr	ip, [r5]
	ldreq	r0, [r3, #4]
	addeq	r2, r6, ip, lsl #3
	strheq	r1, [r2, #4]	@ movhi
	ldreq	r1, [r3]
	strheq	r0, [r2, #2]	@ movhi
	lsl	r2, ip, #3
	strh	r1, [r6, r2]	@ movhi
	ldr	r1, [r3, #124]
	cmp	r1, #1
	movne	r3, #512
	add	r1, ip, #1
	lslne	r1, r1, #3
	strhne	r3, [r6, r1]	@ movhi
	bne	.L36
	mov	r4, #72
	ldr	lr, [r3, #64]
	ldr	r0, [r3, #68]
	add	r3, r6, r1, lsl #3
	lsl	r1, r1, #3
	strh	r4, [r3, #4]	@ movhi
	strh	lr, [r6, r1]	@ movhi
	strh	r0, [r3, #2]	@ movhi
.L36:
	add	r2, r6, r2
	mov	r1, r2
	mov	r4, #512
	mov	r7, #768
	ldr	r3, .L48+24
	add	lr, r3, #320
.L39:
	ldr	r0, [r3, #60]
	cmp	r0, #1
	ldreq	r6, [r3]
	ldreq	r0, [r3, #4]
	add	r3, r3, #64
	strheq	r7, [r1, #20]	@ movhi
	strheq	r6, [r1, #16]	@ movhi
	strheq	r0, [r1, #18]	@ movhi
	strhne	r4, [r1, #16]	@ movhi
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L39
	mov	lr, #512
	mov	r6, #800
	ldr	r3, .L48+28
	add	r0, r3, lr
.L42:
	ldr	r1, [r3, #60]
	cmp	r1, #1
	ldreq	r4, [r3]
	ldreq	r1, [r3, #4]
	add	r3, r3, #64
	strheq	r6, [r2, #60]	@ movhi
	strheq	r4, [r2, #56]	@ movhi
	strheq	r1, [r2, #58]	@ movhi
	strhne	lr, [r2, #56]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L42
	add	ip, ip, #15
	str	ip, [r5]
	b	.L32
.L49:
	.align	2
.L48:
	.word	instructions
	.word	shadowOAMcounter
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	bullets
	.word	flowers
	.word	rocks
	.size	drawMinigame, .-drawMinigame
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	r2, #8
	mov	lr, #2
	ldr	r3, .L52
	ldr	ip, [r3, #20]
	ldr	r0, [r3, #84]
	rsb	ip, ip, #0
	rsb	r0, r0, #0
	str	lr, [r3, #8]
	str	lr, [r3, #72]
	str	ip, [r3]
	str	r0, [r3, #64]
	str	r1, [r3, #4]
	str	r1, [r3, #60]
	str	r1, [r3, #68]
	str	r1, [r3, #124]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #84]
	str	r2, [r3, #80]
	ldr	lr, [sp], #4
	bx	lr
.L53:
	.align	2
.L52:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullets, %function
fireBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L63
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L55
	ldr	r2, [r3, #124]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L55:
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	lr, #1
	ldr	r1, .L63+4
	ldm	r1, {r0, r1}
	add	r0, r0, #8
	str	r0, [r3, r2, lsl #6]
	add	r1, r1, #8
	add	r3, r3, r2, lsl #6
	str	lr, [r3, #60]
	str	r1, [r3, #4]
	str	ip, [r3, #44]
	ldr	lr, [sp], #4
	bx	lr
.L64:
	.align	2
.L63:
	.word	bullets
	.word	p1
	.size	fireBullets, .-fireBullets
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #60]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0]
	ldr	r2, [r0, #20]
	add	r2, r3, r2
	cmp	r2, #0
	ldrgt	r2, [r0, #8]
	subgt	r3, r3, r2
	strgt	r3, [r0]
	cmp	r3, #0
	movlt	r3, #0
	strlt	r3, [r0, #60]
	bx	lr
	.size	updateBullets, .-updateBullets
	.align	2
	.global	drawBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets, %function
drawBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	ldr	r2, .L78
	cmp	r3, #1
	ldr	r3, [r2]
	beq	.L77
	mov	ip, #512
	ldr	r0, .L78+4
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	ip, [r0, r1]	@ movhi
	str	r3, [r2]
	bx	lr
.L77:
	mov	ip, #72
	push	{r4, lr}
	ldr	r1, .L78+4
	ldr	r4, [r0]
	lsl	lr, r3, #3
	ldr	r0, [r0, #4]
	strh	r4, [r1, lr]	@ movhi
	add	r1, r1, r3, lsl #3
	add	r3, r3, #1
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawBullets, .-drawBullets
	.align	2
	.global	initFlowers
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFlowers, %function
initFlowers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #1
	mov	r9, #8
	ldr	r8, .L84
	ldr	r4, .L84+4
	ldr	r6, .L84+8
	add	r5, r8, #320
.L81:
	mov	r3, #0
	str	r7, [r8, #60]
	str	r3, [r8]
	str	r9, [r8, #16]
	str	r9, [r8, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #230
	smull	r3, r1, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	mul	r3, r2, r3
	sub	r0, r0, r3
	str	r0, [r8, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #1
	str	r0, [r8, #8]
	add	r8, r8, #64
	cmp	r8, r5
	bne	.L81
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	flowers
	.word	rand
	.word	1195121335
	.size	initFlowers, .-initFlowers
	.align	2
	.global	updateFlowers
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFlowers, %function
updateFlowers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #60]
	cmp	r3, #0
	mov	r5, r0
	ldr	r1, [r0]
	sub	sp, sp, #20
	beq	.L87
	ldr	r3, [r0, #20]
	rsb	r2, r3, #159
	cmp	r2, r1
	ble	.L88
	ldr	r2, [r0, #8]
	add	r1, r1, r2
	str	r1, [r0]
	ldr	r0, [r0, #4]
.L89:
	ldr	r2, .L106
	ldr	ip, [r2, #20]
	ldr	lr, [r2, #16]
	str	ip, [sp, #12]
	ldr	ip, [r2]
	ldr	r2, [r2, #4]
	stm	sp, {r2, ip, lr}
	ldr	r4, .L106+4
	ldr	r2, [r5, #16]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r1, #0
	ldrne	r2, .L106+8
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r1, [r5, #60]
	strne	r3, [r2]
	ldr	r1, [r5]
.L87:
	ldr	r4, .L106+12
	cmp	r1, #0
	ldr	r7, .L106+4
	ldr	r9, .L106+16
	ldr	r8, .L106+20
	add	r6, r4, #320
	beq	.L104
.L92:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L86
.L105:
	ldr	r1, [r5]
	cmp	r1, #0
	bne	.L92
.L104:
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #16]
	ldr	r3, [r5, #4]
	str	r2, [sp, #8]
	str	r1, [sp, #4]
	str	r0, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L92
	mov	lr, pc
	bx	r9
	mov	r2, #230
	smull	r3, r1, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	mul	r3, r2, r3
	add	r4, r4, #64
	sub	r0, r0, r3
	cmp	r4, r6
	str	r0, [r5, #4]
	bne	.L105
.L86:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L88:
	mov	r2, #0
	ldr	r3, .L106+16
	str	r2, [r0]
	mov	lr, pc
	bx	r3
	mov	r1, r0
	mov	r3, #230
	ldr	r0, .L106+20
	smull	r2, r0, r1, r0
	asr	r2, r1, #31
	rsb	r0, r2, r0, asr #6
	mul	r3, r0, r3
	sub	r0, r1, r3
	str	r0, [r5, #4]
	ldr	r1, [r5]
	ldr	r3, [r5, #20]
	b	.L89
.L107:
	.align	2
.L106:
	.word	p1
	.word	collision
	.word	flowersCollected
	.word	flowers
	.word	rand
	.word	1195121335
	.size	updateFlowers, .-updateFlowers
	.align	2
	.global	drawFlowers
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFlowers, %function
drawFlowers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	ldr	r2, .L116
	cmp	r3, #1
	ldr	r3, [r2]
	beq	.L115
	mov	ip, #512
	ldr	r0, .L116+4
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	ip, [r0, r1]	@ movhi
	str	r3, [r2]
	bx	lr
.L115:
	mov	ip, #768
	push	{r4, lr}
	ldr	r1, .L116+4
	ldr	r4, [r0]
	lsl	lr, r3, #3
	ldr	r0, [r0, #4]
	strh	r4, [r1, lr]	@ movhi
	add	r1, r1, r3, lsl #3
	add	r3, r3, #1
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawFlowers, .-drawFlowers
	.align	2
	.global	initRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRocks, %function
initRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #1
	mov	r9, #8
	ldr	r8, .L122
	ldr	r4, .L122+4
	ldr	r6, .L122+8
	add	r5, r8, #512
.L119:
	mov	r3, #0
	str	r7, [r8, #60]
	str	r3, [r8]
	str	r9, [r8, #16]
	str	r9, [r8, #20]
	mov	lr, pc
	bx	r4
	mov	r2, #230
	smull	r3, r1, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	mul	r3, r2, r3
	sub	r0, r0, r3
	str	r0, [r8, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #1
	str	r0, [r8, #8]
	add	r8, r8, #64
	cmp	r8, r5
	bne	.L119
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	rocks
	.word	rand
	.word	1195121335
	.size	initRocks, .-initRocks
	.align	2
	.global	initMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMinigame, %function
initMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	ip, #8
	mov	lr, #2
	mov	r5, #64
	mov	r4, #16
	mov	r10, #50
	mov	r9, #90
	mov	r8, #140
	mov	r7, #112
	mov	r6, #1
	ldr	r3, .L126
	ldr	r1, [r3, #20]
	rsb	r1, r1, #0
	str	r1, [r3]
	ldr	r1, [r3, #84]
	rsb	r1, r1, #0
	str	r1, [r3, #64]
	ldr	r1, .L126+4
	str	r2, [r1]
	ldr	r1, .L126+8
	ldr	r0, .L126+12
	str	r2, [r1]
	ldr	r1, .L126+16
	str	lr, [r3, #8]
	str	lr, [r3, #72]
	str	r2, [r3, #4]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #124]
	str	ip, [r3, #20]
	str	ip, [r3, #16]
	str	ip, [r3, #84]
	str	ip, [r3, #80]
	str	r10, [r0]
	str	r9, [r0, #4]
	str	r5, [r0, #20]
	str	r8, [r1]
	str	r7, [r1, #4]
	str	r6, [r1, #12]
	str	r5, [r0, #16]
	str	r4, [r1, #16]
	str	r4, [r1, #20]
	str	r2, [r0, #60]
	str	r2, [r0, #44]
	str	r2, [r1, #28]
	bl	initFlowers
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	initRocks
.L127:
	.align	2
.L126:
	.word	bullets
	.word	flowersCollected
	.word	shadowOAMcounter
	.word	instructions
	.word	p1
	.size	initMinigame, .-initMinigame
	.align	2
	.global	updateRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRocks, %function
updateRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r0, #60]
	cmp	r3, #0
	mov	r5, r0
	ldr	r1, [r0]
	ldr	r3, [r0, #20]
	sub	sp, sp, #16
	beq	.L143
	rsb	r2, r3, #159
	cmp	r2, r1
	ble	.L131
	ldr	r2, [r0, #8]
	add	r1, r1, r2
	str	r1, [r0]
.L143:
	ldr	r0, [r5, #4]
.L130:
	ldr	r4, .L145
	mov	r10, #230
	ldr	r2, [r5, #16]
	ldr	r7, .L145+4
	ldr	r9, .L145+8
	ldr	r8, .L145+12
	add	r6, r4, #512
	b	.L134
.L132:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L144
.L134:
	cmp	r1, #0
	bne	.L132
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L133
	add	r4, r4, #64
	add	r2, r5, #16
	cmp	r4, r6
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	bne	.L134
.L144:
	mov	r6, #0
	ldr	r4, .L145+16
	add	r8, r4, #128
.L137:
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	strne	r6, [r5, #60]
	add	r4, r4, #64
	strne	r6, [r4, #-4]
	strne	r6, [r4, #-64]
	cmp	r4, r8
	beq	.L128
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L137
.L128:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L133:
	mov	lr, pc
	bx	r9
	smull	r1, r2, r8, r0
	mov	r3, r0
	asr	r0, r0, #31
	rsb	r0, r0, r2, asr #6
	mul	r0, r10, r0
	add	r2, r5, #16
	sub	r0, r3, r0
	str	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L132
.L131:
	mov	r2, #0
	ldr	r3, .L145+8
	str	r2, [r0]
	mov	lr, pc
	bx	r3
	mov	r3, r0
	mov	r2, #230
	ldr	r0, .L145+12
	smull	r1, r0, r3, r0
	asr	r1, r3, #31
	rsb	r0, r1, r0, asr #6
	mul	r0, r2, r0
	sub	r0, r3, r0
	str	r0, [r5, #4]
	ldr	r1, [r5]
	ldr	r3, [r5, #20]
	b	.L130
.L146:
	.align	2
.L145:
	.word	rocks
	.word	collision
	.word	rand
	.word	1195121335
	.word	bullets
	.size	updateRocks, .-updateRocks
	.align	2
	.global	updateMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMinigame, %function
updateMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L160
	ldrh	r3, [r3]
	tst	r3, #512
	push	{r4, r5, r6, lr}
	beq	.L158
	ldr	r3, .L160+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L156
.L158:
	ldr	r4, .L160+8
	bl	updateP1
	ldr	r3, [r4, #44]
	cmp	r3, #1
	beq	.L159
.L147:
	pop	{r4, r5, r6, lr}
	bx	lr
.L156:
	mov	r3, #1
	ldr	r4, .L160+8
	str	r3, [r4, #44]
	bl	updateP1
	ldr	r3, [r4, #44]
	cmp	r3, #1
	bne	.L147
.L159:
	ldr	r0, .L160+12
	bl	updateBullets
	ldr	r0, .L160+16
	bl	updateBullets
	ldr	r0, .L160+20
	bl	updateFlowers
	ldr	r0, .L160+24
	bl	updateFlowers
	ldr	r0, .L160+28
	bl	updateFlowers
	ldr	r0, .L160+32
	bl	updateFlowers
	ldr	r0, .L160+36
	bl	updateFlowers
	ldr	r4, .L160+40
	add	r5, r4, #512
.L150:
	mov	r0, r4
	add	r4, r4, #64
	bl	updateRocks
	cmp	r4, r5
	bne	.L150
	pop	{r4, r5, r6, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	oldButtons
	.word	buttons
	.word	instructions
	.word	bullets
	.word	bullets+64
	.word	flowers
	.word	flowers+64
	.word	flowers+128
	.word	flowers+192
	.word	flowers+256
	.word	rocks
	.size	updateMinigame, .-updateMinigame
	.align	2
	.global	drawRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRocks, %function
drawRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	ldr	r2, .L170
	cmp	r3, #1
	ldr	r3, [r2]
	beq	.L169
	mov	ip, #512
	ldr	r0, .L170+4
	lsl	r1, r3, #3
	add	r3, r3, #1
	strh	ip, [r0, r1]	@ movhi
	str	r3, [r2]
	bx	lr
.L169:
	mov	ip, #800
	push	{r4, lr}
	ldr	r1, .L170+4
	ldr	r4, [r0]
	lsl	lr, r3, #3
	ldr	r0, [r0, #4]
	strh	r4, [r1, lr]	@ movhi
	add	r1, r1, r3, lsl #3
	add	r3, r3, #1
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L171:
	.align	2
.L170:
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawRocks, .-drawRocks
	.align	2
	.global	initInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInstruct, %function
initInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #64
	mov	r2, #0
	mov	ip, #50
	mov	r0, #90
	ldr	r3, .L173
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r2, [r3, #60]
	str	r2, [r3, #44]
	bx	lr
.L174:
	.align	2
.L173:
	.word	instructions
	.size	initInstruct, .-initInstruct
	.align	2
	.global	updateInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateInstruct, %function
updateInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L180
	ldrh	r3, [r3]
	tst	r3, #512
	bxeq	lr
	ldr	r3, .L180+4
	ldrh	r3, [r3]
	tst	r3, #512
	moveq	r2, #1
	ldreq	r3, .L180+8
	streq	r2, [r3, #44]
	bx	lr
.L181:
	.align	2
.L180:
	.word	oldButtons
	.word	buttons
	.word	instructions
	.size	updateInstruct, .-updateInstruct
	.align	2
	.global	drawInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawInstruct, %function
drawInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L189
	ldr	r3, [r1, #44]
	ldr	r0, .L189+4
	cmp	r3, #1
	ldr	r3, [r0]
	beq	.L188
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	push	{r4, lr}
	mov	r4, #392
	ldr	ip, .L189+8
	ldr	lr, [r1]
	add	r1, ip, r3, lsl #3
	strh	r2, [r1, #2]	@ movhi
	lsl	r2, r3, #3
	add	r3, r3, #1
	strh	r4, [r1, #4]	@ movhi
	strh	lr, [ip, r2]	@ movhi
	str	r3, [r0]
	pop	{r4, lr}
	bx	lr
.L188:
	mov	ip, #512
	ldr	r1, .L189+8
	lsl	r2, r3, #3
	add	r3, r3, #1
	strh	ip, [r1, r2]	@ movhi
	str	r3, [r0]
	bx	lr
.L190:
	.align	2
.L189:
	.word	instructions
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawInstruct, .-drawInstruct
	.comm	shadowOAMcounter,4,4
	.comm	flowersCollected,4,4
	.comm	instructions,64,4
	.comm	bullets,128,4
	.comm	flowers,320,4
	.comm	rocks,512,4
	.comm	p1,64,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
