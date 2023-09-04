	.include "sound/MPlayDef.s"

	.set TRUE, 1
	.set FALSE, 0

@ sFrequencyTable indexes (see src/data/gbs/note_frequency_table.h)
	enum_start 1
	enum C_ @ 1
	enum Cs @ 2
	enum D_ @ 3
	enum Ds @ 4
	enum E_ @ 5
	enum F_ @ 6
	enum Fs @ 7
	enum G_ @ 8
	enum Gs @ 9
	enum A_ @ a
	enum As @ b
	enum B_ @ c

	.equ GBS_SWITCH, 0xb6 @ switch to GBS engine
	.equ GBS_TEMPO,	 150  @ magic BPM

	.macro gbs_switch channel:req
	.byte KEYSH, 0
	.if \channel == 0
		.byte TEMPO, GBS_TEMPO/2
	.endif
	.byte GBS_SWITCH, \channel
	.endm

	.macro channel_count count:req, priority=0
	.byte \count	@ NumTrks
	.byte 0			@ NumBlks
	.byte \priority	@ Priority
	.byte 0			@ Reverb
	.word voicegroup000
	.endm

	.macro channel channel:req, label:req
	.word gbs_\label
	.endm

	.macro note pitch:req, length:req
	.byte (\pitch << 4) | (\length - 1)
	.endm

	.macro drum_note instrument:req, length:req
	note \instrument, \length
	.endm

	.macro rest length:req
	note 0, \length
	.endm

	.macro square_note length:req, volume:req, fade:req, frequency:req
	.byte \length
	.if \fade < 0
		.byte (\volume << 4) | (\fade * -1) | 0b1000 @ volume envelope
	.else
		.byte (\volume << 4) | (\fade) @ volume envelope
	.endif
	.2byte \frequency
	.endm

	.macro noise_note length:req, volume:req, fade:req, frequency:req
	.byte \length
	.if \fade < 0
		.byte (\volume << 4) | (\fade * -1) | 0b1000 @ volume envelope
	.else
		.byte (\volume << 4) | (\fade) @ volume envelope
	.endif
	.byte \frequency
	.endm

@ GBSCommands indexes (see include/gbs.h)
	enum_start 0xd0

	enum octave_cmd @ 0xd0
	.macro octave n:req
	@ assert 1 <= (\n) && (\n) <= 8, "octave must be 1-8"
    .if 1 <= (\n) && (\n) <= 8
        .byte octave_cmd + 8 - (\n)
    .else
        .byte octave_cmd
    .endif
	.endm

	enum_start 0xd8 @ skip octave values

	enum note_type_cmd @ 0xd8
	.macro note_type length:req, volume, fade_wave
	.byte note_type_cmd
	.byte \length
	.ifnb \volume
	.if \fade_wave < 0
		.byte (\volume << 4) | (\fade_wave * -1) | 0b1000 @ volume envelope
	.else
		.byte (\volume << 4) | (\fade_wave) @ volume envelope
	.endif
	.endif
	.endm

	@ only valid on the noise channel
	.macro drum_speed length:req
	note_type \length
	.endm

	enum transpose_cmd @ 0xd9
	.macro transpose num_octaves:req, num_pitches:req
	.byte transpose_cmd
	.byte (\num_octaves << 4) | (\num_pitches)
	.endm

	enum tempo_cmd @ 0xda
	.macro tempo tempo:req
	.byte tempo_cmd
	.2byte \tempo @ TODO: big endian
	.endm

	enum duty_cycle_cmd @ 0xdb
	.macro duty_cycle cycle
	.byte duty_cycle_cmd
	.byte \cycle
	.endm

	enum volume_envelope_cmd @ 0xdc
	.macro volume_envelope volume:req, fade_wave:req
	.byte volume_envelope_cmd
	.if \fade_wave < 0
		.byte (\volume << 4) | (\fade_wave * -1) | 0b1000  @ volume envelope
	.else
		.byte (\volume << 4) | (\fade_wave) @ volume envelope
	.endif
	.endm

	enum pitch_sweep_cmd @ 0xdd
	.macro pitch_sweep length:req, pitch_change:req
	.byte pitch_sweep_cmd
	.if \pitch_change < 0
		.byte (\length << 4) | (\pitch_change * -1) | 0b1000 @ pitch sweep
	.else
		.byte (\length << 4) | (\pitch_change) @ pitch sweep
	.endif
	.endm

	enum duty_cycle_pattern_cmd @ 0xde
	.macro duty_cycle_pattern a:req, b:req, c:req, d:req
	.byte duty_cycle_pattern_cmd
	.byte (\a << 6) | (\b << 4) | (\c << 2) | (\d << 0) @ duty cycle pattern
	.endm

	enum toggle_sfx_cmd @ 0xdf
	.macro toggle_sfx
	.byte toggle_sfx_cmd
	.endm

	enum pitch_slide_cmd @ 0xe0
	.macro pitch_slide duration:req, octave:req, pitch:req
	.byte pitch_slide_cmd
	.byte \duration - 1
	.byte ((8 - \octave) << 4) | (\pitch % 12)
	.endm

	enum vibrato_cmd @ 0xe1
	.macro vibrato delay:req, extent:req, rate:req
	.byte vibrato_cmd
	.byte \delay
    .byte (\extent << 4) | \rate
	.endm

	enum unknownmusic0xe2_cmd @ 0xe2
	.macro unknownmusic0xe2 unknown:req
	.byte unknownmusic0xe2_cmd
	.byte \unknown
	.endm

	enum toggle_noise_cmd @ 0xe3
	.macro toggle_noise id
	.byte toggle_noise_cmd
	.ifnb \id
		.byte \id
	.endif
	.endm

	enum force_stereo_panning_cmd @ 0xe4
	.macro force_stereo_panning left_enable:req, right_enable:req
	.byte force_stereo_panning_cmd
	.byte (0b1111 * (1 && \left_enable) << 4) | (0b1111 * (1 && \right_enable))
	.endm

	enum volume_cmd @ 0xe5
	.macro volume left_volume:req, right_volume:req
	.byte volume_cmd
	.byte (\left_volume << 4) | (\right_volume)
	.endm

	enum pitch_offset_cmd @ 0xe6
	.macro pitch_offset offset:req
	.byte pitch_offset_cmd
	.2byte \offset @ TODO: big endian
	.endm

	enum unknownmusic0xe7_cmd @ 0xe7
	.macro unknownmusic0xe7 unknown:req
	.byte unknownmusic0xe7_cmd
	.byte \unknown @ unknown
	.endm

	enum unknownmusic0xe8_cmd @ 0xe8
	.macro unknownmusic0xe8 unknown:req
	.byte unknownmusic0xe8_cmd
	.byte \unknown @ unknown
	.endm

	enum tempo_relative_cmd @ 0xe9
	.macro tempo_relative adjustment:req
	.byte tempo_relative_cmd
	.2byte \adjustment @ TODO: big endian
	.endm

	enum restart_channel_cmd @ 0xea
	.macro restart_channel address:req
	.byte restart_channel_cmd
	.4byte \address
	.endm

	enum new_song_cmd @ 0xeb
	.macro new_song id:req
	.byte new_song_cmd
	.2byte \id @ TODO: big endian
	.endm

	enum sfx_priority_on_cmd @ 0xec
	.macro sfx_priority_on
	.byte sfx_priority_on_cmd
	.endm

	enum sfx_priority_off_cmd @ 0xed
	.macro sfx_priority_off
	.byte sfx_priority_off_cmd
	.endm

	enum unknownmusic0xee_cmd @ 0xee
	.macro unknownmusic0xee address:req
	.byte unknownmusic0xee_cmd
	.4byte \address
	.endm

	enum stereo_panning_cmd @ 0xef
	.macro stereo_panning left_enable:req, right_enable:req
	.byte stereo_panning_cmd
	.byte (0b1111 * (1 && \left_enable) << 4) | (0b1111 * (1 && \right_enable))
	.endm

	enum sfx_toggle_noise_cmd @ 0xf0
	.macro sfx_toggle_noise id
	.byte sfx_toggle_noise_cmd
	.ifnb \id
		.byte \id @ drum kit
	.endif
	.endm

	enum music0xf1_cmd @ 0xf1
	.macro music0xf1
	.byte music0xf1_cmd
	.endm

	enum music0xf2_cmd @ 0xf2
	.macro music0xf2
	.byte music0xf2_cmd
	.endm

	enum music0xf3_cmd @ 0xf3
	.macro music0xf3
	.byte music0xf3_cmd
	.endm

	enum music0xf4_cmd @ 0xf4
	.macro music0xf4
	.byte music0xf4_cmd
	.endm

	enum music0xf5_cmd @ 0xf5
	.macro music0xf5
	.byte music0xf5_cmd
	.endm

	enum music0xf6_cmd @ 0xf6
	.macro music0xf6
	.byte music0xf6_cmd
	.endm

	enum music0xf7_cmd @ 0xf7
	.macro music0xf7
	.byte music0xf7_cmd
	.endm

	enum music0xf8_cmd @ 0xf8
	.macro music0xf8
	.byte music0xf8_cmd
	.endm

	enum music0xf9_cmd @ 0xf9
	.macro unknownmusic0xf9
	.byte music0xf9_cmd
	.endm

	enum set_condition_cmd @ 0xfa
	.macro set_condition condition:req
	.byte set_condition_cmd
	.byte \condition
	.endm

	enum sound_jump_if_cmd @ 0xfb
	.macro sound_jump_if condition:req, address:req
	.byte sound_jump_if_cmd
	.byte \condition
	.4byte \address
	.endm

	enum sound_jump_cmd @ 0xfc
	.macro sound_jump address:req
	.byte sound_jump_cmd
	.4byte \address
	.endm

	enum sound_loop_cmd @ 0xfd
	.macro sound_loop count:req, address:req
	.byte sound_loop_cmd
	.byte \count
	.4byte \address
	.endm

	enum sound_call_cmd @ 0xfe
	.macro sound_call address:req
	.byte sound_call_cmd
	.4byte \address
	.endm

	enum sound_ret_cmd @ 0xff
	.macro sound_ret
	.byte sound_ret_cmd
	.endm
