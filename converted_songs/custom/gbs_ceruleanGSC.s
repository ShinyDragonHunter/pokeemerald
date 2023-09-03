	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_CeruleanGSC
	.align 2

@ Pokémon HG/SS - Cerulean City
@ Demixed by FroggestSpirit, ported to GBS by ShinyDragonHunter
@ https://github.com/froggestspirit/CrystalComplete/blob/master/audio/music/custom/ceruleanGSC.asm

gbs_Music_CeruleanGSC:
	channel_count 4
	channel 1, Music_CeruleanGSC_Ch1
	channel 2, Music_CeruleanGSC_Ch2
	channel 3, Music_CeruleanGSC_Ch3
	channel 4, Music_CeruleanGSC_Ch4

gbs_Music_CeruleanGSC_Ch1:
	gbs_switch 0
Music_CeruleanGSC_Ch1:
	tempo 148
	volume 7, 7
	note_type 12, 11, 2
	stereo_panning FALSE, TRUE
	pitch_offset 1
	duty_cycle 2
@Channel1_Bar1:
	octave 4
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
Music_CeruleanGSC_Loop1:
@Channel1_Bar2:
	volume_envelope 11, 1
	octave 3
	note Gs, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
@Channel1_Bar3:
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note Ds, 2
	octave 3
	note B_, 2
	octave 4
	note Ds, 2
@Channel1_Bar4:
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
@Channel1_Bar5:
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note Ds, 2
	note B_, 2
	note Ds, 2
	note B_, 2
@Channel1_Bar6:
	octave 3
	note B_, 4
	note B_, 2
	note Gs, 1
	note Gs, 1
	note E_, 2
	note Fs, 2
	volume_envelope 11, 4
	note Gs, 1
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
@Channel1_Bar7:
	octave 3
	note B_, 6
	octave 4
	note Cs, 1
	octave 3
	note B_, 1
	note A_, 8
@Channel1_Bar8:
	volume_envelope 11, 2
	note Gs, 1
	note Gs, 1
	note Gs, 1
	note Gs, 1
	note Gs, 2
	note Gs, 1
	note Gs, 1
	note E_, 2
	note Fs, 2
	volume_envelope 11, 4
	note Gs, 1
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
@Channel1_Bar9:
	octave 3
	note B_, 6
	note Gs, 1
	note B_, 1
	octave 4
	note Ds, 8
@Channel1_Bar10:
	octave 3
	note E_, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	rest 3
	note B_, 4
	note Gs, 4
@Channel1_Bar11:
	note B_, 2
	note B_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	rest 3
	note Ds, 4
	octave 3
	note B_, 4
@Channel1_Bar12:
	note A_, 1
	note Gs, 1
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
	rest 1
	note Cs, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	note E_, 1
	rest 1
	note E_, 1
	note Fs, 1
	note E_, 1
	note Fs, 1
@Channel1_Bar13:
	octave 5
	note B_, 1
	note Fs, 1
	note Ds, 1
	note Cs, 1
	octave 4
	note B_, 1
	octave 5
	note Cs, 1
	note Ds, 1
	note Fs, 1
	note B_, 8
@Channel1_Bar14:
	volume_envelope 11, 6
	octave 3
	note Gs, 8
	note Gs, 4
	note B_, 4
@Channel1_Bar15:
	octave 4
	note E_, 4
	note Fs, 4
	note Gs, 8
@Channel1_Bar16:
	note Ds, 8
	octave 3
	note B_, 4
	octave 4
	note B_, 4
@Channel1_Bar17:
	note A_, 4
	note B_, 4
	volume_envelope 11, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	note C_, 2
@Channel1_Bar18:
	sound_loop 0, Music_CeruleanGSC_Loop1

gbs_Music_CeruleanGSC_Ch2:
	gbs_switch 1
Music_CeruleanGSC_Ch2:
@Channel2_Bar1:
	stereo_panning TRUE, FALSE
	vibrato 12, 3, 4
	duty_cycle 2
	note_type 2, 12, 2
	pitch_offset 2
	rest 2
	note_type 12, 12, 2
	octave 5
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note Cs, 2
	note_type 2, 12, 2
	note Ds, 10
@Channel2_Bar2:
Music_CeruleanGSC_Loop2:
	note_type 12, 12, 2
	note E_, 6
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
@Channel2_Bar3:
	volume_envelope 12, 4
	note Gs, 6
	note A_, 1
	note Gs, 1
	note Fs, 14
@Channel2_Bar4:
	volume_envelope 12, 2
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
@Channel2_Bar5:
	volume_envelope 12, 4
	note Gs, 6
	note E_, 1
	note Gs, 1
	note B_, 14
@Channel2_Bar6:
	volume_envelope 12, 2
	duty_cycle 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
@Channel2_Bar7:
	volume_envelope 12, 4
	note Gs, 6
	note A_, 1
	note Gs, 1
	note Fs, 8
@Channel2_Bar8:
	volume_envelope 12, 2
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 2
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
@Channel2_Bar9:
	volume_envelope 12, 4
	note Gs, 6
	note E_, 1
	note Gs, 1
	note B_, 8
@Channel2_Bar10:
	octave 3
	note Cs, 1
	octave 2
	note B_, 1
	octave 3
	note Cs, 1
	note Ds, 1
	note E_, 1
	rest 3
	duty_cycle_pattern 0, 0, 2, 2
	duty_cycle 0
	stereo_panning TRUE, TRUE
	octave 4
	note Gs, 4
	note E_, 4
@Channel2_Bar11:
	duty_cycle_pattern 1, 1, 1, 1
	stereo_panning TRUE, FALSE
	duty_cycle 1
	octave 3
	note Ds, 1
	note Cs, 1
	note Ds, 1
	note E_, 1
	note Fs, 1
	rest 3
	duty_cycle_pattern 0, 0, 2, 2
	stereo_panning TRUE, TRUE
	duty_cycle 0
	octave 4
	note B_, 4
	note Fs, 4
@Channel2_Bar12:
	duty_cycle_pattern 1, 1, 1, 1
	stereo_panning TRUE, FALSE
	duty_cycle 1
	octave 3
	note Cs, 1
	octave 2
	note B_, 1
	octave 3
	note Cs, 1
	note Ds, 1
	note E_, 1
	rest 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note Fs, 1
	note Gs, 1
	rest 1
	note Gs, 1
	note A_, 1
	note Gs, 1
	note A_, 1
@Channel2_Bar13:
	note B_, 1
	note Fs, 1
	note Ds, 1
	note Cs, 1
	octave 2
	note B_, 1
	octave 3
	note Cs, 1
	note Ds, 1
	note Fs, 1
	note B_, 8
@Channel2_Bar14:
	duty_cycle_pattern 0, 0, 2, 2
	volume_envelope 12, 6
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 4
	note E_, 8
	octave 3
	note B_, 4
	octave 4
	note Fs, 4
@Channel2_Bar15:
	note Gs, 4
	note A_, 4
	note B_, 8
@Channel2_Bar16:
	note B_, 8
	note Gs, 4
	octave 5
	note Ds, 4
@Channel2_Bar17:
	note Cs, 4
	note Ds, 4
	duty_cycle_pattern 2, 2, 2, 2
	note_type 2, 12, 2
	stereo_panning TRUE, FALSE
	rest 2
	note_type 12, 12, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	note_type 2, 12, 2
	note Ds, 10
@Channel2_Bar18:
	sound_loop 0, Music_CeruleanGSC_Loop2

gbs_Music_CeruleanGSC_Ch3:
	gbs_switch 2
Music_CeruleanGSC_Ch3:
	note_type 6, 1, 5
	vibrato 12, 2, 4
@Channel3_Bar1:
	rest 16
	octave 4
	note E_, 3
	rest 1
	note Ds, 3
	rest 1
	note Cs, 3
	rest 1
	note C_, 3
	rest 1
@Channel3_Bar2:
Music_CeruleanGSC_Loop3:
	octave 1
	note E_, 2
	rest 6
	note E_, 2
	rest 4
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
	octave 1
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
@Channel3_Bar3:
	octave 1
	note Fs, 2
	rest 6
	note Fs, 2
	rest 4
	octave 2
	note Cs, 2
	octave 1
	note B_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 1
	note B_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
@Channel3_Bar4:
	octave 1
	note E_, 2
	rest 6
	note E_, 2
	rest 4
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
	octave 1
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
@Channel3_Bar5:
	octave 1
	note Fs, 2
	rest 6
	note Fs, 2
	rest 4
	octave 2
	note Cs, 2
	octave 1
	note B_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 1
	note B_, 2
	octave 2
	note B_, 2
	octave 4
	note B_, 2
	octave 3
	note B_, 2
@Channel3_Bar6:
	octave 1
	note E_, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 5
	note Gs, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	stereo_panning FALSE, TRUE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 2
@Channel3_Bar7:
	note Fs, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 6
	note Cs, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 1
	note Fs, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 6
	note Cs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note Cs, 2
	octave 1
	note B_, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 6
	note Ds, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note B_, 2
	stereo_panning FALSE, TRUE
	octave 6
	note Ds, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note B_, 2
	octave 2
	note E_, 2
@Channel3_Bar8:
	octave 3
	note E_, 2
	octave 4
	note E_, 2
	octave 5
	note E_, 2
	octave 1
	note E_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	stereo_panning FALSE, TRUE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 2
	note Fs, 2
@Channel3_Bar9:
	rest 2
	stereo_panning TRUE, FALSE
	octave 5
	note E_, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 1
	note Fs, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 5
	note E_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 2
	note Cs, 2
	octave 1
	note B_, 2
	rest 2
	stereo_panning TRUE, FALSE
	octave 5
	note Fs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note B_, 2
	note Gs, 2
	octave 4
	note Ds, 2
	stereo_panning FALSE, TRUE
	octave 5
	note Gs, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 3
	note Gs, 2
	octave 2
	note Cs, 2
@Channel3_Bar10:
	rest 6
	note Cs, 2
	rest 4
	note Cs, 1
	rest 1
	note Cs, 2
	rest 2
	octave 3
	note Cs, 2
	rest 2
	octave 2
	note Cs, 2
	rest 2
	octave 3
	note Cs, 2
	rest 2
	octave 1
	note Gs, 2
@Channel3_Bar11:
	rest 6
	note Gs, 2
	rest 4
	note Gs, 1
	rest 1
	note Gs, 2

	rest 2
	octave 2
	note Gs, 2
	rest 2
	octave 1
	note Gs, 2
	rest 2
	octave 2
	note Gs, 2
	rest 2
@Channel3_Bar12:
	octave 1
	note A_, 4
	octave 2
	note A_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
	note Gs, 4
	octave 2
	note Gs, 2
	rest 2
	octave 1
	note Gs, 2
	rest 2
	note Fs, 4
	octave 2
	note Fs, 2
	rest 2
	octave 1
	note Fs, 2
@Channel3_Bar13:
	rest 2
	note B_, 2
	rest 2
	note B_, 8
	rest 16
	rest 4
@Channel3_Bar14:
	octave 2
	note E_, 2
	rest 2
	octave 1
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 6
	note E_, 2
	rest 2
	octave 1
	note E_, 2
	rest 2
@Channel3_Bar15:
	octave 2
	note E_, 2
	rest 6
	note Fs, 2
	rest 2
	octave 1
	note Fs, 2
	rest 2
	octave 2
	note Fs, 2
	rest 6
	note Fs, 2
	rest 2
	octave 1
	note Fs, 2
	rest 2
@Channel3_Bar16:
	octave 2
	note Fs, 2
	rest 6
	note Gs, 2
	rest 2
	octave 1
	note Gs, 2
	rest 2
	octave 2
	note Gs, 2
	rest 6
	note Gs, 2
	rest 2
	octave 1
	note Gs, 2
	rest 2
@Channel3_Bar17:
	octave 2
	note Gs, 2
	rest 6
	note A_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
	octave 2
	note A_, 2
	rest 6
	note A_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
@Channel3_Bar18:
	octave 2
	note A_, 2
	rest 2
	sound_loop 0, Music_CeruleanGSC_Loop3

gbs_CeruleanGSC_Ch4:
	gbs_switch 3
gbs_Music_CeruleanGSC_Ch4:
	drum_speed 12
	toggle_noise 0
@Channel4_Bar1:
	rest 16
@Channel4_Bar2:
Music_CeruleanGSC_Loop4:
	drum_note 11, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar3:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar4:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar5:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 6, 1
@Channel4_Bar6:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar7:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 11, 2
@Channel4_Bar8:
	drum_note 6, 1
	drum_note 6, 1
	drum_note 8, 1
	drum_note 6, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar9:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 11, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 6, 1
@Channel4_Bar10:
	drum_note 11, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar11:
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 11, 2
@Channel4_Bar12:
	drum_note 11, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 10, 2
	drum_note 8, 1
	drum_note 8, 1
@Channel4_Bar13:
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 12
@Channel4_Bar14:
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
@Channel4_Bar15:
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
@Channel4_Bar16:
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
@Channel4_Bar17:
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 3, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 11, 2
	drum_note 3, 2
	drum_note 6, 1
	drum_note 6, 1
@Channel4_Bar18:
	sound_loop 0, Music_CeruleanGSC_Loop4
