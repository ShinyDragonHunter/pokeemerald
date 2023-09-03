	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Sfx_Call
	.align 2

gbs_Sfx_Call:
	channel_count 1, 5
	channel 5, Sfx_Call_Ch5

	.global gbs_Sfx_NoSignal
	.align 2

gbs_Sfx_NoSignal:
	channel_count 1, 5
	channel 5, Sfx_NoSignal_Ch5

	.global gbs_Sfx_LevelUp
	.align 2

gbs_Sfx_LevelUp:
	channel_count 4, 5
	channel 5, Sfx_LevelUp_Ch5
	channel 6, Sfx_LevelUp_Ch6
	channel 7, Sfx_LevelUp_Ch7
	channel 8, Sfx_LevelUp_Ch8

gbs_Sfx_LevelUp_Ch5:
	gbs_switch 4
Sfx_LevelUp_Ch5:
	toggle_sfx
	tempo 120
	volume 7, 7
	duty_cycle 2
	note_type 8, 11, 1
	octave 3
	note B_, 2
	note B_, 2
	note B_, 2
	volume_envelope 11, 3
	octave 4
	note Gs, 12
	sound_ret

gbs_Sfx_LevelUp_Ch6:
	gbs_switch 5
Sfx_LevelUp_Ch6:
	toggle_sfx
	duty_cycle 2
	note_type 8, 12, 1
	octave 4
	note E_, 2
	note E_, 2
	note E_, 2
	volume_envelope 12, 3
	note B_, 12
	sound_ret

gbs_Sfx_LevelUp_Ch7:
	gbs_switch 6
Sfx_LevelUp_Ch7:
	toggle_sfx
	note_type 8, 2, 5
	octave 4
	note Gs, 1
	rest 1
	note Gs, 1
	rest 1
	note Gs, 1
	rest 1
	octave 5
	note E_, 5
	volume_envelope 3, 5
	note E_, 3
	rest 4
	sound_ret

gbs_Sfx_LevelUp_Ch8:
	gbs_switch 7
Sfx_LevelUp_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 12
	note C_, 12
	sound_ret

	.global gbs_Sfx_KeyItem
	.align 2

gbs_Sfx_KeyItem:
	channel_count 4, 5
	channel 5, Sfx_KeyItem_Ch5
	channel 6, Sfx_KeyItem_Ch6
	channel 7, Sfx_KeyItem_Ch7
	channel 8, Sfx_KeyItem_Ch8

gbs_Sfx_KeyItem_Ch5:
	gbs_switch 4
Sfx_KeyItem_Ch5:
	toggle_sfx
	tempo 120
	volume 7, 7
	duty_cycle 2
	note_type 6, 11, 1
	octave 3
	note B_, 4
	note B_, 2
	note B_, 2
	note B_, 4
	octave 4
	note E_, 4
	volume_envelope 11, 3
	note Gs, 16
	sound_ret

gbs_Sfx_KeyItem_Ch6:
	gbs_switch 5
Sfx_KeyItem_Ch6:
	toggle_sfx
	duty_cycle 2
	note_type 6, 12, 1
	octave 4
	note E_, 4
	note E_, 2
	note E_, 2
	note E_, 4
	note Gs, 4
	volume_envelope 12, 3
	note B_, 16
	sound_ret

gbs_Sfx_KeyItem_Ch7:
	gbs_switch 6
Sfx_KeyItem_Ch7:
	toggle_sfx
	note_type 6, 2, 5
	octave 4
	note Gs, 2
	rest 2
	note Gs, 1
	rest 1
	note Gs, 1
	rest 1
	note Gs, 2
	rest 2
	note B_, 2
	rest 2
	octave 5
	note E_, 8
	volume_envelope 3, 5
	note E_, 4
	rest 4
	sound_ret

gbs_Sfx_KeyItem_Ch8:
	gbs_switch 7
Sfx_KeyItem_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 12
	note C_, 16
	sound_ret

	.global gbs_Sfx_CaughtMon
	.align 2

gbs_Sfx_CaughtMon:
	channel_count 4, 5
	channel 5, Sfx_CaughtMon_Ch5
	channel 6, Sfx_CaughtMon_Ch6
	channel 7, Sfx_CaughtMon_Ch7
	channel 8, Sfx_CaughtMon_Ch8

gbs_Sfx_CaughtMon_Ch5:
	gbs_switch 4
Sfx_CaughtMon_Ch5:
	toggle_sfx
	tempo 112
	volume 7, 7
	vibrato 8, 2, 7
	duty_cycle 2
	note_type 8, 11, 3
	octave 4
	note C_, 6
	octave 3
	note A_, 6
	note F_, 12
	volume_envelope 11, 1
	octave 4
	note Ds, 2
	note Ds, 2
	note Ds, 2
	note Ds, 2
	note Ds, 2
	note G_, 2
	volume_envelope 11, 3
	note F_, 12
	sound_ret


gbs_Sfx_CaughtMon_Ch6:
	gbs_switch 5
Sfx_CaughtMon_Ch6:
	toggle_sfx
	duty_cycle 2
	vibrato 8, 2, 7
	note_type 8, 12, 3
	octave 4
	note A_, 6
	note F_, 6
	note C_, 12
	volume_envelope 12, 1
	note As, 2
	note As, 2
	note As, 2
	note G_, 2
	note G_, 2
	note As, 2
	volume_envelope 12, 3
	note A_, 12
	sound_ret


gbs_Sfx_CaughtMon_Ch7:
	gbs_switch 6
Sfx_CaughtMon_Ch7:
	toggle_sfx
	note_type 8, 2, 5
	octave 3
	note C_, 12
	note C_, 6
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note F_, 2
	note G_, 6
	note As, 6
	note A_, 6
	volume_envelope 3, 5
	note A_, 3
	rest 3
	sound_ret


gbs_Sfx_CaughtMon_Ch8:
	gbs_switch 7
Sfx_CaughtMon_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 12
	note C_, 16
	rest 16
	sound_ret


	.global gbs_Sfx_GetEgg
	.align 2

gbs_Sfx_GetEgg:
	channel_count 4, 5
	channel 5, Sfx_GetEgg_Ch5
	channel 6, Sfx_GetEgg_Ch6
	channel 7, Sfx_GetEgg_Ch7
	channel 8, Sfx_GetEgg_Ch8

gbs_Sfx_GetEgg_Ch5:
	gbs_switch 4
Sfx_GetEgg_Ch5:
	toggle_sfx
	tempo 120
	volume 7, 7
	vibrato 18, 3, 4
	duty_cycle 2
	note_type 8, 10, 1
	rest 2
	octave 3
	note C_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	note As, 2
	octave 4
	note D_, 2
	volume_envelope 10, 2
	note F_, 6
	volume_envelope 10, 1
	duty_cycle 3
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	volume_envelope 10, 4
	note F_, 9
	sound_ret


gbs_Sfx_GetEgg_Ch6:
	gbs_switch 5
Sfx_GetEgg_Ch6:
	toggle_sfx
	vibrato 18, 3, 4
	duty_cycle 3
	note_type 8, 12, 2
	rest 2
	octave 4
	note F_, 2
	rest 2
	note A_, 2
	volume_envelope 12, 1
	note As, 2
	note A_, 2
	note As, 2
	volume_envelope 12, 2
	octave 5
	note C_, 6
	volume_envelope 12, 1
	octave 4
	note C_, 2
	note E_, 2
	note G_, 2
	volume_envelope 12, 4
	note A_, 9
	sound_ret


gbs_Sfx_GetEgg_Ch7:
	gbs_switch 6
Sfx_GetEgg_Ch7:
	toggle_sfx
	note_type 8, 2, 5
	rest 2
	octave 3
	note C_, 6
	octave 2
	note As, 6
	octave 3
	note C_, 2
	note F_, 2
	note G_, 2
	note As, 6
	note A_, 9
	sound_ret


gbs_Sfx_GetEgg_Ch8:
	gbs_switch 7
Sfx_GetEgg_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 8
	rest 2
	drum_speed 12
	rest 16
	rest 3
	sound_ret


gbs_Sfx_Call_Ch5:
	gbs_switch 4
Sfx_Call_Ch5:
	pitch_sweep 6, 7
	square_note 4, 15, 7, 1952
	square_note 4, 15, 7, 1952
	square_note 4, 15, 7, 1952
	square_note 4, 15, 7, 1952
	square_note 4, 15, 7, 1952
	pitch_sweep 0, 8
	square_note 4, 0, 0, 0
	sound_ret

gbs_Sfx_NoSignal_Ch5:
	gbs_switch 4
Sfx_NoSignal_Ch5:
	duty_cycle 2
	square_note 20, 14, 8, 1803
	square_note 28, 0, 0, 0
	sound_ret
