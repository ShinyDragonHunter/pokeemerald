	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_Evolution
	.align 2

gbs_Music_Evolution:
	channel_count 4
	channel 1, Music_Evolution_Ch1
	channel 2, Music_Evolution_Ch2
	channel 3, Music_Evolution_Ch3
	channel 4, Music_Evolution_Ch4

gbs_Music_Evolution_Ch1:
	gbs_switch 0
Music_Evolution_Ch1:
	tempo 132
	volume 7, 7
	vibrato 6, 3, 4
	pitch_offset 1
	duty_cycle 3
	note_type 12, 10, 2
	octave 3
	stereo_panning FALSE, TRUE
Music_Evolution_Ch1.mainloop:
Music_Evolution_Ch1.loop1:
	sound_call Music_Evolution_Ch1.sub1
	note_type 12, 10, 4
	note Fs, 4
	sound_call Music_Evolution_Ch1.sub1
	note_type 12, 10, 4
	note Fs, 4
	sound_loop 2, Music_Evolution_Ch1.loop1
	sound_call Music_Evolution_Ch1.sub2
	note_type 12, 10, 4
	note Gs, 4
	sound_call Music_Evolution_Ch1.sub2
	note_type 12, 10, 4
	note Gs, 4
	sound_loop 0, Music_Evolution_Ch1.mainloop

Music_Evolution_Ch1.sub1:
	note_type 12, 10, 2
	octave 3
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	sound_ret

Music_Evolution_Ch1.sub2:
	note_type 12, 10, 2
	octave 3
	note D_, 4
	note A_, 4
	note D_, 4
	note A_, 4
	note D_, 4
	note A_, 4
	note D_, 4
	sound_ret

gbs_Music_Evolution_Ch2:
	gbs_switch 1
Music_Evolution_Ch2:
	duty_cycle 3
	vibrato 8, 2, 5
	note_type 12, 11, 2
	octave 4
	stereo_panning TRUE, FALSE
Music_Evolution_Ch2.mainloop:
Music_Evolution_Ch2.loop1:
	sound_call Music_Evolution_Ch2.sub1
	note_type 12, 11, 5
	note A_, 4
	sound_call Music_Evolution_Ch2.sub1
	note_type 12, 11, 5
	note B_, 4
	sound_loop 2, Music_Evolution_Ch2.loop1
	sound_call Music_Evolution_Ch2.sub2
	note_type 12, 11, 5
	note B_, 4
	sound_call Music_Evolution_Ch2.sub2
	note_type 12, 11, 5
	octave 4
	note Cs, 4
	octave 3
	sound_loop 0, Music_Evolution_Ch2.mainloop

Music_Evolution_Ch2.sub1:
	note_type 12, 11, 2
	octave 3
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	sound_ret

Music_Evolution_Ch2.sub2:
	note_type 12, 11, 2
	octave 3
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	sound_ret

gbs_Music_Evolution_Ch3:
	gbs_switch 2
Music_Evolution_Ch3:
	note_type 12, 1, 6
Music_Evolution_Ch3.mainloop:
Music_Evolution_Ch3.loop1:
	sound_call Music_Evolution_Ch3.sub1
	octave 3
	note A_, 4
	sound_call Music_Evolution_Ch3.sub1
	octave 3
	note B_, 4
	sound_loop 2, Music_Evolution_Ch3.loop1
	sound_call Music_Evolution_Ch3.sub2
	octave 3
	note B_, 4
	sound_call Music_Evolution_Ch3.sub2
	octave 4
	note Cs, 4
	sound_loop 0, Music_Evolution_Ch3.mainloop

Music_Evolution_Ch3.sub1:
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	sound_ret

Music_Evolution_Ch3.sub2:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	sound_ret

gbs_Music_Evolution_Ch4:
	gbs_switch 3
Music_Evolution_Ch4:
	toggle_noise 5
	drum_speed 12
Music_Evolution_Ch4.mainloop:
	stereo_panning TRUE, FALSE
	drum_note 11, 6
	drum_note 11, 4
	stereo_panning FALSE, TRUE
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	sound_loop 0, Music_Evolution_Ch4.mainloop
