	.align 2
gSabrinaVoiceTable::
	cry Voice_SabrinaIntro

	.align 2
gOakVoiceTable::
	cry Voice_OakIntro
	cry Voice_OakGiveItem

	.align 2
gTrainerVoiceTable::
	.4byte gSabrinaVoiceTable
	.4byte gOakVoiceTable
