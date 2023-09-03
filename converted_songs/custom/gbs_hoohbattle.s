	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_HoOhBattle
	.align 2

@ Pokémon HG/SS - Battle! Vs. Ho-Oh
@ Demixed by Pigu, ported to GBS by ShinyDragonHunter
@ https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/audio/music/custom/hoohbattle.asm
@ https://pigu-a.bandcamp.com/album/pok-mon-anniversary-crystal-pigus-arranges

gbs_Music_HoOhBattle:
	channel_count 3
	channel 1, Music_HoOhBattle_Ch1
	channel 2, Music_HoOhBattle_Ch2
	channel 3, Music_HoOhBattle_Ch3

gbs_Music_HoOhBattle_Ch1:
	gbs_switch 0
Music_HoOhBattle_Ch1:
@ Pat 0 Row 0
	tempo 106
	duty_cycle 3
	note_type 12, 12, 2
	octave 3
	note B_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	note Cs, 1
	note C_, 1
	octave 2
	note B_, 1
	note As, 1
	note B_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 3
	note C_, 1
@ Pat 1 Row 0
gbs_Music_HoOhBattle_Ch1_L:
	volume_envelope 12, 2
	octave 2
	note B_, 2
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 12, 7
	note B_, 6
	note A_, 6
	octave 3
	note C_, 6
	sound_loop 3, gbs_Music_HoOhBattle_Ch1_L
@ Pat 2 Row 0
	volume_envelope 12, 2
	octave 2
	note B_, 2
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 12, 7
	note B_, 6
	note A_, 4
	volume_envelope 12, 2
	octave 3
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
	note E_, 1
	octave 3
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note Ds, 1
	octave 2
	note B_, 1
@ Pat 3 Row 0
	volume_envelope 12, 8
	octave 3
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note D_, 2
	note E_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note D_, 2
	note E_, 2
	volume_envelope 12, 8
	pitch_sweep 4, 7
	note G_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note A_, 11
	volume_envelope 12, 8
	pitch_sweep 5, 7
	note A_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note B_, 3
	note E_, 12
	note D_, 2
	note F_, 2
@ Pat 4 Row 0
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note F_, 2
	note D_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note D_, 2
	note E_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 15
	volume_envelope 12, 2
	octave 2
	note B_, 1
	note E_, 1
	note A_, 1
	note E_, 1
	note B_, 1
	note E_, 1
	octave 3
	note F_, 1
	octave 2
	note E_, 1
	octave 3
	note E_, 1
	octave 2
	note E_, 1
	octave 3
	note As, 1
	octave 4
	note Cs, 1
	octave 3
	note A_, 1
	note As, 1
	note E_, 1
	octave 2
	note B_, 1
@ Pat 5 Row 0
	volume_envelope 12, 8
	octave 3
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note D_, 2
	note E_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 11
	note D_, 2
	note E_, 2
	volume_envelope 12, 8
	pitch_sweep 4, 7
	note G_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note A_, 11
	volume_envelope 12, 8
	pitch_sweep 5, 7
	note A_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note B_, 3
	octave 4
	note D_, 10
	octave 3
	note B_, 2
	note F_, 2
	note A_, 2
@ Pat 6 Row 0
	volume_envelope 12, 8
	pitch_sweep 4, 7
	note Fs, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note Gs, 9
	note B_, 2
	note E_, 2
	note A_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note Ds, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note F_, 9
	note A_, 2
	note D_, 2
	note F_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 9
	note E_, 2
	note F_, 2
	note D_, 2
	volume_envelope 12, 8
	pitch_sweep 3, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 7
	note_type 8, 11, 7
	vibrato 7, 2, 6
	octave 4
	note D_, 2
	note F_, 2
	note A_, 2
	note B_, 2
	octave 5
	note D_, 2
	note Ds, 2
@ Pat 7 Row 0
	note_type 12, 11, 7
	note E_, 1
	note F_, 1
	note E_, 12
	note F_, 2
	note D_, 2
	note E_, 2
	octave 4
	note B_, 2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note B_, 2
	note D_, 2
	note E_, 2
	note Fs, 2
	note A_, 2
	volume_envelope 12, 8
	vibrato 0, 0, 0
	octave 5
	note D_, 8
	volume_envelope 11, 7
	vibrato 7, 2, 6
	note D_, 12
	octave 4
	note B_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	octave 3
	note B_, 1
	note A_, 1
	note F_, 1
	note D_, 1
@ Pat 8 Row 0
	octave 5
	note E_, 1
	note F_, 1
	note E_, 8
	note F_, 2
	note D_, 2
	note E_, 2
	octave 4
	note B_, 8
	octave 5
	note D_, 2
	note E_, 2
	octave 4
	note B_, 2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note B_, 2
	octave 5
	note D_, 4
	volume_envelope 12, 8
	vibrato 0, 0, 0
	note E_, 8
	volume_envelope 11, 7
	vibrato 7, 2, 6
	note E_, 16
@ Pat 9 Row 0
	volume_envelope 12, 7
	vibrato 0, 0, 0
	octave 4
	note E_, 1
	note F_, 1
	note E_, 12
	note F_, 2
	note D_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note D_, 2
	note E_, 2
	note Fs, 2
	note A_, 2
	volume_envelope 12, 8
	octave 4
	note D_, 8
	volume_envelope 12, 7
	note D_, 12
	octave 3
	note B_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	octave 2
	note B_, 1
	note A_, 1
	note F_, 1
	note D_, 1
@ Pat 10 Row 0
	octave 4
	note E_, 1
	note F_, 1
	note E_, 8
	note F_, 2
	note D_, 2
	note E_, 2
	octave 3
	note B_, 12
	note A_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note D_, 4
	volume_envelope 12, 8
	note E_, 8
	volume_envelope 12, 7
	note E_, 16
@ Pat 11 Row 0
	octave 2
	note E_, 4
	volume_envelope 12, 8
	note A_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note A_, 2
	pitch_sweep 0, 0
	note G_, 2
	note A_, 2
	volume_envelope 12, 8
	octave 3
	note C_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note C_, 2
	octave 2
	pitch_sweep 0, 0
	note A_, 2
	octave 3
	note C_, 2
	volume_envelope 12, 8
	note D_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note D_, 2
	pitch_sweep 0, 0
	note C_, 2
	note D_, 2
	volume_envelope 12, 8
	note G_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note G_, 2
	pitch_sweep 0, 0
	note E_, 2
	rest 16
	rest 14
@ Pat 12 Row 0
	octave 2
	note E_, 4
	volume_envelope 12, 8
	note A_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note A_, 2
	pitch_sweep 0, 0
	note G_, 2
	note A_, 2
	octave 3
	volume_envelope 12, 8
	note C_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note C_, 2
	octave 2
	pitch_sweep 0, 0
	note A_, 2
	octave 3
	note C_, 2
	note D_, 1
	note C_, 1
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note D_, 2
	volume_envelope 12, 8
	note G_, 2
	volume_envelope 12, 7
	pitch_sweep 6, -7
	note G_, 2
	pitch_sweep 0, 0
	note E_, 2
	rest 16
	rest 14
@ Pat 13 Row 0
	duty_cycle 0
	volume_envelope 12, 4
	vibrato 1, 2, 5
	octave 2
	note E_, 2
	note E_, 6
	volume_envelope 9, 3
	note E_, 1
	note E_, 1
	note E_, 2
	note E_, 1
	note E_, 1
	note E_, 2
	volume_envelope 12, 4
	note E_, 1
	volume_envelope 9, 3
	note E_, 1
	volume_envelope 12, 4
	note E_, 2
	note E_, 1
	volume_envelope 9, 3
	note E_, 1
	volume_envelope 12, 4
	note E_, 2
	note E_, 1
	note E_, 1
	note E_, 2
	note E_, 1
	note E_, 1
	note E_, 2
	duty_cycle 3
	volume_envelope 12, 8
	vibrato 0, 0, 0
	octave 3
	pitch_sweep 4, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 3
	note D_, 2
	note E_, 2
	rest 2
	note G_, 2
	note A_, 2
	octave 2
	note B_, 2
	volume_envelope 12, 8
	octave 3
	pitch_sweep 4, 7
	note D_, 1
	volume_envelope 12, 7
	pitch_sweep 0, 0
	note E_, 3
	note D_, 2
	note E_, 2
	rest 2
	note G_, 2
	note A_, 4
@ Pat 14 Row 0
	volume_envelope 12, 8
	note As, 16
	volume_envelope 12, 7
	note As, 16
	sound_loop 0, gbs_Music_HoOhBattle_Ch1_L

gbs_Music_HoOhBattle_Ch2:
	gbs_switch 1
Music_HoOhBattle_Ch2:
@ Pat 0 Row 0
	duty_cycle 3
	note_type 12, 12, 2
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
	octave 4
	note E_, 1
	note Ds, 1
	note D_, 1
	octave 5
	note E_, 1
@ Pat 1 Row 0
gbs_Music_HoOhBattle_Ch2_L:
	volume_envelope 12, 2
	octave 3
	note E_, 2
	note E_, 4
	note E_, 4
	note E_, 4
	volume_envelope 12, 7
	note E_, 6
	note D_, 6
	note F_, 6
	sound_loop 3, gbs_Music_HoOhBattle_Ch2_L
@ Pat 2 Row 0
	volume_envelope 12, 2
	note E_, 2
	note E_, 4
	note E_, 4
	note E_, 4
	volume_envelope 12, 7
	note E_, 6
	note D_, 6
	note F_, 4
	duty_cycle 0
	volume_envelope 12, 4
	vibrato 1, 2, 5
	octave 2
	note E_, 2
@ Pat 3 Row 0
	note E_, 14
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 6
	note E_, 2
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 12
	note E_, 8
	note E_, 2
	note E_, 2
	note E_, 2
@ Pat 4 Row 0
	note E_, 14
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 6
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note D_, 2
	note E_, 4
	note D_, 2
	note E_, 4
	note D_, 2
	note E_, 4
	note D_, 2
	note E_, 4
	note E_, 2
	octave 1
	note B_, 2
@ Pat 5 Row 0
	octave 2
	note E_, 14
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 6
	note E_, 2
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 12
	note E_, 8
	note E_, 2
	note E_, 2
	note E_, 2
@ Pat 6 Row 0
	note E_, 14
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 6
	note E_, 2
	note E_, 2
	note E_, 4
	note D_, 2
	note E_, 12
	note E_, 8
	note E_, 2
	note E_, 2
	note E_, 2
@ Pat 7 Row 0
	duty_cycle 2
	volume_envelope 9, 3
	vibrato 0, 0, 0
	octave 4
	note E_, 2
	octave 5
	note E_, 2
	note D_, 2
	octave 4
	note A_, 2
	note B_, 2
	note A_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note D_, 2
	octave 3
	note A_, 2
	note Fs, 2
	octave 4
	note D_, 2
	octave 3
	note D_, 2
	note A_, 2
	note Fs, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note D_, 2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note B_, 2
	note Fs, 2
	note Fs, 1
	note E_, 1
	note C_, 1
	octave 3
	note A_, 1
	note Fs, 1
	note E_, 1
	octave 4
	note B_, 2
@ Pat 8 Row 0
	note E_, 2
	octave 5
	note E_, 2
	note D_, 2
	octave 4
	note A_, 2
	note B_, 2
	note A_, 2
	note F_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note F_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 5
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	octave 3
	note D_, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note D_, 6
	duty_cycle 3
	volume_envelope 11, 7
	vibrato 7, 2, 6
	octave 5
	note F_, 2
	note D_, 2
	note E_, 8
@ Pat 9 Row 0
	duty_cycle 0
	volume_envelope 9, 3
	vibrato 1, 2, 5
	octave 3
	note E_, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note A_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note D_, 2
	octave 2
	note A_, 2
	note Fs, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note A_, 2
	note Fs, 2
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note D_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note Fs, 2
	note Fs, 1
	note E_, 1
	note C_, 1
	octave 2
	note A_, 1
	note Fs, 1
	note E_, 1
	octave 3
	note B_, 2
@ Pat 10 Row 0
	note E_, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note A_, 2
	note F_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note F_, 2
	note E_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 2
	note D_, 2
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note D_, 2
	octave 3
	note E_, 2
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
@ Pat 11 Row 0
	rest 16
	rest 16
	rest 1
	volume_envelope 12, 4
	note D_, 1
	note E_, 4
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note E_, 2
	note C_, 2
	octave 2
	note A_, 2
	note E_, 2
	octave 3
	note D_, 2
	note E_, 1
	note D_, 1
	octave 2
	note A_, 2
	note G_, 2
	note A_, 2
	note D_, 1
	note E_, 1
	note G_, 2
@ Pat 12 Row 0
	rest 16
	rest 16
	octave 3
	note A_, 1
	note G_, 1
	note A_, 2
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	note G_, 2
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note G_, 2
	note E_, 1
	note D_, 1
	octave 2
	note A_, 2
	note G_, 2
	note A_, 2
	note D_, 1
	note E_, 1
	note G_, 2
@ Pat 13 Row 0
	note B_, 2
	note B_, 6
	volume_envelope 9, 3
	note B_, 1
	note B_, 1
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 2
	volume_envelope 12, 4
	note B_, 1
	volume_envelope 9, 3
	note B_, 1
	volume_envelope 12, 4
	note B_, 2
	note B_, 1
	volume_envelope 9, 3
	note B_, 1
	volume_envelope 12, 4
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 2
	rest 16
	rest 16
@ Pat 14 Row 0
	duty_cycle 3
	volume_envelope 12, 8
	vibrato 0, 0, 0
	octave 3
	note F_, 16
	volume_envelope 12, 7
	note F_, 16
	sound_loop 0, gbs_Music_HoOhBattle_Ch2_L

gbs_Music_HoOhBattle_Ch3:
	gbs_switch 2
Music_HoOhBattle_Ch3:
@ Pat 0 Row 0
	note_type 12, 1, 6
	octave 2
	note E_, 16
	note D_, 8
	note F_, 8
@ Pat 1 Row 0
gbs_HoOhBattle_Ch3_L:
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	sound_loop 93, gbs_Music_HoOhBattle_Ch3_L
@ Pat 2 Row 0
@ Pat 3 Row 0
@ Pat 4 Row 0
@ Pat 5 Row 0
@ Pat 6 Row 0
	note F_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note D_, 2
@ Pat 7 Row 0
	note F_, 14
	octave 3
	note E_, 2
	octave 2
	note F_, 2
	rest 2
	note E_, 2
	rest 2
	note B_, 6
	note A_, 2
	note Fs, 2
	note D_, 12
	note Fs, 1
	rest 1
	note Fs, 2
	rest 2
	note D_, 8
	rest 4
@ Pat 8 Row 0
	note D_, 1
	rest 1
	note D_, 6
	rest 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	octave 3
	note D_, 4
	octave 2
	note B_, 4
	note A_, 4
	rest 2
	note E_, 6
	rest 4
	note E_, 1
	rest 1
	note E_, 2
	octave 3
	note D_, 2
	octave 2
	note E_, 1
	rest 1
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note G_, 2
	note E_, 2
@ Pat 9 Row 0
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note Fs, 2
	note E_, 2
@ Pat 10 Row 0
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note F_, 2
	note B_, 2
	note A_, 2
	note Fs, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note Fs, 2
	note D_, 2
@ Pat 11 Row 0
gbs_Music_HoOhBattle_Ch3_L1:
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
	sound_loop 2, gbs_Music_HoOhBattle_Ch3_L1
@ Pat 12 Row 0
@ Pat 13 Row 0
	note F_, 4
	note B_, 4
	note F_, 4
	note B_, 4
	note F_, 4
	note B_, 4
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	note E_, 4
	note D_, 2
	note E_, 2
	rest 2
	note G_, 2
	note A_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 4
	note D_, 2
	note E_, 2
	rest 2
	note G_, 2
	note A_, 4
@ Pat 14 Row 0
	note As, 16
	note As, 10
	note G_, 2
	note A_, 2
	note E_, 2
	sound_loop 0, gbs_Music_HoOhBattle_Ch3_L
