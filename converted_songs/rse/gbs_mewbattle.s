	.include "asm/macros.inc"

	.section .rodata
	.global gbs_MewBattle
	.align 2

@ Pokémon Emerald - Battle! Vs. Mew
@ Demixed by MrCheeze, ported to GBS by ShinyDragonHunter
@ https://pastebin.com/LLfBTH83 / https://www.youtube.com/watch?v=Q8Q1jqxWH-U

gbs_Music_MewBattle:
	channel_count 3
	channel 1, Music_MewBattle_Ch1
	channel 2, Music_MewBattle_Ch2
	channel 3, Music_MewBattle_Ch3

gbs_Music_MewBattle_Ch1:
	gbs_switch 0
Music_MewBattle_Ch1:
	tempo 104
	volume 7, 6
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1
	note_type 12, 11, 3
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
	note_type 12, 11, 1
	note G_, 6
	note E_, 6
	note Ds, 12
	note Cs, 14
	note E_, 6
	note Ds, 10
	note_type 12, 4, -7
	note Cs, 10
	note_type 12, 11, 1
	note G_, 6
	note E_, 6
	note Ds, 12
	note Cs, 14
	note E_, 6
	note Ds, 10
	note Cs, 10
 
Music_MewBattle_branch_230e0:
	note_type 12, 11, 3
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
	octave 2
	note B_, 1
	octave 3
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
	note_type 12, 11, 5
	note D_, 4
	note C_, 4
	note D_, 4
	note F_, 4
	note E_, 6
	note D_, 6
	note F_, 4
	note_type 12, 11, 7
	note A_, 16
	note G_, 16
	note_type 12, 11, 5
	note D_, 4
	note C_, 4
	note D_, 4
	note F_, 4
	note G_, 6
	note A_, 6
	note B_, 4
	note_type 12, 11, 7
	octave 4
	note C_, 16
	note_type 12, 3, -7
	note G_, 16
	note_type 12, 11, 5
	octave 3
	note C_, 12
	note C_, 2
	rest 2
	note D_, 2
	note C_, 2
	rest 12
	note Cs, 12
	note Cs, 2
	rest 2
	note F_, 2
	note_type 12, 10, 3
	note Ds, 6
	note_type 12, 10, 7
	note Cs, 8
	sound_loop 0, Music_MewBattle_branch_230e0
 
 
gbs_Music_MewBattle_Ch2:
	gbs_switch 1
Music_MewBattle_Ch2:
	duty_cycle 3
	vibrato 8, 2, 5
	note_type 12, 12, 3
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	octave 4
	note G_, 1
	note Fs, 1
	note F_, 1
	octave 5
	note F_, 1
	note_type 12, 12, 2
	octave 4
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 4
	octave 5
	note C_, 2
	octave 4
	note C_, 2
	note G_, 4
	note G_, 4
	note Cs, 2
	note G_, 2
	octave 5
	note Cs, 2
	octave 4
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 6
	note_type 12, 9, 0
	note Fs, 10
	note_type 12, 12, 2
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 2
	note G_, 4
	note C_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note C_, 2
	note G_, 4
	note G_, 4
	note Gs, 2
	note Cs, 2
	note F_, 2
	note G_, 4
	note G_, 2
	note G_, 4
	note G_, 6
	note_type 12, 11, 7
	note G_, 10
 
Music_MewBattle_branch_23225:
	octave 4
	note_type 12, 12, 5
	note G_, 6
	note Fs, 6
	note E_, 4
	note G_, 6
	note A_, 6
	note G_, 4
	octave 5
	note Gs, 12
	note G_, 2
	rest 2
	note Gs, 2
	note G_, 2
	rest 4
	note_type 12, 11, 7
	octave 6
	note Cs, 8
	note_type 12, 12, 5
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G_, 2
	note As, 2
	note E_, 2
	note G_, 2
	note Gs, 2
	note E_, 1
	note C_, 1
	octave 4
	note Cs, 2
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G_, 2
	note As, 2
	note E_, 1
	note C_, 1
	octave 4
	note F_, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note E_, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note G_, 1
	note_type 12, 12, 7
	note As, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note F_, 2
	octave 4
	note D_, 2
	octave 3
	note As, 1
	octave 4
	note D_, 1
	note F_, 2
	octave 3
	note E_, 1
	note As, 1
	octave 4
	note_type 12, 12, 0
	note Cs, 2
	note C_, 2
	octave 3
	note As, 2
	octave 4
	note Gs, 10
	note_type 12, 11, 0
	note Gs, 2
	note F_, 2
	note Cs, 2
	note Gs, 2
	note F_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note_type 12, 4, 14
	note Fs, 1
	note G_, 15
	note_type 12, 12, 7
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note C_, 2
	note G_, 1
	note E_, 1
	note C_, 1
	octave 3
	note E_, 1
	note G_, 1
	note B_, 1
	octave 4
	note C_, 1
	note E_, 1
	octave 3
	note F_, 8
	note As, 8
	octave 4
	note D_, 8
	note F_, 8
	note_type 12, 12, 0
	note E_, 16
	note_type 12, 12, 7
	note E_, 16
	octave 3
	note F_, 8
	note As, 8
	octave 4
	note D_, 8
	note F_, 8
	note_type 12, 12, 0
	note G_, 16
	note_type 12, 3, -7
	octave 5
	note C_, 16
	note_type 12, 12, 5
	octave 5
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note E_, 2
	octave 4
	note G_, 1
	octave 5
	note E_, 1
	note F_, 2
	note_type 12, 12, 1
	note E_, 2
	octave 3
	note G_, 2
	note B_, 2
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	note E_, 1
	note C_, 1
	octave 2
	note Gs, 1
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	note_type 12, 12, 5
	octave 5
	note F_, 2
	note Cs, 2
	octave 4
	note Gs, 2
	note F_, 1
	octave 5
	note Cs, 1
	note F_, 2
	note Cs, 2
	note F_, 2
	note Cs, 1
	octave 4
	note Gs, 1
	octave 5
	note Gs, 2
	note_type 12, 10, 3
	note G_, 2
	octave 4
	note Cs, 1
	note E_, 1
	note Gs, 1
	octave 5
	note Cs, 1
	note_type 12, 12, 7
	note F_, 8
	sound_loop 0, Music_MewBattle_branch_23225
 
gbs_MewBattle_Ch3:
	gbs_switch 2
Music_MewBattle_Ch3:
	vibrato 0, 2, 0
	note_type 12, 1, 1
	octave 4
	note Cs, 1
	rest 1
	note Cs, 1
	note C_, 1
	note D_, 1
	rest 1
	note D_, 1
	note C_, 1
	note Ds, 1
	rest 1
	note Ds, 1
	note C_, 1
	note E_, 1
	rest 1
	note E_, 1
	note C_, 1
	note F_, 1
	rest 1
	note F_, 1
	note C_, 1
	note Fs, 1
	rest 1
	note Fs, 1
	note C_, 1
	note G_, 1
	rest 1
	note G_, 1
	note C_, 1
	octave 3
	note As, 2
	note B_, 2
 
Music_MewBattle_branch_232b5:
	octave 4
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 4
	note Gs, 2
	note As, 2
	note Gs, 2
	note G_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 4
	note Gs, 2
	note As, 2
	note Gs, 2
	note F_, 2
	sound_loop 2, Music_MewBattle_branch_232b5
 
Music_MewBattle_branch_232d8:
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note Gs, 12
	note G_, 2
	rest 2
	note Gs, 2
	note G_, 2
	rest 4
	note F_, 2
	note E_, 2
	note D_, 2
	note Cs, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	octave 3
	note As, 2
	octave 4
	note F_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Gs, 2
	sound_loop 0, Music_MewBattle_branch_232d8
