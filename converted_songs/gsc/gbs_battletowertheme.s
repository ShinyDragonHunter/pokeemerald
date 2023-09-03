	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_BattleTowerTheme
	.align 2

gbs_Music_BattleTowerTheme:
	channel_count 4
	channel 1, Music_BattleTowerTheme_Ch1
	channel 2, Music_BattleTowerTheme_Ch2
	channel 3, Music_BattleTowerTheme_Ch3
	channel 4, Music_BattleTowerTheme_Ch4

gbs_Music_BattleTowerTheme_Ch1:
	gbs_switch 0
Music_BattleTowerTheme_Ch1:
	tempo 141
	volume 7, 7
	pitch_offset 1
	vibrato 18, 3, 4
	stereo_panning FALSE, TRUE
	note_type 6, 9, 4
Music_BattleTowerTheme_Ch1.mainloop:
	rest 16
	rest 16
	rest 12
	rest 12
	duty_cycle 2
	octave 3
	note C_, 2
	note E_, 2
	note G_, 4
	sound_call Music_BattleTowerTheme_Ch1.sub1
	note G_, 2
	rest 2
	note C_, 4
	rest 4
	volume_envelope 9, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	octave 4
	note E_, 2
	note G_, 2
	note E_, 2
	octave 3
	note G_, 2
	note E_, 2
	sound_call Music_BattleTowerTheme_Ch1.sub1
	note G_, 2
	rest 2
	octave 2
	note As, 4
	rest 4
	volume_envelope 9, 2
	octave 3
	note G_, 2
	note Ds, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	volume_envelope 9, 3
	note D_, 2
	rest 2
	note E_, 4
	note F_, 4
	note G_, 2
	note A_, 2
	note As, 8
	octave 2
	note As, 8
	octave 3
	note C_, 2
	rest 2
	note D_, 4
	note E_, 4
	note F_, 2
	note G_, 2
	note A_, 8
	octave 2
	note A_, 8
	note As, 2
	rest 2
	octave 3
	note C_, 4
	note D_, 4
	note Ds, 2
	note F_, 2
	note Ds, 4
	note F_, 4
	note G_, 4
	note As, 4
	octave 4
	note C_, 2
	rest 2
	octave 3
	note F_, 4
	rest 4
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note E_, 4
	rest 4
	duty_cycle 3
	note C_, 2
	note E_, 2
	note G_, 4
	note A_, 4
	note F_, 8
	note F_, 2
	note G_, 2
	note A_, 8
	note G_, 4
	note F_, 4
	note D_, 8
	note As, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note As, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note Ds, 2
	note F_, 4
	octave 3
	note F_, 8
	note Cs, 2
	note Ds, 2
	note F_, 8
	note G_, 4
	note F_, 4
	note F_, 4
	note C_, 8
	note G_, 2
	note F_, 2
	note E_, 8
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note G_, 2
	note E_, 2
	note C_, 4
	note F_, 8
	note C_, 2
	note F_, 2
	note A_, 8
	note As, 4
	octave 4
	note C_, 4
	octave 3
	note As, 4
	note F_, 8
	note As, 4
	octave 4
	note D_, 8
	octave 3
	note As, 2
	note A_, 2
	note F_, 4
	note Gs, 4
	note F_, 8
	note Gs, 4
	note F_, 4
	note Ds, 4
	note Cs, 4
	note F_, 4
	volume_envelope 9, 4
	octave 4
	note C_, 4
	octave 3
	note E_, 6
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 4
	rest 12
	sound_loop 0, Music_BattleTowerTheme_Ch1.mainloop

Music_BattleTowerTheme_Ch1.sub1:
	volume_envelope 9, 4
	note A_, 2
	rest 2
	note C_, 4
	rest 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note C_, 4
	note F_, 4
	rest 4
	note A_, 4
	sound_ret

gbs_Music_BattleTowerTheme_Ch2:
	gbs_switch 1
Music_BattleTowerTheme_Ch2:
	vibrato 18, 3, 4
Music_BattleTowerTheme_Ch2.mainloop:
	duty_cycle 3
	note_type 6, 11, 8
	octave 3
	note F_, 2
	rest 2
	octave 2
	note A_, 4
	rest 4
	octave 3
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 2
	note A_, 4
	octave 3
	note F_, 4
	rest 4
	octave 2
	note A_, 2
	rest 2
	octave 3
	note F_, 2
	rest 2
	octave 2
	note A_, 4
	rest 4
	pitch_offset 1
	note A_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note F_, 4
	rest 4
	pitch_offset 0
	volume_envelope 11, 7
	note G_, 2
	octave 4
	note C_, 2
	note E_, 4
	sound_call Music_BattleTowerTheme_Ch2.sub1
	note As, 4
	rest 2
	note F_, 2
	note_type 12, 11, 7
	note C_, 12
	note_type 6, 11, 7
	sound_call Music_BattleTowerTheme_Ch2.sub1
	note_type 12, 11, 7
	note As, 2
	rest 1
	note G_, 1
	note A_, 12
	note As, 1
	rest 1
	note As, 4
	note G_, 1
	note A_, 1
	note As, 4
	note D_, 4
	note A_, 1
	rest 1
	note A_, 4
	note G_, 1
	note A_, 1
	note F_, 8
	note G_, 1
	rest 1
	note G_, 4
	note As, 1
	note A_, 1
	note As, 4
	note Ds, 4
	note F_, 1
	rest 1
	note F_, 4
	note G_, 1
	note F_, 1
	note E_, 8
	stereo_panning TRUE, FALSE
	duty_cycle 2
	note F_, 6
	note A_, 1
	note As, 1
	octave 5
	note C_, 4
	octave 4
	note As, 2
	note A_, 2
	note As, 16
	note As, 6
	note G_, 1
	note A_, 1
	note As, 4
	octave 5
	note C_, 2
	octave 4
	note As, 2
	note A_, 6
	note As, 1
	note A_, 1
	note G_, 8
	note A_, 6
	note F_, 1
	note A_, 1
	octave 5
	note C_, 4
	note D_, 2
	note Ds, 2
	note D_, 6
	note C_, 2
	octave 4
	note As, 8
	octave 5
	note Cs, 6
	note C_, 2
	octave 4
	note As, 2
	note Gs, 2
	note F_, 2
	note Gs, 2
	note G_, 5
	rest 1
	note_type 6, 11, 7
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 4
	rest 4
	stereo_panning TRUE, TRUE
	duty_cycle 3
	octave 3
	note C_, 2
	note D_, 2
	note E_, 4
	sound_loop 0, Music_BattleTowerTheme_Ch2.mainloop

Music_BattleTowerTheme_Ch2.sub1:
	note F_, 2
	rest 2
	note F_, 8
	note C_, 2
	note F_, 2
	octave 5
	note C_, 8
	octave 4
	note As, 4
	note A_, 4
	sound_ret

gbs_Music_BattleTowerTheme_Ch3:
	gbs_switch 2
Music_BattleTowerTheme_Ch3:
	vibrato 18, 3, 4
	note_type 6, 1, 6
Music_BattleTowerTheme_Ch3.mainloop:
	stereo_panning TRUE, TRUE
	sound_call Music_BattleTowerTheme_Ch3.sub1
	note C_, 2
	rest 2
	note F_, 4
	rest 4
	octave 2
	note A_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note F_, 4
	rest 4
	stereo_panning TRUE, FALSE
	note C_, 8
	sound_call Music_BattleTowerTheme_Ch3.sub1
	note C_, 2
	rest 2
	note F_, 4
	rest 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 4
	note C_, 4
	rest 4
	note C_, 2
	rest 2
	sound_call Music_BattleTowerTheme_Ch3.sub1
	octave 2
	note As, 2
	rest 2
	octave 3
	note Ds, 4
	rest 4
	octave 2
	note As, 1
	rest 1
	note As, 1
	rest 1
	octave 3
	note C_, 4
	note F_, 4
	rest 4
	note C_, 1
	rest 1
	note C_, 2
	octave 2
	note As, 2
	rest 2
	note As, 4
	note F_, 4
	octave 3
	note F_, 1
	rest 1
	note F_, 2
	octave 2
	note As, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	note F_, 8
	note C_, 2
	rest 2
	note C_, 4
	octave 2
	note F_, 4
	octave 3
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 2
	note A_, 2
	rest 2
	octave 3
	note C_, 2
	rest 2
	note F_, 8
	note Ds, 2
	rest 2
	note Ds, 4
	octave 2
	note G_, 4
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 2
	note G_, 2
	rest 2
	note As, 2
	rest 2
	octave 3
	note Ds, 8
	note F_, 2
	rest 2
	note C_, 4
	rest 4
	note C_, 2
	octave 2
	note F_, 2
	note G_, 4
	rest 4
	stereo_panning TRUE, TRUE
	note G_, 2
	octave 3
	note C_, 2
	note E_, 4
	note F_, 4
	note C_, 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 4
	note C_, 6
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 4
	note D_, 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 4
	note A_, 4
	note F_, 4
	note D_, 4
	note F_, 4
	note Cs, 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 4
	note F_, 8
	note Cs, 1
	rest 1
	note Cs, 1
	rest 1
	note C_, 4
	note F_, 8
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 4
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 4
	note C_, 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 4
	note C_, 8
	note F_, 2
	rest 2
	note F_, 4
	octave 2
	note As, 8
	octave 3
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 4
	octave 2
	note As, 4
	octave 3
	note D_, 4
	note E_, 4
	note F_, 4
	octave 2
	note Gs, 8
	octave 3
	note Cs, 1
	rest 1
	note Cs, 1
	rest 1
	note Gs, 4
	octave 2
	note Gs, 8
	octave 3
	note Cs, 4
	note C_, 4
	note G_, 8
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 4
	rest 12
	sound_loop 0, Music_BattleTowerTheme_Ch3.mainloop

Music_BattleTowerTheme_Ch3.sub1:
	octave 3
	note C_, 2
	rest 2
	note F_, 4
	rest 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 4
	note C_, 4
	rest 4
	note C_, 2
	rest 2
	sound_ret

gbs_Music_BattleTowerTheme_Ch4:
	gbs_switch 3
Music_BattleTowerTheme_Ch4
	toggle_noise 3
	drum_speed 12
Music_BattleTowerTheme_Ch4.mainloop:
	sound_call Music_BattleTowerTheme_Ch4.sub1
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 4
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
Music_BattleTowerTheme_Ch4.loop1:
	sound_call Music_BattleTowerTheme_Ch4.sub1
	sound_call Music_BattleTowerTheme_Ch4.sub2
	sound_loop 2, Music_BattleTowerTheme_Ch4.loop1
	sound_call Music_BattleTowerTheme_Ch4.sub3
	sound_call Music_BattleTowerTheme_Ch4.sub2
	sound_call Music_BattleTowerTheme_Ch4.sub3
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 8
Music_BattleTowerTheme_Ch4.loop2:
	sound_call Music_BattleTowerTheme_Ch4.sub4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	sound_loop 3, Music_BattleTowerTheme_Ch4.loop2
	sound_call Music_BattleTowerTheme_Ch4.sub4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 4
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	sound_loop 0, Music_BattleTowerTheme_Ch4.mainloop

Music_BattleTowerTheme_Ch4.sub1:
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_BattleTowerTheme_Ch4.sub2:
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	sound_ret

Music_BattleTowerTheme_Ch4.sub3:
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_BattleTowerTheme_Ch4.sub4:
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 2, 1
	sound_ret
