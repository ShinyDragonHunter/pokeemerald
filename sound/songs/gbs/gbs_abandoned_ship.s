	.include "asm/macros.inc"

	.section .rodata
	.global gbs_abandoned_ship
	.align 1

@ Pokémon R/S/E - Abandoned Ship
@ Demixed by Mmmmmm, ported to GBS by ShinyDragonHunter
@ https://pastebin.com/8yZgqyZ8
@ https://hax.iimarckus.org/topic/6777/

gbs_abandoned_ship_Ch1:
	gbs_switch 0
	tempo 188
	volume 7, 7
	duty_cycle 0
	pitch_offset 2
	vibrato 16, 2, 2
	note_type 12, 8, 2
	rest 6
gbs_abandoned_ship_Ch1_loop:
	octave 3
	note As, 2
	octave 4
	note Fs, 4
	note F_, 4
	octave 3
	note Cs, 1
	octave 4
	note F_, 1
	octave 3
	note Cs, 1
	octave 4
	note F_, 1
	octave 3
	note Cs, 1
	octave 4
	note F_, 1
	octave 3
	note As, 2
	octave 4
	note Fs, 4
	note F_, 4
	note Cs, 4
	octave 3
	note As, 2
	note A_, 2
	octave 4
	note Ds, 4
	note C_, 4
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note C_, 1
	octave 4
	note Ds, 1
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 2
	octave 4
	note Ds, 4
	note C_, 4
	note Ds, 4
	note C_, 2
	note C_, 2
	note F_, 4
	note Ds, 4
	octave 3
	note C_, 1
	octave 4
	note Ds, 1
	octave 3
	note C_, 1
	octave 4
	note F_, 1
	octave 3
	note C_, 1
	octave 4
	note Ds, 1
	note C_, 2
	note F_, 4
	note Ds, 4
	note C_, 4
	note Ds, 2
	note Cs, 2
	note F_, 4
	note Cs, 4
	octave 3
	note Cs, 1
	octave 4
	note Cs, 1
	octave 3
	note Cs, 1
	octave 4
	note F_, 1
	octave 3
	note Cs, 1
	octave 4
	note Cs, 1
	note F_, 2
	note Ds, 4
	note Cs, 4
	volume_envelope 8, 4
	octave 3
	note F_, 6
	volume_envelope 8, 2
	duty_cycle 2
	octave 3
	note Fs, 1
	note A_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	note Fs, 1
	note A_, 1
	octave 5
	note Cs, 1
	note Ds, 1
	note A_, 1
	note Fs, 1
	note Ds, 1
	note Cs, 1
	octave 4
	note A_, 1
	note Fs, 1
	note Cs, 1
	octave 3
	note Fs, 1
	note F_, 1
	note Gs, 1
	octave 4
	note C_, 1
	note Ds, 1
	note F_, 1
	note Gs, 1
	octave 5
	note C_, 1
	note Ds, 1
	note Gs, 1
	note F_, 1
	note Ds, 1
	note C_, 1
	octave 4
	note Gs, 1
	note F_, 1
	note C_, 1
	octave 3
	note F_, 1
	note Cs, 1
	note F_, 1
	note As, 1
	octave 4
	note Cs, 1
	note F_, 1
	note Gs, 1
	note As, 1
	octave 5
	note Cs, 1
	note F_, 1
	note Cs, 1
	octave 4
	note As, 1
	note Gs, 1
	note F_, 1
	note Cs, 1
	octave 3
	note As, 1
	note Gs, 1
	note Ds, 1
	note G_, 1
	note Gs, 1
	octave 4
	note C_, 1
	note Ds, 1
	note G_, 1
	note Gs, 1
	octave 5
	note C_, 1
	note Gs, 1
	note G_, 1
	note Ds, 1
	note C_, 1
	octave 4
	note Gs, 1
	note G_, 1
	note Ds, 1
	note C_, 1
	duty_cycle 0
	octave 4
	note Fs, 2
	note Ds, 4
	note Gs, 1
	note Gs, 1
	note Ds, 3
	note Gs, 3
	note Fs, 2
	note F_, 2
	note D_, 4
	octave 3
	note Gs, 1
	note Gs, 1
	note F_, 4
	note D_, 1
	note Gs, 1
	octave 4
	note D_, 1
	note F_, 1
	note Cs, 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Cs, 1
	octave 3
	note B_, 1
	rest 1
	note Cs, 1
	octave 3
	note B_, 1
	note_type 6, 8, 2
	octave 4
	note Cs, 1
	octave 3
	note Gs, 1
	note Fs, 1
	note Cs, 1
	note Fs, 1
	note Gs, 1
	note B_, 1
	octave 4
	note Fs, 1
	octave 3
	note Cs, 1
	note Fs, 1
	note Gs, 1
	octave 4
	note Cs, 1
	note Fs, 1
	note Gs, 1
	note B_, 1
	octave 5
	note Cs, 1
	octave 4
	note_type 12, 8, 2
	note Gs, 3
	note Fs, 3
	note F_, 2
	octave 3
	note B_, 3
	note As, 3
	note Gs, 2
	sound_loop 0, gbs_abandoned_ship_Ch1_loop

gbs_abandoned_ship_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 28, 1, 2
	note_type 12, 10, 0
	rest 6
gbs_abandoned_ship_Ch2_loop:
	sound_call gbs_abandoned_ship_Ch2_branch_1
	vibrato 28, 15, 2
	sound_call gbs_abandoned_ship_Ch2_branch_1
	note Ds, 2
	note Cs, 2
	note Ds, 2
	volume_envelope 10, 0
	note C_, 4
	volume_envelope 10, 7
	vibrato 21, 15, 2
	note C_, 6
	duty_cycle 2
	volume_envelope 8, 5
	rest 2
	vibrato 28, 1, 2
	octave 5
	note C_, 4
	octave 4
	note A_, 4
	rest 6
	duty_cycle 3
	volume_envelope 10, 0
	note Ds, 4
	volume_envelope 10, 7
	vibrato 21, 7, 2
	note Ds, 6
	vibrato 28, 1, 2
	note Ds, 2
	note F_, 2
	note Ds, 2
	octave 3
	volume_envelope 10, 0
	note Gs, 4
	volume_envelope 10, 7
	vibrato 21, 7, 2
	note Gs, 6
	octave 4
	vibrato 28, 1, 2
	note Ds, 2
	note F_, 2
	note C_, 2
	octave 3
	note Gs, 2
	note As, 2
	octave 4
	note C_, 2
	volume_envelope 10, 0
	note Cs, 4
	vibrato 21, 6, 2
	volume_envelope 10, 7
	note Cs, 6
	duty_cycle 2
	volume_envelope 8, 5
	vibrato 28, 1, 2
	rest 2
	octave 5
	note Cs, 4
	octave 4
	note As, 4
	rest 6
	volume_envelope 8, 4
	note Cs, 2
	volume_envelope 6, 4
	note Cs, 2
	volume_envelope 5, 4
	note Cs, 2
	volume_envelope 4, 4
	note Cs, 2
	octave 3
	volume_envelope 8, 4
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	octave 3
	note Fs, 2
	note Gs, 2
	volume_envelope 6, 4
	note Gs, 2
	volume_envelope 5, 4
	note Gs, 2
	volume_envelope 4, 4
	note Gs, 2
	volume_envelope 8, 4
	octave 4
	note C_, 2
	volume_envelope 6, 4
	note C_, 2
	volume_envelope 5, 4
	note C_, 2
	volume_envelope 4, 4
	note C_, 2
	volume_envelope 8, 4
	note Cs, 2
	volume_envelope 6, 4
	note Cs, 2
	volume_envelope 5, 4
	note Cs, 2
	volume_envelope 8, 4
	note F_, 2
	volume_envelope 6, 4
	note F_, 2
	volume_envelope 8, 4
	note Gs, 2
	volume_envelope 6, 4
	note Gs, 2
	volume_envelope 8, 4
	octave 5
	note Cs, 2
	note C_, 2
	volume_envelope 6, 4
	note C_, 2
	volume_envelope 5, 4
	note C_, 2
	volume_envelope 4, 4
	note C_, 2
	volume_envelope 3, 4
	note C_, 2
	volume_envelope 2, 4
	note C_, 2
	rest 2
	duty_cycle 3
	note_type 6, 10, 7
	octave 3
	note G_, 1
	note Gs, 1
	note A_, 1
	note As, 1
	note_type 12, 10, 7
	note B_, 6
	note As, 1
	note B_, 1
	octave 4
	note Cs, 2
	octave 3
	note B_, 2
	note As, 2
	note Gs, 2
	note B_, 2
	rest 1
	note F_, 2
	rest 1
	note Fs, 1
	note Gs, 7
	rest 2
	note Gs, 1
	note Fs, 1
	rest 1
	note Gs, 1
	note Fs, 1
	rest 1
	note Gs, 1
	note Fs, 1
	note Gs, 2
	rest 1
	note As, 2
	rest 1
	note B_, 2
	octave 4
	note Cs, 2
	rest 1
	octave 3
	note B_, 2
	rest 1
	note Gs, 2
	note F_, 2
	rest 1
	note Ds, 2
	rest 1
	note Cs, 2
	sound_loop 0, gbs_abandoned_ship_Ch2_loop

gbs_abandoned_ship_Ch2_branch_1:
	note_type 12, 10, 0
	octave 3
	note As, 4
	volume_envelope 10, 7
	note As, 6
	octave 4
	vibrato 28, 1, 2
	note F_, 2
	note Fs, 2
	note F_, 2
	sound_ret

gbs_abandoned_ship_Ch3:
	gbs_switch 2
	stereo_panning TRUE, FALSE
	note_type 12, 1, 4
	rest 6
gbs_abandoned_ship_Ch3_loop:
	octave 2
	note Fs, 1
	rest 1
	note Fs, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note F_, 4
	rest 4
	octave 2
	volume_envelope 1, 4
	note Fs, 1
	rest 1
	note Fs, 1
	rest 1
	note Fs, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note F_, 4
	volume_envelope 1, 4
	octave 2
	note Fs, 5
	rest 1
	note Fs, 1
	rest 1
	note Fs, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note Ds, 4
	rest 4
	octave 2
	volume_envelope 1, 4
	note Fs, 1
	rest 1
	note Fs, 1
	rest 1
	note Fs, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note Ds, 4
	octave 2
	volume_envelope 1, 4
	note Fs, 5
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note C_, 4
	rest 4
	octave 2
	volume_envelope 1, 4
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 4
	volume_envelope 2, 4
	note C_, 4
	octave 2
	volume_envelope 1, 4
	note F_, 5
	rest 1
	note Cs, 1
	rest 1
	note Cs, 1
	rest 3
	octave 3
	volume_envelope 2, 4
	note As, 4
	rest 4
	octave 2
	volume_envelope 1, 4
	note Cs, 1
	rest 1
	note Cs, 1
	rest 1
	note Cs, 1
	rest 3
	octave 3
	volume_envelope 2, 4
	note As, 4
	octave 2
	volume_envelope 1, 4
	note Cs, 6
	rest 8
	note Cs, 8
	note C_, 8
	note Gs, 8
	note As, 6
	octave 3
	note Cs, 3
	rest 1
	note Cs, 4
	note F_, 2
	note Ds, 8
	volume_envelope 2, 4
	note Ds, 8
	volume_envelope 1, 4
	octave 2
	note Gs, 1
	rest 1
	note Gs, 1
	rest 3
	note B_, 2
	note Gs, 6
	octave 3
	note Ds, 2
	note D_, 6
	rest 4
	octave 2
	note B_, 5
	rest 1
	note B_, 2
	rest 1
	note B_, 2
	rest 1
	note Fs, 1
	note As, 1
	note B_, 2
	rest 1
	octave 3
	note Cs, 2
	rest 1
	note Ds, 2
	note Fs, 2
	rest 1
	note Ds, 2
	rest 1
	note Cs, 2
	octave 2
	note B_, 2
	rest 1
	note As, 2
	rest 1
	note Gs, 2
	sound_loop 0, gbs_abandoned_ship_Ch3_loop

gbs_abandoned_ship_Ch4:
	gbs_switch 3
	stereo_panning FALSE, TRUE
	toggle_noise 3
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
gbs_abandoned_ship_branch_1:
	drum_speed 12
	sound_call gbs_abandoned_ship_branch_eeb6b
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	sound_call gbs_abandoned_ship_branch_eeb6b
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_loop 4, gbs_abandoned_ship_branch_1
gbs_abandoned_ship_branch_2:
	drum_speed 12
	rest 16
	sound_loop 4, gbs_abandoned_ship_branch_2
	sound_call gbs_abandoned_ship_branch_eeb6b
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	sound_call gbs_abandoned_ship_branch_eeb6b
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 12
	sound_call gbs_abandoned_ship_branch_eeb6b
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_loop 0, gbs_abandoned_ship_branch_1

gbs_abandoned_ship_branch_eeb6b:
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	sound_ret

	.align 4
gbs_abandoned_ship:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_abandoned_ship_Ch1
	.int gbs_abandoned_ship_Ch2
	.int gbs_abandoned_ship_Ch3
	.int gbs_abandoned_ship_Ch4
