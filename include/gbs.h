#ifndef GUARD_GBS_H
#define GUARD_GBS_H

#include "gba/gba.h"
#include "gba/m4a_internal.h"
#include "constants/gbs_config.h"

/*
 * gbs.h
 *
 *  Created on: 21 May 2018
 *      Author: CoolerMaster
 *  Revised for M4A integration in: February 2020
 *      Author: huderlem
 *  Integration finalized in: August 2022
 *      Author: Sierraffinity
 */

enum GBSCommands {
    SetOctave7 = 0xD0,
    SetOctave6,
    SetOctave5,
    SetOctave4,
    SetOctave3,
    SetOctave2,
    SetOctave1,
    SetOctave0,
    SetNoteUnitLengthAndEnvelope,
    SetKeyShift,
    SetTempo,
    SetDutyCycle,
    SetEnvelope,
    PitchSweep,
    SetDutyCyclePattern,
    ToggleSFX,
    PitchBend,
    SetModulation,
    E2,
    ToggleAndSetNoise,
    ForceStereoPanning,
    SetVolume,
    SetTone,
    E7,
    E8,
    SetTempoRelative,
    RestartTrack,
    NewSong,
    SFXPriorityOn,
    SFXPriorityOff,
    EE,
    Pan,
    SFXToggleNoise,
    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    SetCondition,
    JumpIf,
    Jump,
    Loop,
    Call,
    End
};

enum CGBChannels
{
    CGBCHANNEL_TONE1,
    CGBCHANNEL_TONE2,
    CGBCHANNEL_WAVE,
    CGBCHANNEL_NOISE,
    NUM_CGBCHANNELS
};

struct GBSTrack
{
    u8 flags; // 0x0, m4a engine flags
    u8 noteLength1;
    u8 patternLevel;
    u8 noteUnitLength; // frames per 16th note
    u8 noteLength2; // 0x4
    u8 currentOctave;
    u8 velocity;
    u8 loopCounter;
    u16 pitch; // 0x8
    s8 keyShift;
    u8 loopCounter2;
    u16 tone; // 0xC
    u16 pitchBendTarget;
    u8 volMR; // 0x10
    u8 volML;
    u8 vol;
    u8 volX;
    u8 pan; // 0x14
    u8 modulationDelayCountdown;
    u8 modulationDelay;
    u8 modulationMode;
    u8 modulationDepth; // 0x18
    u8 modulationCountdown;
    u8 modulationSpeed;
    u8 channelVolume;
    u8 dutyCycle; // 0x1C
    u8 dutyCyclePattern;
    u8 envelope;
    u8 pitchSweep;
    struct SoundChannel *chan; // 0x20, must be kept null
    const u8 *noiseSamplePointer; // 0x24
    u8 noiseSampleCountdown; // 0x28
    u8 pitchBendAmount;
    u8 pitchBendDuration;
    u8 pitchBendFraction;
    u8 pitchBendFractionAccumulator; // 0x2C

    // GBS engine flags
    bool8 pitchBendActivation:1; // 0x2D
    bool8 pitchBendDir:1;
    bool8 modulationActivation:1;
    bool8 modulationDir:1;
    bool8 dutyCycleLoop:1;
    bool8 pitchOffset:1;
    bool8 noteDutyOverride:1;
    bool8 noteFreqOverride:1;

    bool8 notePitchSweep:1; // 0x2E
    bool8 noteNoiseSampling:1;
    bool8 noteRest:1;
    bool8 noteVibratoOverride:1;
    bool8 noiseActive:1;
    bool8 fadeDirection:1;
    bool8 shouldReload:1;
    bool8 volumeChange:1;

    bool8 isSFXChannel:1; // 0x2F

    u8 channelId; // 0x30
    u8 padding[14];
    const u8 *nextInstruction; // 0x40
    const u8 *returnLocation; // 0x44
    u8 padding3[8]; // 0x48
};

extern u8 gUsedCGBChannels;
extern const struct Song gGBSSongTable[];
#if ENABLE_DEBUG_SOUND_CHECK_MENU == FALSE
const struct Song *GetSong(u32 n);
#else
const struct Song *GetSong(u32 n, bool32 enableGBS);
void SongNumStart(u16 n, bool32 enableGBS);
void SongNumStartOrChange(u16 n, bool32 enableGBS);
void SongNumStop(u16 n, bool32 enableGBS);
#endif
void ply_gbs_switch(struct MusicPlayerInfo *, struct MusicPlayerTrack *);

#endif //GUARD_GBS_H
