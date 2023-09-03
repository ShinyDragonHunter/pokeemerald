/* HQ-Mixer rev 4.0 created by ipatix (c) 2021
 * licensed under GPLv3, see LICENSE.txt for details */

	/**********************
	 * CONFIGURATION AREA *
	 **********************/

	.equ hq_buffer_ptr, SoundMainRAM_MixBuffer   @ <-- set this to an IWRAM address where you want your high quality mix buffer to be
	.equ POKE_CHN_INIT, 1                        @ <-- set to '1' for pokemon games, '0' for other games
	.equ ENABLE_STEREO, 1                        @ <-- TODO actually implement, not functional yet
	.equ ENABLE_REVERB, 1                        @ <-- if you want faster code or don't like reverb, set this to '0', set to '1' otherwise
	.equ ENABLE_DMA, 1                           @ <-- Using DMA produces smaller code and has better performance. Disable it if your case does not allow to use DMA.

	/*****************
	 * END OF CONFIG *
	 *****************/

	/* NO USER SERVICABLE CODE BELOW HERE! YOU HAVE BEEN WARNED */

	.syntax unified
	.cpu arm7tdmi

	.equ DMA_BUFFER_SIZE, PCM_DMA_BUF_SIZE

	.equ FRAME_LENGTH_5734, 0x60
	.equ FRAME_LENGTH_7884, 0x84             @ THIS MODE IS NOT SUPPORTED BY THIS ENGINE BECAUSE IT DOESN'T USE AN 8 ALIGNED BUFFER LENGTH
	.equ FRAME_LENGTH_10512, 0xB0
	.equ FRAME_LENGTH_13379, 0xE0            @ DEFAULT
	.equ FRAME_LENGTH_15768, 0x108
	.equ FRAME_LENGTH_18157, 0x130
	.equ FRAME_LENGTH_21024, 0x160
	.equ FRAME_LENGTH_26758, 0x1C0
	.equ FRAME_LENGTH_31536, 0x210
	.equ FRAME_LENGTH_36314, 0x260
	.equ FRAME_LENGTH_40137, 0x2A0
	.equ FRAME_LENGTH_42048, 0x2C0

	/* stack variables */
	.equ ARG_FRAME_LENGTH, 0x0               @ Number of samples per frame/buffer
	.equ ARG_REMAIN_CHN, 0x4                 @ temporary to count down the channels to process
	.equ ARG_BUFFER_POS, 0x8                 @ stores the current output buffer pointer
	.equ ARG_LOOP_START_POS, 0xC             @ stores wave loop start position in channel loop
	.equ ARG_LOOP_LENGTH, 0x10               @   ''    ''   ''  end position
	.equ ARG_BUFFER_POS_INDEX_HINT, 0x14     @ if this value is == 2, then this is the last buffer before wraparound
	.equ ARG_PCM_STRUCT, 0x18                @ pointer to engine the main work area

	/* channel struct */
	.equ CHN_STATUS, o_SoundChannel_statusFlags              @ [byte] channel status bitfield
	.equ CHN_MODE, o_SoundChannel_type                       @ [byte] channel mode bitfield
	.equ CHN_VOL_1, o_SoundChannel_rightVolume               @ [byte] volume right
	.equ CHN_VOL_2, o_SoundChannel_leftVolume                @ [byte] volume left
	.equ CHN_ATTACK, o_SoundChannel_attack                   @ [byte] wave attack summand
	.equ CHN_DECAY, o_SoundChannel_decay                     @ [byte] wave decay factor
	.equ CHN_SUSTAIN, o_SoundChannel_sustain                 @ [byte] wave sustain level
	.equ CHN_RELEASE, o_SoundChannel_release                 @ [byte] wave release factor
	.equ CHN_ADSR_LEVEL, o_SoundChannel_envelopeVolume       @ [byte] current envelope level
	.equ CHN_FINAL_VOL_1, o_SoundChannel_envelopeVolumeRight @ [byte] not used anymore!
	.equ CHN_FINAL_VOL_2, o_SoundChannel_envelopeVolumeLeft  @ [byte] not used anymore!
	.equ CHN_ECHO_VOL, o_SoundChannel_pseudoEchoVolume       @ [byte] pseudo echo volume
	.equ CHN_ECHO_REMAIN, o_SoundChannel_pseudoEchoLength    @ [byte] pseudo echo length
	.equ CHN_SAMPLE_COUNTDOWN, o_SoundChannel_count          @ [word] sample countdown in mixing loop
	.equ CHN_FINE_POSITION, o_SoundChannel_fw                @ [word] inter sample position (23 bits)
	.equ CHN_FREQUENCY, o_SoundChannel_frequency             @ [word] sample rate (in Hz)
	.equ CHN_WAVE_OFFSET, o_SoundChannel_wav                 @ [word] wave header pointer
	.equ CHN_POSITION_ABS, o_SoundChannel_currentPointer     @ [word] points to the current position in the wave data (relative offset for compressed samples)
	.equ CHN_SAMPLE_STOR, o_SoundChannel_xpc+1               @ [byte] contains the previously loaded sample from the linear interpolation

	/* wave header struct */
	.equ WAVE_TYPE, o_WaveData_type          @ [byte] 0x0 = 8 bit pcm, 0x1 = pokemon dpcm
	.equ WAVE_LOOP_FLAG, o_WaveData_flags    @ [byte] 0x0 = oneshot; 0x40 = looped / 0x3
	.equ WAVE_FREQ, o_WaveData_freq          @ [word] pitch adjustment value = mid-C samplerate * 1024
	.equ WAVE_LOOP_START, o_WaveData_loopStart @ [word] loop start position
	.equ WAVE_LENGTH, o_WaveData_size        @ [word] loop end / wave end position
	.equ WAVE_DATA, o_WaveData_data          @ [byte array] actual wave data

	/* pulse wave synth configuration offset */
	.equ SYNTH_TYPE, 0x1                     @ [byte]
	.equ SYNTH_BASE_WAVE_DUTY, 0x2           @ [byte]
	.equ SYNTH_WIDTH_CHANGE_1, 0x3           @ [byte]
	.equ SYNTH_MOD_AMOUNT, 0x4               @ [byte]
	.equ SYNTH_WIDTH_CHANGE_2, 0x5           @ [byte]

    /* CHN_STATUS flags - 0x0 = OFF */
	.equ FLAG_CHN_INIT, SOUND_CHANNEL_SF_START          @ [bit] write this value to init a channel
	.equ FLAG_CHN_RELEASE, SOUND_CHANNEL_SF_STOP        @ [bit] write this value to release (fade out) the channel
	.equ FLAG_CHN_LOOP, SOUND_CHANNEL_SF_LOOP           @ [bit] loop (yes/no)
	.equ FLAG_CHN_ECHO, SOUND_CHANNEL_SF_IEC            @ [bit] echo phase
	.equ FLAG_CHN_ATTACK, SOUND_CHANNEL_SF_ENV_ATTACK   @ [bit] attack phase
	.equ FLAG_CHN_DECAY, SOUND_CHANNEL_SF_ENV_DECAY     @ [bit] decay phase
	.equ FLAG_CHN_SUSTAIN, SOUND_CHANNEL_SF_ENV_SUSTAIN	@ [bit] sustain phase

	/* CHN_MODE flags */
	.equ MODE_FIXED_FREQ, TONEDATA_TYPE_FIX	 @ [bit] set to disable resampling (i.e. playback with output rate)
	.equ MODE_REVERSE, TONEDATA_TYPE_REV     @ [bit] set to reverse sample playback
	.equ MODE_COMP, TONEDATA_TYPE_CMP        @ [bit] is wave being played compressed
	.equ MODE_SYNTH, TONEDATA_TYPE_SPL       @ [bit] channel is a synth channel

	.equ MODE_FLGSH_SIGN_REVERSE, 27         @ shift by n bits to get the reverse flag into SIGN

	/* variables of the engine work area */
	.equ VAR_REVERB, 0x5                     @ [byte] 0-127 = reverb level
	.equ VAR_MAX_CHN, 0x6                    @ [byte] maximum channels to process
	.equ VAR_MASTER_VOL, 0x7                 @ [byte] PCM master volume
	.equ VAR_EXT_NOISE_SHAPE_LEFT, 0xE       @ [byte] normally unused, used here for noise shaping
	.equ VAR_EXT_NOISE_SHAPE_RIGHT, 0xF      @ [byte] normally unused, used here for noise shaping
	.equ VAR_DEF_PITCH_FAC, 0x18             @ [word] this value gets multiplied with the samplerate for the inter sample distance
	.equ VAR_FIRST_CHN, 0x50                 @ [CHN struct] relative offset to channel array
	.equ VAR_PCM_BUFFER, 0x350

	/* just some more defines */
	.equ REG_DMA3_SRC, 0x040000D4
	.equ ARM_OP_LEN, 0x4

	/* extensions */
	.equ BDPCM_BLK_STRIDE, 0x21
	.equ BDPCM_BLK_SIZE, 0x40
	.equ BDPCM_BLK_SIZE_MASK, 0x3F
	.equ BDPCM_BLK_SIZE_SHIFT, 0x6
