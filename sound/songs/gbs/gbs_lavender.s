	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_Lavender
	.align 2

gbs_Music_Lavender:
	channel_count 4
	channel 1, Music_Lavender_Ch1
	channel 2, Music_Lavender_Ch2
	channel 3, Music_Lavender_Ch3
	channel 4, Music_Lavender_Ch4

gbs_Music_Lavender_Ch1:
	gbs_switch 0
Music_Lavender_Ch1:
	tempo 152
	volume 7, 7
	duty_cycle 1
	pitch_offset 1
	vibrato 0, 8, 8
	note_type 12, 8, 7
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 10, 7

Music_Lavender_branch_bb6b:
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note Fs, 4
	note E_, 4
	note B_, 4
	note Cs, 8
	note Cs, 8
	note G_, 8
	note G_, 8
	note Fs, 8
	note Fs, 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note Fs, 4
	note E_, 4
	note B_, 4
	note Cs, 8
	note Cs, 8
	note G_, 8
	note G_, 8
	note Fs, 8
	note Fs, 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note C_, 8
	note C_, 8
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_Lavender_branch_bb6b


gbs_Music_Lavender_Ch2:
	gbs_switch 1
Music_Lavender_Ch2:
	vibrato 0, 3, 4
	duty_cycle 3
	note_type 12, 9, 1

Music_Lavender_branch_bba5:
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note Fs, 4
	sound_loop 0, Music_Lavender_branch_bba5


gbs_Music_Lavender_Ch3:
	gbs_switch 2
Music_Lavender_Ch3:
	vibrato 4, 1, 1
	note_type 12, 3, 10
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 2, 10

Music_Lavender_branch_bbb9:
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 3, 10
	octave 6
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note_type 12, 2, 10
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 2, 10
	octave 6
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	sound_loop 0, Music_Lavender_branch_bbb9


gbs_Music_Lavender_Ch4:
	gbs_switch 3
Music_Lavender_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16

Music_Lavender_branch_bc26:
	drum_note 7, 8
	drum_note 7, 8
	sound_loop 0, Music_Lavender_branch_bc26
