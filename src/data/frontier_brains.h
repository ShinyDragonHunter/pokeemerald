const struct Trainer gFrontierBrains[] = {
    [FRONTIER_FACILITY_TOWER] =
    {
        .trainerClass = TRAINER_CLASS_SALON_MAIDEN,
        .encounterMusic_gender = FEMALE,
        .trainerPic = TRAINER_PIC_SALON_MAIDEN_ANABEL,
        .trainerName = COMPOUND_STRING("ANABEL"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {35, 70, 35, 1},
                                      .battledBrainBitFlags = {1 << 0, 1 << 1},
                                      .objectEventGfxId = OBJ_EVENT_GFX_ANABEL),
        .party = sFrontierBrainParty_BattleTower,
    },

    [FRONTIER_FACILITY_DOME] =
    {
        .trainerClass = TRAINER_CLASS_DOME_ACE,
        .encounterMusic_gender = MALE,
        .trainerPic = TRAINER_PIC_DOME_ACE_TUCKER,
        .trainerName = COMPOUND_STRING("TUCKER"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {4, 9, 5, 0},
                                      .battledBrainBitFlags = {1 << 2, 1 << 3},
                                      .objectEventGfxId = OBJ_EVENT_GFX_TUCKER),
        .party = sFrontierBrainParty_BattleDome,
    },

    [FRONTIER_FACILITY_PALACE] =
    {
        .trainerClass = TRAINER_CLASS_PALACE_MAVEN,
        .encounterMusic_gender = MALE,
        .trainerPic = TRAINER_PIC_PALACE_MAVEN_SPENSER,
        .trainerName = COMPOUND_STRING("SPENSER"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {21, 42, 21, 1},
                                      .battledBrainBitFlags = {1 << 4, 1 << 5},
                                      .objectEventGfxId = OBJ_EVENT_GFX_SPENSER),
        .party = sFrontierBrainParty_BattlePalace,
    },

    [FRONTIER_FACILITY_ARENA] =
    {
        .trainerClass = TRAINER_CLASS_ARENA_TYCOON,
        .encounterMusic_gender = FEMALE,
        .trainerPic = TRAINER_PIC_ARENA_TYCOON_GRETA,
        .trainerName = COMPOUND_STRING("GRETA"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {28, 56, 28, 1},
                                      .battledBrainBitFlags = {1 << 6, 1 << 7},
                                      .objectEventGfxId = OBJ_EVENT_GFX_GRETA),
        .party = sFrontierBrainParty_BattleArena,
    },

    [FRONTIER_FACILITY_FACTORY] =
    {
        .trainerClass = TRAINER_CLASS_FACTORY_HEAD,
        .encounterMusic_gender = MALE,
        .trainerPic = TRAINER_PIC_FACTORY_HEAD_NOLAND,
        .trainerName = COMPOUND_STRING("NOLAND"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {21, 42, 21, 1},
                                      .battledBrainBitFlags = {1 << 8, 1 << 9},
                                      .objectEventGfxId = OBJ_EVENT_GFX_NOLAND),
        .party = NULL, // Because Factory's pokemon are random, this facility's Brain also uses random pokemon.
    },

    [FRONTIER_FACILITY_PIKE] =
    {
        .trainerClass = TRAINER_CLASS_PIKE_QUEEN,
        .encounterMusic_gender = FEMALE,
        .trainerPic = TRAINER_PIC_PIKE_QUEEN_LUCY,
        .trainerName = COMPOUND_STRING("LUCY"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {28, 140, 56, 1},
                                      .battledBrainBitFlags = {1 << 10, 1 << 11},
                                      .objectEventGfxId = OBJ_EVENT_GFX_LUCY),
        .party = sFrontierBrainParty_BattlePike,
    },

    [FRONTIER_FACILITY_PYRAMID] =
    {
        .trainerClass = TRAINER_CLASS_PYRAMID_KING,
        .encounterMusic_gender = MALE,
        .trainerPic = TRAINER_PIC_PYRAMID_KING_BRANDON,
        .trainerName = COMPOUND_STRING("BRANDON"),
        .trainerType = FRONTIER_BRAIN(.streakAppearances = {21, 70, 35, 0},
                                      .battledBrainBitFlags = {1 << 12, 1 << 13},
                                      .objectEventGfxId = OBJ_EVENT_GFX_BRANDON),
        .party = sFrontierBrainParty_BattlePyramid,
    }
};
