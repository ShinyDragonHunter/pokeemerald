	.include "asm/macros.inc"

	.section .rodata
	.global Music_Clair
	.align 2

gbs_Music_Clair:
	channel_count 4
	channel 1, Music_Clair_Ch1
	channel 2, Music_Clair_Ch2
	channel 3, Music_Clair_Ch3
	channel 4, Music_Clair_Ch4

gbs_Music_Clair_Ch1:
	gbs_switch 0
Music_Clair_Ch1:
	tempo 136
	volume 7, 7
	pitch_offset 1
	vibrato 18, 3, 4
	stereo_panning FALSE, TRUE
	note_type 12, 9, 3
	duty_cycle 3
Music_Clair_Ch1.loop1:
	octave 4
	note F_, 1
	note Fs, 1
	note F_, 1
	rest 1
	note Cs, 1
	rest 1
	sound_loop 2, Music_Clair_Ch1.loop1
	octave 3
	note B_, 1
	rest 1
	note Gs, 1
	duty_cycle 2
	volume_envelope 9, 2
	octave 5
	note F_, 1
	note G_, 4
	volume_envelope 10, 7
	duty_cycle 3
	octave 3
	note Ds, 4
	note F_, 4
	note G_, 4
Music_Clair_Ch1.mainloop:
	volume_envelope 9, 3
	sound_call Music_Clair_Ch1.sub1
	octave 2
	note B_, 1
	octave 3
	note Cs, 1
	note Ds, 2
	octave 2
	note G_, 1
	note As, 1
	octave 3
	note Cs, 2
	octave 2
	note As, 1
	note G_, 1
	sound_call Music_Clair_Ch1.sub1
	note Ds, 1
	note Cs, 1
	note Ds, 2
	octave 4
	note As, 1
	note Gs, 1
	note G_, 1
	note Gs, 1
	note As, 1
	octave 5
	note Ds, 1
	sound_call Music_Clair_Ch1.sub2
	duty_cycle 3
	note Gs, 3
	note F_, 2
	rest 1
	note As, 4
	duty_cycle 2
	note Ds, 1
	note Cs, 1
	note Ds, 1
	note G_, 1
	note As, 1
	octave 5
	note Ds, 1
	sound_call Music_Clair_Ch1.sub2
	duty_cycle 3
	note Ds, 3
	note Cs, 2
	rest 1
	octave 3
	note B_, 4
	duty_cycle 2
	note Gs, 1
	note Cs, 1
	note Ds, 1
	note Gs, 1
	note B_, 1
	octave 4
	note Ds, 1
	sound_loop 0, Music_Clair_Ch1.mainloop

Music_Clair_Ch1.sub1:
	duty_cycle 3
	stereo_panning TRUE, TRUE
	octave 3
	note B_, 1
	rest 2
	note Gs, 5
	duty_cycle 2
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 2
	note Gs, 1
	note B_, 1
	octave 3
	note Ds, 1
	rest 1
	note Ds, 1
	note Fs, 1
	note F_, 1
	note Cs, 1
	rest 1
	note F_, 1
	note Cs, 1
	rest 1
	sound_ret

Music_Clair_Ch1.sub2:
	octave 4
	note Fs, 1
	note Ds, 1
	rest 1
	note Fs, 1
	note Ds, 1
	rest 1
	octave 3
	note Ds, 1
	note Gs, 1
	note B_, 2
	note Gs, 1
	note B_, 1
	octave 4
	note Ds, 1
	rest 1
	note Ds, 1
	note Fs, 1
	sound_ret

gbs_Music_Clair_Ch2:
	gbs_switch 1
Music_Clair_Ch2:
	duty_cycle 3
	vibrato 18, 3, 4
	note_type 6, 11, 7
Music_Clair_Ch2.loop1:
	octave 3
	note As, 2
	note B_, 2
	note As, 2
	rest 2
	note Gs, 2
	rest 2
	sound_loop 2, Music_Clair_Ch2.loop1
	note F_, 2
	rest 2
	note Cs, 2
	rest 2
	volume_envelope 8, 2
	note Ds, 2
	note As, 2
	octave 4
	note Cs, 2
	octave 3
	note As, 2
	volume_envelope 9, 2
	note G_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	octave 3
	note As, 2
	volume_envelope 11, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	volume_envelope 12, 2
	note Cs, 2
	note Ds, 2
	note G_, 2
	note As, 2
	volume_envelope 11, 7
Music_Clair_Ch2.mainloop:
	sound_call Music_Clair_Ch2.sub1
	note Fs, 2
	rest 4
	note Ds, 12
	rest 2
	note Ds, 4
	note Cs, 4
	octave 3
	note B_, 3
	note As, 1
	note B_, 6
	octave 4
	note Cs, 4
	rest 2
	octave 3
	note As, 16
	rest 4
	transpose 0, 12
	sound_call Music_Clair_Ch2.sub1
	transpose 0, 0
	octave 5
	note Fs, 2
	rest 4
	note Ds, 12
	rest 2
	octave 4
	note Gs, 4
	note As, 4
	note B_, 3
	octave 5
	note C_, 1
	note Cs, 6
	octave 4
	note As, 4
	rest 2
	note Gs, 16
	rest 4
	sound_loop 0, Music_Clair_Ch2.mainloop

Music_Clair_Ch2.sub1:
	octave 4
	note Fs, 2
	rest 4
	note Ds, 12
	rest 2
	octave 3
	note Gs, 4
	note As, 4
	note B_, 3
	octave 4
	note C_, 1
	note Cs, 6
	octave 3
	note B_, 4
	rest 2
	octave 4
	note Ds, 16
	rest 4
	sound_ret

gbs_Music_Clair_Ch3:
	gbs_switch 2
Music_Clair_Ch3:
	note_type 12, 1, 4
	transpose 0, 12
	octave 3
	note Cs, 2
	rest 4
	octave 2
	note Gs, 1
	note B_, 1
	octave 3
	note Cs, 2
	rest 4
	octave 2
	note Gs, 1
	note B_, 1
	octave 3
	note Ds, 2
	rest 2
	octave 2
	note As, 4
	note Gs, 4
	note G_, 4
Music_Clair_Ch3.mainloop:
	sound_call Music_Clair_Ch3.sub1
	octave 2
	note Cs, 2
	rest 1
	note Gs, 2
	rest 1
	note Cs, 2
	rest 2
	note Ds, 2
	note As, 2
	note Ds, 2
	sound_call Music_Clair_Ch3.sub1
	octave 2
	note Gs, 2
	rest 1
	note Cs, 2
	rest 1
	note Ds, 2
	rest 2
	note Ds, 1
	note Cs, 1
	note Ds, 1
	note F_, 1
	note G_, 1
	note As, 1
	octave 1
	note Gs, 2
	rest 1
	octave 2
	note Ds, 2
	rest 1
	octave 1
	note Gs, 2
	octave 3
	note Fs, 1
	rest 1
	octave 1
	note Gs, 1
	octave 3
	note Ds, 1
	octave 2
	note Ds, 2
	octave 1
	note Gs, 2
	octave 2
	note Cs, 2
	rest 1
	note Gs, 2
	rest 1
	note Cs, 2
	octave 3
	note Ds, 1
	rest 1
	octave 2
	note Ds, 1
	octave 3
	note As, 1
	octave 2
	note As, 2
	octave 3
	note G_, 1
	octave 2
	note Ds, 1
	octave 1
	note Gs, 2
	rest 1
	octave 2
	note Ds, 2
	rest 1
	octave 1
	note Gs, 2
	octave 3
	note Fs, 1
	rest 1
	octave 1
	note Gs, 1
	octave 3
	note Ds, 1
	octave 2
	note Ds, 2
	octave 1
	note Gs, 2
	octave 2
	note Ds, 2
	rest 1
	note G_, 2
	rest 1
	note Gs, 2
	octave 2
	note B_, 1
	rest 1
	octave 1
	note Gs, 1
	octave 2
	note As, 1
	note Ds, 2
	note Gs, 1
	octave 1
	note Gs, 1
	sound_loop 0, Music_Clair_Ch3.mainloop

Music_Clair_Ch3.sub1:
	octave 1
	note Gs, 2
	rest 1
	octave 2
	note Ds, 2
	rest 1
	octave 1
	note Gs, 2
	rest 2
	note Gs, 2
	octave 2
	note Ds, 2
	octave 1
	note Gs, 2
	sound_ret

gbs_Music_Clair_Ch4:
	gbs_switch 3
Music_Clair_Ch4:
	toggle_noise 3
	drum_speed 12
	stereo_panning TRUE, FALSE
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 6
	stereo_panning TRUE, TRUE
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
Music_Clair_Ch4.mainloop:
	stereo_panning TRUE, TRUE
	sound_call Music_Clair_Ch4.sub1
	drum_note 8, 1
	stereo_panning TRUE, TRUE
	sound_call Music_Clair_Ch4.sub1
	drum_note 7, 1
	sound_loop 0, Music_Clair_Ch4.mainloop

Music_Clair_Ch4.sub1:
	drum_note 4, 2
	stereo_panning TRUE, FALSE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 8, 1
	drum_note 8, 1
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 4, 1
	stereo_panning TRUE, FALSE
	drum_note 8, 1
	stereo_panning TRUE, TRUE
	drum_note 3, 2
	stereo_panning TRUE, FALSE
	drum_note 8, 1
	sound_ret
