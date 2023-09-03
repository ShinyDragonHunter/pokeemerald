	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_JohtoWildBattleNight
	.align 1

gbs_Music_JohtoWildBattleNight_Ch1:
	gbs_switch 0
Music_JohtoWildBattleNight_Ch1:
	tempo 107
	volume 7, 7
	duty_cycle 3
	pitch_offset 2
	vibrato 16, 2, 5
	sound_loop 0, Music_JohtoWildBattle_Ch1.body

gbs_Music_JohtoWildBattleNight_Ch2:
	gbs_switch 1
Music_JohtoWildBattleNight_Ch2:
	duty_cycle 3
	vibrato 32, 3, 6
	pitch_offset 1
	sound_call gbs_johtowildbattle_Ch2.sub1
	note_type 12, 12, 2
	octave 4
	note G_, 6
	pitch_offset 1
	duty_cycle 2
	sound_loop 0, gbs_johtowildbattle_Ch2.body

gbs_Music_JohtoWildBattleNight_Ch3:
	gbs_switch 2
Music_JohtoWildBattleNight_Ch3:
	note_type 12, 1, 1
	sound_loop 0, gbs_johtowildbattle_Ch3.body

	.align 4
gbs_Music_JohtoWildBattleNight:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_Music_JohtoWildBattleNight_Ch1
	.int gbs_Music_JohtoWildBattleNight_Ch2
	.int gbs_Music_JohtoWildBattleNight_Ch3
