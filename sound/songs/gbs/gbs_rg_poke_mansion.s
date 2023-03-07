	.include "asm/macros.inc"

	.section .rodata
	.global gbs_rg_poke_mansion
	.align 1

gbs_rg_poke_mansion_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	vibrato 11, 2, 5
	duty_cycle 2

gbs_rg_poke_mansion_branch_7ed19:
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
	sound_loop 14, gbs_rg_poke_mansion_branch_7ed19
	note_type 12, 10, 5
	rest 16
	rest 16
	rest 15
	octave 4
	note C_, 1
	octave 5
	note B_, 1
	note B_, 2
	sound_loop 0, gbs_rg_poke_mansion_branch_7ed19


gbs_rg_poke_mansion_Ch2:
	gbs_switch 1
	duty_cycle 2
	pitch_offset 1
	vibrato 10, 2, 4
	note_type 12, 12, 2

gbs_rg_poke_mansion_branch_7ed48:
	rest 16
	rest 16
	sound_loop 4, gbs_rg_poke_mansion_branch_7ed48

gbs_rg_poke_mansion_branch_7ed4e:
	note_type 12, 12, 2

gbs_rg_poke_mansion_branch_7ed50:
	sound_call gbs_rg_poke_mansion_branch_7ed6c
	sound_loop 3, gbs_rg_poke_mansion_branch_7ed50
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
	sound_loop 0, gbs_rg_poke_mansion_branch_7ed4e

gbs_rg_poke_mansion_branch_7ed6c:
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


gbs_rg_poke_mansion_Ch3:
	gbs_switch 2
	note_type 12, 1, 1

gbs_rg_poke_mansion_branch_7ed80:
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
	sound_loop 8, gbs_rg_poke_mansion_branch_7ed80
	note E_, 16
	note Ds, 16
	note G_, 16
	note Gs, 8
	note Ds, 8
	sound_loop 0, gbs_rg_poke_mansion_branch_7ed80


gbs_rg_poke_mansion_Ch4:
	gbs_switch 3
	toggle_noise 1
	drum_speed 6
	rest 16
	rest 16
	rest 16
	rest 16

gbs_rg_poke_mansion_branch_7edb5:
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
	sound_loop 0, gbs_rg_poke_mansion_branch_7edb5

	.align 4
gbs_rg_poke_mansion:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_rg_poke_mansion_Ch1
	.int gbs_rg_poke_mansion_Ch2
	.int gbs_rg_poke_mansion_Ch3
	.int gbs_rg_poke_mansion_Ch4
