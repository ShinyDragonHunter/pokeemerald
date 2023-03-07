	.include "asm/macros.inc"

	.section .rodata
	.global gbs_KantoLegend
	.align 1

@ Pokémon X/Y - Battle! Vs. Kanto Legendary Pokémon (G/S/C version)
@ Demixed by GACT and Pigu, ported to GBS by ShinyDragonHunter
@ https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/audio/music/custom/kantolegend.asm
@ https://pigu-a.bandcamp.com/album/pok-mon-anniversary-crystal-pigus-arranges

gbs_KantoLegend_Ch1:
	gbs_switch 0
@ Pat 0 Row 0
	tempo 106
	duty_cycle 2
	note_type 12, 12, 7
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note As, 1
	note A_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note As, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 3
	note C_, 1
	note Cs, 1
@ Pat 1 Row 0
gbs_KantoLegend_Ch1_L1:
	note C_, 1
	rest 1
	note C_, 1
	rest 5
	sound_loop 4, gbs_KantoLegend_Ch1_L1
gbs_KantoLegend_Ch1_L2:
	note D_, 1
	rest 1
	note D_, 1
	rest 5
	sound_loop 4, gbs_KantoLegend_Ch1_L2
@ Pat 2 Row 0
gbs_KantoLegend_Ch1_L3:
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	sound_loop 7, gbs_KantoLegend_Ch1_L3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 7, 4
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note D_, 1
@ Pat 3 Row 0
	note E_, 1
gbs_KantoLegend_Ch1_L:
	duty_cycle 2
	volume_envelope 5, 3
gbs_KantoLegend_Ch1_L4:
	octave 2
	note C_, 2
	note F_, 2
	note G_, 2
	octave 3
	note C_, 2
	sound_loop 4, gbs_KantoLegend_Ch1_L4
gbs_KantoLegend_Ch1_L5:
	octave 2
	note D_, 2
	note G_, 2
	note A_, 2
	octave 3
	note D_, 2
	sound_loop 4, gbs_KantoLegend_Ch1_L5
@ Pat 4 Row 1
gbs_KantoLegend_Ch1_L6:
	octave 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	sound_loop 7, gbs_KantoLegend_Ch1_L6
	octave 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 1
@ Pat 5 Row 0
gbs_KantoLegend_Ch1_L7:
	octave 4
	note C_, 1
	octave 3
	note C_, 1
	octave 5
	note C_, 1
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note C_, 1
	octave 5
	note C_, 1
	octave 3
	note C_, 1
	octave 2
	note C_, 1
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note C_, 1
	octave 5
	note C_, 1
	octave 3
	note C_, 1
	octave 5
	note C_, 1
	octave 3
	note C_, 1
	sound_loop 2, gbs_KantoLegend_Ch1_L7
gbs_KantoLegend_Ch1_L8:
	octave 4
	note D_, 1
	octave 3
	note D_, 1
	octave 5
	note D_, 1
	octave 3
	note D_, 1
	octave 4
	note D_, 1
	octave 3
	note D_, 1
	octave 5
	note D_, 1
	octave 3
	note D_, 1
	octave 2
	note D_, 1
	octave 3
	note D_, 1
	octave 4
	note D_, 1
	octave 3
	note D_, 1
	octave 5
	note D_, 1
	octave 3
	note D_, 1
	octave 5
	note D_, 1
	octave 3
	note D_, 1
	sound_loop 2, gbs_KantoLegend_Ch1_L8
@ Pat 6 Row 0
gbs_KantoLegend_Ch1_L9:
	octave 4
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	octave 2
	note E_, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	sound_loop 3, gbs_KantoLegend_Ch1_L9
	octave 4
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	octave 3
	note E_, 1
	octave 5
	note E_, 1
	octave 3
	note E_, 1
	volume_envelope 7, 4
	note A_, 1
	note B_, 1
	octave 4
	note D_, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note D_, 1
@ Pat 7 Row 0
	duty_cycle 1
	volume_envelope 12, 5
	octave 3
	note G_, 6
	note Fs, 6
	note E_, 4
	note G_, 6
	note A_, 6
	note G_, 4
	octave 4
	note Gs, 12
	note G_, 2
	rest 2
	note Gs, 2
	note G_, 2
	rest 4
	volume_envelope 11, 7
	octave 5
	note Cs, 8
@ Pat 8 Row 0
	volume_envelope 12, 5
	octave 4
	note C_, 6
	octave 3
	note As, 6
	note Gs, 4
	octave 4
	note Cs, 6
	note C_, 6
	octave 3
	note As, 4
	octave 4
	note F_, 6
	note E_, 6
	note D_, 4
	volume_envelope 12, 7
	octave 3
	note As, 4
	octave 4
	note C_, 4
	note D_, 4
	note F_, 4
@ Pat 9 Row 0
	volume_envelope 12, 0
	note Gs, 16
	volume_envelope 11, 0
	note Gs, 16
	volume_envelope 4, -6
	note G_, 16
	volume_envelope 12, 7
	note G_, 16
@ Pat 10 Row 0
	octave 3
	note F_, 8
	note As, 8
	octave 4
	note D_, 8
	note F_, 8
	volume_envelope 12, 0
	note E_, 16
	volume_envelope 12, 7
	note E_, 16
@ Pat 11 Row 0
	octave 3
	note F_, 8
	note As, 8
	octave 4
	note D_, 8
	note F_, 8
	volume_envelope 12, 0
	note G_, 16
	volume_envelope 3, -7
	octave 5
	note C_, 16
@ Pat 12 Row 0
	duty_cycle 2
	volume_envelope 4, 3
	note C_, 1
	note E_, 1
	note G_, 1
	octave 6
	note C_, 1
	octave 5
	note C_, 1
	octave 6
	note C_, 1
	octave 5
	note G_, 1
	note C_, 1
	note E_, 1
	note G_, 1
	octave 6
	note C_, 1
	octave 5
	note G_, 1
	note E_, 1
	note C_, 1
	note E_, 1
	octave 6
	note C_, 1
	octave 5
	note G_, 1
	note E_, 1
	note C_, 1
	note E_, 1
	octave 6
	note C_, 1
	octave 5
	note G_, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	octave 6
	note C_, 1
	octave 5
	note F_, 1
	note G_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A_, 1
	octave 6
	note D_, 1
	octave 5
	note D_, 1
	octave 6
	note D_, 1
	octave 5
	note A_, 1
	note D_, 1
	note F_, 1
	note A_, 1
	octave 6
	note D_, 1
	octave 5
	note A_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	octave 6
	note D_, 1
	octave 5
	note A_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	octave 6
	note D_, 1
	octave 5
	note A_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	octave 6
	note D_, 1
	octave 5
	note G_, 1
	note A_, 1
	note G_, 1
	note D_, 1
	note G_, 1
@ Pat 13 Row 0
gbs_KantoLegend_Ch1_L10:
	note E_, 1
	note G_, 1
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note E_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	note E_, 1
	note G_, 1
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	octave 6
	note E_, 1
	octave 5
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note E_, 1
	octave 5
	note A_, 1
	note B_, 1
	note A_, 1
	note E_, 1
	note A_, 1
	sound_loop 2, gbs_KantoLegend_Ch1_L10
@ Pat 14 Row 0
	duty_cycle 1
	volume_envelope 12, 5
	octave 4
	note E_, 12
	note E_, 2
	rest 2
	note F_, 2
	volume_envelope 12, 2
	note E_, 4
	rest 10
	volume_envelope 12, 5
	note F_, 12
	note F_, 2
	rest 2
	note Gs, 2
	volume_envelope 12, 2
	note G_, 6
	volume_envelope 12, 5
	note F_, 8
@ Pat 15 Row 0
	note G_, 12
	note G_, 2
	rest 2
	note A_, 2
	volume_envelope 12, 2
	note G_, 4
	rest 10
	volume_envelope 12, 5
	note G_, 12
	note G_, 2
	rest 2
	note A_, 2
	volume_envelope 12, 2
	note G_, 6
	volume_envelope 12, 5
	note G_, 9
	sound_loop 0, gbs_KantoLegend_Ch1_L

gbs_KantoLegend_Ch2:
	gbs_switch 1
@ Pat 0 Row 0
	duty_cycle 1
	note_type 12, 12, 2
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 4
	note G_, 1
@ Pat 1 Row 0
	octave 2
gbs_KantoLegend_Ch2_L1:
	note C_, 2
	note C_, 6
	sound_loop 4, gbs_KantoLegend_Ch2_L1
gbs_KantoLegend_Ch2_L2:
	note D_, 2
	note D_, 6
	sound_loop 4, gbs_KantoLegend_Ch2_L2
@ Pat 2 Row 0
gbs_KantoLegend_Ch2_L3:
	note E_, 2
	note E_, 6
	sound_loop 6, gbs_KantoLegend_Ch2_L3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
@ Pat 3 Row 0
	volume_envelope 11, 7
gbs_KantoLegend_Ch2_L:
	sound_call gbs_KantoLegend_Ch2_P_C
	sound_call gbs_KantoLegend_Ch2_P_Dm
@ Pat 4 Row 0
	sound_call gbs_KantoLegend_Ch2_P_Em
@ Pat 5 Row 0
	sound_call gbs_KantoLegend_Ch2_P_C
	sound_call gbs_KantoLegend_Ch2_P_Dm
@ Pat 6 Row 0
	sound_call gbs_KantoLegend_Ch2_P_Em
@ Pat 7 Row 0
	sound_call gbs_KantoLegend_Ch2_P_C2
	sound_call gbs_KantoLegend_Ch2_P_Cs
@ Pat 8 Row 0
	sound_call gbs_KantoLegend_Ch2_P_C2
	sound_call gbs_KantoLegend_Ch2_P_C2
@ Pat 9 Row 0
	sound_call gbs_KantoLegend_Ch2_P_Cs
	sound_call gbs_KantoLegend_Ch2_P_C
@ Pat 10 Row 0
	note C_, 2
	note C_, 2
	note As, 4
	note C_, 2
	note C_, 2
	note As, 4
	note C_, 2
	note F_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	note As, 4
	sound_call gbs_KantoLegend_Ch2_P_C
@ Pat 11 Row 0
	note C_, 2
	note C_, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note C_, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note G_, 2
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	sound_call gbs_KantoLegend_Ch2_P_C
@ Pat 12 Row 0
	sound_call gbs_KantoLegend_Ch2_P_C
	sound_call gbs_KantoLegend_Ch2_P_Dm
@ Pat 13 Row 0
	sound_call gbs_KantoLegend_Ch2_P_Em
@ Pat 14 Row 0
	sound_call gbs_KantoLegend_Ch2_P_C
	sound_call gbs_KantoLegend_Ch2_P_Dm
@ Pat 15 Row 0
	sound_call gbs_KantoLegend_Ch2_P_Em
	sound_loop 0, gbs_KantoLegend_Ch2_L

gbs_KantoLegend_Ch2_P_C:
	octave 1
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	note C_, 2
	note G_, 2
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	sound_ret

gbs_KantoLegend_Ch2_P_C2:
	octave 1
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note F_, 2
	note C_, 2
	note G_, 2
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note C_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note Fs, 2
	sound_ret

gbs_KantoLegend_Ch2_P_Cs:
	note Cs, 2
	octave 2
	note Cs, 2
	octave 1
	note Gs, 2
	note Fs, 2
	note Cs, 2
	octave 2
	note Cs, 2
	octave 1
	note Gs, 2
	note Fs, 2
	note Cs, 2
	note Gs, 2
	note Fs, 2
	octave 2
	note Cs, 2
	octave 1
	note Cs, 2
	octave 2
	note Cs, 2
	octave 1
	note Gs, 2
	note Fs, 2
	sound_ret

gbs_KantoLegend_Ch2_P_Dm:
	octave 1
	note D_, 2
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	note G_, 2
	note D_, 2
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	note G_, 2
	note D_, 2
	note A_, 2
	note G_, 2
	octave 2
	note D_, 2
	octave 1
	note D_, 2
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	note G_, 2
	sound_ret

gbs_KantoLegend_Ch2_P_Em:
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	note E_, 2
	note B_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	note E_, 2
	note B_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	note A_, 2
	sound_ret

gbs_KantoLegend_Ch3:
	gbs_switch 2
@ Pat 0 Row 0
	note_type 12, 1, 4
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	octave 4
	note C_, 1
	octave 3
	note Cs, 1
	rest 1
	note Cs, 1
	octave 4
	note Cs, 1
	octave 3
	note D_, 1
	rest 1
	note D_, 1
	octave 4
	note D_, 1
	octave 3
	note Ds, 1
	rest 1
	note Ds, 1
	octave 4
	note Ds, 1
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	octave 4
	note E_, 1
	octave 3
	note F_, 1
	rest 1
	note F_, 1
	octave 4
	note F_, 1
	octave 3
	note Fs, 1
	rest 1
	note Fs, 1
	octave 4
	note Fs, 1
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	octave 4
	note G_, 1
@ Pat 1 Row 0
	sound_call gbs_KantoLegend_Ch3_P1
@ Pat 2 Row 0
@ Pat 3 Row 0
gbs_KantoLegend_Ch3_L:
	volume_envelope 1, 4
	sound_call gbs_KantoLegend_Ch3_P1
@ Pat 4 Row 0
@ Pat 5 Row 0
	sound_call gbs_KantoLegend_Ch3_P1
@ Pat 6 Row 0
@ Pat 7 Row 0
	volume_envelope 2, 6
	note Cs, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	note Cs, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
@ Pat 8 Row 0
	note A_, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
@ Pat 9 Row 0
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
@ Pat 10 Row 0
	volume_envelope 1, 6
	note D_, 4
	note C_, 4
	note D_, 4
	note F_, 4
	note E_, 6
	note D_, 6
	note F_, 4
	note A_, 16
	note G_, 16
@ Pat 11 Row 0
	note D_, 4
	note C_, 4
	note D_, 4
	note F_, 4
	note G_, 6
	note A_, 6
	note B_, 4
	octave 5
	note C_, 16
	octave 4
	note G_, 8
	volume_envelope 2, 0
	note A_, 1
	note B_, 1
	octave 5
	note D_, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note D_, 1
@ Pat 12 Row 0
	note E_, 4
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 12
@ Pat 14 Row 0
	volume_envelope 1, 0
	octave 4
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
@ Pat 15 Row 0
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	sound_loop 0, gbs_KantoLegend_Ch3_L

gbs_KantoLegend_Ch3_P1:
	octave 3
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	sound_ret

	.align 4
gbs_KantoLegend:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_KantoLegend_Ch1
	.int gbs_KantoLegend_Ch2
	.int gbs_KantoLegend_Ch3
