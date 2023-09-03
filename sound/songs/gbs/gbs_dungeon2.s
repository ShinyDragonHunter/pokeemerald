	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_Dungeon2
	.align 2

gbs_Music_Dungeon2:
	channel_count 4
	channel 1, Music_Dungeon2_Ch1
	channel 2, Music_Dungeon2_Ch2
	channel 3, Music_Dungeon2_Ch3
	channel 4, Music_Dungeon2_Ch4

gbs_Music_Dungeon2_Ch1:
	gbs_switch 0
Music_Dungeon2_Ch1:
	tempo 144
	volume 7, 7
	duty_cycle 3
	pitch_offset 1
	vibrato 10, 1, 4

Music_Dungeon2_branch_7e892:
	note_type 12, 11, 2
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	octave 5
	note Cs, 4
	note Cs, 4
	note Cs, 4
	note Cs, 4
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	octave 2
	note G_, 2
	note As, 4
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note As, 2
	note B_, 2
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note A_, 4
	note Fs, 2
	sound_loop 2, Music_Dungeon2_branch_7e892
	note_type 12, 1, -7
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note As, 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_Dungeon2_branch_7e892


gbs_Music_Dungeon2_Ch2:
	gbs_switch 1
Music_Dungeon2_Ch2:
	vibrato 11, 1, 5

Music_Dungeon2_branch_7e8db:
	duty_cycle 3
	note_type 12, 12, 2
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	octave 4
	note Fs, 4
	note Fs, 4
	note Fs, 4
	note Fs, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note Fs, 4
	sound_loop 2, Music_Dungeon2_branch_7e8db
	octave 3
	note E_, 2
	note G_, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note E_, 2
	octave 5
	note E_, 2
	rest 2
	note Ds, 2
	rest 2
	note D_, 2
	rest 2
	note Cs, 2
	note C_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note As, 2
	note Cs, 2
	note As, 2
	note A_, 2
	note As, 2
	note G_, 2
	octave 5
	note G_, 2
	rest 2
	note Fs, 2
	rest 2
	note F_, 2
	rest 2
	note E_, 2
	note Ds, 2
	note D_, 2
	note Cs, 2
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 12, 7
	duty_cycle 1
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note D_, 16
	sound_loop 0, Music_Dungeon2_branch_7e8db


gbs_Music_Dungeon2_Ch3:
	gbs_switch 2
Music_Dungeon2_Ch3:
	note_type 12, 1, 3
	vibrato 8, 2, 6

Music_Dungeon2_branch_7e940:
	sound_call Music_Dungeon2_branch_7e9d1
	sound_loop 16, Music_Dungeon2_branch_7e940
	note E_, 4
	rest 4
	rest 4
	note E_, 4
	note C_, 4
	rest 4
	rest 4
	note C_, 4
	note D_, 4
	rest 4
	rest 4
	note D_, 4
	octave 3
	note As, 4
	rest 4
	rest 4
	note As, 4

Music_Dungeon2_branch_7e958:
	octave 5
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note As, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note Cs, 2
	rest 2
	octave 5
	note Gs, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note As, 2
	rest 2
	note E_, 2
	rest 2
	note Ds, 2
	rest 2
	note A_, 2
	rest 2
	note Gs, 2
	rest 2
	note E_, 2
	rest 2
	note Fs, 2
	rest 2
	note Ds, 2
	rest 2
	sound_loop 3, Music_Dungeon2_branch_7e958
	octave 4
	note E_, 4
	note B_, 4
	note As, 4
	octave 5
	note D_, 4
	note Cs, 4
	octave 4
	note Gs, 4
	note G_, 4
	note B_, 4
	note As, 4
	note E_, 4
	note Ds, 4
	note A_, 4
	note Gs, 4
	note E_, 4
	note Fs, 4
	note Ds, 4
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note As, 16
	octave 3
	note E_, 16
	note F_, 16
	note G_, 16
	octave 3
	note B_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_call Music_Dungeon2_branch_7e9d1
	sound_loop 0, Music_Dungeon2_branch_7e940
	octave 2
	note G_, 2
	note As, 4
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note A_, 2
	note As, 2
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note As, 2
	note G_, 2
	rest 2
	sound_ret

Music_Dungeon2_branch_7e9d1:
	octave 4
	note E_, 2
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	octave 4
	note Fs, 4
	sound_ret


gbs_Music_Dungeon2_Ch4:
	gbs_switch 3
Music_Dungeon2_Ch4:
	toggle_noise 1
	drum_speed 12

Music_Dungeon2_branch_7e9dd:
	drum_note 5, 4
	drum_note 6, 4
	drum_note 5, 4
	drum_note 3, 4
	drum_note 5, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 2, 4
	sound_loop 0, Music_Dungeon2_branch_7e9dd
