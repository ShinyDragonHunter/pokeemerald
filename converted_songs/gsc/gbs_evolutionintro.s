	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_EvolutionIntro
	.align 2

gbs_Music_EvolutionIntro:
	channel_count 2
	channel 1, Music_EvolutionIntro_Ch1
	channel 2, Music_EvolutionIntro_Ch2

gbs_Music_EvolutionIntro_Ch1:
	gbs_switch 0
Music_EvolutionIntro_Ch1:
	tempo 132
	volume 7, 7
	vibrato 6, 3, 4
	pitch_offset 1
	duty_cycle 2
	note_type 12, 9, 2
	octave 3
	pitch_slide 1, 4, A_
	note C_, 1
	pitch_slide 1, 4, A_
	note G_, 1
	pitch_slide 1, 4, A_
	note C_, 1
	pitch_slide 1, 4, A_
	note G_, 1
	sound_ret

gbs_Music_EvolutionIntro_Ch2:
	gbs_switch 1
Music_EvolutionIntro_Ch2:
	duty_cycle 2
	vibrato 8, 2, 5
	note_type 12, 10, 2
	octave 4
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	sound_ret
