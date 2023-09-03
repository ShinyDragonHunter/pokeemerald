	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_WildPokemonVictory
	.align 1

gbs_Music_WildPokemonVictory_Ch1:
	gbs_switch 0
Music_WildPokemonVictory_Ch1:
	tempo 126
	volume 7, 7
	duty_cycle 3
	pitch_offset 1
	note_type 12, 11, 1
	octave 3
	note B_, 1
	note A_, 1
	note Gs, 1
	note Fs, 1
	volume_envelope 11, 6
	note E_, 12
	.global Music_WildPokemonVictory_Ch1.body
Music_WildPokemonVictory_Ch1.body:
	stereo_panning FALSE, TRUE
Music_WildPokemonVictory_Ch1.mainloop:
	sound_call Music_WildPokemonVictory_Ch1.sub1
	note Fs, 2
	note Fs, 2
	note Fs, 4
	sound_call Music_WildPokemonVictory_Ch1.sub1
	note Gs, 4
	volume_envelope 7, 8
	octave 3
	note G_, 4
	transpose 0, 1
	sound_call Music_WildPokemonVictory_Ch1.sub1
	note Fs, 2
	note Fs, 2
	note Fs, 4
	sound_call Music_WildPokemonVictory_Ch1.sub1
	note Gs, 4
	transpose 0, 0
	volume_envelope 7, 8
	octave 3
	note Fs, 4
	sound_loop 0, Music_WildPokemonVictory_Ch1.mainloop

Music_WildPokemonVictory_Ch1.sub1:
	volume_envelope 7, 1
	octave 3
	note Gs, 1
	note B_, 1
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note Gs, 1
	note Fs, 1
	note E_, 1
	note Fs, 1
	note Gs, 2
	note E_, 2
	note A_, 1
	octave 4
	note Cs, 1
	note E_, 2
	note E_, 2
	note A_, 2
	sound_ret

gbs_Music_WildPokemonVictory_Ch2:
	gbs_switch 1
Music_WildPokemonVictory_Ch2:
	vibrato 18, 2, 4
	duty_cycle 2
	note_type 12, 13, 1
	octave 4
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	volume_envelope 13, 6
	note B_, 12
	.global Music_WildPokemonVictory_Ch2.body
Music_WildPokemonVictory_Ch2.body:
	stereo_panning TRUE, FALSE
Music_WildPokemonVictory_Ch2.mainloop:
	sound_call Music_WildPokemonVictory_Ch2.sub1
	octave 4
	note B_, 2
	note B_, 2
	note B_, 4
	sound_call Music_WildPokemonVictory_Ch2.sub1
	octave 4
	note B_, 4
	volume_envelope 8, 1
	note C_, 1
	note E_, 1
	note G_, 1
	note As, 1
	transpose 0, 1
	sound_call Music_WildPokemonVictory_Ch2.sub1
	octave 4
	note B_, 2
	note B_, 2
	note B_, 4
	sound_call Music_WildPokemonVictory_Ch2.sub1
	octave 4
	note B_, 4
	transpose 0, 0
	volume_envelope 8, 1
	octave 3
	note B_, 1
	octave 4
	note Ds, 1
	note Fs, 1
	note A_, 1
	sound_loop 0, Music_WildPokemonVictory_Ch2.mainloop

Music_WildPokemonVictory_Ch2.sub1:
	volume_envelope 8, 1
	octave 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	note B_, 2
	note B_, 4
	octave 5
	note Cs, 2
	note Cs, 2
	note Cs, 4
	sound_ret

gbs_Music_WildPokemonVictory_Ch3:
	gbs_switch 2
Music_WildPokemonVictory_Ch3:
	note_type 12, 2, 0
	rest 6
	octave 6
	note Ds, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	.global Music_WildPokemonVictory_Ch3.body
Music_WildPokemonVictory_Ch3.body:
Music_WildPokemonVictory_Ch3.mainloop:
	sound_call Music_WildPokemonVictory_Ch3.sub1
	note Ds, 2
	note Cs, 2
	octave 2
	note B_, 2
	rest 2
	sound_call Music_WildPokemonVictory_Ch3.sub1
	note E_, 2
	rest 2
	note C_, 4
	transpose 0, 1
	sound_call Music_WildPokemonVictory_Ch3.sub1
	note Ds, 2
	note Cs, 2
	octave 2
	note B_, 2
	rest 2
	sound_call Music_WildPokemonVictory_Ch3.sub1
	note E_, 2
	rest 2
	transpose 0, 0
	octave 2
	note B_, 4
	sound_loop 0, Music_WildPokemonVictory_Ch3.mainloop

Music_WildPokemonVictory_Ch3.sub1:
	volume_envelope 2, 5
	octave 3
	note E_, 2
	rest 4
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	note Cs, 2
	rest 4
	note Cs, 2
	sound_ret

	.align 4
gbs_Music_WildPokemonVictory:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_Music_WildPokemonVictory_Ch1
	.int gbs_Music_WildPokemonVictory_Ch2
	.int gbs_Music_WildPokemonVictory_Ch3
