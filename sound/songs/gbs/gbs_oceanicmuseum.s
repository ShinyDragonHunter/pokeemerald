	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_OceanicMuseumRSE
	.align 2

@ Pokémon R/S/E - Oceanic Museum
@ Demixed by Pigu and PikalaxALT, ported to GBS by ShinyDragonHunter
@ https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/audio/music/custom/ssanne.asm
@ https://pigu-a.bandcamp.com/album/pok-mon-anniversary-crystal-pigus-arranges

gbs_Music_OceanicMuseumRSE:
	channel_count 4
	channel 1, Music_OceanicMuseumRSE_Ch1
	channel 2, Music_OceanicMuseumRSE_Ch2
	channel 3, Music_OceanicMuseumRSE_Ch3
	channel 4, Music_OceanicMuseumRSE_Ch4

gbs_Music_OceanicMuseumRSE_Ch1:
	gbs_switch 0
Music_OceanicMuseumRSE_Ch1:
@ Pat 0 Row 0
	tempo 213
	duty_cycle 3
	note_type 12, 13, 6
	stereo_panning FALSE, TRUE
	octave 2
	note A_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 2
	note Cs, 2
	note D_, 2
	octave 3
	note E_, 9
	octave 2
	note A_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 2
	note E_, 2
	note Fs, 2
	octave 3
	note A_, 9
@ Pat 1 Row 0
	note_type 8, 8, 3
	duty_cycle 2
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note Cs, 1
	octave 3
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note Cs, 1
	note_type 6, 8, 3
	octave 3
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note Cs, 1
	octave 4
	note Cs, 1
	note D_, 1
	note E_, 1
	note G_, 1
	note B_, 1
	octave 5
	note Cs, 1
	note D_, 1
	note E_, 1
	octave 4
	note Fs, 1
	note G_, 1
	note A_, 1
	octave 5
	note Cs, 1
	note E_, 1
	note Fs, 1
	note G_, 1
	note A_, 1
	octave 4
	note A_, 1
	note B_, 1
	octave 5
	note Cs, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note Cs, 1
@ Pat 2 Row 0
	note_type 8, 8, 3
	note D_, 6
Music_OceanicMuseumRSE_Ch1_L:
	duty_cycle 3
	volume_envelope 13, 6
	octave 3
	note A_, 12
	octave 4
	note E_, 6
	note D_, 12
	note Cs, 6
	octave 3
	note A_, 12
@ Pat 3 Row 6
	note A_, 6
	note B_, 12
	octave 4
	note D_, 12
	note Cs, 6
	octave 3
	note A_, 12
@ Pat 4 Row 6
	note A_, 12
	octave 4
	note E_, 6
	note D_, 12
	note Cs, 6
	octave 3
	note A_, 12
@ Pat 5 Row 6
	note A_, 6
	note B_, 12
	octave 4
	note D_, 12
	note Cs, 12
@ Pat 6 Row 0
	duty_cycle 2
	volume_envelope 8, 3
	octave 3
	note Fs, 3
	octave 2
	note B_, 3
	octave 3
	note Fs, 3
	note B_, 3
	note Fs, 3
	octave 2
	note B_, 3
	octave 3
	note Fs, 3
	note B_, 3
	note E_, 3
	octave 2
	note A_, 3
	octave 3
	note E_, 3
	note A_, 3
	note E_, 3
	octave 2
	note A_, 3
	octave 3
	note E_, 3
	note A_, 3
@ Pat 7 Row 0
	note D_, 3
	octave 2
	note G_, 3
	octave 3
	note D_, 3
	note G_, 3
	note D_, 3
	octave 2
	note G_, 3
	octave 3
	note D_, 3
	note G_, 3
	note Cs, 3
	octave 2
	note A_, 3
	octave 3
	note Cs, 3
	note Fs, 3
	note Cs, 3
	octave 2
	note A_, 3
	octave 3
	note Cs, 3
	note Fs, 3
@ Pat 8 Row 0
	volume_envelope 8, 8
	vibrato 16, 2, 2
	note G_, 9
	rest 3
	note G_, 3
	note A_, 3
	note G_, 3
	note E_, 3
	note Fs, 9
	note G_, 3
	note A_, 3
	octave 4
	note Cs, 3
	note D_, 3
	note Fs, 3
@ Pat 9 Row 0
	note_type 6, 8, 3
	vibrato 0, 0, 0
	octave 3
	note E_, 1
	rest 1
	note E_, 8
	note E_, 4
	note E_, 1
	rest 1
	note_type 8, 8, 8
	vibrato 16, 2, 2
	note E_, 6
	note B_, 3
	octave 4
	note Cs, 3
	note D_, 12
	note E_, 12
@ Pat 10 Row 0
	duty_cycle 3
	volume_envelope 13, 6
	vibrato 0, 0, 0
	note D_, 3
	octave 3
	note A_, 3
	octave 4
	note D_, 6
	note E_, 6
	note G_, 6
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 3
	note D_, 3
	note E_, 6
	note Cs, 6
@ Pat 11 Row 0
	note D_, 3
	note E_, 3
	note Fs, 6
	note G_, 6
	note Fs, 3
	note E_, 3
	note A_, 6
	note G_, 3
	note Fs, 3
	note E_, 6
	octave 3
	note Fs, 3
	note E_, 3
@ Pat 12 Row 0
	note Fs, 3
	note D_, 3
	note_type 12, 13, 6
	octave 2
	note A_, 4
	octave 3
	note E_, 2
	rest 1
	note Fs, 2
	rest 1
	note G_, 2
	note_type 8, 13, 6
	note Fs, 2
	note G_, 2
	note Fs, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note E_, 6
	note Cs, 6
@ Pat 13 Row 0
	note B_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	octave 2
	note Fs, 2
	note G_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G_, 2
	note A_, 6
	rest 2
	note G_, 2
	note Fs, 2
	note E_, 12
	rest 6
	sound_loop 0, Music_OceanicMuseumRSE_Ch1_L


gbs_Music_OceanicMuseumRSE_Ch2:
	gbs_switch 1
Music_OceanicMuseumRSE_Ch2:
@ Pat 0 Row 0
	duty_cycle 1
	note_type 12, 13, 6
	stereo_panning TRUE, FALSE
	octave 3
	note D_, 2
	note G_, 2
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	octave 3
	note A_, 9
	note D_, 2
	note G_, 2
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
	note G_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note E_, 7
	note Cs, 1
	note D_, 1
@ Pat 1 Row 0
	note_type 8, 13, 6
	note Cs, 16
	note_type 6, 13, 6
	rest 8
	octave 3
	note A_, 8
	octave 4
	note D_, 8
	note Cs, 8
@ Pat 2 Row 0
	note_type 8, 13, 6
Music_OceanicMuseumRSE_Ch2_L:
	note D_, 3
	octave 3
	note A_, 3
	octave 4
	note D_, 6
	note E_, 6
	note G_, 6
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 3
	note D_, 3
	note E_, 6
	note Cs, 6
@ Pat 3 Row 0
	note D_, 3
	note E_, 3
	note Fs, 6
	note G_, 6
	note Fs, 3
	note E_, 3
	note A_, 6
	note G_, 3
	note Fs, 3
	note E_, 6
	note Fs, 3
	note E_, 3
@ Pat 4 Row 0
	note D_, 3
	octave 3
	note A_, 3
	octave 4
	note D_, 6
	note E_, 6
	note G_, 6
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 3
	note D_, 3
	note E_, 6
	note Cs, 6
@ Pat 5 Row 0
	note D_, 3
	note E_, 3
	note Fs, 6
	note G_, 6
	note Fs, 3
	note E_, 3
	note A_, 6
	note G_, 3
	note Fs, 3
	note E_, 15
@ Pat 6 Row 3
	duty_cycle 0
	volume_envelope 14, 8
	vibrato 7, 1, 2
	note Fs, 3
	note E_, 3
	note Fs, 2
	rest 1
	note Fs, 3
	note G_, 3
	note Fs, 3
	note G_, 3
	note A_, 3
	note E_, 3
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 3
	note E_, 3
@ Pat 7 Row 0
	rest 3
	note D_, 3
	note Cs, 3
	note D_, 2
	rest 1
	note D_, 3
	note E_, 3
	note D_, 3
	note E_, 3
	note Fs, 3
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 2
	rest 1
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 3
	note E_, 3
@ Pat 8 Row 0
	rest 3
	octave 3
	note B_, 3
	note A_, 3
	note B_, 2
	rest 1
	note B_, 3
	octave 4
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note Cs, 3
	note D_, 3
	octave 3
	note A_, 3
	note Fs, 3
	note E_, 3
	note D_, 3
	note E_, 3
	note Fs, 3
	note A_, 3
@ Pat 9 Row 0
	rest 3
	note B_, 3
	note A_, 3
	note B_, 2
	rest 1
	note B_, 3
	octave 4
	note Cs, 3
	note D_, 3
	note E_, 3
	note Fs, 3
	note G_, 3
	note Fs, 3
	note E_, 3
	note A_, 3
	note G_, 3
	note Fs, 3
	note E_, 3
@ Pat 10 Row 0
	note Fs, 12
	note G_, 2
	note E_, 2
	note Cs, 2
	octave 3
	note A_, 2
	note E_, 2
	note Cs, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note B_, 6
	note A_, 12
@ Pat 11 Row 0
	note B_, 11
	rest 1
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note Cs, 2
	note D_, 6
	note E_, 3
	note D_, 3
	note Cs, 6
	octave 3
	note B_, 3
	octave 4
	note Cs, 3
@ Pat 12 Row 0
	note D_, 2
	rest 1
	octave 3
	note A_, 2
	rest 1
	octave 4
	note D_, 2
	rest 1
	note_type 12, 14, 8
	note E_, 1
	note Fs, 1
	note G_, 2
	rest 1
	note Fs, 2
	rest 1
	note E_, 2
	note_type 8, 14, 8
	note Fs, 5
	rest 1
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 6
	note Fs, 6
@ Pat 13 Row 0
	note B_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	octave 3
	note Fs, 2
	note G_, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note G_, 2
	note A_, 6
	rest 2
	note E_, 2
	note B_, 2
	note A_, 12
	duty_cycle 1
	volume_envelope 13, 6
	vibrato 0, 0, 0
	sound_loop 0, Music_OceanicMuseumRSE_Ch2_L


gbs_Music_OceanicMuseumRSE_Ch3:
	gbs_switch 2
Music_OceanicMuseumRSE_Ch3:
@ Pat 0 Row 0
	note_type 12, 1, 3
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 6
	rest 4
	note D_, 1
	rest 1
	note D_, 1
	rest 5
	octave 4
	note Cs, 7
	octave 3
	note Cs, 2
	note D_, 4
	octave 2
	note A_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note D_, 1
	octave 2
	note A_, 1
	octave 3
	note D_, 4
	octave 2
	note A_, 1
	rest 1
	octave 3
	note Cs, 9
@ Pat 1 Row 0
	note_type 8, 1, 3
	octave 2
	note A_, 16
	note_type 12, 1, 3
	rest 16
Music_OceanicMuseumRSE_Ch3_L:
@ Pat 2 Row 0
	note_type 8, 1, 3
	note D_, 12
	note A_, 12
	note B_, 12
	note A_, 12
@ Pat 3 Row 0
	note D_, 12
	note E_, 12
	note A_, 12
	note A_, 6
	note Cs, 6
@ Pat 4 Row 0
	note D_, 12
	octave 1
	note A_, 12
	note B_, 12
	octave 2
	note Cs, 12
@ Pat 5 Row 0
	note D_, 12
	note E_, 12
	note A_, 12
	note A_, 6
	note Cs, 6
@ Pat 6 Row 0
	note B_, 2
	rest 4
	note B_, 2
	rest 4
	note B_, 2
	rest 4
	note B_, 2
	rest 4
	note A_, 2
	rest 4
	note A_, 2
	rest 4
	note A_, 2
	rest 4
	note A_, 2
	rest 4
@ Pat 7 Row 0
	note G_, 2
	rest 4
	note G_, 2
	rest 4
	note G_, 2
	rest 4
	note G_, 2
	rest 4
	note Fs, 2
	rest 4
	note A_, 2
	rest 4
	octave 3
	note Cs, 2
	rest 4
	octave 2
	note Fs, 2
	rest 4
@ Pat 8 Row 0
	note G_, 10
	rest 2
	note G_, 9
	octave 1
	note G_, 3
	octave 2
	note D_, 9
	note A_, 3
	note D_, 12
@ Pat 15 Row 0
	note_type 6, 1, 3
	note E_, 1
	rest 1
	note E_, 8
	rest 4
	note E_, 1
	rest 1
	note E_, 12
	note B_, 2
	rest 2
	note A_, 12
	note Fs, 2
	note G_, 2
	note A_, 12
	octave 1
	note A_, 2
	octave 2
	note Cs, 2
@ Pat 16 Row 0
	note D_, 12
	note D_, 1
	rest 1
	note D_, 2
	note A_, 2
	rest 4
	octave 1
	note A_, 6
	octave 2
	note A_, 4
	note B_, 4
	rest 8
	note B_, 1
	rest 1
	octave 1
	note B_, 2
	octave 2
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 3
	note A_, 2
	rest 2
	octave 1
	note A_, 2
@ Pat 17 Row 0
	octave 2
	note G_, 4
	rest 8
	note G_, 1
	rest 1
	note G_, 2
	note E_, 2
	rest 4
	octave 3
	note E_, 6
	octave 2
	note E_, 4
	note A_, 4
	rest 8
	note A_, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 3
	note A_, 2
	rest 2
	octave 1
	note A_, 2
@ Pat 18 Row 0
	octave 2
	note D_, 4
	rest 8
	note D_, 1
	rest 1
	note D_, 2
	note G_, 2
	note D_, 2
	rest 2
	note As, 4
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	note D_, 1
	rest 1
	note D_, 2
	rest 2
	note D_, 2
	rest 4
	octave 3
	note D_, 1
	rest 1
	octave 2
	note D_, 2
	octave 3
	note Cs, 2
	octave 2
	note Cs, 2
	rest 2
	note Cs, 2
	rest 2
	octave 3
	note Fs, 2
	rest 2
	octave 2
	note As, 2
@ Pat 19 Row 0
	note B_, 4
	rest 2
	note B_, 2
	rest 4
	note B_, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note E_, 6
	octave 2
	note E_, 3
	rest 1
	note E_, 2
	note B_, 2
	note E_, 2
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 2
	rest 4
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
	note A_, 1
	rest 3
	octave 3
	note Cs, 2
	rest 2
	octave 2
	note Cs, 2
	sound_loop 0, Music_OceanicMuseumRSE_Ch3_L


gbs_Music_OceanicMuseumRSE_Ch4:
	gbs_switch 3
Music_OceanicMuseumRSE_Ch4:
	drum_speed 12
	toggle_noise 3
	stereo_panning TRUE, TRUE
Music_OceanicMuseumRSE_Ch4_L1:
	rest 9
	sound_loop 6, Music_OceanicMuseumRSE_Ch4_L1 @ 54 rows
	drum_speed 8
	rest 16
	drum_speed 12
	rest 16
Music_OceanicMuseumRSE_Ch4_L:
	rest 16
	sound_loop 12, Music_OceanicMuseumRSE_Ch4_L @ 6 pats
@ Pat 14 Row 0
	drum_speed 6
Music_OceanicMuseumRSE_Ch4_L2:
	rest 8
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	sound_loop 4, Music_OceanicMuseumRSE_Ch4_L2
@ Pat 15 Row 0
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 10
	rest 16
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 4, 2
	drum_note 9, 2
	drum_note 1, 2
	drum_note 9, 2
	drum_note 1, 2
	drum_note 9, 2
	drum_note 1, 2
	drum_note 9, 2
@ Pat 16 Row 0
	drum_note 4, 4
	drum_note 8, 4
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 8, 4
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 8, 2
	drum_note 7, 2
@ Pat 17 Row 0
	drum_note 8, 4
	drum_note 4, 4
	drum_note 9, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 8, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 8, 2
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
@ Pat 18 Row 0
	drum_note 4, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 8, 2
	drum_note 7, 2
@ Pat 19 Row 0
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 8, 2
	drum_note 7, 2
	drum_note 8, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 8
	drum_speed 12
	sound_loop 0, Music_OceanicMuseumRSE_Ch4_L
