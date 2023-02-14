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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4608
	mov	r4, #67108864
	mov	r2, #7168
	ldr	r1, .L4
	strh	r3, [r4]	@ movhi
	ldr	r5, .L4+4
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r5
	mov	r3, #2816
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L4+28
	ldrh	r1, [r2]
	ldr	r2, .L4+32
	ldrh	r2, [r2]
	strh	r3, [r4, #18]	@ movhi
	ldr	lr, .L4+36
	strh	r3, [r4, #16]	@ movhi
	ldr	ip, .L4+40
	strh	r1, [r4, #22]	@ movhi
	ldr	r0, .L4+44
	ldr	r1, .L4+48
	strh	r2, [r4, #20]	@ movhi
	ldr	r2, .L4+52
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+60
	ldr	r3, .L4+64
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	-11260
	.word	DMANow
	.word	startscreenPal
	.word	100679680
	.word	startscreenTiles
	.word	100704256
	.word	startscreenMap
	.word	vOff
	.word	hOff
	.word	seed
	.word	cheatActivated
	.word	shardCount
	.word	state
	.word	stopSound
	.word	pause_song_length
	.word	pause_song_data
	.word	playSoundA
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L8
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+24
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+32
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+36
	ldr	r1, .L8+40
	ldrh	r0, [r3, #48]
	ldr	r3, .L8+44
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	83886592
	.word	spritesPal
	.word	100728832
	.word	spritesTiles
	.word	hideSprites
	.word	shadowOAM
	.word	setupSounds
	.word	setupInterrupts
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #7168
	ldr	r0, .L12
	push	{r4, lr}
	ldr	r4, .L12+4
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #336
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L12+24
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #4096
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r1, #4
	ldr	r2, .L12+44
	ldr	r3, .L12+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L12+56
	ldr	r3, .L12+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	-10748
	.word	DMANow
	.word	foregroundTiles
	.word	100720640
	.word	foregroundMap
	.word	BG1Pal
	.word	13552
	.word	100679680
	.word	BG1Tiles
	.word	100708352
	.word	BG1Map
	.word	state
	.word	stopSound
	.word	game_song_length
	.word	game_song_data
	.word	playSoundA
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	mov	ip, #5888
	push	{r4, r5, r6, lr}
	mov	r3, #28
	mov	lr, #20
	mov	r2, #1280
	strh	ip, [r0]	@ movhi
	ldr	r6, .L16
	ldr	ip, .L16+4
	ldr	r5, .L16+8
	ldr	r1, .L16+12
	str	lr, [r6]
	ldr	r4, .L16+16
	str	r3, [r5]
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L16+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1264
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+28
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L16+36
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	lr, pc
	bx	r4
	ldr	r2, [r6]
	lsl	r2, r2, #11
	mov	r3, #4096
	mov	r0, #3
	ldr	r1, .L16+48
	add	r2, r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #3776
	mov	r0, #3
	ldr	r2, .L16+52
	ldr	r1, .L16+56
	mov	lr, pc
	bx	r4
	ldr	r2, [r5]
	lsl	r2, r2, #11
	mov	r0, #3
	mov	r3, #4096
	ldr	r1, .L16+60
	add	r2, r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r1, #10
	ldr	r2, .L16+64
	ldr	r3, .L16+68
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L16+76
	ldr	r3, .L16+80
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	screenBlock1
	.word	23560
	.word	screenBlock2
	.word	21508
	.word	DMANow
	.word	pausescreenNEWPal
	.word	pauseforegroundTiles
	.word	100673536
	.word	pauseforegroundMap
	.word	8608
	.word	100679680
	.word	foxscreenTiles
	.word	foxscreenMap
	.word	100696064
	.word	pausescreenNEWTiles
	.word	pausescreenNEWMap
	.word	state
	.word	stopSound
	.word	pause_song_length
	.word	pause_song_data
	.word	playSoundA
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	ldr	r1, .L20
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L20+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #1968
	mov	r0, #3
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r1, #11
	ldr	r2, .L20+28
	ldr	r3, .L20+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L20+40
	ldr	r3, .L20+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	5124
	.word	DMANow
	.word	winscreenPal
	.word	100679680
	.word	winscreenTiles
	.word	100704256
	.word	winscreenMap
	.word	state
	.word	stopSound
	.word	win_song_length
	.word	win_song_data
	.word	playSoundA
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L29+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L29+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L22
	ldr	r3, .L29+20
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L28
.L22:
	pop	{r4, lr}
	bx	lr
.L28:
	ldr	r1, .L29+24
	ldr	r2, .L29+28
	pop	{r4, lr}
	str	r3, [r1]
	str	r3, [r2]
	b	goToSplash
.L30:
	.align	2
.L29:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	vOff
	.word	hOff
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	ldr	r1, .L33
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L33+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L33+8
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r0, #3
	ldr	r2, .L33+12
	ldr	r1, .L33+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L33+20
	ldr	r1, .L33+24
	mov	lr, pc
	bx	r4
	mov	r1, #12
	ldr	r2, .L33+28
	ldr	r3, .L33+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L33+40
	ldr	r3, .L33+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	5124
	.word	DMANow
	.word	losescreenPal
	.word	100679680
	.word	losescreenTiles
	.word	100704256
	.word	losescreenMap
	.word	state
	.word	stopSound
	.word	lose_song_length
	.word	lose_song_data
	.word	playSoundA
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L38
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L38+8
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L38+20
	mov	r0, #3
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L38+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	instructions1Pal
	.word	5088
	.word	100679680
	.word	instructions1Tiles
	.word	100704256
	.word	instructions1Map
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L52
	ldr	r3, [r4]
	ldr	r2, .L52+4
	add	r3, r3, #1
	ldr	r5, .L52+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L52+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L41
	ldr	r2, .L52+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L50
.L41:
	tst	r3, #4
	beq	.L40
	ldr	r3, .L52+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L51
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r0, [r4]
	ldr	r3, .L52+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+24
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L50:
	ldr	r3, .L52+20
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	bl	goToInstructions
	ldrh	r3, [r5]
	b	.L41
.L53:
	.align	2
.L52:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	srand
	.word	init
	.size	splash, .-splash
	.align	2
	.global	goToInstructions2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions2, %function
goToInstructions2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L56
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r4
	mov	r3, #4800
	mov	r0, #3
	ldr	r2, .L56+8
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L56+16
	mov	r0, #3
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L56+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	DMANow
	.word	instructions2Pal
	.word	100679680
	.word	instructions2Tiles
	.word	100704256
	.word	instructions2Map
	.word	state
	.size	goToInstructions2, .-goToInstructions2
	.align	2
	.global	instruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L70
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L59
	ldr	r2, .L70+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L68
.L59:
	tst	r3, #16
	beq	.L58
	ldr	r3, .L70+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L69
.L58:
	pop	{r4, lr}
	bx	lr
.L68:
	ldr	r2, .L70+8
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L59
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L59
.L69:
	pop	{r4, lr}
	b	goToInstructions2
.L71:
	.align	2
.L70:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	instruct, .-instruct
	.align	2
	.global	goToInstructions3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions3, %function
goToInstructions3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L74
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L74+4
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L74+8
	ldr	r2, .L74+12
	ldr	r1, .L74+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L74+20
	mov	r0, #3
	ldr	r1, .L74+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L74+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L75:
	.align	2
.L74:
	.word	DMANow
	.word	instructions3Pal
	.word	4624
	.word	100679680
	.word	instructions3Tiles
	.word	100704256
	.word	instructions3Map
	.word	state
	.size	goToInstructions3, .-goToInstructions3
	.align	2
	.global	instruct2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct2, %function
instruct2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L88
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L77
	ldr	r2, .L88+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L86
.L77:
	tst	r3, #16
	beq	.L76
	ldr	r3, .L88+4
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L76
	ldr	r3, .L88+8
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L87
.L76:
	pop	{r4, lr}
	bx	lr
.L86:
	ldr	r2, .L88+8
	ldr	r2, [r2]
	cmp	r2, #2
	bne	.L77
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L77
.L87:
	pop	{r4, lr}
	b	goToInstructions3
.L89:
	.align	2
.L88:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	instruct2, .-instruct2
	.align	2
	.global	instruct3
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct3, %function
instruct3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L102
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L91
	ldr	r2, .L102+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L100
.L91:
	tst	r3, #8
	beq	.L90
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
.L90:
	pop	{r4, lr}
	bx	lr
.L100:
	ldr	r2, .L102+8
	ldr	r2, [r2]
	cmp	r2, #3
	bne	.L91
	bl	goToInstructions2
	ldrh	r3, [r4]
	b	.L91
.L101:
	ldr	r3, .L102+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L103:
	.align	2
.L102:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	init
	.size	instruct3, .-instruct3
	.align	2
	.global	goToCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCheat, %function
goToCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	ldr	r1, .L111
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L111+4
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L111+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L111+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L109
	cmp	r3, #1
	beq	.L110
	mov	r3, #1344
	mov	r0, #3
	ldr	r2, .L111+16
	ldr	r1, .L111+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L111+24
	ldr	r1, .L111+28
	mov	lr, pc
	bx	r4
.L106:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L111+32
	strh	r2, [r3, #22]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r1, #9
	ldr	r2, .L111+36
	ldr	r3, .L111+40
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L110:
	mov	r3, #1488
	mov	r0, #3
	ldr	r2, .L111+16
	ldr	r1, .L111+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L111+24
	ldr	r1, .L111+48
	mov	lr, pc
	bx	r4
	b	.L106
.L109:
	mov	r3, #1568
	mov	r0, #3
	ldr	r2, .L111+16
	ldr	r1, .L111+52
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L111+24
	ldr	r1, .L111+56
	mov	lr, pc
	bx	r4
	b	.L106
.L112:
	.align	2
.L111:
	.word	5124
	.word	DMANow
	.word	cheatscreenPal
	.word	cheatRand
	.word	100679680
	.word	cheatscreen3Tiles
	.word	100704256
	.word	cheatscreen3Map
	.word	hideSprites
	.word	state
	.word	pauseSound
	.word	cheatscreen2Tiles
	.word	cheatscreen2Map
	.word	cheatscreenTiles
	.word	cheatscreenMap
	.size	goToCheat, .-goToCheat
	.align	2
	.global	cheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	cheat, %function
cheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L132
	ldr	r4, .L132+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L132+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L132+12
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L114
	ldr	r2, .L132+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L129
.L114:
	tst	r3, #4
	beq	.L117
	ldr	r2, .L132+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L130
.L117:
	tst	r3, #8
	beq	.L113
	ldr	r3, .L132+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L131
.L113:
	pop	{r4, r5, r6, lr}
	bx	lr
.L129:
	ldr	r2, .L132+20
	ldr	r1, [r2]
	cmp	r1, #0
	mov	ip, #50
	moveq	r1, #400
	ldr	r2, .L132+24
	ldr	r0, .L132+28
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strheq	r1, [r2, #4]	@ movhi
	beq	.L114
	cmp	r1, #1
	moveq	r1, #408
	movne	r1, #656
	strh	r1, [r2, #4]	@ movhi
	b	.L114
.L131:
	mov	r2, #9
	ldr	r3, .L132+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToPause
.L130:
	mov	r2, #512
	ldr	r3, .L132+36
	ldr	ip, [r3]
	ldr	r3, .L132+40
	ldr	r1, .L132+44
	str	ip, [r3]
	ldr	r3, .L132+24
	ldr	r0, [r1]
	ldr	r1, .L132+48
	strh	r2, [r3]	@ movhi
	str	r0, [r1]
	bl	goToGame
	ldrh	r3, [r4]
	b	.L117
.L133:
	.align	2
.L132:
	.word	waitForVBlank
	.word	oldButtons
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	cheatRand
	.word	shadowOAM+480
	.word	-16294
	.word	prevState
	.word	prevVoff
	.word	vOff
	.word	prevHoff
	.word	hOff
	.size	cheat, .-cheat
	.align	2
	.global	goToBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBattle, %function
goToBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4864
	mov	r4, #67108864
	mov	r2, #7168
	ldr	r1, .L136
	ldr	r5, .L136+4
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #528
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #100663296
	ldr	r1, .L136+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L136+12
	ldr	r1, .L136+16
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L136+20
	mov	lr, pc
	bx	r5
	mov	r3, #928
	mov	r0, #3
	ldr	r2, .L136+24
	ldr	r1, .L136+28
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L136+32
	mov	r3, #1024
	ldr	r2, .L136+36
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L136+40
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #7
	ldr	r2, .L136+44
	ldr	r3, .L136+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L136+56
	ldr	r3, .L136+60
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	5124
	.word	DMANow
	.word	healsTiles
	.word	100720640
	.word	healsMap
	.word	battlescreenPal
	.word	100679680
	.word	battlescreenTiles
	.word	battlescreenMap
	.word	100704256
	.word	hideSprites
	.word	state
	.word	stopSound
	.word	battle_song_length
	.word	battle_song_data
	.word	playSoundA
	.size	goToBattle, .-goToBattle
	.align	2
	.global	battle
	.syntax unified
	.arm
	.fpu softvfp
	.type	battle, %function
battle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L151
	mov	lr, pc
	bx	r3
	ldr	r3, .L151+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L151+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L151+12
	ldr	r3, [r3, #48]
	ldr	r2, .L151+16
	add	r3, r3, #11
	strh	r3, [r2, #8]	@ movhi
	ldr	r3, .L151+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L139
	mov	r3, #83886080
	ldr	r2, .L151+24
	strh	r2, [r3]	@ movhi
.L140:
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L151+28
	ldr	r4, .L151+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L151+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L141
	ldr	r3, .L151+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L148
.L141:
	ldr	r3, .L151+44
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L149
.L142:
	ldr	r3, .L151+48
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L150
	pop	{r4, lr}
	bx	lr
.L139:
	cmp	r3, #1
	moveq	r3, #83886080
	ldreq	r2, .L151+52
	strheq	r2, [r3]	@ movhi
	b	.L140
.L150:
	ldr	r2, .L151+56
	ldr	r0, .L151+60
	ldr	r3, [r2]
	ldr	r1, .L151+64
	ldr	lr, [r0]
	ldr	ip, .L151+68
	ldr	r0, [r1]
	add	r3, r3, #1
	ldr	r1, .L151+72
	str	r3, [r2]
	ldr	r3, .L151+76
	str	lr, [ip]
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L151+80
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L151+84
	ldr	r3, .L151+88
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L149:
	ldr	r3, .L151+76
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L142
.L148:
	mov	r2, #7
	ldr	r3, .L151+92
	str	r2, [r3]
	bl	goToPause
	b	.L141
.L152:
	.align	2
.L151:
	.word	updateBattleMode
	.word	drawBattleMode
	.word	waitForVBlank
	.word	player
	.word	100721904
	.word	battleState
	.word	27295
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	playerHeartCount
	.word	enemyHeartCount
	.word	27124
	.word	shardCount
	.word	prevVoff
	.word	prevHoff
	.word	vOff
	.word	hOff
	.word	hideSprites
	.word	heal_sound_length
	.word	heal_sound_data
	.word	playSoundB
	.word	prevState
	.size	battle, .-battle
	.align	2
	.global	goToMiniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame, %function
goToMiniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4608
	mov	r4, #67108864
	ldr	r2, .L155
	strh	r3, [r4]	@ movhi
	ldr	r5, .L155+4
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L155+8
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r0, #3
	ldr	r2, .L155+12
	ldr	r1, .L155+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L155+20
	ldr	r1, .L155+24
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r0, .L155+28
	ldr	r1, .L155+32
	strh	r3, [r4, #22]	@ movhi
	ldr	r2, .L155+36
	strh	r3, [r4, #20]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r1, #5
	ldr	r2, .L155+40
	ldr	r3, .L155+44
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L155+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L155+52
	ldr	r3, .L155+56
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	5124
	.word	DMANow
	.word	minigame1screenPal
	.word	100679680
	.word	minigame1screenTiles
	.word	100704256
	.word	minigame1screenMap
	.word	vOff
	.word	hOff
	.word	hideSprites
	.word	state
	.word	stopSound
	.word	minigame_song_length
	.word	minigame_song_data
	.word	playSoundA
	.size	goToMiniGame, .-goToMiniGame
	.align	2
	.global	miniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame, %function
miniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L173
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r3, .L173+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L173+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L173+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L173+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L173+20
	ldr	r3, [r3]
	cmp	r3, #4
	bgt	.L170
.L158:
	ldr	r3, .L173+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L159
	ldr	r3, .L173+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L171
.L159:
	ldr	r4, .L173+32
	ldr	r5, .L173+36
	ldr	r7, .L173+40
	ldr	r8, .L173+44
	add	r6, r4, #512
	b	.L161
.L160:
	cmp	r4, r6
	beq	.L172
.L161:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	add	r4, r4, #64
	beq	.L160
	mov	lr, pc
	bx	r8
	bl	goToMiniGame
	cmp	r4, r6
	bne	.L161
.L172:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L170:
	ldr	r3, .L173+48
	mov	lr, pc
	bx	r3
	ldr	r2, .L173+52
	ldr	r0, .L173+56
	ldr	r1, .L173+60
	ldr	r3, [r2, #48]
	ldr	lr, [r0]
	ldr	ip, .L173+64
	ldr	r0, [r1]
	ldr	r1, .L173+68
	add	r3, r3, #1
	str	r3, [r2, #48]
	str	r0, [r1]
	str	lr, [ip]
	bl	goToGame
	ldr	r3, .L173+72
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L173+76
	ldr	r3, .L173+80
	mov	lr, pc
	bx	r3
	b	.L158
.L171:
	mov	r2, #5
	ldr	r3, .L173+84
	str	r2, [r3]
	bl	goToPause
	b	.L159
.L174:
	.align	2
.L173:
	.word	updateMinigame
	.word	drawMinigame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	flowersCollected
	.word	oldButtons
	.word	buttons
	.word	rocks
	.word	p1
	.word	collision
	.word	initMinigame
	.word	hideSprites
	.word	player
	.word	prevHoff
	.word	prevVoff
	.word	hOff
	.word	vOff
	.word	heal_sound_length
	.word	heal_sound_data
	.word	playSoundB
	.word	prevState
	.size	miniGame, .-miniGame
	.align	2
	.global	goToMiniGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame2, %function
goToMiniGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4608
	mov	r4, #67108864
	ldr	r2, .L177
	strh	r3, [r4]	@ movhi
	ldr	r5, .L177+4
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L177+8
	mov	lr, pc
	bx	r5
	mov	r3, #1456
	mov	r0, #3
	ldr	r2, .L177+12
	ldr	r1, .L177+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L177+20
	ldr	r1, .L177+24
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r0, .L177+28
	ldr	r1, .L177+32
	strh	r3, [r4, #22]	@ movhi
	ldr	r2, .L177+36
	strh	r3, [r4, #20]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r1, #6
	ldr	r2, .L177+40
	ldr	r3, .L177+44
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L177+48
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L177+52
	ldr	r3, .L177+56
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L178:
	.align	2
.L177:
	.word	5124
	.word	DMANow
	.word	minigame2screenPal
	.word	100679680
	.word	minigame2screenTiles
	.word	100704256
	.word	minigame2screenMap
	.word	vOff
	.word	hOff
	.word	hideSprites
	.word	state
	.word	stopSound
	.word	minigame_song_length
	.word	minigame_song_data
	.word	playSoundA
	.size	goToMiniGame2, .-goToMiniGame2
	.align	2
	.global	miniGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame2, %function
miniGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L188
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+8
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	lr, #56
	ldr	r4, .L188+12
	ldr	r0, [r4]
	ldr	ip, .L188+16
	add	r0, r0, #928
	mov	r3, #512
	strh	r0, [ip, #4]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	strh	lr, [ip, #2]	@ movhi
	ldr	r6, .L188+20
	strh	r5, [ip]	@ movhi
	sub	r1, ip, #400
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L186
.L180:
	ldr	r3, .L188+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L179
	ldr	r3, .L188+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L187
.L179:
	pop	{r4, r5, r6, lr}
	bx	lr
.L186:
	ldr	r3, .L188+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L188+36
	ldr	r3, [r2, #48]
	ldr	r0, .L188+40
	ldr	r1, .L188+44
	add	r3, r3, #1
	ldr	ip, [r0]
	ldr	r1, [r1]
	ldr	r0, .L188+48
	str	r3, [r2, #48]
	ldr	r3, .L188+52
	str	ip, [r0]
	str	r1, [r3]
	bl	goToGame
	ldr	r3, .L188+56
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L188+60
	ldr	r3, .L188+64
	mov	lr, pc
	bx	r3
	b	.L180
.L187:
	mov	r2, #6
	ldr	r3, .L188+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToPause
.L189:
	.align	2
.L188:
	.word	updateMinigame2
	.word	drawMinigame2
	.word	waitForVBlank
	.word	bounceCount
	.word	shadowOAM+400
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.word	player
	.word	prevHoff
	.word	prevVoff
	.word	hOff
	.word	vOff
	.word	heal_sound_length
	.word	heal_sound_data
	.word	playSoundB
	.word	prevState
	.size	miniGame2, .-miniGame2
	.align	2
	.global	goToFinalBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFinalBattle, %function
goToFinalBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4864
	mov	r4, #67108864
	mov	r2, #7168
	ldr	r1, .L192
	ldr	r5, .L192+4
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #448
	strh	r1, [r4, #10]	@ movhi
	mov	r2, #100663296
	ldr	r1, .L192+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L192+12
	ldr	r1, .L192+16
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L192+20
	mov	lr, pc
	bx	r5
	mov	r3, #1168
	mov	r0, #3
	ldr	r2, .L192+24
	ldr	r1, .L192+28
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L192+32
	ldr	r1, .L192+36
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r0, .L192+40
	ldr	r1, .L192+44
	strh	r3, [r4, #22]	@ movhi
	ldr	r2, .L192+48
	strh	r3, [r4, #20]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r1, #8
	ldr	r2, .L192+52
	ldr	r3, .L192+56
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L192+64
	ldr	r3, .L192+68
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L193:
	.align	2
.L192:
	.word	5124
	.word	DMANow
	.word	finalbattleTimerTiles
	.word	100720640
	.word	finalbattleTimerMap
	.word	finalbattlescreenPal
	.word	100679680
	.word	finalbattlescreenTiles
	.word	100704256
	.word	finalbattlescreenMap
	.word	vOff
	.word	hOff
	.word	hideSprites
	.word	state
	.word	stopSound
	.word	finalbattle_song_length
	.word	finalbattle_song_data
	.word	playSoundA
	.size	goToFinalBattle, .-goToFinalBattle
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L238
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r8, .L238+4
	ldr	r3, .L238+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L238+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r8]
	ldr	r2, .L238+16
	add	r3, r3, #12
	ldr	r5, .L238+20
	strh	r3, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L238+24
	ldr	r4, .L238+28
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #52]
	cmp	r3, #1
	beq	.L233
.L195:
	ldr	r7, .L238+32
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L196
	ldr	r3, .L238+36
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L234
.L196:
	ldr	r4, .L238+40
	ldr	r9, .L238+44
	ldr	r10, .L238+36
	ldr	fp, .L238+48
	add	r6, r4, #192
.L200:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	beq	.L235
.L198:
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L200
	ldr	r4, .L238+52
	ldr	r9, .L238+44
	ldr	r10, .L238+36
	ldr	fp, .L238+48
	add	r6, r4, #256
.L205:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L236
.L202:
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L205
	ldr	r3, [r8]
	cmp	r3, #2
	bgt	.L237
.L194:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L236:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L202
	ldrh	r3, [r7]
	tst	r3, #4
	beq	.L202
	ldrh	r2, [r10]
	ands	r2, r2, #4
	bne	.L202
	mov	r0, #1
	ldr	r3, [fp]
	ldr	lr, .L238+56
	ldr	ip, .L238+60
	ldr	r1, .L238+64
	str	r3, [lr]
	ldr	ip, [ip]
	ldr	lr, .L238+68
	str	r0, [r4, #44]
	ldr	r3, .L238+72
	ldr	r1, [r1]
	ldr	r0, .L238+76
	str	ip, [lr]
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #56]
	bics	r3, r3, #2
	ldr	r2, .L238+80
	ldr	r3, .L238+84
	bne	.L204
	mov	lr, pc
	bx	r2
	bl	goToMiniGame
	b	.L202
.L235:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L198
	ldrh	r3, [r7]
	tst	r3, #4
	beq	.L198
	ldrh	r2, [r10]
	ands	r2, r2, #4
	bne	.L198
	ldr	r3, [fp]
	ldr	r0, .L238+60
	ldr	lr, .L238+56
	ldr	r1, .L238+64
	ldr	ip, [r0]
	str	r3, [lr]
	ldr	lr, .L238+68
	ldr	r1, [r1]
	str	r2, [r4, #60]
	ldr	r0, .L238+76
	ldr	r3, .L238+72
	str	ip, [lr]
	mov	lr, pc
	bx	r3
	ldr	r3, .L238+88
	mov	lr, pc
	bx	r3
	bl	goToBattle
	b	.L198
.L233:
	ldr	r1, .L238+92
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L195
	mov	r0, #67108864
	ldr	ip, .L238+48
	strh	r2, [r0, #18]	@ movhi
	strh	r2, [r0, #16]	@ movhi
	str	r3, [r1]
	ldr	r0, .L238+60
	ldr	r1, [ip]
	ldr	r3, .L238+56
	str	r2, [ip]
	str	r1, [r3]
	ldr	ip, [r0]
	ldr	r1, .L238+68
	ldr	r3, .L238+96
	str	r2, [r0]
	str	ip, [r1]
	mov	lr, pc
	bx	r3
	subs	r3, r0, #0
	and	r3, r3, #1
	ldr	r2, .L238+100
	rsblt	r3, r3, #0
	str	r3, [r2]
	bl	goToCheat
	b	.L195
.L237:
	ldr	r0, .L238+104
	add	r4, r5, #16
	ldm	r4, {r4, r6}
	ldr	lr, [r5]
	ldr	ip, [r5, #4]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	ldr	r4, .L238+44
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L194
	ldrh	r3, [r7]
	tst	r3, #4
	beq	.L194
	ldr	r3, .L238+36
	ldrh	r2, [r3]
	ands	r2, r2, #4
	bne	.L194
	ldr	r3, .L238+64
	ldr	r0, .L238+76
	ldr	r1, [r3]
	ldr	r3, .L238+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L238+108
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToFinalBattle
.L234:
	mov	r2, #67108864
	mov	r0, #4
	ldr	r1, .L238+48
	strh	r3, [r2, #18]	@ movhi
	ldr	ip, [r1]
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	ldr	r2, .L238+60
	str	r3, [r1]
	ldr	r1, .L238+56
	str	ip, [r1]
	ldr	r1, [r2]
	str	r3, [r2]
	ldr	r2, .L238+68
	ldr	r3, .L238+112
	str	r1, [r2]
	str	r0, [r3]
	bl	goToPause
	b	.L196
.L204:
	mov	lr, pc
	bx	r3
	bl	goToMiniGame2
	b	.L202
.L239:
	.align	2
.L238:
	.word	update
	.word	shardCount
	.word	draw
	.word	waitForVBlank
	.word	100721904
	.word	player
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	enemies
	.word	collision
	.word	vOff
	.word	raccoons
	.word	prevVoff
	.word	hOff
	.word	hit_sound_length
	.word	prevHoff
	.word	playSoundB
	.word	hit_sound_data
	.word	initMinigame
	.word	initMinigame2
	.word	initBattleMode
	.word	cheatActivated
	.word	rand
	.word	cheatRand
	.word	finalBoss
	.word	initFinalBattle
	.word	prevState
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L269
	ldr	r4, .L269+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L269+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #512
	bgt	.L241
	ldr	r0, .L269+12
	ldr	r2, [r0]
.L242:
	cmp	r2, #20
	movgt	r2, #19
	mov	ip, #67108864
	addle	r3, r3, #1
	strle	r3, [r4]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	ldr	r5, .L269+16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strgt	r2, [r0]
	strh	r3, [ip, #20]	@ movhi
	ldr	r3, [r5]
	ldr	r0, .L269+20
	cmp	r3, #256
	ldr	r2, [r0]
	ble	.L245
	add	r2, r2, #1
	lsl	r1, r2, #24
	orr	r1, r1, #1073741824
	orr	r1, r1, #524288
	sub	r3, r3, #256
	lsr	r1, r1, #16
	str	r2, [r0]
	str	r3, [r5]
	strh	r1, [ip, #12]	@ movhi
.L245:
	cmp	r2, #29
	movgt	r2, #27
	strgt	r2, [r0]
	mov	r2, #67108864
	addle	r3, r3, #1
	strle	r3, [r5]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldr	r6, .L269+24
	strh	r3, [r2, #24]	@ movhi
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L269+28
	ldr	r7, .L269+32
	mov	lr, pc
	bx	r7
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L248
	ldr	r2, .L269+36
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L262
.L248:
	tst	r3, #4
	beq	.L240
	ldr	r3, .L269+36
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L263
.L240:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L241:
	mov	ip, #67108864
	ldr	r0, .L269+12
	ldr	r2, [r0]
	add	r2, r2, #1
	lsl	r1, r2, #24
	orr	r1, r1, #1073741824
	orr	r1, r1, #262144
	sub	r3, r3, #512
	lsr	r1, r1, #16
	str	r3, [r4]
	str	r2, [r0]
	strh	r1, [ip, #10]	@ movhi
	b	.L242
.L262:
	ldr	r1, .L269+40
	ldr	r1, [r1]
	cmp	r1, #4
	beq	.L264
	cmp	r1, #5
	beq	.L265
	cmp	r1, #6
	beq	.L266
	cmp	r1, #9
	beq	.L267
	cmp	r1, #7
	beq	.L268
	cmp	r1, #8
	bne	.L248
	ldr	r3, .L269+44
	str	r2, [r5]
	str	r2, [r3]
	str	r2, [r4]
	bl	goToFinalBattle
	ldrh	r3, [r6]
	b	.L248
.L263:
	ldr	r2, .L269+44
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	str	r3, [r2]
	b	goToSplash
.L264:
	ldr	r2, .L269+48
	ldr	r3, .L269+52
	ldr	r1, [r2]
	ldr	r3, [r3]
	ldr	r2, .L269+44
	str	r3, [r5]
	str	r1, [r2]
	bl	goToGame
	ldrh	r3, [r6]
	b	.L248
.L265:
	bl	goToMiniGame
	ldrh	r3, [r6]
	b	.L248
.L266:
	bl	goToMiniGame2
	ldrh	r3, [r6]
	b	.L248
.L267:
	bl	goToCheat
	ldrh	r3, [r6]
	b	.L248
.L268:
	ldr	r3, .L269+44
	str	r2, [r5]
	str	r2, [r3]
	str	r2, [r4]
	bl	goToBattle
	ldrh	r3, [r6]
	b	.L248
.L270:
	.align	2
.L269:
	.word	hideSprites
	.word	hOff1
	.word	waitForVBlank
	.word	screenBlock1
	.word	hOff
	.word	screenBlock2
	.word	oldButtons
	.word	shadowOAM
	.word	DMANow
	.word	buttons
	.word	prevState
	.word	vOff
	.word	prevVoff
	.word	prevHoff
	.size	pause, .-pause
	.align	2
	.global	finalBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	finalBattle, %function
finalBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L284
	mov	lr, pc
	bx	r3
	ldr	r3, .L284+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L284+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L284+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L272
	mov	r3, #83886080
	ldr	r2, .L284+16
	strh	r2, [r3]	@ movhi
.L273:
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L284+20
	ldr	r4, .L284+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L284+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L274
	ldr	r3, .L284+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L281
.L274:
	ldr	r3, .L284+36
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L282
.L275:
	ldr	r3, .L284+40
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L283
	pop	{r4, lr}
	bx	lr
.L272:
	cmp	r3, #1
	moveq	r3, #83886080
	ldreq	r2, .L284+44
	strheq	r2, [r3]	@ movhi
	b	.L273
.L283:
	ldr	r3, .L284+48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L282:
	ldr	r3, .L284+48
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L275
.L281:
	mov	r2, #8
	ldr	r3, .L284+52
	str	r2, [r3]
	bl	goToPause
	b	.L274
.L285:
	.align	2
.L284:
	.word	updateFinalBattle
	.word	drawFinalBattle
	.word	waitForVBlank
	.word	battleState
	.word	27295
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	playerHeartCount
	.word	enemyHeartCount
	.word	27124
	.word	hideSprites
	.word	prevState
	.size	finalBattle, .-finalBattle
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L305
	mov	lr, pc
	bx	r3
	ldr	r6, .L305+4
	ldr	r8, .L305+8
	ldr	r5, .L305+12
	ldr	fp, .L305+16
	ldr	r10, .L305+20
	ldr	r9, .L305+24
	ldr	r7, .L305+28
	ldr	r4, .L305+32
.L287:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L288:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L288
.L290:
	.word	.L301
	.word	.L300
	.word	.L299
	.word	.L298
	.word	.L297
	.word	.L296
	.word	.L295
	.word	.L294
	.word	.L293
	.word	.L292
	.word	.L291
	.word	.L289
	.word	.L289
.L289:
	mov	lr, pc
	bx	r7
	b	.L287
.L291:
	ldr	r3, .L305+36
	mov	lr, pc
	bx	r3
	b	.L287
.L292:
	ldr	r3, .L305+40
	mov	lr, pc
	bx	r3
	b	.L287
.L293:
	ldr	r3, .L305+44
	mov	lr, pc
	bx	r3
	b	.L287
.L294:
	ldr	r3, .L305+48
	mov	lr, pc
	bx	r3
	b	.L287
.L295:
	ldr	r3, .L305+52
	mov	lr, pc
	bx	r3
	b	.L287
.L296:
	ldr	r3, .L305+56
	mov	lr, pc
	bx	r3
	b	.L287
.L297:
	ldr	r3, .L305+60
	mov	lr, pc
	bx	r3
	b	.L287
.L298:
	ldr	r3, .L305+64
	mov	lr, pc
	bx	r3
	b	.L287
.L299:
	mov	lr, pc
	bx	r9
	b	.L287
.L300:
	mov	lr, pc
	bx	r10
	b	.L287
.L301:
	mov	lr, pc
	bx	fp
	b	.L287
.L306:
	.align	2
.L305:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	splash
	.word	instruct
	.word	instruct2
	.word	win
	.word	67109120
	.word	pause
	.word	cheat
	.word	finalBattle
	.word	battle
	.word	miniGame2
	.word	miniGame
	.word	game
	.word	instruct3
	.size	main, .-main
	.comm	shardCount,4,4
	.comm	cheatActivated,4,4
	.comm	cheatRand,4,4
	.comm	prevHoff,4,4
	.comm	prevVoff,4,4
	.comm	prevState,4,4
	.comm	screenBlock2,4,4
	.comm	screenBlock1,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
