#include "global.h"
#include "gbs.h"

/*
 * gbs.c
 *
 *  Created on: 21 May 2018
 *      Author: Jambo51
 *  Revised for M4A integration in: February 2020
 *      Author: huderlem
 *  Integration finalized in: August 2022
 *      Author: Sierraffinity
 */

u8 gUsedCGBChannels;

static bool32 GBSTrack_Update(struct MusicPlayerInfo *info, struct GBSTrack *track);
static void ApplyPitchBend(struct GBSTrack *track);
static void ApplyDutyCycle(struct GBSTrack *track);
static u16 ApplyPitchOffsetAndModulation(struct GBSTrack *track, u16 pitch);
static void ApplyNoise(struct GBSTrack *track);
static u8 ProcessCommands(struct MusicPlayerInfo *info, struct GBSTrack *track);
static void UpdateCGBChannel(struct GBSTrack *track, u16 pitch);
static void UpdateCGBTone1(struct GBSTrack *track, u16 pitch);
static void UpdateCGBTone2(struct GBSTrack *track, u16 pitch);
static void UpdateCGBWave(struct GBSTrack *track, u16 pitch);
static void UpdateCGBNoise(struct GBSTrack *track);
static void UpdateStereoPan(struct GBSTrack *track);
static void UpdateDutyEnvelopeVelocity(struct GBSTrack *track, vu8 *lengthDuty, vu8 *envelopeVelocity);
static void LoadWavePattern(struct GBSTrack *track);
static inline bool32 IsM4AUsingCGBChannel(int channel);
static u16 CalculateNoteLength(u8 noteUnitLength, u16 tempo, u8 length, u16 previousLeftover);
static u16 CalculatePitch(u8 note, s8 keyShift, u8 octave);
static void ClearCGBChannel(struct GBSTrack *track);

#include "data/gbs/note_frequency_table.h"
#include "data/gbs/wave_samples.h"
#include "data/gbs/drum_noise_data.h"

static bool32 GBSTrack_Update(struct MusicPlayerInfo *info, struct GBSTrack *track)
{
    bool32 trackActive;
    u16 pitch;

    #define channel pitch
    channel = track->channelId - 1;

    // The M4A sound effects can change instrument data out from under us.
    // We want to reload the correct values for this track when
    // control is returned to GBS from M4A.
    if (IsM4AUsingCGBChannel(channel))
    {
        track->shouldReload = TRUE;
    }
    else if (track->shouldReload)
    {
        switch (channel)
        {
        case CGBCHANNEL_TONE1:
            track->notePitchSweep = TRUE;
            track->pitchSweep = 0;
            break;
        case CGBCHANNEL_WAVE:
            LoadWavePattern(track);
            break;
        default:
            break;
        }
        track->shouldReload = FALSE;
    }

    trackActive = TRUE;
    if (track->noteLength1 < 2)
        trackActive = ProcessCommands(info, track);
    else
        track->noteLength1--;

    if (channel != CGBCHANNEL_NOISE)
        ApplyPitchBend(track);
    #undef channel

    pitch = track->pitch;

    ApplyDutyCycle(track);
    pitch = ApplyPitchOffsetAndModulation(track, pitch);
    ApplyNoise(track);
    UpdateCGBChannel(track, pitch);

    return trackActive;
}

static void ApplyPitchBend(struct GBSTrack *track)
{
    if (track->pitchBendActivation)
    {
        u16 pitch = track->pitch;
        if (track->pitchBendDir)
        {
            u32 fractionAccumulator = track->pitchBendFractionAccumulator;
            pitch += track->pitchBendAmount;
            fractionAccumulator += track->pitchBendFraction;
            if (fractionAccumulator >= 0x100)
            {
                // rollover
                pitch++;
            }
            track->pitchBendFractionAccumulator = fractionAccumulator & 0xFF;
            if (pitch < track->pitchBendTarget)
            {
                track->pitch = pitch;
                track->noteFreqOverride = TRUE;
            }
            else
            {
                track->pitchBendActivation = FALSE;
                track->pitchBendDir = FALSE;
            }
        }
        else
        {
            // TODO: Why does it calculate the fractional part like this?
            u32 fractionAccumulator = track->pitchBendFraction;
            pitch -= track->pitchBendAmount;
            fractionAccumulator *= 2;
            if (fractionAccumulator >= 0x100)
            {
                // rollover
                pitch--;
            }
            track->pitchBendFraction = fractionAccumulator & 0xFF;
            if (pitch > track->pitchBendTarget)
            {
                track->pitch = pitch;
                track->noteFreqOverride = TRUE;
            }
            else
            {
                track->pitchBendActivation = FALSE;
                track->pitchBendDir = FALSE;
            }
        }
    }
}

static void ApplyDutyCycle(struct GBSTrack *track)
{
    if (track->dutyCycleLoop)
    {
        track->dutyCycle = (track->dutyCyclePattern & 0xC0) >> 6;
        track->dutyCyclePattern = (track->dutyCyclePattern << 2) | track->dutyCycle;
        track->noteDutyOverride = TRUE;
    }
}

static u16 ApplyPitchOffsetAndModulation(struct GBSTrack *track, u16 pitch)
{
    if (track->pitchOffset)
    {
        // TODO: Should tone be signed?
        pitch += track->tone;
    }

    if (track->modulationActivation)
    {
        if (track->modulationDelayCountdown > 0)
        {
            track->modulationDelayCountdown--;
        }
        else if (track->modulationDepth != 0)
        {
            if (track->modulationCountdown > 0)
            {
                track->modulationCountdown--;
            }
            else if (track->pitch != 0)
            {
                track->modulationDir = !track->modulationDir;
                track->modulationCountdown = track->modulationSpeed;
                switch (track->modulationMode)
                {
                case 0:
                {
                    // Original engine chooses to clamp calculation at nearest multiple of 0x100
                    // Because of this, it only writes the lower byte if noteVibratoOverride is set
                    // Either we replicate both behaviors exactly or just store both bytes
                    u8 halfValue = track->modulationDepth >> 1;
                    if (track->modulationDir)
                        pitch += (track->modulationDepth - halfValue);
                    else
                        pitch -= halfValue;
                    break;
                }
                case 1:
                    if (track->modulationDir)
                        pitch -= track->modulationDepth;
                    break;
                case 2:
                    if (track->modulationDir)
                        pitch += track->modulationDepth;
                    break;
                }
                track->noteVibratoOverride = TRUE;
            }
        }
    }

    return pitch;
}

static void ApplyNoise(struct GBSTrack *track)
{
    if (track->noiseActive)
    {
        if (track->noiseSampleCountdown > 0)
        {
            track->noiseSampleCountdown--;
        }
        else if (track->noiseSamplePointer != NULL && track->noiseSamplePointer[0] != sound_ret)
        {
            track->noiseSampleCountdown = (*track->noiseSamplePointer++ & 0xF) + 1;
            track->envelope = *track->noiseSamplePointer++;
            track->pitch = *track->noiseSamplePointer++;
            track->noteNoiseSampling = TRUE;
        }
    }
}

static u8 ProcessCommands(struct MusicPlayerInfo *info, struct GBSTrack *track)
{
    u8 commandID = *track->nextInstruction++; // grab next byte and increment pointer
    bool32 trackActive = TRUE;

    while (commandID >= SetOctave7)
    {
        switch (commandID)
        {
        case SetOctave7 ... SetOctave0:
            track->currentOctave = commandID & 7;
            break;
        case SetNoteUnitLengthAndEnvelope:
            track->noteUnitLength = *track->nextInstruction++;
            if ((track->channelId - 1) == CGBCHANNEL_NOISE)
                break;
        // fallthrough
        case SetEnvelope:
        {
            u8 velocityEnvelope = *track->nextInstruction++;
            track->velocity = (velocityEnvelope & 0xF0) >> 4;
            track->envelope = velocityEnvelope & 0xF;
            break;
        }
        case SetKeyShift:
            track->keyShift = *track->nextInstruction++;
            break;
        case SetTempo:
            info->gbsTempo = T1_READ_16(track->nextInstruction);
            track->nextInstruction += 2;
            break;
        case SetDutyCycle:
            track->dutyCycle = *track->nextInstruction++;
            break;
        case SetDutyCyclePattern:
            track->dutyCycleLoop = TRUE;
            track->dutyCyclePattern = *track->nextInstruction++;
            track->dutyCycle = track->dutyCyclePattern & 3;
            break;
        case ToggleSFX:
            track->isSFXChannel = !track->isSFXChannel;
            break;
        case PitchSweep:
            track->pitchSweep = *track->nextInstruction++;
            track->notePitchSweep = TRUE;
            break;
        case PitchBend:
        {
            u8 byte2 = 0;
            track->pitchBendDuration = *track->nextInstruction++;
            byte2 = *track->nextInstruction++;
            track->pitchBendTarget = CalculatePitch(byte2 & 0xF, track->keyShift, (byte2 & 0xF0) >> 4);
            track->pitchBendActivation = TRUE;
            break;
        }
        case SetModulation:
        {
            u8 modulationDelay = *track->nextInstruction++;
            u8 byte2 = *track->nextInstruction++;
            if (byte2 != 0)
            {
                track->modulationActivation = TRUE;
                track->modulationDir = FALSE;
                track->modulationDelay = modulationDelay;
                track->modulationDelayCountdown = modulationDelay;
                track->modulationMode = 0;
                track->modulationDepth = (byte2 & 0xF0) >> 4;
                track->modulationSpeed = byte2 & 0xF;
                track->modulationCountdown = track->modulationSpeed;
            }
            else
            {
                track->modulationActivation = FALSE;
            }
            break;
        }
        case ToggleAndSetNoise:
        case SFXToggleNoise:
            if (track->noiseActive)
            {
                track->noiseActive = FALSE;
            }
            else
            {
                track->noiseActive = TRUE;
                track->dutyCycle = *track->nextInstruction++;
            }
            break;
        case SetVolume:
            track->channelVolume = *track->nextInstruction++;
            track->volumeChange = TRUE;
            break;
        case SetTone:
            track->tone = T1_READ_16(track->nextInstruction);
            track->nextInstruction += 2;
            track->pitchOffset = TRUE;
            break;
        case Pan:
            track->pan = *track->nextInstruction++;
            break;
        case JumpIf:
            // Not implemented
            track->nextInstruction += 5;
            break;
        case Jump:
            track->nextInstruction = T1_READ_PTR(track->nextInstruction);
            break;
        case Loop:
        {
            u8 loopCount = *track->nextInstruction++;
            if (track->returnLocation == NULL)
            {
                if (loopCount == 0 || (loopCount - 1) > track->loopCounter)
                {
                    if (loopCount != 0)
                        track->loopCounter++;
                    track->nextInstruction = T1_READ_PTR(track->nextInstruction);
                }
                else if (loopCount != 0 && track->loopCounter != 0)
                {
                    track->loopCounter = 0;
                    track->nextInstruction += 4;
                }
            }
            else
            {
                if (loopCount == 0 || (loopCount - 1) > track->loopCounter2)
                {
                    if (loopCount != 0)
                        track->loopCounter2++;
                    track->nextInstruction = T1_READ_PTR(track->nextInstruction);
                }
                else if (loopCount != 0 && track->loopCounter2 != 0)
                {
                    track->loopCounter2 = 0;
                    track->nextInstruction += 4;
                }
            }
            break;
        }
        case Call:
            if (track->returnLocation == NULL)
            {
                track->returnLocation = track->nextInstruction + 4;
                track->nextInstruction = T1_READ_PTR(track->nextInstruction);
            }
            break;
        case End:
            if (track->returnLocation == NULL)
            {
                trackActive = FALSE;
                track->noteRest = TRUE;
            }
            else
            {
                track->nextInstruction = track->returnLocation;
                track->returnLocation = NULL;
            }
            break;
        default:
            break;
        }
        commandID = *track->nextInstruction++; 
    }

    if (trackActive)
    {
        u16 noteLength;
        if (track->isSFXChannel)
        {
            track->noteNoiseSampling = TRUE;

            noteLength = CalculateNoteLength(track->noteUnitLength, info->gbsTempo, commandID, track->noteLength2);
            track->noteLength1 = (noteLength & 0xFF00) >> 8;
            track->noteLength2 = noteLength & 0xFF;

            #define velocityEnvelope noteLength
            velocityEnvelope = *track->nextInstruction++;
            track->velocity = (velocityEnvelope & 0xF0) >> 4;
            track->envelope = velocityEnvelope & 0xF;
            #undef velocityEnvelope

            if ((track->channelId - 1) == CGBCHANNEL_NOISE)
            {
                track->pitch = (track->pitch & 0xFF00) | *track->nextInstruction++;
            }
            else
            {
                track->pitch = T1_READ_16(track->nextInstruction);
                track->nextInstruction += 2;
            }
        }
        else
        {
            noteLength = CalculateNoteLength(track->noteUnitLength, info->gbsTempo, (commandID & 0xF), track->noteLength2);
            track->noteLength1 = (noteLength & 0xFF00) >> 8;
            track->noteLength2 = noteLength & 0xFF;

            #define command noteLength
            command = commandID & 0xF0;
            if (track->noiseActive && ((track->channelId - 1) == CGBCHANNEL_NOISE))
            {
                if (command != 0)
                {
                    track->noiseSamplePointer = sDrumkitDataTable[track->dutyCycle][(commandID & 0xF0) >> 4];
                    track->noiseSampleCountdown = 0;
                }
            }
            else
            {
                if (command != 0)
                {
                    track->pitch = CalculatePitch((commandID & 0xF0) >> 4, track->keyShift, track->currentOctave);
                    track->noteNoiseSampling = TRUE;
            
                    // Initialize pitch bend data from target and duration
                    if (track->pitchBendActivation)
                    {
                        u32 distance;
                        if (track->noteLength1 <= track->pitchBendDuration)
                            track->pitchBendDuration = 1;
                        else
                            track->pitchBendDuration = track->noteLength1 - track->pitchBendDuration;

                        distance = 0;
                        if (track->pitch < track->pitchBendTarget)
                        {
                            // BUG: If lower bytes carry, then upper bytes are miscalculated
                            s32 carryCheck = (s32)(track->pitchBendTarget & 0xFF) - (s32)(track->pitch & 0xFF);
                            if (carryCheck < 0)
                                distance = 0x200;

                            distance += track->pitchBendTarget - track->pitch;
                            track->pitchBendDir = TRUE;
                        }
                        else
                        {
                            // BUG: If lower bytes carry, then upper bytes are miscalculated
                            s32 carryCheck = (s32)(track->pitch & 0xFF) - (s32)(track->pitchBendTarget & 0xFF);
                            if (carryCheck < 0)
                                distance = 0x200;

                            distance += track->pitch - track->pitchBendTarget;
                            track->pitchBendDir = FALSE;
                        }

                        // BUG: Division off by one?
                        track->pitchBendAmount = (distance / track->pitchBendDuration) + 1;
                        track->pitchBendFraction = distance % track->pitchBendDuration;
                        track->pitchBendFractionAccumulator = 0;
                    }
                }
                else
                {
                    track->noteRest = TRUE;
                }
            }
            #undef command
        }
    }

    track->modulationDelayCountdown = track->modulationDelay;
    return trackActive;
}

static void UpdateCGBChannel(struct GBSTrack *track, u16 pitch)
{
    u8 channel = track->channelId - 1;
    if (!IsM4AUsingCGBChannel(channel))
    {
        switch (channel)
        {
        case CGBCHANNEL_TONE1:
            UpdateCGBTone1(track, pitch);
            break;
        case CGBCHANNEL_TONE2:
            UpdateCGBTone2(track, pitch);
            break;
        case CGBCHANNEL_WAVE:
            UpdateCGBWave(track, pitch);
            break;
        default: // CGBCHANNEL_NOISE
            UpdateCGBNoise(track);
            break;
        }
    }
}

static void UpdateCGBTone1(struct GBSTrack *track, u16 pitch)
{
    vu8 *sweep = (vu8 *)REG_ADDR_NR10;
    vu8 *lengthDuty = (vu8 *)REG_ADDR_NR11;
    vu8 *envelopeVelocity = (vu8 *)REG_ADDR_NR12;
    vu16 *frequencyControl = (vu16 *)REG_ADDR_NR13;

    if (track->notePitchSweep)
        *sweep = track->pitchSweep;

    if (track->noteRest)
    {
        ClearCGBChannel(track);
    }
    else if (track->noteNoiseSampling)
    {
        UpdateStereoPan(track);
        UpdateDutyEnvelopeVelocity(track, lengthDuty, envelopeVelocity);
        *frequencyControl = pitch | 0x8000;
    }
    else
    {
        if (track->noteFreqOverride)
        {
            *frequencyControl = pitch;
            track->noteDutyOverride = TRUE;
        }
        else if (track->noteVibratoOverride)
        {
            // Original engine chooses to clamp calculation at nearest multiple of 0x100
            // Because of this, it only writes the lower byte if noteVibratoOverride is set
            // Either we replicate both behaviors exactly or just store both bytes
            //*frequencyControl = (*frequencyControl & 0xFF00) | (pitch & 0xFF);

            *frequencyControl = pitch;
            track->noteDutyOverride = TRUE;
        }

        if (track->noteDutyOverride)
            *lengthDuty = (*lengthDuty & 0x3F) | (track->dutyCycle << 6);
    }
}

static void UpdateCGBTone2(struct GBSTrack *track, u16 pitch)
{
    vu8 *lengthDuty = (vu8 *)REG_ADDR_NR21;
    vu8 *envelopeVelocity = (vu8 *)REG_ADDR_NR22;
    vu16 *frequencyControl = (vu16 *)REG_ADDR_NR23;

    if (track->noteRest)
    {
        ClearCGBChannel(track);
    }
    else if (track->noteNoiseSampling)
    {
        UpdateStereoPan(track);
        UpdateDutyEnvelopeVelocity(track, lengthDuty, envelopeVelocity);
        *frequencyControl = pitch | 0x8000;
    }
    else
    {
        if (track->noteFreqOverride)
        {
            *frequencyControl = pitch;
            track->noteDutyOverride = TRUE;
        }
        else if (track->noteVibratoOverride)
        {
            // Original engine chooses to clamp calculation at nearest multiple of 0x100
            // Because of this, it only writes the lower byte if noteVibratoOverride is set
            // Either we replicate both behaviors exactly or just store both bytes
            //*frequencyControl = (*frequencyControl & 0xFF00) | (pitch & 0xFF);

            *frequencyControl = pitch;
            track->noteDutyOverride = TRUE;
        }

        if (track->noteDutyOverride)
            *lengthDuty = (*lengthDuty & 0x3F) | (track->dutyCycle << 6);
    }
}

static void UpdateCGBWave(struct GBSTrack *track, u16 pitch)
{
    vu16 *frequencyControl = (vu16 *)REG_ADDR_NR33;

    if (track->noteRest)
    {
        ClearCGBChannel(track);
    }
    else if (track->noteNoiseSampling)
    {
        UpdateStereoPan(track);
        LoadWavePattern(track);
        *frequencyControl = pitch | 0x8000;
    }
    else if (track->noteFreqOverride)
    {
        *frequencyControl = pitch;
        track->noteDutyOverride = TRUE;
    }
    else if (track->noteVibratoOverride)
    {
        // Original engine chooses to clamp calculation at nearest multiple of 0x100
        // Because of this, it only writes the lower byte if noteVibratoOverride is set
        // Either we replicate both behaviors exactly or just store both bytes
        //*frequencyControl = (*frequencyControl & 0xFF00) | (pitch & 0xFF);
        *frequencyControl = pitch;
    }
}

static void UpdateCGBNoise(struct GBSTrack *track)
{
    vu8 *length = (vu8 *)REG_ADDR_NR41;
    vu8 *envelopeVelocity = (vu8 *)REG_ADDR_NR42;
    vu8 *frequency = (vu8 *)REG_ADDR_NR43;
    vu8 *control = (vu8 *)REG_ADDR_NR44;

    if (track->noteRest)
    {
        ClearCGBChannel(track);
    }
    else if (track->noteNoiseSampling)
    {
        UpdateStereoPan(track);
        *length = 0x3F;
        *envelopeVelocity = track->envelope | track->velocity << 4;
        *frequency = track->pitch & 0xFF;
        *control = 0x80;
    }
}

static void UpdateStereoPan(struct GBSTrack *track)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    vu8 *soundControl = (vu8 *)REG_ADDR_NR50;
    u8 thisPan = soundInfo->cgbChans[track->channelId - 1].panMask;

    if (gSaveBlock2Ptr->optionsSound == OPTIONS_SOUND_STEREO)
        thisPan &= track->pan;
    soundControl[1] = (soundControl[1] & ~soundInfo->cgbChans[track->channelId - 1].panMask) | thisPan;
}

static void LoadWavePattern(struct GBSTrack *track)
{
    int patternID = track->envelope;
    if (!IsM4AUsingCGBChannel(CGBCHANNEL_WAVE))
    {
        struct SoundInfo *soundInfo = SOUND_INFO_PTR;
        vu8 *control = (vu8 *)REG_ADDR_NR30;
        vu8 *length = (vu8 *)REG_ADDR_NR31;
        vu8 *velocity = (vu8 *)REG_ADDR_NR32;

        *length = 0x3F;
        *control = 0x40; // Stop channel and choose other wave bank so we can write into the first one

        if (patternID < ARRAY_COUNT(sWaveSamples) && (u32)soundInfo->cgbChans[CGBCHANNEL_WAVE].currentPointer != (u32)sWaveSamples[patternID])
        {
            u32 *mainPattern = (u32 *)(REG_ADDR_WAVE_RAM0);
            memcpy(mainPattern, sWaveSamples[patternID], sizeof(sWaveSamples[patternID]));
            (u32)soundInfo->cgbChans[CGBCHANNEL_WAVE].currentPointer = (u32)sWaveSamples[patternID];
        }

        *velocity = track->velocity << 5;
        *control = 0x80; // Start channel and switch back to first wave bank
    }

    track->envelope = patternID;
    track->shouldReload = FALSE;
}

static void UpdateDutyEnvelopeVelocity(struct GBSTrack *track, vu8 *lengthDuty, vu8 *envelopeVelocity)
{
    *lengthDuty = 0x3F | (track->dutyCycle << 6);
    *envelopeVelocity = track->envelope | track->velocity << 4;
}

//
// Functions called from m4a engine
//

bool32 GBSMain(struct MusicPlayerInfo *info, struct MusicPlayerTrack *track)
{
    struct GBSTrack *gbsTrack = (struct GBSTrack *)track;
    vu8 *soundControl = (vu8 *)REG_ADDR_NR50;
    bool32 success = FALSE;
    u32 masterVolume;
    
    // Set bias level to 0 for less crunch
    // Always set here since m4a engine may have changed it
    // TODO: Now I can't tell the difference, was there ever one...?
    //REG_SOUNDBIAS = REG_SOUNDBIAS & 0xFC00;

    // Reset all note flags
    gbsTrack->noteDutyOverride = FALSE;
    gbsTrack->noteFreqOverride = FALSE;
    gbsTrack->notePitchSweep = FALSE;
    gbsTrack->noteNoiseSampling = FALSE;
    gbsTrack->noteRest = FALSE;
    gbsTrack->noteVibratoOverride = FALSE;

    // Run unified GBS track update function
    success = GBSTrack_Update(info, gbsTrack);

    // Respect the master M4A fade control.
    masterVolume = track->volX;
    if (masterVolume != 0)
        masterVolume = masterVolume / 8;
    else
        masterVolume = 7;

    if (masterVolume > 7)
        masterVolume = 7;

    masterVolume = (masterVolume << 4) | masterVolume;

    // Ensure we're not stepping on m4a's toes by checking for default volume and channel usage
    if ((masterVolume == 0x77) && (gUsedCGBChannels == 0) && gbsTrack->volumeChange)
    {
        masterVolume = gbsTrack->channelVolume;
        gbsTrack->volumeChange = FALSE;
    }
    soundControl[0] = masterVolume;

    return success;
}

void ply_gbs_switch(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    u8 *cmdPtrBackup = track->cmdPtr;
    u8 gbChannel = *cmdPtrBackup++;

    if (gbChannel < 8)
    {
        struct GBSTrack *gbsTrack = (struct GBSTrack *)track;
        // Clear out all m4a data.
        memset(gbsTrack, 0, sizeof(*gbsTrack));

        // Set up track with new GBS data (and restore some important info).
        gbsTrack->channelId = (gbChannel % 4) + 1;
        if (gbChannel >= 4)
            gbsTrack->isSFXChannel = TRUE;
        gbsTrack->nextInstruction = cmdPtrBackup;
        gbsTrack->flags = MPT_FLG_EXIST;

        // Set engine defaults.
        gbsTrack->pan = 0xFF;
        gbsTrack->noteUnitLength = 1;

        // Disable m4a control of CGB channel.
        soundInfo->cgbChans[gbChannel].statusFlags = 0;

        // Clear used bit.
        gUsedCGBChannels &= ~(1 << gbChannel);
        ClearCGBChannel(gbsTrack);
        // TODO: Figure out if this is needed when resetting
        //LoadWavePattern(gbsTrack, 0);
    }
}

void GBSTrack_Stop(struct MusicPlayerTrack *track)
{
    if (track->gbsChannel != 0)
        ClearCGBChannel((struct GBSTrack *)track);
}

//
// Helpers
//

static inline bool32 IsM4AUsingCGBChannel(int channel)
{
    return !!(gUsedCGBChannels & (1 << channel));
}

static u16 CalculateNoteLength(u8 noteUnitLength, u16 tempo, u8 length, u16 previousLeftover)
{
    return ((noteUnitLength * (length + 1)) * tempo) + previousLeftover;
}

static u16 CalculatePitch(u8 note, s8 keyShift, u8 octave)
{
    u32 octaveShifted = octave + ((keyShift & 0xF0) >> 4);
    u8 noteShifted = note + (keyShift & 0xF);
    return (sFrequencyTable[noteShifted] >> (7 - octaveShifted)) & 0x7FF;
}

static void ClearCGBChannel(struct GBSTrack *track)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    vu16 *control = ((vu16 *)REG_ADDR_NR10) + ((track->channelId - 1) * 4);
    vu8 *soundControl = (vu8 *)REG_ADDR_NR50;

    soundControl[1] &= ~soundInfo->cgbChans[track->channelId - 1].panMask;

    control[0] = 0;
    control[1] = 0x800;
    control[2] = 0x8000;
}

#include "constants/gbs_songs.h"
#if ENABLE_DEBUG_SOUND_CHECK_MENU == FALSE
#include "event_data.h"
#include "constants/flags.h"

const struct Song *GetSong(u32 n)
{
    const struct Song *song = &gSongTable[n];
    if (FlagGet(FLAG_SYS_GBS_ENABLED))
    {
        u16 gbsSongId = song->me;
        if (gbsSongId != GBS_MUSIC_NONE)
            song = &gGBSSongTable[gbsSongId];
    }
    return song;
}
#else
const struct Song *GetSong(u32 n, bool32 enableGBS)
{
    const struct Song *song = &gSongTable[n];
    if (enableGBS)
    {
        u16 gbsSongId = song->me;
        if (gbsSongId != GBS_MUSIC_NONE)
            song = &gGBSSongTable[gbsSongId];
    }
    return song;
}

void SongNumStart(u16 n, bool32 enableGBS)
{
    const struct Song *song = GetSong(n, enableGBS);
    const struct MusicPlayer *mplay = &gMPlayTable[song->ms];

    MPlayStart(mplay->info, song->header);
}

void SongNumStartOrChange(u16 n, bool32 enableGBS)
{
    const struct Song *song = GetSong(n, enableGBS);
    const struct MusicPlayer *mplay = &gMPlayTable[song->ms];

    if (mplay->info->songHeader != song->header)
    {
        MPlayStart(mplay->info, song->header);
    }
    else
    {
        if ((mplay->info->status & MUSICPLAYER_STATUS_TRACK) == 0
         || (mplay->info->status & MUSICPLAYER_STATUS_PAUSE))
        {
            MPlayStart(mplay->info, song->header);
        }
    }
}

void SongNumStop(u16 n, bool32 enableGBS)
{
    const struct Song *song = GetSong(n, enableGBS);
    const struct MusicPlayer *mplay = &gMPlayTable[song->ms];

    if (mplay->info->songHeader == song->header)
        m4aMPlayStop(mplay->info);
}
#endif
