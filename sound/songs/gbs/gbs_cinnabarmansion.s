	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_CinnabarMansion
	.align 2

gbs_Music_CinnabarMansion:
	channel_count 4
	channel 1, Music_CinnabarMansion_Ch1
	channel 2, Music_CinnabarMansion_Ch2
	channel 3, Music_CinnabarMansion_Ch3
	channel 4, Music_CinnabarMansion_Ch4

gbs_Music_CinnabarMansion_Ch1:
	gbs_switch 0
Music_CinnabarMansion_Ch1:
	tempo 144
	volume 7, 7
	vibrato 11, 2, 5
	duty_cycle 2

Music_CinnabarMansion_branch_7ed19:
	note_type 12, 6, 2
	octave 5
	note E_, 1
	note E_, 1
	octave 4
	note B_, 1
	note B_, 1
	note C_, 1
	rest 2
	octave 5
	note B_, 2
	note E_, 2
	octave 4
	note C_, 2
	note B_, 2
	note E_, 2
	note C_, 1
	octave 5
	note B_, 1
	rest 2
	sound_loop 14, Music_CinnabarMansion_branch_7ed19
	note_type 12, 10, 5
	rest 16
	rest 16
	rest 15
	octave 4
	note C_, 1
	octave 5
	note B_, 1
	note B_, 2
	sound_loop 0, Music_CinnabarMansion_branch_7ed19


gbs_Music_CinnabarMansion_Ch2:
	gbs_switch 1
Music_CinnabarMansion_Ch2:
	duty_cycle 2
	pitch_offset 1
	vibrato 10, 2, 4
	note_type 12, 12, 2

Music_CinnabarMansion_branch_7ed48:
	rest 16
	rest 16
	sound_loop 4, Music_CinnabarMansion_branch_7ed48

Music_CinnabarMansion_branch_7ed4e:
	note_type 12, 12, 2

Music_CinnabarMansion_branch_7ed50:
	sound_call Music_CinnabarMansion_branch_7ed6c
	sound_loop 3, Music_CinnabarMansion_branch_7ed50
	octave 3
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	rest 4
	note As, 4
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	note G_, 4
	note Ds, 4
	sound_loop 0, Music_CinnabarMansion_branch_7ed4e

Music_CinnabarMansion_branch_7ed6c:
	octave 3
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	note A_, 4
	note As, 4
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	rest 4
	note As, 4
	sound_ret


gbs_Music_CinnabarMansion_Ch3:
	gbs_switch 2
Music_CinnabarMansion_Ch3:
	note_type 12, 1, 1

Music_CinnabarMansion_branch_7ed80:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	sound_loop 8, Music_CinnabarMansion_branch_7ed80
	note E_, 16
	note Ds, 16
	note G_, 16
	note Gs, 8
	note Ds, 8
	sound_loop 0, Music_CinnabarMansion_branch_7ed80


gbs_Music_CinnabarMansion_Ch4:
	gbs_switch 3
Music_CinnabarMansion_Ch4:
	toggle_noise 1
	drum_speed 6
	rest 16
	rest 16
	rest 16
	rest 16

Music_CinnabarMansion_branch_7edb5:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 7, 4
	drum_note 5, 2
	drum_note 5, 2
	rest 2
	rest 10
	rest 8
	drum_note 7, 8
	sound_loop 0, Music_CinnabarMansion_branch_7edb5
