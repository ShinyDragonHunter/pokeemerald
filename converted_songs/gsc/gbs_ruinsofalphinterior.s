	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_RuinsOfAlphInterior
	.align 1

gbs_Music_RuinsOfAlphInterior_Ch1:
	gbs_switch 0
Music_RuinsOfAlphInterior_Ch1:
	tempo 224
	volume 7, 7
	duty_cycle 0
	stereo_panning TRUE, FALSE
	note_type 12, 4, 4
	rest 1
	sound_loop 0, Music_RuinsOfAlphInterior_Ch2.mainloop

gbs_Music_RuinsOfAlphInterior_Ch2:
	gbs_switch 1
Music_RuinsOfAlphInterior_Ch2:
	pitch_offset 2
	duty_cycle 0
	stereo_panning FALSE, TRUE
	note_type 12, 10, 4
Music_RuinsOfAlphInterior_Ch2.mainloop:
	octave 4
	note C_, 4
	octave 3
	note As, 4
	octave 4
	note Cs, 2
	note Ds, 2
	note C_, 2
	octave 3
	note As, 2
	octave 4
	note C_, 4
	octave 3
	note As, 4
	sound_loop 0, Music_RuinsOfAlphInterior_Ch2.mainloop

gbs_Music_RuinsOfAlphInterior_Ch3:
	gbs_switch 2
Music_RuinsOfAlphInterior_Ch3:
	note_type 12, 1, 0
Music_RuinsOfAlphInterior_Ch3.mainloop:
	octave 2
	note Gs, 2
	octave 3
	note Cs, 2
	note E_, 2
	rest 10
	sound_loop 0, Music_RuinsOfAlphInterior_Ch3.mainloop

	.align 4
gbs_Music_RuinsOfAlphInterior:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_Music_RuinsOfAlphInterior_Ch1
	.int gbs_Music_RuinsOfAlphInterior_Ch2
	.int gbs_Music_RuinsOfAlphInterior_Ch3
