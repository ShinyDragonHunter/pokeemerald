	.include "asm/macros.inc"

	.section .rodata
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

	.global gbs_Sfx_Item
	.align 2

gbs_Sfx_Item:
	channel_count 4, 5
	channel 5, Sfx_Item_Ch5
	channel 6, Sfx_Item_Ch6
	channel 7, Sfx_Item_Ch7
	channel 8, Sfx_Item_Ch8

gbs_Sfx_Item_Ch5:
	gbs_switch 4
Sfx_Item_Ch5:
	toggle_sfx
	tempo 108
	volume 7, 7
	vibrato 8, 2, 7
	duty_cycle 2
	note_type 8, 11, 2
	octave 4
	note C_, 6
	note C_, 2
	note F_, 2
	note C_, 2
	note G_, 4
	note G_, 4
	note G_, 4
	note F_, 12
	sound_ret

gbs_Sfx_Item_Ch6:
	gbs_switch 5
Sfx_Item_Ch6:
	toggle_sfx
	vibrato 8, 2, 7
	duty_cycle 2
	note_type 8, 12, 3
	octave 4
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 4
	note As, 4
	note As, 4
	note A_, 12
	sound_ret

gbs_Sfx_Item_Ch7:
	gbs_switch 6
Sfx_Item_Ch7:
	toggle_sfx
	note_type 8, 2, 5
	octave 4
	note F_, 4
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 6
	volume_envelope 3, 5
	note F_, 4
	rest 2
	sound_ret

gbs_Sfx_Item_Ch8:
	gbs_switch 7
Sfx_Item_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 12
	note C_, 16
	rest 4
	sound_ret

	.global gbs_Sfx_GetTm
	.align 2

gbs_Sfx_GetTm:
	channel_count 4, 5
	channel 5, Sfx_GetTm_Ch5
	channel 6, Sfx_GetTm_Ch6
	channel 7, Sfx_GetTm_Ch7
	channel 8, Sfx_GetTm_Ch8

gbs_Sfx_GetTm_Ch5:
	gbs_switch 4
Sfx_GetTm_Ch5:
	toggle_sfx
	tempo 144
	volume 7, 7
	duty_cycle 3
	vibrato 8, 2, 4
	note_type 12, 10, 3
	octave 4
	note D_, 1
	rest 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	note G_, 6
	volume_envelope 11, 1
	note E_, 2
	note Fs, 2
	note G_, 2
	volume_envelope 10, 5
	note Fs, 8
	sound_ret


gbs_Sfx_GetTm_Ch6:
	gbs_switch 5
Sfx_GetTm_Ch6:
	toggle_sfx
	duty_cycle 3
	vibrato 8, 2, 4
	note_type 12, 11, 3
	octave 4
	note G_, 1
	rest 1
	note D_, 1
	note G_, 1
	note B_, 6
	volume_envelope 12, 1
	note A_, 2
	note B_, 2
	octave 5
	note C_, 2
	volume_envelope 11, 5
	note D_, 8
	sound_ret

gbs_Sfx_GetTm_Ch7:
	gbs_switch 6
Sfx_GetTm_Ch7:
	toggle_sfx
	note_type 6, 2, 5
	octave 2
	note B_, 2
	rest 2
	note G_, 2
	note B_, 2
	octave 3
	note D_, 4
	octave 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 4
	octave 3
	note C_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note C_, 4
	octave 2
	note A_, 16
	sound_ret


gbs_Sfx_GetTm_Ch8:
	gbs_switch 7
Sfx_GetTm_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 6
	note D_, 4
	note Cs, 2
	note D_, 2
	note B_, 8
	note D_, 4
	note Cs, 4
	note D_, 4
	note Cs, 1
	note Cs, 1
	note D_, 2
	note B_, 16
	sound_ret


	.global gbs_Sfx_GetBadge
	.align 2

gbs_Sfx_GetBadge:
	channel_count 4, 5
	channel 5, Sfx_GetBadge_Ch5
	channel 6, Sfx_GetBadge_Ch6
	channel 7, Sfx_GetBadge_Ch7
	channel 8, Sfx_GetBadge_Ch8

gbs_Sfx_GetBadge_Ch5:
	gbs_switch 4
Sfx_GetBadge_Ch5:
	toggle_sfx
	tempo 120
	volume 7, 7
	duty_cycle 2
	vibrato 8, 2, 4
	note_type 6, 9, 2
	octave 4
	note F_, 3
	sound_call Sfx_GetBadge_Ch5.sub1
	note As, 3
	transpose 0, 2
	sound_call Sfx_GetBadge_Ch5.sub1
	transpose 0, 0
	volume_envelope 10, 7
	note A_, 16
	rest 6
	sound_ret


Sfx_GetBadge_Ch5.sub1:
	rest 5
	octave 3
	note F_, 2
	note Gs, 2
	octave 4
	note Cs, 2
	note F_, 2
	note Cs, 2
	octave 3
	note F_, 2
	note Gs, 2
	octave 4
	note Cs, 2
	octave 3
	note F_, 2
	note Gs, 2
	octave 4
	note Cs, 2
	note F_, 2
	sound_ret

gbs_Sfx_GetBadge_Ch6:
	gbs_switch 5
Sfx_GetBadge_Ch6:
	toggle_sfx
	duty_cycle 3
	vibrato 8, 2, 4
	note_type 6, 11, 5
	octave 5
	note Cs, 3
	rest 3
	octave 4
	note Gs, 1
	rest 1
	note Gs, 8
	octave 3
	note Cs, 2
	rest 2
	octave 2
	note Gs, 2
	rest 1
	volume_envelope 9, 5
	octave 5
	note C_, 1
	volume_envelope 11, 5
	note Cs, 2
	rest 2
	note D_, 2
	rest 2
	note Ds, 3
	rest 3
	octave 4
	note As, 1
	rest 1
	note As, 8
	octave 3
	note Ds, 2
	rest 2
	octave 2
	note As, 2
	rest 1
	volume_envelope 9, 5
	octave 5
	note D_, 1
	volume_envelope 11, 5
	note Ds, 8
	note F_, 16
	rest 6
	sound_ret


gbs_Sfx_GetBadge_Ch7:
	gbs_switch 6
Sfx_GetBadge_Ch7:
	toggle_sfx
	note_type 6, 2, 5
	octave 2
	note Gs, 3
	rest 3
	octave 3
	note Cs, 1
	rest 1
	note Cs, 8
	note Gs, 2
	rest 2
	note F_, 2
	rest 2
	note Cs, 2
	note C_, 2
	octave 2
	note As, 2
	note Gs, 2
	note G_, 3
	rest 3
	octave 3
	note Ds, 1
	rest 1
	note Ds, 8
	note As, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	note F_, 2
	note G_, 2
	note Ds, 2
	note F_, 16
	rest 6
	sound_ret


gbs_Sfx_GetBadge_Ch8:
	gbs_switch 7
Sfx_GetBadge_Ch8:
	toggle_sfx
	sfx_toggle_noise 4
	drum_speed 6
Sfx_GetBadge_Ch8.loop1:
	note B_, 12
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 4
	note D_, 4
	note D_, 1
	note Cs, 1
	note Cs, 1
	note Cs, 1
	note Cs, 1
	note Cs, 1
	note Cs, 1
	note Cs, 1
	sound_loop 2, Sfx_GetBadge_Ch8.loop1
	note B_, 16
	rest 6
	sound_ret

