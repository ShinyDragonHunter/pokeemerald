#ifndef GUARD_TRAINER_HILL_H
#define GUARD_TRAINER_HILL_H

#define HILL_TRAINER_NAME_LENGTH 11

struct TrainerHillTrainer
{
    u8 name[HILL_TRAINER_NAME_LENGTH];
    u8 facilityClass;
    u32 unused;
    u16 speechBefore[6];
    u16 speechWin[6];
    u16 speechLose[6];
    u16 speechAfter[6];
    struct BattleTowerPokemon mons[PARTY_SIZE];
};

struct TrHillRoomTrainers
{
    u8 name[2][HILL_TRAINER_NAME_LENGTH];
    u8 facilityClass[2];
};

struct TrHillDisplay
{
    u8 data[0x100];
    u16 unk3A0[16];
    u8 coords[2]; // x first 4 bits, y last 4 bits
    u8 direction; // array of 4 bits for each trainer
    u8 range; // array of 4 bits for each trainer
};

struct TrHillFloor
{
    u8 unk0;
    u8 unk1;
    struct TrainerHillTrainer trainers[2];
    struct TrHillDisplay display;
};

struct TrHillTag
{
    u8 unkField_0;
    u8 unused1;
    u8 numFloors;
    u32 checksum;
    struct TrHillFloor floors[0];
};

extern u32 *gTrainerHillVBlankCounter;

void CallTrainerHillFunction(void);
void ResetTrainerHillResults(void);
u8 GetTrainerHillOpponentClass(u16 trainerId);
void GetTrainerHillTrainerName(u8 *dst, u16 trainerId);
u8 GetTrainerHillTrainerFrontSpriteId(u16 trainerId);
void InitTrainerHillBattleStruct(void);
void FreeTrainerHillBattleStruct(void);
void CopyTrainerHillTrainerText(u8 which, u16 trainerId);
bool8 sub_81D5C18(void);
void nullsub_129(void);
void PrintOnTrainerHillRecordsWindow(void);
void sub_81D5DF8(void);
bool32 sub_81D5F48(void);
void sub_81D5FB4(u16 *mapArg);
bool32 InTrainerHill(void);
u8 GetCurrentTrainerHillMapId(void);
const struct WarpEvent* sub_81D6120(void);
const struct WarpEvent* sub_81D6134(u8 warpEventId);
u16 LocalIdToHillTrainerId(u8 localId);
bool8 GetHillTrainerFlag(u8 eventObjectId);
void SetHillTrainerFlag(void);
const u8 *GetTrainerHillTrainerScript(void);
void FillHillTrainerParty(void);
void FillHillTrainersParties(void);
u32 sub_81D63C4(void);
u8 GetTrainerEncounterMusicIdInTrainerHill(u16 trainerId);
u8 sub_81D6490(void);
void sub_81D64C0(void);
bool32 sub_81D6534(void);

#endif // GUARD_TRAINER_HILL_H
