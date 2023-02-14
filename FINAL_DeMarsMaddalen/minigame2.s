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
	.file	"minigame2.c"
	.text
	.align	2
	.global	drawMinigame2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMinigame2, %function
drawMinigame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r1, .L12+4
	bne	.L2
	ldr	r0, .L12+8
	ldr	r3, [r0, #28]
	cmp	r3, #0
	push	{r4, r5, lr}
	moveq	r5, #74
	movne	r5, #76
	mov	r4, #104
	mov	lr, #512
	mov	r2, #3
	ldr	r3, .L12+12
	strh	r5, [r3, #4]	@ movhi
	ldr	r5, [r0]
	ldr	r0, [r0, #4]
	ldr	ip, .L12+16
	orr	r0, r0, #16384
	strh	r0, [r3, #2]	@ movhi
	ldr	r0, [ip, #4]
	strh	r5, [r3]	@ movhi
	ldr	r5, [ip]
	orr	r0, r0, #16384
	strh	r5, [r3, #8]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	strh	lr, [r3, #16]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	str	r2, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L2:
	mov	r2, #664
	ldr	r3, .L12+12
	mov	ip, #50
	strh	r2, [r3, #4]	@ movhi
	mov	r2, #1
	ldr	r0, .L12+20
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	str	r2, [r1]
	bx	lr
.L13:
	.align	2
.L12:
	.word	instructions2
	.word	shadowOAMcounter
	.word	paddle
	.word	shadowOAM
	.word	bead
	.word	-16294
	.size	drawMinigame2, .-drawMinigame2
	.align	2
	.global	initPaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPaddle, %function
initPaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #112
	mov	r0, #143
	mov	r1, #0
	ldr	r3, .L15
	stm	r3, {r0, ip}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #28]
	bx	lr
.L16:
	.align	2
.L15:
	.word	paddle
	.size	initPaddle, .-initPaddle
	.align	2
	.global	updatePaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePaddle, %function
updatePaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L25
	ldrh	r3, [r3, #48]
	ldr	r4, .L25+4
	ands	r2, r3, #32
	sub	sp, sp, #16
	ldr	r3, [r4, #4]
	bne	.L18
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	strgt	r2, [r4, #28]
.L18:
	ldr	r2, .L25
	ldrh	r2, [r2, #48]
	tst	r2, #16
	ldr	r2, [r4, #16]
	bne	.L19
	rsb	r1, r2, #239
	cmp	r1, r3
	movgt	r1, #1
	addgt	r3, r3, r1
	strgt	r3, [r4, #4]
	strgt	r1, [r4, #28]
.L19:
	ldr	r5, .L25+8
	str	r2, [sp, #8]
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	r6, .L25+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L17
	ldr	r3, [r4, #20]
	ldr	r1, [r5, #20]
	ldr	r2, [r5]
	add	r3, r3, r1
	rsb	r3, r3, #161
	cmp	r2, r3
	bgt	.L17
	ldr	r1, .L25+16
	ldr	r3, [r5, #8]
	ldr	r2, [r1]
	rsb	r3, r3, #0
	add	r2, r2, #1
	str	r2, [r1]
	str	r3, [r5, #8]
.L17:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	67109120
	.word	paddle
	.word	bead
	.word	collision
	.word	bounceCount
	.size	updatePaddle, .-updatePaddle
	.align	2
	.global	drawPaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPaddle, %function
drawPaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L31
	ldr	r3, [r1, #28]
	cmp	r3, #0
	push	{r4, lr}
	moveq	lr, #74
	movne	lr, #76
	ldr	r0, .L31+4
	ldr	ip, .L31+8
	ldr	r3, [r0]
	ldr	r2, [r1, #4]
	ldr	r4, [r1]
	add	r1, ip, r3, lsl #3
	strh	lr, [r1, #4]	@ movhi
	orr	r2, r2, #16384
	lsl	lr, r3, #3
	add	r3, r3, #1
	strh	r4, [ip, lr]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	str	r3, [r0]
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	paddle
	.word	shadowOAMcounter
	.word	shadowOAM
	.size	drawPaddle, .-drawPaddle
	.align	2
	.global	initBead
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBead, %function
initBead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #16
	push	{r4, lr}
	ldr	r4, .L35
	ldr	r2, .L35+4
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r2
	mov	r2, #1
	ldr	r3, .L35+8
	smull	ip, r1, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #20
	str	r0, [r4, #4]
	str	r2, [r4]
	str	r2, [r4, #8]
	str	r2, [r4, #12]
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	bead
	.word	rand
	.word	1374389535
	.size	initBead, .-initBead
	.align	2
	.global	initMinigame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMinigame2, %function
initMinigame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	str	lr, [sp, #-4]!
	mov	ip, #143
	mov	lr, #112
	mov	r2, #16
	mov	r0, #1
	ldr	r3, .L39
	str	r1, [r3]
	ldr	r3, .L39+4
	str	r1, [r3, #28]
	ldr	r1, .L39+8
	stm	r3, {ip, lr}
	ldr	lr, [sp], #4
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r1]
	b	initBead
.L40:
	.align	2
.L39:
	.word	bounceCount
	.word	paddle
	.word	instructions2
	.size	initMinigame2, .-initMinigame2
	.align	2
	.global	updateBead
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBead, %function
updateBead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldr	r3, [r4]
	cmp	r3, #0
	ldrle	r2, [r4, #8]
	ldr	r0, [r4, #4]
	rsble	r2, r2, #0
	strle	r2, [r4, #8]
	cmp	r0, #0
	ble	.L43
	ldr	r2, [r4, #16]
	rsb	r2, r2, #239
	cmp	r0, r2
	bge	.L43
	cmp	r3, #159
	bgt	.L47
.L45:
	add	r1, r4, #8
	ldm	r1, {r1, r2}
	add	r3, r1, r3
	add	r2, r2, r0
	str	r3, [r4]
	str	r2, [r4, #4]
	pop	{r4, lr}
	bx	lr
.L43:
	ldr	r2, [r4, #12]
	cmp	r3, #159
	rsb	r2, r2, #0
	str	r2, [r4, #12]
	ble	.L45
.L47:
	mov	r1, #0
	mov	r2, #16
	mov	r0, #1
	mov	lr, #112
	mov	ip, #143
	ldr	r3, .L48+4
	str	r1, [r3]
	ldr	r3, .L48+8
	str	r1, [r3, #28]
	ldr	r1, .L48+12
	str	lr, [r3, #4]
	str	ip, [r3]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r1]
	bl	initBead
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	b	.L45
.L49:
	.align	2
.L48:
	.word	bead
	.word	bounceCount
	.word	paddle
	.word	instructions2
	.size	updateBead, .-updateBead
	.align	2
	.global	updateMinigame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMinigame2, %function
updateMinigame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L58
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L57
.L51:
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L50
	ldr	r3, .L58+8
	ldrh	r3, [r3]
	ands	r3, r3, #512
	streq	r3, [r4]
.L50:
	pop	{r4, lr}
	bx	lr
.L57:
	bl	updatePaddle
	bl	updateBead
	b	.L51
.L59:
	.align	2
.L58:
	.word	instructions2
	.word	oldButtons
	.word	buttons
	.size	updateMinigame2, .-updateMinigame2
	.align	2
	.global	drawBead
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBead, %function
drawBead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #104
	ldr	r0, .L62
	push	{r4, lr}
	ldr	r1, .L62+4
	ldr	r3, [r0]
	ldr	lr, [r1]
	ldr	r2, [r1, #4]
	ldr	r1, .L62+8
	add	r4, r3, #1
	str	r4, [r0]
	orr	r2, r2, #16384
	lsl	r0, r3, #3
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, r0]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	shadowOAMcounter
	.word	bead
	.word	shadowOAM
	.size	drawBead, .-drawBead
	.comm	shadowOAMcounter,4,4
	.comm	bounceCount,4,4
	.comm	instructions2,4,4
	.comm	bead,64,4
	.comm	paddle,64,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
