.set LOCALID_LUGIA, 1

RG_NavelRock_Bottom_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, RG_NavelRock_Bottom_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, RG_NavelRock_Bottom_OnResume
	.byte 0

RG_NavelRock_Bottom_OnTransition:
	call_if_set FLAG_CAUGHT_LUGIA, RG_NavelRock_Bottom_EventScript_HideLugia
	call_if_unset FLAG_CAUGHT_LUGIA, RG_NavelRock_Bottom_EventScript_TryShowLugia
	end

RG_NavelRock_Bottom_EventScript_HideLugia::
	setflag FLAG_HIDE_LUGIA
	return

RG_NavelRock_Bottom_EventScript_TryShowLugia::
	goto_if_set FLAG_DEFEATED_LUGIA, Common_EventScript_NopReturn
	clearflag FLAG_HIDE_LUGIA
	return

RG_NavelRock_Bottom_OnResume:
	call_if_set FLAG_SYS_CTRL_OBJ_DELETE, RG_NavelRock_Bottom_EventScript_TryRemoveLugia
	end

RG_NavelRock_Bottom_EventScript_TryRemoveLugia::
	specialvar VAR_RESULT, GetBattleOutcome
	goto_if_ne VAR_RESULT, B_OUTCOME_CAUGHT, Common_EventScript_NopReturn
	removeobject LOCALID_LUGIA
	return

RG_NavelRock_Bottom_EventScript_Lugia::
	lock
	faceplayer
	waitse
	delay 20
	playse SE_THUNDERSTORM_STOP
	setvar VAR_0x8004, 0  @ vertical pan
	setvar VAR_0x8005, 3  @ horizontal pan
	setvar VAR_0x8006, 4  @ num shakes
	setvar VAR_0x8007, 2  @ shake delay
	special ShakeCamera
	delay 30
	playse SE_THUNDERSTORM_STOP
	setvar VAR_0x8004, 0  @ vertical pan
	setvar VAR_0x8005, 3  @ horizontal pan
	setvar VAR_0x8006, 4  @ num shakes
	setvar VAR_0x8007, 2  @ shake delay
	special ShakeCamera
	delay 30
	delay 50
	waitse
	playmoncry SPECIES_LUGIA, CRY_MODE_ENCOUNTER
	waitmoncry
	delay 20
	seteventmon SPECIES_LUGIA, 70
	setflag FLAG_SYS_CTRL_OBJ_DELETE
	special BattleSetup_StartLegendaryBattle
	waitstate
	clearflag FLAG_SYS_CTRL_OBJ_DELETE
	specialvar VAR_RESULT, GetBattleOutcome
	goto_if_eq VAR_RESULT, B_OUTCOME_WON, RG_NavelRock_Bottom_EventScript_DefeatedLugia
	goto_if_eq VAR_RESULT, B_OUTCOME_RAN, RG_NavelRock_Bottom_EventScript_RanFromLugia
	goto_if_eq VAR_RESULT, B_OUTCOME_PLAYER_TELEPORTED, RG_NavelRock_Bottom_EventScript_RanFromLugia
	setflag FLAG_CAUGHT_LUGIA
	release
	end

RG_NavelRock_Bottom_EventScript_DefeatedLugia::
	setflag FLAG_DEFEATED_LUGIA
	setvar VAR_0x8004, SPECIES_LUGIA
	goto Common_EventScript_LegendaryFlewAway
	end

RG_NavelRock_Bottom_EventScript_RanFromLugia::
	setvar VAR_0x8004, SPECIES_LUGIA
	goto Common_EventScript_LegendaryFlewAway
	end