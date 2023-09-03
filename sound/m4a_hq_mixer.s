	.include "sound/m4a_hq_mixer_config.s"

	thumb_func_start SoundMainRAM

SoundMainRAM:
	/* load Reverb level and check if we need to apply it */
	str	r4, [sp, #ARG_BUFFER_POS_INDEX_HINT]
	/*
	 * okay, before the actual mixing starts
	 * the volume and envelope calculation takes place
	 */
	mov	r4, r8  @ r4 = buffer length
	/*
	 * this stores the buffer length to a backup location
	 */
	str	r4, [sp, #ARG_FRAME_LENGTH]
	/* init channel loop */
	ldr	r4, [sp, #ARG_PCM_STRUCT]           @ r4 = main work area pointer
	ldr	r0, [r4, #VAR_DEF_PITCH_FAC]        @ r0 = samplingrate pitch factor
	mov	r12, r0
	ldrb r0, [r4, #VAR_MAX_CHN]
	adds r4, #VAR_FIRST_CHN                 @ r4 = Base channel Offset (Channel #0)

C_channel_state_loop:
	/* this is the main channel processing loop */
	str	r0, [sp, #ARG_REMAIN_CHN]
	ldr	r3, [r4, #CHN_WAVE_OFFSET]
	ldrb r6, [r4, #CHN_STATUS]           @ r6 will hold the channel status
	movs r0, #0xC7                       @ check if any of the channel status flags is set
	tst r0, r6                           @ check if none of the flags is set
	beq	C_skip_channel
	/* check channel flags */
	lsls r0, r6, #25                     @ shift over the FLAG_CHN_INIT to CARRY
	bcc	C_adsr_echo_check                @ continue with normal channel procedure
	/* check leftmost bit */
	bmi	C_stop_channel                   @ FLAG_CHN_INIT | FLAG_CHN_RELEASE -> stop directly
	/* channel init procedure */
	movs r6, #FLAG_CHN_ATTACK
	/* enabled compression if sample flag is set */
	movs r0, r3                          @ r0 = CHN_WAVE_OFFSET
	adds r0, #WAVE_DATA                  @ r0 = wave data offset
	ldr	r2, [r3, #WAVE_LENGTH]
	cmp	r2, #0
	beq	C_channel_init_synth
	ldrb r5, [r3, #WAVE_TYPE]
	lsls r5, r5, #31
	ldrb r5, [r4, #CHN_MODE]
	bmi	C_channel_init_comp
	lsls r5, r5, #27                     @ shift MODE_REVERSE flag to SIGN
	bmi	C_channel_init_noncomp_reverse
	/* Pokemon games seem to init channels differently than other m4a games */
C_channel_init_noncomp_forward:
.if POKE_CHN_INIT==0
.else
	ldr	r1, [r4, #CHN_SAMPLE_COUNTDOWN]
	adds r0, r1
	subs r2, r1
.endif
	b C_channel_init_check_loop
C_channel_init_synth:
	movs r5, #MODE_SYNTH
	strb r5, [r4, #CHN_MODE]
	ldrb r1, [r3, #(WAVE_DATA + SYNTH_TYPE)]
	cmp	r1, #2
	bne	C_channel_init_check_loop
	/* start triangular synth wave at 90 degree phase
	 * to avoid a pop sound at the start of the wave */
	movs r5, #0x40
	lsls r5, #24
	str	r5, [r4, #CHN_FINE_POSITION]
	movs r5, #0
	b C_channel_init_check_loop_no_fine_pos
C_channel_init_noncomp_reverse:
.if POKE_CHN_INIT==0
	adds r0, r2
.else
	adds r0, r2
	ldr	r1, [r4, #CHN_SAMPLE_COUNTDOWN]
	subs r0, r1
	subs r2, r1
.endif
	b C_channel_init_check_loop
C_channel_init_comp:
	movs r0, #MODE_COMP
	orrs r5, r0
	strb r5, [r4, #CHN_MODE]
	lsls r5, r5, #27                     @ shift MODE_REVERSE flag to SIGN
	bmi C_channel_init_comp_reverse
C_channel_init_comp_forward:
.if POKE_CHN_INIT==0
	movs r0, #0
.else
	ldr r0, [r4, #CHN_SAMPLE_COUNTDOWN]
	subs r2, r0
.endif
	b C_channel_init_check_loop
C_channel_init_comp_reverse:
.if POKE_CHN_INIT==0
	movs r0, r2
.else
	ldr r1, [r4, #CHN_SAMPLE_COUNTDOWN]
	subs r2, r1
	movs r0, r2
.endif
C_channel_init_check_loop:
	movs r5, #0                          @ initial envelope = #0
	str	r5, [r4, #CHN_FINE_POSITION]
C_channel_init_check_loop_no_fine_pos:
	str	r0, [r4, #CHN_POSITION_ABS]
	str	r2, [r4, #CHN_SAMPLE_COUNTDOWN]
	strb r5, [r4, #CHN_ADSR_LEVEL]
	movs r2, #CHN_SAMPLE_STOR            @ offset is too large to be used in one instruction
	strb r5, [r4, r2]
	/* enabled loop if required */
	ldrb r2, [r3, #WAVE_LOOP_FLAG]
	lsrs r0, r2, #6
	beq	C_adsr_attack
	/* loop enabled here */
	adds r6, #FLAG_CHN_LOOP
	b C_adsr_attack

C_adsr_echo_check:
	/* this is the normal ADSR procedure without init */
	ldrb r5, [r4, #CHN_ADSR_LEVEL]
	lsls r0, r6, #29                     @ FLAG_CHN_ECHO --> bit 31 (sign bit)
	bpl C_adsr_release_check
	/* pseudo echo handler */
	ldrb r0, [r4, #CHN_ECHO_REMAIN]
	subs r0, #1
	strb r0, [r4, #CHN_ECHO_REMAIN]
	bhi	C_channel_vol_calc               @ continue normal if channel is still on

C_stop_channel:
	movs r0, #0
	strb r0, [r4, #CHN_STATUS]

C_skip_channel:
	/* go to end of the channel loop */
	b C_end_channel_state_loop

C_adsr_release_check:
	lsls r0, r6, #25                     @ FLAG_CHN_RELEASE --> bit 31 (sign bit)
	bpl	C_adsr_decay_check
	/* release handler */
	ldrb r0, [r4, #CHN_RELEASE]
	muls r5, r5, r0
	lsrs r5, #8
	ble	C_adsr_released
	/* pseudo echo init handler */
	ldrb r0, [r4, #CHN_ECHO_VOL]
	cmp	r5, r0
	bhi	C_channel_vol_calc

C_adsr_released:
	/* if volume released to #0 */
	ldrb r5, [r4, #CHN_ECHO_VOL]
	cmp	r5, #0
	beq	C_stop_channel
	/* pseudo echo volume handler */
	movs r0, #FLAG_CHN_ECHO
	orrs r6, r0                          @ set the echo flag
	b C_adsr_save_and_finalize

C_adsr_decay_check:
	/* check if decay is active */
	movs r2, #(FLAG_CHN_DECAY+FLAG_CHN_SUSTAIN)
	ands r2, r6
	cmp	r2, #FLAG_CHN_DECAY
	bne	C_adsr_attack_check              @ decay not active yet
	/* decay handler */
	ldrb r0, [r4, #CHN_DECAY]
	muls r5, r5, r0
	lsrs r5, r5, #8
	ldrb r0, [r4, #CHN_SUSTAIN]
	cmp	r5, r0
	bhi	C_channel_vol_calc               @ sample didn't decay yet
	/* sustain handler */
	movs r5, r0                          @ current level = sustain level
	beq	C_adsr_released                  @ sustain level #0 --> branch
	/* step to next phase otherweise */
	b C_adsr_next_state

C_adsr_attack_check:
	/* attack handler */
	cmp	r2, #FLAG_CHN_ATTACK
	bne	C_channel_vol_calc               @ if it isn't in attack attack phase, it has to be in sustain (keep vol) --> branch

C_adsr_attack:
	/* apply attack summand */
	ldrb r0, [r4, #CHN_ATTACK]
	adds r5, r0
	cmp	r5, #0xFF
	blo	C_adsr_save_and_finalize
	/* cap attack at 0xFF */
	movs r5, #0xFF

C_adsr_next_state:
	/* switch to next adsr phase */
	subs r6, #1

C_adsr_save_and_finalize:
	/* store channel status */
	strb r6, [r4, #CHN_STATUS]

C_channel_vol_calc:
	/* store the calculated ADSR level */
	strb r5, [r4, #CHN_ADSR_LEVEL]
	/* apply master volume */
	ldr	r0, [sp, #ARG_PCM_STRUCT]
	ldrb r0, [r0, #VAR_MASTER_VOL]
	adds r0, #1
	muls r5, r0
	/* left side volume */
	ldrb r0, [r4, #CHN_VOL_2]
	muls r0, r5
	lsrs r0, #13
	mov	r10, r0                          @ r10 = left volume
	/* right side volume */
	ldrb r0, [r4, #CHN_VOL_1]
	muls r0, r5
	lsrs r0, #13
	mov	r11, r0                          @ r11 = right volume
	/*
	 * Now we get closer to actual mixing:
	 * For looped samples some additional operations are required
	 */
	movs r0, #FLAG_CHN_LOOP
	ands r0, r6
	beq	C_sample_loop_setup_skip
	/* loop setup handler */
	adds r3, #WAVE_LOOP_START
	ldmia r3!, {r0, r1}                  @ r0 = loop start, r1 = loop end
	ldrb r2, [r4, #CHN_MODE]
	lsls r2, r2, #MODE_FLGSH_SIGN_REVERSE
	bcs	C_sample_loop_setup_comp
	adds r3, r0                          @ r3 = loop start position (absolute)
	b C_sample_loop_setup_finish
C_sample_loop_setup_comp:
	movs r3, r0
C_sample_loop_setup_finish:
	str	r3, [sp, #ARG_LOOP_START_POS]
	subs r0, r1, r0

C_sample_loop_setup_skip:
	/* do the rest of the setup */
	str	r0, [sp, #ARG_LOOP_LENGTH]       @ if loop is off --> r0 = 0x0
	ldr	r5, hq_buffer_literal
	ldr	r2, [r4, #CHN_SAMPLE_COUNTDOWN]
	ldr	r3, [r4, #CHN_POSITION_ABS]
	ldrb r0, [r4, #CHN_MODE]
	/* switch to arm */
	adr	r1, C_mixing_setup
	bx r1

	.align 2
hq_buffer_literal:
	.word hq_buffer_ptr

	arm_func_start C_mixing_setup

	/* register usage:
	 * r0:  scratch
	 * r1:  scratch
	 * r2:  sample countdown
	 * r3:  sample pointer
	 * r4:  sample step
	 * r5:  mixing buffer
	 * r6:  sampleval base
	 * r7:  sample interpos
	 * r8:  frame count
	 * r9:  scratch
	 * r10: scratch
	 * r11: volume
	 * r12: sampval diff
	 * lr:  scratch */
C_mixing_setup:
	/* frequency and mixing loading routine */
	ldrsb r6, [r4, #CHN_SAMPLE_STOR]
	ldr	r8, [sp, #ARG_FRAME_LENGTH]
	orrs r11, r11, r10, lsl#16           @ r11 = 00LL00RR
	beq	C_mixing_epilogue                @ volume #0 --> branch and skip channel processing
	/* normal processing otherwise */
	tst	r0, #(MODE_COMP|MODE_REVERSE)
	bne	C_mixing_setup_comp_rev
	tst	r0, #MODE_FIXED_FREQ
	bne	C_setup_fixed_freq_mixing
C_mixing_setup_comp_rev:
	push {r4, r9, r12}
	add	 r4, r4, #CHN_FINE_POSITION
	ldmia r4, {r7, lr}                   @ r7 = Fine Position, lr = Frequency
	mul	r4, lr, r12                      @ r4 = inter sample steps = output rate factor * samplerate
	tst	r0, #MODE_SYNTH
	bne	C_setup_synth
	/*
	 * Mixing goes with volume ranges 0-127
	 * They come in 0-255 --> divide by 2 (rounding up)
	 */
	movs r11, r11, lsr#1
	adc	r11, r11, #0x8000
	bic	r11, r11, #0x8000
	mov	r1, r7                           @ r1 = inter sample position
	/*
	 * There is 2 different mixing codepaths for uncompressed data
	 *  path 1: fast mixing, but doesn't supports loop or stop
	 *  path 2: not so fast but supports sample loops / stop
	 * This checks if there is enough samples aviable for path 1.
	 * important: r0 is expected to be #0
	 */
	sub	r10, sp, #0x8
	tst	r0, #MODE_FIXED_FREQ
	movne r4, #0x800000
	movs r0, r0, lsl#(MODE_FLGSH_SIGN_REVERSE)
	umlal r1, r0, r4, r8
	mov	r1, r1, lsr#23
	orr	r0, r1, r0, lsl#9
	bcs	C_data_load_comp
	bmi	C_data_load_uncomp_rev
	b C_data_load_uncomp_for

/* registers:
 * r9: src address (relative to start address)
 * r0: dst address (on stack)
 * r12: delta_lookup_table */
F_decode_compressed:
	push {r3, lr}
	mov	lr, #BDPCM_BLK_SIZE
	ldrb r2, [r9], #1
	ldrb r3, [r9], #1
	b C_bdpcm_decoder_loop_entry

C_bdpcm_decoder_loop:
	ldrb r3, [r9], #1
	ldrb r2, [r12, r3, lsr#4]
	add	r2, r1, r2
	and	r3, r3, #0xF
C_bdpcm_decoder_loop_entry:
	ldrb r1, [r12, r3]
	add	r1, r1, r2
bdpcm_instructions:
	nop
	nop
	subs lr, #2
	bgt	C_bdpcm_decoder_loop
	pop	{r3, pc}

bdpcm_instruction_resource_for:
	strb r2, [r0], #1
	strb r1, [r0], #1
bdpcm_instruction_resource_rev:
	strb r2, [r0, #-1]!
	strb r1, [r0, #-1]!

delta_lookup_table:
	.byte 0, 1, 4, 9, 16, 25, 36, 49, -64, -49, -36, -25, -16, -9, -4, -1
stack_boundary_literal:
	.word 0x03007900

C_data_load_comp:
	adrpl r9, bdpcm_instruction_resource_for
	adrmi r9, bdpcm_instruction_resource_rev
	ldmia r9, {r12, lr}
	adr	r9, bdpcm_instructions
	stmia r9, {r12, lr}
	adr	r12, delta_lookup_table
	bmi	C_data_load_comp_rev
C_data_load_comp_for:
	/* TODO having loop support for forward samples would be nice */
	/* lr = end_of_last_block */
	add	lr, r3, r0
	add	lr, #(1+(BDPCM_BLK_SIZE-1))              @ -1 for alignment, +1 because we need an extra sample for interpolation
	bic	lr, #BDPCM_BLK_SIZE_MASK
	/* r9 = start_of_first_block >> 6 */
	mov	r9, r3, lsr#BDPCM_BLK_SIZE_SHIFT
	/* r8 = num_samples */
	sub	r8, lr, r9, lsl#BDPCM_BLK_SIZE_SHIFT
	/* check if stack would overflow */
	ldr	r1, stack_boundary_literal
	add	r1, r8
	cmp	r1, sp
	bhs	C_end_mixing
	/* --- */
	add	r1, r3, r0
	subs r0, r2, r0
	push {r0, r1}
	sub	sp, r8
	bgt	C_data_load_comp_for_calc_pos
	/* locate end of sample data block */
	add	r1, r3, r2
	/* ugly workaround for unaligned samples */
	add	r1, r1, #BDPCM_BLK_SIZE_MASK
	bic	r1, r1, #BDPCM_BLK_SIZE_MASK
	sub	r1, lr, r1
	sub	r8, r1
	add	r0, sp, r8
	bl F_clear_mem
C_data_load_comp_for_calc_pos:
	and	r3, r3, #BDPCM_BLK_SIZE_MASK
	mov	r0, sp
C_data_load_comp_decode:
	ldr	r2, [r10, #8]           @ load chn_ptr from previous stmfd
	@ zero flag should be only set when leaving from F_clear_mem (r1 = 0)
	strbeq r1, [r2, #CHN_STATUS]
	ldr	r2, [r2, #CHN_WAVE_OFFSET]
	add	r2, #WAVE_DATA
	mov	r1, #BDPCM_BLK_STRIDE
	mla	r9, r1, r9, r2
C_data_load_comp_loop:
	bl F_decode_compressed
	subs r8, #BDPCM_BLK_SIZE
	bgt	C_data_load_comp_loop
	b C_select_highspeed_codepath_vla_r3

C_data_load_comp_rev:
	/* lr = end_of_last_block */
	add	lr, r3, #BDPCM_BLK_SIZE_MASK
	bic	lr, lr, #BDPCM_BLK_SIZE_MASK
	/* r9 = start_of_first_block >> 6 */
	sub	r9, r3, r0
	sub	r9, #1  @ one extra sample for LERP
	mov	r9, r9, lsr#BDPCM_BLK_SIZE_SHIFT
	/* r8 = num_samples */
	sub	r8, lr, r9, lsl#BDPCM_BLK_SIZE_SHIFT
	/* check if stack would overflow */
	ldr	lr, stack_boundary_literal
	add	lr, r8
	cmp	lr, sp
	bhs	C_end_mixing
	/* --- */
	sub	lr, r3, r0
	subs r0, r2, r0
	push {r0, lr}
	mov	r0, sp
	sub	sp, r8
	bgt	C_data_load_comp_rev_calc_pos
	sub	r1, r3, r2
	sub	r1, r1, r9, lsl#BDPCM_BLK_SIZE_SHIFT
	sub	r8, r1
	add	r0, sp, r8
	bl F_clear_mem
C_data_load_comp_rev_calc_pos:
	rsb	r3, r3, #0
	and	r3, r3, #BDPCM_BLK_SIZE_MASK
	b C_data_load_comp_decode

C_data_load_uncomp_rev:
	/* lr = end_of_last_block */
	add	lr, r3, #0x3
	bic	lr, #0x3
	/* r9 = start_of_first_block */
	sub	r9, r3, r0
	sub	r9, #1
	bic	r9, #0x3
	/* r8 = num_samples */
	sub	r8, lr, r9
	/* check if stack would overflow */
	ldr	r1, stack_boundary_literal
	add	r1, r8
	cmp	r1, sp
	bhs	C_end_mixing
	/* --- */
	sub	r1, r3, r0
	subs r0, r2, r0
	push {r0, r1}
	mov	r0, sp
	sub	sp, r8
	bgt	C_data_load_uncomp_rev_loop
	sub	r1, r3, r2
	sub	r1, r9
	sub	r8, r1
	add	r0, sp, r8
	bl F_clear_mem
	ldr	r2, [r10, #8]           @ load chn_ptr from previous stmfd
	@ r1 should be zero here
	strb r1, [r2, #CHN_STATUS]
C_data_load_uncomp_rev_loop:
	ldmia r9!, {r1}
	@ Byteswap
	eor	r2, r1, r1, ROR#16
	mov	r2, r2, lsr#8
	bic	r2, r2, #0xFF00
	eor	r1, r2, r1, ROR#8
	stmdb r0!, {r1}
	subs r8, #4
	bgt	C_data_load_uncomp_rev_loop
	neg	r3, r3
	b C_select_highspeed_codepath_vla_r3_and3

C_data_load_uncomp_for:
	cmp	r2, r0                           @ actual comparison
	ble	C_unbuffered_mixing        @ if not enough samples are available for path 1 --> branch
	/*
	 * This is the mixer path 1.
	 * The interesting thing here is that the code will
	 * buffer enough samples on stack if enough space
	 * on stack is available (or goes over the limit of 0x400 bytes)
	 */
	sub	r2, r2, r0
	ldr	r9, stack_boundary_literal
	add	r9, r0
	cmp	r9, sp
	add	r9, r3, r0
	/*
	 * r2 = remaining samples after processing
	 * r9 = final sample position
	 * sp = original stack location
	 * These values will get reloaded after channel processing
	 * due to the lack of registers.
	 */
	push {r2, r9}
	cmplo r0, #0x400                     @ > 0x400 bytes --> read directly from ROM rather than buffered
	bhs C_select_highspeed_codepath

	bic	r1, r3, #3
	add	r0, r0, #7
.if ENABLE_DMA==1
	/*
	 * The code below inits the DMA to read word aligned
	 * samples from ROM to stack
	 */
	mov	r9, #REG_DMA3_SRC & 0xFF000000
	add	r9, #REG_DMA3_SRC & 0x000000FF
	mov	r0, r0, lsr#2
	sub	sp, sp, r0, lsl#2
	orr	lr, r0, #0x84000000              @ DMA enable, 32-bit transfer type
	stmia r9, {r1, sp, lr}               @ actually starts the DMA
.else
	/*
	 * This alternative path doesn't use DMA but copies with CPU instead
	 */
	bic	r0, r0, #0x3
	sub	sp, sp, r0
	mov	lr, sp
	push {r3-r10}
	ands r10, r0, #0xE0
	rsb	r10, r10, #0xF0
	add	pc, pc, r10, lsr#2
C_copy_loop:
	.rept 8                              @ duff's device 8 times
	  ldmia	r1!, {r3-r10}
	  stmia	lr!, {r3-r10}
	.endr
	subs r0, #0x100
	bpl	C_copy_loop
	ands r0, r0, #0x1C
	beq	C_copy_end
C_copy_loop_rest:
	ldmia r1!, {r3}
	stmia lr!, {r3}
	subs r0, #0x4
	bgt	C_copy_loop_rest
C_copy_end:
	pop	{r3-r10}
.endif
C_select_highspeed_codepath_vla_r3_and3:
	and	r3, r3, #3
C_select_highspeed_codepath_vla_r3:
	add	r3, r3, sp
C_select_highspeed_codepath:
	push {r10}                           @ save original sp for VLA
	/*
	 * This code decides which piece of code to load
	 * depending on playback-rate / default-rate ratio.
	 * Modes > 1.0 run with different volume levels.
	 * r4 = inter sample step
	 */
	adr	r0, high_speed_code_resource     @ loads the base pointer of the code
	subs r4, r4, #0x800000
	movpl r11, r11, lsl#1                @  if >= 1.0*   0-127 --> 0-254 volume level
	addpl r0, r0, #(ARM_OP_LEN*6)        @               6 instructions further
	subspl r4, r4, #0x800000             @  if >= 2.0*
	addpl r0, r0, #(ARM_OP_LEN*6)
	addpl r4, r4, #0x800000
	ldr	r2, previous_fast_code
	cmp	r0, r2                           @ code doesn't need to be reloaded if it's already in place
	beq C_skip_fast_mixing_creation
	/* This loads the needed code to RAM */
	str	r0, previous_fast_code
	ldmia r0, {r0-r2, r8-r10}            @ load 6 opcodes
	adr	lr, fast_mixing_instructions+(ARM_OP_LEN*2) @ first nop

C_fast_mixing_creation_loop:
	/* paste code to destination, see below for patterns */
	stmia lr, {r0, r1}
	add	lr, lr, #(ARM_OP_LEN*38)
	stmia lr, {r0, r1}
	sub	lr, lr, #(ARM_OP_LEN*35)
	stmia lr, {r2, r8-r10}
	add	lr, lr, #(ARM_OP_LEN*38)
	stmia lr, {r2, r8-r10}
	sub	lr, lr, #(ARM_OP_LEN*32)
	adds r5, r5, #0x40000000         @ do that for 4 blocks (unused pointer bits)
	bcc	C_fast_mixing_creation_loop

C_skip_fast_mixing_creation:
	ldr	r8, [sp]                         @ restore r8 with the frame length
	ldr	r8, [r8, #(ARG_FRAME_LENGTH + 0x8 + 0xC)]
	mov	r2, #0xFF000000                  @ load the fine position overflow bitmask, set NE
	ldrsb r12, [r3]
	sub	r12, r12, r6
C_fast_mixing_loop:
	/* This is the actual processing and interpolation code loop; NOPs will be replaced by the code above */
fast_mixing_instructions:
	/* Mix the first 4 stereo samples, then the next 4. */
	.rept 2
	  ldmia	r5, {r0, r1, r10, lr}      @ load 4 stereo samples to Registers
	  .irp reg, r0, r1, r10, lr        @ 4 blocks
		mulne r9, r7, r12
		nop
		nop
		mlane \reg, r11, r9, \reg
		nop
		nop
		nop
		nop
		bic	r7, r7, r2, asr#1
	  .endr
	  stmia	r5!, {r0, r1, r10, lr}     @ write 4 stereo samples
	.endr

	subs r8, r8, #8
	bgt	C_fast_mixing_loop
	/* restore previously saved values */
	ldr	sp, [sp]                         @ reload original stack pointer from VLA
C_skip_fast_mixing:
	pop	{r2, r3}
	b C_end_mixing

/* Various variables for the cached mixer */

	.align 2
previous_fast_code:
	.word 0x0 /* mark as invalid initially */

/* Those instructions below are used by the high speed loop self modifying code */
high_speed_code_resource:
	/* Block for Mix Freq < 1.0 * Output Frequency */
	mov	r9, r9, asr#22
	adds r9, r9, r6, lsl#1
	adds r7, r7, r4
	addpl r6, r12, r6
	ldrsbpl	r12, [r3, #1]!
	Subspl r12, r12, r6

	/* Block for Mix Freq > 1.0 AND < 2.0 * Output Frequency */
	adds r9, r6, r9, asr#23
	add	r6, r12, r6
	adds r7, r7, r4
	ldrsbpl	r6, [r3, #1]!
	ldrsb r12, [r3, #1]!
	subs r12, r12, r6

	/* Block for Mix Freq > 2.0 * Output Frequency */
	adds r9, r6, r9, asr#23
	add	r7, r7, r4
	add	r3, r3, r7, lsr#23
	ldrsb r6, [r3]
	ldrsb r12, [r3, #1]!
	subs r12, r12, r6

/* incase a loop or end occurs during mixing, this code is used */
C_unbuffered_mixing:
	ldrsb r12, [r3]
	sub	r12, r12, r6
	add	r5, r5, r8, lsl#2                @ r5 = End of HQ buffer

/* This below is the unbuffered mixing loop. r6 = base sample, r12 diff to next */
C_unbuffered_mixing_loop:

	mul	r9, r7, r12
	mov	r9, r9, asr#22
	adds r9, r9, r6, lsl#1
	ldrne r0, [r5, -r8, lsl#2]
	mlane r0, r11, r9, r0
	strne r0, [r5, -r8, lsl#2]
	add	r7, r7, r4
	movs r9, r7, lsr#23
	beq	C_unbuffered_mixing_skip_load    @ skip the mixing load if it isn't required

	subs r2, r2, r9
	ble	C_unbuffered_mixing_loop_or_end
C_unbuffered_mixing_loop_continue:
	subs r9, r9, #1
	addeq r6, r12, r6
	ldrsbne	r6, [r3, r9]!
	ldrsb r12, [r3, #1]!
	sub	r12, r12, r6
	bic	r7, r7, #0x3F800000

C_unbuffered_mixing_skip_load:
	subs r8, r8, #1                      @ reduce the sample count for the buffer by #1
	bgt	C_unbuffered_mixing_loop

C_end_mixing:
	pop	{r4, r9, r12}
	str	 r7, [r4, #CHN_FINE_POSITION]
	strb r6, [r4, #CHN_SAMPLE_STOR]
	b C_mixing_end_store

C_unbuffered_mixing_loop_or_end:
	/* XXX: R0 or R6? */
	/* This loads the loop information end loops incase it should */
	ldr	r0, [sp, #(ARG_LOOP_LENGTH+0xC)]
	cmp	r0, #0                           @ check if loop is enabled; if Loop is enabled r6 is != 0
	subne r3, r3, r0
	addne r2, r2, r0
	bne	C_unbuffered_mixing_loop_continue
	pop	{r4, r9, r12}
	b C_mixing_end_and_stop_channel      @ r0 == 0 (if this branches)

C_fixed_mixing_loop_or_end:
	ldr	r2, [sp, #ARG_LOOP_LENGTH+0x8]
	movs r0, r2							 @ copy it to r6 and check whether loop is disabled
	ldrne r3, [sp, #ARG_LOOP_START_POS+0x8]
	bne	C_fixed_mixing_loop_continue

	pop	{r4, r9}

C_mixing_end_and_stop_channel:
	strb r0, [r4]                        @ update channel flag with chn halt
	b C_mixing_epilogue

/* These are used for the fixed freq mixer */
fixed_mixing_code_resource:
	movs r6, r10, lsl#24
	movs r6, r6, asr#24
	movs r6, r10, lsl#16
	movs r6, r6, asr#24
	movs r6, r10, lsl#8
	movs r6, r6, asr#24
	movs r6, r10, asr#24
	ldmia r3!, {r10}                         @ load chunk of samples
	movs r6, r10, lsl#24
	movs r6, r6, asr#24
	movs r6, r10, lsl#16
	movs r6, r6, asr#24
	movs r6, r10, lsl#8
	movs r6, r6, asr#24

C_setup_fixed_freq_mixing:
	stmfd sp!, {r4, r9}

C_fixed_mixing_length_check:
	cmp	r2, r8                           @ min(buffer_size, sample_countdown) - 1
	subgt lr, r8, #1
	suble lr, r2, #1
	movs lr, lr, lsr#2
	beq	C_fixed_mixing_process_rest      @ <= 3 samples to process

	sub	r8, r8, lr, lsl#2                @ subtract the amount of samples we need to process from the buffer length
	sub	r2, r2, lr, lsl#2                @ subtract the amount of samples we need to process from the remaining samples
	adr	r1, fixed_mixing_instructions
	adr	r0, fixed_mixing_code_resource
	mov	r9, r3, lsl#30
	add	r0, r0, r9, lsr#27               @ alignment * 8 + resource offset = new resource offset
	ldmia r0!, {r6, r7, r9, r10}         @ load and write instructions
	stmia r1, {r6, r7}
	add	r1, r1, #0xC
	stmia r1, {r9, r10}
	add	r1, r1, #0xC
	ldmia r0, {r6, r7, r9, r10}
	stmia r1, {r6, r7}
	add	r1, r1, #0xC
	stmia r1, {r9, r10}
	ldmia r3!, {r10}                     @ load 4 samples from ROM

C_fixed_mixing_loop:
	ldmia r5, {r0, r1, r7, r9}       @ load 4 samples from hq buffer

fixed_mixing_instructions:
	.irp reg, r0, r1, r7, r9
	  nop
	  nop
	  mlane	\reg, r11, r6, \reg      @ add new sample if neccessary
	.endr
	stmia r5!, {r0, r1, r7, r9}      @ write samples to the mixing buffer
	subs lr, lr, #1
	bne	C_fixed_mixing_loop

	sub	r3, r3, #4                       @ we'll need to load this block again, so rewind a bit

C_fixed_mixing_process_rest:
	mov	r1, #4                           @ repeat the loop #4 times to completely get rid of alignment errors

C_fixed_mixing_unaligned_loop:
	ldr	r0, [r5]
	ldrsb r6, [r3], #1
	mla	r0, r11, r6, r0
	str	r0, [r5], #4
	subs r2, r2, #1
	beq	C_fixed_mixing_loop_or_end
C_fixed_mixing_loop_continue:
	subs r1, r1, #1
	bgt	C_fixed_mixing_unaligned_loop

	subs r8, r8, #4
	bgt	C_fixed_mixing_length_check      @ repeat the mixing procedure until the buffer is filled

	pop	{r4, r9}

C_mixing_end_store:
	str	r2, [r4, #CHN_SAMPLE_COUNTDOWN]
	str	r3, [r4, #CHN_POSITION_ABS]

C_mixing_epilogue:
	/* Switch to Thumb */
	adr	r0, (C_end_channel_state_loop+1)
	bx r0

	non_word_aligned_thumb_func_start C_end_channel_state_loop

C_end_channel_state_loop:
	ldr	r0, [sp, #ARG_REMAIN_CHN]
	subs r0, #1
	ble	C_main_mixer_return

	adds r4, #0x40
	b C_channel_state_loop

C_main_mixer_return:
	ldr	r3, [sp, #ARG_PCM_STRUCT]
	ldrb r4, [r3, #VAR_EXT_NOISE_SHAPE_LEFT]
	lsls r4, r4, #16
	ldrb r5, [r3, #VAR_EXT_NOISE_SHAPE_RIGHT]
	lsls r5, r5, #16
.if ENABLE_REVERB==1
	ldrb r2, [r3, #VAR_REVERB]
	lsrs r2, r2, #2
	ldr	r1, [sp, #ARG_BUFFER_POS_INDEX_HINT]
	cmp	r1, #2
.else
	movs r2, #0
	movs r3, #0
.endif
	/* Switch to ARM */
	adr	r0, C_downsampler
	bx r0

	arm_func_start C_downsampler

C_downsampler:
	ldr	r8, [sp, #ARG_FRAME_LENGTH]
	ldr	r9, [sp, #ARG_BUFFER_POS]
.if ENABLE_REVERB==1
	orr	r2, r2, r2, lsl#16
	movne r3, r8
	addeq r3, r3, #VAR_PCM_BUFFER
	subeq r3, r3, r9
.endif
	ldr	r10, hq_buffer_literal
	mov	r11, #0xFF00
	mov	lr, #0xC0000000

C_downsampler_loop:
	ldmia r10, {r0, r1}
	add	r12, r4, r0			@ left sample #1
	adds r4, r12, r12
	eorvs r12, lr, r4, asr#31
	and	r4, r12, #0x007F0000
	and	r6, r11, r12, lsr#15

	add	r12, r5, r0, lsl#16	@ right sample #1
	adds r5, r12, r12
	eorvs r12, lr, r5, asr#31
	and	r5, r12, #0x007F0000
	and	r7, r11, r12, lsr#15

	add	r12, r4, r1			@ left sample #2
	adds r4, r12, r12
	eorvs r12, lr, r4, asr#31
	and	r4, r12, #0x007F0000
	and	r12, r11, r12, lsr#15
	orr	r6, r12, r6, lsr#8

	add	r12, r5, r1, lsl#16	@ right sample #2
	adds r5, r12, r12
	eorvs r12, lr, r5, asr#31
	and	r5, r12, #0x007F0000
	and	r12, r11, r12, lsr#15
	orr	r7, r12, r7, lsr#8

.if ENABLE_REVERB==1
	ldrsh r12, [r9, r3]!

	mov	r1, r12, asr#8
	mov	r12, r12, lsl#24
	mov	r0, r12, asr#24

	add	r9, r9, #DMA_BUFFER_SIZE    @ \ ldrsh  r12, [r9, #0x630]!
	ldrsh r12, [r9]                 @ / is unfortunately not a valid instruction

	add	r1, r1, r12, asr#8
	mov	r12, r12, lsl#24
	add	r0, r0, r12, asr#24

	ldrsh r12, [r9, -r3]!

	add	r1, r1, r12, asr#8
	mov	r12, r12, lsl#24
	add	r0, r0, r12, asr#24

	strh r6, [r9]                   @ \ strh  r6, [r9], #-0x630
	sub	r9, r9, #DMA_BUFFER_SIZE    @ / is unfortunately not a valid instruction
	ldrsh r12, [r9]
	strh r7, [r9], #2

	add	r1, r1, r12, asr#8
	mov	r12, r12, lsl#24
	add	r0, r0, r12, asr#24

	mul	r1, r2, r1
	mul	r0, r2, r0

	stmia r10!, {r0, r1}
.else /* if ENABLE_REVERB==0 */
	mov	r0, #DMA_BUFFER_SIZE
	strh r6, [r9, r0]
	strh r7, [r9], #2

	stmia r10!, {r2, r3}
.endif
	subs r8, #2
	bgt	C_downsampler_loop
	/* Switch to Thumb */
	adr	r0, (C_downsampler_return+1)
	bx r0

	.pool

	.align 1
	non_word_aligned_thumb_func_start C_downsampler_return

C_downsampler_return:
	ldr	r0, [sp, #ARG_PCM_STRUCT]
	lsrs r4, #16
	strb r4, [r0, #VAR_EXT_NOISE_SHAPE_LEFT]
	lsrs r5, #16
	strb r5, [r0, #VAR_EXT_NOISE_SHAPE_RIGHT]
	ldr	r3, =0x68736D53                     @ this is used to indicate the interrupt handler the rendering was finished properly
	str	r3, [r0]
	add	sp, sp, #0x1C
	pop	{r0-r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r11, r3
	pop	{r3}
    bx r3                                   @ Interwork

	.pool

	arm_func_start C_setup_synth

C_setup_synth:
	ldrb r12, [r3, #SYNTH_TYPE]
	cmp	r12, #0
	bne	C_check_synth_saw

	/* modulating pulse wave */
	ldrb r6, [r3, #SYNTH_WIDTH_CHANGE_1]
	add	r2, r2, r6, lsl#24
	ldrb r6, [r3, #SYNTH_WIDTH_CHANGE_2]
	adds r6, r2, r6, lsl#24
	mvnmi r6, r6
	mov	r10, r6, lsr#8
	ldrb r1, [r3, #SYNTH_MOD_AMOUNT]
	ldrb r0, [r3, #SYNTH_BASE_WAVE_DUTY]
	mov	r0, r0, lsl#24
	mla	r6, r10, r1, r0                  @ calculate the final duty cycle with the offset, and intensity * rotating duty cycle amount
	push {r2, r3, r9, r12}

C_synth_pulse_loop:
	ldmia r5, {r0-r3, r9, r10, r12, lr}   @ load 8 samples

	.irp reg, r0, r1, r2, r3, r9, r10, r12, lr  @ 8 blocks
	  cmp r7, r6
	  addlo \reg, \reg, r11, lsl#6
	  subhs	\reg, \reg, r11, lsl#6
	  adds r7, r7, r4, lsl#3
	.endr

	stmia r5!, {r0-r3, r9, r10, r12, lr} @ write 8 samples
	subs r8, r8, #8
	bgt	C_synth_pulse_loop

	pop	{r2, r3, r9, r12}
	b C_end_mixing

C_check_synth_saw:
	/*
	 * This is actually not a true saw wave
	 * but looks pretty similar
	 * (has a jump in the middle of the wave)
	 */
	subs r12, r12, #1
	bne	C_synth_triangle

	mov	r6, #0x300
	mov	r11, r11, lsr#1
	bic	r11, r11, #0xFF00
	mov	r12, #0x70

C_synth_saw_loop:

	ldmia r5, {r0, r1, r10, lr}      @ load 4 samples from memory

	.irp reg, r0, r1, r10, lr        @ 4 blocks (some oscillator type code)
	  adds r7, r7, r4, lsl#3
	  rsb r9, r12, r7, lsr#24
	  mov r6, r7, lsl#1
	  sub r9, r9, r6, lsr#27
	  adds r2, r9, r2, asr#1
	  mlane \reg, r11, r2, \reg
	.endr

	stmia r5!, {r0, r1, r10, lr}
	subs r8, r8, #4
	bgt	C_synth_saw_loop

	b C_end_mixing

C_synth_triangle:
	mov	r6, #0x80
	mov	r12, #0x180

C_synth_triangle_loop:
	ldmia r5, {r0, r1, r10, lr}      @ load samples from work buffer

	.irp reg, r0, r1, r10, lr        @ 4 blocks
	  adds r7, r7, r4, lsl#3
	  rsbpl r9, r6, r7, asr#23
	  submi r9, r12, r7, lsr#23
	  mla \reg, r11, r9, \reg
	.endr

	stmia r5!, {r0, r1, r10, lr}
	subs r8, r8, #4                  @ subtract #4 from the remaining samples
	bgt	C_synth_triangle_loop

	b C_end_mixing

/* r0: base addr
 * r1: len in bytes */
F_clear_mem:
	push {r0, r2-r5, lr}
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	mov	r5, #0
	and	lr, r1, #0x30
	rsb	lr, lr, #0x30
	add	pc, pc, lr, lsr#2
C_clear_loop:
	stmia r0!, {r2-r5}
	stmia r0!, {r2-r5}
	stmia r0!, {r2-r5}
	stmia r0!, {r2-r5}
	subs r1, r1, #0x40
	bpl	C_clear_loop
	ands r1, r1, #0xC
	popeq {r0, r2-r5, pc}
C_clear_loop_rest:
	stmia r0!, {r2}
	subs r1, r1, #4
	bgt	C_clear_loop_rest
	pop {r0, r2-r5, pc}
