	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_DrakeBattle
	.align 2

@ Pokémon Anime Sound Collection Pokémon Gym Version 2 (G/S/C version)
@ Demixed by Regen for Pokémon Orange, ported to GBS by ShinyDragonHunter
@ https://github.com/PiaCarrot/pokeorange/blob/master/audio/music/drakebattle.asm

gbs_Music_DrakeBattle:
	channel_count 4
	channel 1, Music_DrakeBattle_Ch1
	channel 2, Music_DrakeBattle_Ch2
	channel 3, Music_DrakeBattle_Ch3
	channel 4, Music_DrakeBattle_Ch4

gbs_Music_DrakeBattle_Ch1:
	gbs_switch 0
Music_DrakeBattle_Ch1:
	tempo 120
	volume 7, 7
	duty_cycle 1
	pitch_offset 1
	vibrato 16, 2, 4
	octave 3
	note_type 12, 12, 2
	note G_, 1
	note E_, 1
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	note E_, 1
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note F_, 1
	note D_, 1
	octave 2
	note As, 1
	octave 3
	note As, 1
	note F_, 1
	note D_, 1
	octave 2
	note As, 1
	octave 3
	note As, 1
	note E_, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	note E_, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	volume_envelope 12, 5
	note F_, 4
	note G_, 4
	volume_envelope 10, 5
	note E_, 4
	octave 2
	note G_, 2
	octave 3
	note C_, 4
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	note E_, 2
	note D_, 2
	octave 2
	note As, 2
	note G_, 2
	volume_envelope 10, 2
	octave 3
	note F_, 2
	rest 2
	octave 2
	note As, 2
	volume_envelope 10, 5
	octave 3
	note D_, 2
	note F_, 2
	note G_, 4
	note C_, 2
	note E_, 4
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note D_, 2
	octave 2
	note As, 2
	volume_envelope 10, 2
	octave 3
	note As, 2
	rest 2
	volume_envelope 10, 5
	note D_, 2
	note F_, 2
	note G_, 2
Music_DrakeBattle_Ch1_loop:
	note_type 12, 10, 5
	octave 3
	note E_, 4
	note F_, 2
	note G_, 2
	note F_, 1
	rest 1
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	rest 1
	note E_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	note F_, 1
	rest 1
	note E_, 1
	note F_, 1
	note D_, 2
	note C_, 2
	note D_, 1
	rest 1
	note D_, 1
	note E_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 1
	rest 1
	note F_, 2
	volume_envelope 10, 2
	note As, 1
	rest 2
	note F_, 1
	volume_envelope 10, 5
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 1
	rest 1
	note F_, 2
	volume_envelope 10, 2
	note D_, 1
	rest 1
	volume_envelope 10, 5
	note D_, 1
	note E_, 1
	note F_, 4
	note As, 2
	note F_, 1
	note D_, 1
	note A_, 2
	note F_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	volume_envelope 10, 2
	note F_, 1
	rest 1
	volume_envelope 10, 5
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	rest 1
	note E_, 1
	note F_, 4
	duty_cycle 0
	volume_envelope 10, 2
	octave 4
	note F_, 1
	rest 2
	volume_envelope 10, 1
	note D_, 1
	volume_envelope 10, 5
	note D_, 4
	duty_cycle 1
	octave 3
	note E_, 4
	note F_, 2
	note G_, 2
	note F_, 1
	rest 1
	note E_, 1
	note F_, 1
	note D_, 2
	note C_, 2
	note D_, 1
	note E_, 1
	note F_, 5
	rest 1
	duty_cycle 0
	volume_envelope 10, 2
	octave 4
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	duty_cycle 1
	volume_envelope 10, 5
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 1
	rest 1
	note F_, 2
	volume_envelope 10, 2
	note As, 1
	rest 2
	note F_, 1
	volume_envelope 10, 5
	note F_, 4
	volume_envelope 10, 2
	octave 4
	note D_, 1
	rest 2
	octave 3
	note As, 1
	volume_envelope 10, 5
	note As, 4
	octave 4
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 1
	rest 1
	note F_, 2
	note D_, 1
	rest 1
	note D_, 1
	note E_, 1
	note G_, 4
	rest 2
	note As, 2
	rest 1
	note B_, 3
	volume_envelope 10, 2
	note E_, 1
	rest 1
	volume_envelope 10, 5
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note C_, 1
	note D_, 1
	note E_, 5
	rest 1
	note C_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 2
	note Gs, 4
	octave 3
	note C_, 4
	octave 2
	note As, 4
	octave 3
	note D_, 4
	volume_envelope 10, 2
	note E_, 1
	rest 1
	volume_envelope 10, 5
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	volume_envelope 10, 2
	note C_, 1
	rest 1
	volume_envelope 10, 5
	note C_, 2
	note D_, 2
	note E_, 3
	rest 1
	note E_, 2
	note F_, 2
	note G_, 3
	rest 1
	note A_, 2
	note As, 4
	octave 4
	note C_, 8
	octave 3
	note Gs, 2
	note Ds, 2
	note C_, 2
	note Ds, 4
	note Gs, 2
	note Ds, 2
	note C_, 2
	note Fs, 2
	note Cs, 2
	octave 2
	note As, 2
	octave 3
	note Cs, 4
	note Ds, 2
	note Fs, 4
	note G_, 2
	note D_, 2
	note C_, 2
	octave 2
	note B_, 4
	octave 3
	note C_, 2
	note D_, 2
	note F_, 4
	note C_, 2
	note F_, 2
	note D_, 4
	note C_, 2
	volume_envelope 10, 7
	note F_, 4
	volume_envelope 10, 5
	note G_, 2
	note D_, 2
	note C_, 2
	octave 2
	note B_, 4
	octave 3
	note D_, 2
	note G_, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note As, 4
	note A_, 2
	note G_, 2
	note E_, 2
	volume_envelope 10, 3
	note C_, 2
	volume_envelope 8, 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	volume_envelope 9, 5
	octave 4
	note G_, 2
	note A_, 2
	volume_envelope 9, 2
	octave 5
	note D_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	volume_envelope 8, 2
	note D_, 1
	rest 1
	volume_envelope 8, 1
	octave 3
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	volume_envelope 8, 8
	note C_, 2
	volume_envelope 10, 8
	pitch_slide 1, 4, Cs
	note C_, 2
	octave 4
	note C_, 2
	volume_envelope 8, 1
	octave 3
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	volume_envelope 9, 2
	octave 5
	note D_, 1
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	volume_envelope 10, 5
	octave 3
	note F_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	note G_, 2
	note Gs, 2
	note G_, 2
	note Gs, 2
	note As, 4
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note As, 2
	octave 4
	note C_, 6
	octave 3
	note G_, 6
	note D_, 2
	note Ds, 8
	rest 2
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	note E_, 6
	rest 2
	octave 2
	note Gs, 4
	rest 2
	octave 3
	note F_, 10
	note F_, 4
	note G_, 4
	sound_loop 0, Music_DrakeBattle_Ch1_loop

gbs_Music_DrakeBattle_Ch2:
	gbs_switch 1
Music_DrakeBattle_Ch2:
	pitch_offset 2
	vibrato 16, 2, 4
	octave 5
	note_type 12, 13, 8
	note C_, 4
	volume_envelope 13, 4
	note C_, 2
	volume_envelope 13, 2
	octave 4
	note G_, 1
	octave 5
	note C_, 1
	volume_envelope 13, 8
	octave 4
	note As, 4
	volume_envelope 13, 4
	note As, 2
	volume_envelope 13, 2
	note F_, 1
	note As, 1
	volume_envelope 13, 8
	note A_, 4
	volume_envelope 13, 4
	note A_, 4
	note A_, 4
	note B_, 4
	volume_envelope 13, 8
	octave 5
	note C_, 8
	volume_envelope 13, 4
	note C_, 6
	volume_envelope 11, 4
	octave 4
	note F_, 6
	note E_, 2
	rest 4
	note D_, 6
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 11, 7
	note E_, 6
	rest 6
	volume_envelope 11, 4
	note F_, 6
	note E_, 2
	rest 4
	note G_, 6
Music_DrakeBattle_Ch2_loop:
	duty_cycle 1
	note_type 12, 12, 8
	octave 4
	note C_, 8
	volume_envelope 12, 4
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 12, 4
	octave 3
	note As, 1
	volume_envelope 12, 8
	note As, 6
	volume_envelope 12, 4
	note As, 4
	rest 2
	volume_envelope 12, 8
	octave 4
	note C_, 8
	volume_envelope 12, 4
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note As, 1
	rest 1
	note As, 1
	octave 4
	note C_, 1
	volume_envelope 12, 8
	note D_, 6
	volume_envelope 12, 4
	note D_, 4
	rest 2
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 2
	rest 1
	volume_envelope 12, 1
	note D_, 1
	volume_envelope 12, 4
	note D_, 4
	note As, 2
	rest 1
	volume_envelope 12, 1
	note F_, 1
	volume_envelope 12, 4
	note F_, 4
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 2
	note D_, 1
	note F_, 1
	volume_envelope 12, 8
	note As, 6
	volume_envelope 12, 4
	note As, 4
	rest 2
	duty_cycle 0
	volume_envelope 12, 8
	note C_, 6
	volume_envelope 12, 4
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note E_, 2
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 12, 1
	octave 3
	note As, 1
	volume_envelope 12, 8
	note As, 6
	volume_envelope 12, 4
	note As, 4
	rest 2
	volume_envelope 12, 8
	octave 4
	note C_, 8
	volume_envelope 12, 4
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note As, 1
	octave 4
	note C_, 1
	volume_envelope 12, 8
	note D_, 8
	volume_envelope 12, 4
	note D_, 6
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 2
	rest 1
	volume_envelope 12, 1
	note D_, 1
	volume_envelope 12, 4
	note D_, 4
	note As, 2
	rest 1
	volume_envelope 12, 1
	note F_, 1
	volume_envelope 12, 4
	note F_, 4
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 1
	rest 1
	note D_, 1
	note F_, 1
	volume_envelope 12, 8
	note G_, 6
	volume_envelope 12, 4
	note G_, 4
	rest 2
	octave 3
	note G_, 6
	octave 4
	note C_, 6
	octave 3
	note G_, 4
	note As, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 1
	note F_, 1
	note G_, 6
	rest 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note As, 4
	note Gs, 4
	note G_, 4
	note F_, 4
	note G_, 6
	octave 4
	note C_, 6
	octave 3
	note G_, 4
	note As, 4
	note A_, 4
	note G_, 4
	note F_, 4
	rest 2
	volume_envelope 12, 6
	note E_, 2
	note F_, 2
	note G_, 3
	rest 1
	note G_, 2
	note A_, 2
	note As, 3
	rest 1
	octave 4
	note C_, 2
	volume_envelope 12, 4
	note D_, 4
	volume_envelope 12, 8
	note E_, 4
	volume_envelope 12, 4
	note E_, 4
	note_type 9, 12, 4
	rest 2
	vibrato 0, 2, 2
	note_type 6, 12, 8
	note E_, 1
	note F_, 4
	note Ds, 4
	note C_, 8
	octave 3
	note Gs, 4
	note Ds, 4
	note C_, 4
	note Cs, 4
	note Fs, 4
	note As, 4
	octave 4
	note Cs, 8
	volume_envelope 12, 4
	note Cs, 8
	rest 3
	volume_envelope 12, 8
	octave 3
	note As, 1
	note B_, 8
	volume_envelope 12, 4
	note B_, 4
	volume_envelope 12, 8
	note G_, 12
	volume_envelope 12, 4
	note G_, 12
	rest 8
	volume_envelope 12, 8
	octave 4
	note Gs, 2
	note A_, 6
	volume_envelope 12, 4
	note A_, 8
	note G_, 2
	note F_, 2
	volume_envelope 12, 8
	note G_, 8
	volume_envelope 12, 7
	note G_, 12
	volume_envelope 12, 8
	note E_, 12
	note G_, 4
	note E_, 8
	note D_, 2
	volume_envelope 12, 4
	note C_, 2
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 4
	note E_, 8
	note C_, 4
	rest 16
	duty_cycle 1
	volume_envelope 12, 2
	vibrato 16, 2, 4
	octave 3
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	octave 4
	note C_, 2
	rest 1
	note Cs, 1
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	octave 4
	note F_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note C_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	note A_, 2
	note B_, 2
	volume_envelope 12, 8
	vibrato 16, 2, 2
	note G_, 12
	volume_envelope 12, 4
	vibrato 0, 2, 2
	note G_, 12
	note_type 15, 12, 4
	rest 8
	vibrato 16, 2, 4
	note_type 12, 12, 4
	note G_, 2
	note A_, 2
	note B_, 2
	volume_envelope 12, 2
	octave 4
	note C_, 1
	rest 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 2
	note A_, 1
	note B_, 1
	volume_envelope 12, 8
	note A_, 2
	volume_envelope 12, 4
	vibrato 0, 2, 2
	note A_, 4
	rest 4
	volume_envelope 12, 2
	vibrato 16, 2, 4
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note C_, 1
	note_type 6, 12, 2
	rest 1
	note Cs, 1
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	octave 4
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note A_, 2
	rest 1
	note Fs, 1
	volume_envelope 12, 8
	vibrato 16, 2, 2
	note G_, 16
	volume_envelope 12, 4
	vibrato 0, 2, 2
	note G_, 8
	rest 12
	duty_cycle 0
	vibrato 16, 2, 4
	octave 3
	note G_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 4
	volume_envelope 12, 8
	note D_, 8
	volume_envelope 12, 4
	note D_, 8
	rest 4
	note Ds, 4
	note D_, 4
	note Ds, 4
	note F_, 8
	note Cs, 4
	note F_, 4
	note Gs, 4
	volume_envelope 12, 8
	note G_, 16
	volume_envelope 12, 4
	note G_, 8
	rest 4
	volume_envelope 12, 7
	note G_, 6
	note F_, 6
	note Ds, 6
	volume_envelope 12, 8
	octave 3
	note As, 6
	volume_envelope 12, 4
	note As, 8
	rest 4
	note B_, 6
	octave 4
	note E_, 6
	note Gs, 4
	volume_envelope 12, 8
	note B_, 2
	octave 5
	note Cs, 2
	octave 4
	note B_, 6
	volume_envelope 12, 2
	note B_, 6
	volume_envelope 12, 8
	note F_, 8
	volume_envelope 12, 4
	note F_, 8
	duty_cycle 1
	octave 3
	note A_, 8
	note B_, 8
	sound_loop 0, Music_DrakeBattle_Ch2_loop

gbs_Music_DrakeBattle_Ch3:
	gbs_switch 2
Music_DrakeBattle_Ch3:
	duty_cycle 4
	octave 3
	note_type 15, 1, 4
	note C_, 4
	note_type 12, 1, 4
	rest 1
	note C_, 1
	rest 1
	note C_, 5
	rest 1
	note C_, 1
	rest 1
	octave 2
	note A_, 5
	rest 1
	note A_, 1
	rest 1
	note A_, 4
	note B_, 4
	octave 3
	note C_, 2
	note E_, 2
	note G_, 2
	note C_, 4
	note E_, 2
	note G_, 2
	note C_, 2
	octave 2
	note As, 2
	note G_, 2
	note F_, 2
	note G_, 4
	note As, 2
	note A_, 2
	note As, 2
	octave 3
	note C_, 2
	note E_, 2
	note G_, 2
	note C_, 4
	note E_, 2
	note G_, 2
	note C_, 4
	octave 2
	note G_, 2
	octave 3
	note E_, 2
	note C_, 2
	octave 2
	note As, 2
	note G_, 2
	note F_, 2
	note G_, 2
Music_DrakeBattle_Ch3_loop:
	note_type 12, 1, 4
	octave 3
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	rest 1
	octave 3
	note F_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 1
	rest 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	rest 1
	octave 3
	note F_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note As, 4
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	rest 1
	octave 3
	note F_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	rest 1
	note F_, 1
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 1
	note E_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 1
	rest 1
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	rest 1
	octave 3
	note F_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 1
	rest 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 1
	octave 3
	note E_, 1
	note F_, 2
	note E_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note As, 4
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	rest 1
	octave 3
	note F_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 2
	rest 1
	note F_, 1
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note As, 2
	octave 3
	note F_, 1
	note E_, 1
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note As, 2
	octave 3
	note F_, 2
	note G_, 2
	note C_, 2
	note G_, 1
	rest 1
	note C_, 2
	note G_, 4
	note C_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 4
	note F_, 2
	note As, 2
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note C_, 2
	note G_, 4
	note C_, 2
	note F_, 2
	note G_, 2
	octave 2
	note Gs, 2
	octave 3
	note C_, 2
	note Ds, 2
	octave 2
	note Gs, 2
	note As, 2
	octave 3
	note D_, 2
	note F_, 2
	octave 2
	note As, 2
	octave 3
	note C_, 2
	note G_, 1
	rest 1
	note C_, 2
	note G_, 4
	note C_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 4
	note F_, 2
	note As, 2
	note F_, 2
	note C_, 2
	note G_, 1
	rest 1
	note C_, 2
	note G_, 4
	note C_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note A_, 2
	note F_, 2
	note Gs, 2
	note Ds, 2
	note Gs, 2
	note Ds, 2
	note Gs, 2
	note Ds, 2
	note Gs, 2
	note Ds, 2
	note Fs, 2
	note Cs, 2
	note Fs, 2
	note Cs, 2
	note Fs, 2
	note Cs, 2
	note Fs, 2
	note Cs, 2
	octave 2
	note G_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 4
	octave 3
	note C_, 2
	note D_, 2
	note C_, 2
	note F_, 2
	note D_, 2
	note G_, 2
	note F_, 2
	octave 2
	note G_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 4
	octave 3
	note C_, 2
	note F_, 2
	note E_, 4
	octave 2
	note G_, 6
	octave 3
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 6
	note E_, 10
	note Ds, 6
	note Cs, 10
	note C_, 12
	octave 2
	note G_, 2
	note F_, 16
	rest 2
	note Fs, 12
	note B_, 2
	note A_, 8
	rest 2
	note A_, 4
	note B_, 2
	octave 3
	note D_, 2
	sound_loop 0, Music_DrakeBattle_Ch3_loop

gbs_Music_DrakeBattle_Ch4:
	gbs_switch 3
Music_DrakeBattle_Ch4:
	toggle_noise 2
	drum_speed 12
	drum_note 9, 4
	rest 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 9, 4
	rest 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 9, 4
	rest 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
Music_DrakeBattle_Ch4_loop:
	drum_speed 12
	drum_note 9, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 2
	drum_note 11, 2
	rest 2
	drum_note 9, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 9, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 9, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 10, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 1
	drum_note 3, 1
	drum_note 10, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 3, 2
	drum_note 10, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 4, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 8, 1
	drum_note 1, 1
	drum_note 11, 1
	drum_note 4, 1
	drum_note E_, 2
	drum_note 9, 2
	rest 2
	drum_note 9, 2
	rest 2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 6, 1
	rest 3
	drum_note 9, 2
	rest 2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 9, 2
	drum_note 8, 2
	drum_note 11, 2
	drum_note 9, 2
	rest 2
	drum_note 9, 2
	rest 2
	drum_note 3, 2
	drum_note 9, 2
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_note 9, 2
	rest 2
	drum_note 3, 2
	drum_note 9, 2
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_note 9, 2
	rest 2
	drum_note 6, 2
	rest 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 9, 2
	rest 4
	drum_note 4, 2
	rest 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 11, 2
	rest 2
	drum_note 9, 2
	rest 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 9, 2
	drum_note 6, 2
	drum_note 10, 2
	drum_note 2, 2
	drum_note 4, 2
	drum_note 9, 2
	rest 2
	drum_note 9, 2
	rest 2
	sound_loop 0, Music_DrakeBattle_Ch4_loop
