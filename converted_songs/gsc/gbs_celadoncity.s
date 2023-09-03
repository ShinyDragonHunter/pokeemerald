	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_CeladonCity
	.align 2

gbs_Music_CeladonCity:
	channel_count 3
	channel 1, Music_CeladonCity_Ch1
	channel 2, Music_CeladonCity_Ch2
	channel 3, Music_CeladonCity_Ch3

gbs_Music_CeladonCity_Ch1:
	gbs_switch 0
Music_CeladonCity_Ch1:
	tempo 146
	volume 7, 7
	pitch_offset 1
Music_CeladonCity_Ch1.mainloop:
	stereo_panning FALSE, TRUE
	note_type 12, 10, 6
	octave 3
	note A_, 7
	volume_envelope 10, 1
	note Gs, 1
	note A_, 1
	note D_, 3
	note E_, 2
	note Fs, 2
	sound_call Music_CeladonCity_Ch1.sub1
Music_CeladonCity_Ch1.loop1:
	note D_, 2
	note Fs, 1
	note A_, 1
	note D_, 1
	note Fs, 1
	note A_, 1
	note Fs, 1
	sound_loop 3, Music_CeladonCity_Ch1.loop1
	note D_, 2
	note G_, 1
	note B_, 1
	octave 4
	note D_, 1
	note C_, 1
	octave 3
	note B_, 1
	note G_, 1
	sound_call Music_CeladonCity_Ch1.sub1
	note D_, 1
	note Cs, 1
	note D_, 1
	note E_, 1
	note Fs, 1
	note G_, 1
	note A_, 1
	note B_, 1
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note Fs, 16
	sound_call Music_CeladonCity_Ch1.sub2
	sound_call Music_CeladonCity_Ch1.sub3
	octave 2
	note B_, 2
	note As, 1
	note B_, 1
	octave 3
	note D_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note Fs, 1
	note G_, 1
	note A_, 1
	note Gs, 1
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	sound_call Music_CeladonCity_Ch1.sub2
	sound_call Music_CeladonCity_Ch1.sub3
	note D_, 2
	note Cs, 1
	note D_, 1
	note Fs, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 8
	sound_loop 0, Music_CeladonCity_Ch1.mainloop

Music_CeladonCity_Ch1.sub1:
Music_CeladonCity_Ch1.sub1loop1:
	note D_, 2
	note G_, 1
	note B_, 1
	note D_, 1
	note G_, 1
	note B_, 1
	note G_, 1
	sound_loop 3, Music_CeladonCity_Ch1.sub1loop1
	note D_, 2
	note Fs, 1
	note A_, 1
	octave 4
	note D_, 1
	note Cs, 1
	note D_, 1
	octave 3
	note A_, 1
	sound_ret

Music_CeladonCity_Ch1.sub2:
Music_CeladonCity_Ch1.sub2loop1:
	octave 2
	note G_, 2
	note B_, 1
	octave 3
	note D_, 1
	sound_loop 4, Music_CeladonCity_Ch1.sub2loop1
	note C_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note Fs, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note Cs, 1
	note D_, 1
	octave 3
	note B_, 1
	sound_ret

Music_CeladonCity_Ch1.sub3:
Music_CeladonCity_Ch1.sub3loop1:
	note D_, 2
	note Fs, 1
	note A_, 1
	sound_loop 4, Music_CeladonCity_Ch1.sub3loop1
	sound_ret

gbs_Music_CeladonCity_Ch2:
	gbs_switch 1
Music_CeladonCity_Ch2:
	vibrato 18, 3, 4
	duty_cycle 2
	stereo_panning TRUE, FALSE
	note_type 12, 11, 7
	octave 4
	note D_, 1
	note Cs, 1
	note D_, 1
	note E_, 1
	note Fs, 1
	note E_, 1
	note Fs, 1
	note G_, 1
	note A_, 8
Music_CeladonCity_Ch2.mainloop:
	sound_call Music_CeladonCity_Ch2.sub1
	note A_, 4
	note Fs, 4
	note A_, 2
	note Fs, 6
	note A_, 1
	note G_, 1
	note Fs, 1
	note G_, 1
	note A_, 2
	note B_, 2
	note G_, 4
	note B_, 4
	sound_call Music_CeladonCity_Ch2.sub1
	volume_envelope 12, 1
	note A_, 2
	note G_, 2
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note Cs, 2
	note D_, 4
	note D_, 1
	note E_, 1
	note Fs, 1
	note A_, 1
	volume_envelope 11, 3
	octave 5
	note D_, 6
	volume_envelope 10, 2
	octave 1
	note Fs, 2
	sound_call Music_CeladonCity_Ch2.sub2
	octave 1
	note G_, 3
	note B_, 1
	note A_, 2
	octave 2
	note D_, 2
	octave 1
	note A_, 6
	note Fs, 2
	sound_call Music_CeladonCity_Ch2.sub2
	octave 1
	note A_, 3
	octave 2
	note D_, 1
	note A_, 4
	note D_, 6
	volume_envelope 9, 7
	octave 4
	note Fs, 1
	note A_, 1
	octave 5
	note D_, 16
	sound_loop 0, Music_CeladonCity_Ch2.mainloop

Music_CeladonCity_Ch2.sub1:
	volume_envelope 11, 2
	octave 4
	note B_, 4
	note G_, 4
	note B_, 2
	note G_, 6
	note B_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A_, 8
	sound_ret

Music_CeladonCity_Ch2.sub2:
	note G_, 3
	note B_, 1
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	note B_, 2
	octave 2
	note D_, 4
	octave 1
	note G_, 3
	octave 2
	note C_, 1
	note D_, 4
	octave 1
	note G_, 2
	note B_, 2
	octave 2
	note D_, 4
	octave 1
	note A_, 3
	octave 2
	note D_, 1
	note Fs, 4
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	note Fs, 4
	sound_ret

gbs_Music_CeladonCity_Ch3:
	gbs_switch 2
Music_CeladonCity_Ch3:
	vibrato 18, 2, 4
Music_CeladonCity_Ch3.mainloop:
	note_type 12, 2, 5
	octave 3
	note A_, 2
	rest 2
	note Fs, 2
	rest 2
	note D_, 8
	sound_call Music_CeladonCity_Ch3.sub1
Music_CeladonCity_Ch3.loop1:
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 4
	sound_loop 3, Music_CeladonCity_Ch3.loop1
	octave 2
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note D_, 3
	octave 2
	note Fs, 1
	sound_call Music_CeladonCity_Ch3.sub1
	note A_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 3
	note Fs, 3
	octave 2
	note Gs, 1
	note A_, 1
	rest 1
	octave 3
	note Cs, 1
	rest 1
	note E_, 2
	note Cs, 2
	note D_, 2
	rest 6
	octave 2
	note A_, 2
	rest 6
	volume_envelope 1, 0
	sound_call Music_CeladonCity_Ch3.sub2
	octave 5
	note E_, 2
	rest 2
	note Fs, 2
	rest 2
	note D_, 4
	rest 4
	note C_, 8
	octave 4
	note A_, 2
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	note E_, 2
	rest 2
	note D_, 2
	note E_, 2
	note D_, 4
	rest 4
	sound_call Music_CeladonCity_Ch3.sub2
	octave 5
	note E_, 2
	rest 2
	note D_, 2
	note E_, 2
	note D_, 4
	rest 4
	note C_, 8
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	rest 6
	sound_loop 0, Music_CeladonCity_Ch3.mainloop

Music_CeladonCity_Ch3.sub1:
Music_CeladonCity_Ch3.sub1loop1:
	octave 2
	note G_, 2
	rest 2
	octave 3
	note D_, 4
	sound_loop 3, Music_CeladonCity_Ch3.sub1loop1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note Fs, 3
	octave 2
	note Gs, 1
	sound_ret

gbs_Music_CeladonCity_Ch3.sub2:
	octave 5
	note D_, 8
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	sound_ret
