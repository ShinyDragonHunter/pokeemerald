static const struct TrainerMon sFrontierBrainParty_BattleTower[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_ALAKAZAM,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(106, 0, 152, 152, 100, 0),
        .moves = {MOVE_THUNDER_PUNCH, MOVE_FIRE_PUNCH, MOVE_ICE_PUNCH, MOVE_DISABLE},
    },
    {
        .species = SPECIES_ENTEI,
        .heldItem = ITEM_LUM_BERRY,
        .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
        .nature = TRAINER_PARTY_NATURE(NATURE_LONELY),
        .ev = TRAINER_PARTY_EVS(100, 152, 152, 0, 100, 6),
        .moves = {MOVE_FIRE_BLAST, MOVE_CALM_MIND, MOVE_RETURN, MOVE_ROAR},
    },
    {
        .species = SPECIES_SNORLAX,
        .heldItem = ITEM_QUICK_CLAW,
        .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(152, 152, 0, 0, 106, 100),
        .moves = {MOVE_BODY_SLAM, MOVE_BELLY_DRUM, MOVE_YAWN, MOVE_SHADOW_BALL},
    },
    // Gold Symbol.
    {
        .species = SPECIES_RAIKOU,
        .heldItem = ITEM_LUM_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(158, 0, 252, 100, 0, 0),
        .moves = {MOVE_THUNDERBOLT, MOVE_CALM_MIND, MOVE_REFLECT, MOVE_REST},
    },
    {
        .species = SPECIES_LATIOS,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(252, 0, 252, 6, 0, 0),
        .moves = {MOVE_PSYCHIC, MOVE_CALM_MIND, MOVE_RECOVER, MOVE_DRAGON_CLAW},
    },
    {
        .species = SPECIES_SNORLAX,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(252, 252, 0, 0, 6, 0),
        .moves = {MOVE_CURSE, MOVE_RETURN, MOVE_REST, MOVE_SHADOW_BALL},
    },
};

static const struct TrainerMon sFrontierBrainParty_BattleDome[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_SWAMPERT,
        .heldItem = ITEM_FOCUS_BAND,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_BRAVE),
        .ev = TRAINER_PARTY_EVS(152, 152, 106, 0, 100, 0),
        .moves = {MOVE_SURF, MOVE_EARTHQUAKE, MOVE_ICE_BEAM, MOVE_COUNTER},
    },
    {
        .species = SPECIES_SALAMENCE,
        .heldItem = ITEM_LUM_BERRY,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(152, 152, 106, 100, 0, 0),
        .moves = {MOVE_EARTHQUAKE, MOVE_BRICK_BREAK, MOVE_DRAGON_CLAW, MOVE_AERIAL_ACE},
    },
    {
        .species = SPECIES_CHARIZARD,
        .heldItem = ITEM_WHITE_HERB,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_QUIET),
        .ev = TRAINER_PARTY_EVS(100, 152, 106, 152, 0, 0),
        .moves = {MOVE_OVERHEAT, MOVE_ROCK_SLIDE, MOVE_AERIAL_ACE, MOVE_EARTHQUAKE},
    },
    // Gold Symbol.
    {
        .species = SPECIES_SWAMPERT,
        .heldItem = ITEM_LEFTOVERS,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_BRAVE),
        .ev = TRAINER_PARTY_EVS(252, 252, 6, 0, 0, 0),
        .moves = {MOVE_SURF, MOVE_EARTHQUAKE, MOVE_ICE_BEAM, MOVE_MIRROR_COAT},
    },
    {
        .species = SPECIES_METAGROSS,
        .heldItem = ITEM_QUICK_CLAW,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_BRAVE),
        .ev = TRAINER_PARTY_EVS(252, 252, 6, 0, 0, 0),
        .moves = {MOVE_PSYCHIC, MOVE_METEOR_MASH, MOVE_EARTHQUAKE, MOVE_PROTECT},
    },
    {
        .species = SPECIES_LATIAS,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(252, 0, 252, 6, 0, 0),
        .moves = {MOVE_THUNDERBOLT, MOVE_PSYCHIC, MOVE_CALM_MIND, MOVE_REST},
    },
};

static const struct TrainerMon sFrontierBrainParty_BattlePalace[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_CROBAT,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(152, 0, 0, 152, 100, 106),
        .moves = {MOVE_CONFUSE_RAY, MOVE_DOUBLE_TEAM, MOVE_TOXIC, MOVE_FLY},
    },
    {
        .species = SPECIES_SLAKING,
        .heldItem = ITEM_SCOPE_LENS,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_HARDY),
        .ev = TRAINER_PARTY_EVS(152, 152, 0, 106, 100, 0),
        .moves = {MOVE_EARTHQUAKE, MOVE_SWAGGER, MOVE_SHADOW_BALL, MOVE_BRICK_BREAK},
    },
    {
        .species = SPECIES_LAPRAS,
        .heldItem = ITEM_QUICK_CLAW,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_QUIET),
        .ev = TRAINER_PARTY_EVS(0, 0, 252, 0, 106, 152),
        .moves = {MOVE_ICE_BEAM, MOVE_HORN_DRILL, MOVE_CONFUSE_RAY, MOVE_PROTECT},
    },
    // Gold Symbol.
    {
        .species = SPECIES_ARCANINE,
        .heldItem = ITEM_WHITE_HERB,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_HASTY),
        .ev = TRAINER_PARTY_EVS(6, 252, 252, 0, 0, 0),
        .moves = {MOVE_OVERHEAT, MOVE_EXTREME_SPEED, MOVE_ROAR, MOVE_PROTECT},
    },
    {
        .species = SPECIES_SLAKING,
        .heldItem = ITEM_SCOPE_LENS,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_HARDY),
        .ev = TRAINER_PARTY_EVS(6, 252, 0, 252, 0, 0),
        .moves = {MOVE_HYPER_BEAM, MOVE_EARTHQUAKE, MOVE_SHADOW_BALL, MOVE_YAWN},
    },
    {
        .species = SPECIES_SUICUNE,
        .heldItem = ITEM_KINGS_ROCK,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_HASTY),
        .ev = TRAINER_PARTY_EVS(252, 0, 252, 6, 0, 0),
        .moves = {MOVE_BLIZZARD, MOVE_SURF, MOVE_BITE, MOVE_CALM_MIND},
    },
};

static const struct TrainerMon sFrontierBrainParty_BattleArena[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_HERACROSS,
        .heldItem = ITEM_SALAC_BERRY,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_JOLLY),
        .ev = TRAINER_PARTY_EVS(106, 152, 0, 152, 0, 100),
        .moves = {MOVE_MEGAHORN, MOVE_ROCK_TOMB, MOVE_ENDURE, MOVE_REVERSAL},
    },
    {
        .species = SPECIES_UMBREON,
        .heldItem = ITEM_LEFTOVERS,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_CALM),
        .ev = TRAINER_PARTY_EVS(152, 0, 100, 0, 152, 106),
        .moves = {MOVE_BODY_SLAM, MOVE_CONFUSE_RAY, MOVE_PSYCHIC, MOVE_FAINT_ATTACK},
    },
    {
        .species = SPECIES_SHEDINJA,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(20, 20, 20, 20, 20, 20),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(0, 252, 6, 252, 0, 0),
        .moves = {MOVE_SHADOW_BALL, MOVE_RETURN, MOVE_CONFUSE_RAY, MOVE_AERIAL_ACE},
    },
    // Gold Symbol.
    {
        .species = SPECIES_UMBREON,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_CALM),
        .ev = TRAINER_PARTY_EVS(252, 0, 0, 0, 252, 6),
        .moves = {MOVE_DOUBLE_EDGE, MOVE_CONFUSE_RAY, MOVE_REST, MOVE_PSYCHIC},
    },
    {
        .species = SPECIES_GENGAR,
        .heldItem = ITEM_LEFTOVERS,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(252, 0, 252, 0, 6, 0),
        .moves = {MOVE_PSYCHIC, MOVE_HYPNOSIS, MOVE_DREAM_EATER, MOVE_DESTINY_BOND},
    },
    {
        .species = SPECIES_BRELOOM,
        .heldItem = ITEM_LUM_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_JOLLY),
        .ev = TRAINER_PARTY_EVS(6, 252, 0, 252, 0, 0),
        .moves = {MOVE_SPORE, MOVE_FOCUS_PUNCH, MOVE_GIGA_DRAIN, MOVE_HEADBUTT},
    },
};

static const struct TrainerMon sFrontierBrainParty_BattlePike[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_SEVIPER,
        .heldItem = ITEM_QUICK_CLAW,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_BRAVE),
        .ev = TRAINER_PARTY_EVS(252, 0, 252, 0, 6, 0),
        .moves = {MOVE_SWAGGER, MOVE_CRUNCH, MOVE_POISON_FANG, MOVE_GIGA_DRAIN},
    },
    {
        .species = SPECIES_SHUCKLE,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_BOLD),
        .ev = TRAINER_PARTY_EVS(252, 0, 0, 0, 106, 252),
        .moves = {MOVE_TOXIC, MOVE_SANDSTORM, MOVE_PROTECT, MOVE_REST},
    },
    {
        .species = SPECIES_MILOTIC,
        .heldItem = ITEM_LEFTOVERS,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(152, 0, 100, 0, 152, 106),
        .moves = {MOVE_ICE_BEAM, MOVE_MIRROR_COAT, MOVE_SURF, MOVE_RECOVER},
    },
    // Gold Symbol.
    {
        .species = SPECIES_SEVIPER,
        .heldItem = ITEM_FOCUS_BAND,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_BOLD),
        .ev = TRAINER_PARTY_EVS(252, 0, 0, 0, 252, 6),
        .moves = {MOVE_SWAGGER, MOVE_CRUNCH, MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN},
    },
    {
        .species = SPECIES_STEELIX,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .moves = {MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE, MOVE_EXPLOSION, MOVE_SCREECH},
        .nature = TRAINER_PARTY_NATURE(NATURE_BRAVE),
        .ev = TRAINER_PARTY_EVS(252, 0, 0, 0, 6, 252),
    },
    {
        .species = SPECIES_GYARADOS,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(252, 6, 0, 0, 0, 252),
        .moves = {MOVE_DRAGON_DANCE, MOVE_RETURN, MOVE_ROAR, MOVE_REST},
    },
};

static const struct TrainerMon sFrontierBrainParty_BattlePyramid[] =
{
    // Silver Symbol.
    {
        .species = SPECIES_REGIROCK,
        .heldItem = ITEM_QUICK_CLAW,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(152, 152, 0, 0, 106, 100),
        .moves = {MOVE_EXPLOSION, MOVE_SUPERPOWER, MOVE_EARTHQUAKE, MOVE_ANCIENT_POWER},
    },
    {
        .species = SPECIES_REGISTEEL,
        .heldItem = ITEM_LEFTOVERS,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_ADAMANT),
        .ev = TRAINER_PARTY_EVS(152, 152, 0, 0, 6, 200),
        .moves = {MOVE_EARTHQUAKE, MOVE_METAL_CLAW, MOVE_TOXIC, MOVE_IRON_DEFENSE},
    },
    {
        .species = SPECIES_REGICE,
        .heldItem = ITEM_CHESTO_BERRY,
        .iv = TRAINER_PARTY_IVS(16, 16, 16, 16, 16, 16),
        .nature = TRAINER_PARTY_NATURE(NATURE_MODEST),
        .ev = TRAINER_PARTY_EVS(152, 0, 100, 0, 152, 106),
        .moves = {MOVE_ICE_BEAM, MOVE_AMNESIA, MOVE_THUNDER, MOVE_REST},
    },
    // Gold Symbol.
    {
        .species = SPECIES_ARTICUNO,
        .heldItem = ITEM_SCOPE_LENS,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MILD),
        .ev = TRAINER_PARTY_EVS(6, 0, 252, 252, 0, 0),
        .moves = {MOVE_BLIZZARD, MOVE_WATER_PULSE, MOVE_AERIAL_ACE, MOVE_REFLECT},
    },
    {
        .species = SPECIES_ZAPDOS,
        .heldItem = ITEM_LUM_BERRY,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MILD),
        .ev = TRAINER_PARTY_EVS(6, 0, 252, 252, 0, 0),
        .moves = {MOVE_THUNDER, MOVE_DETECT, MOVE_DRILL_PECK, MOVE_LIGHT_SCREEN},
    },
    {
        .species = SPECIES_MOLTRES,
        .heldItem = ITEM_BRIGHT_POWDER,
        .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
        .nature = TRAINER_PARTY_NATURE(NATURE_MILD),
        .ev = TRAINER_PARTY_EVS(6, 0, 252, 252, 0, 0),
        .moves = {MOVE_FIRE_BLAST, MOVE_HYPER_BEAM, MOVE_AERIAL_ACE, MOVE_SAFEGUARD},
    },
};
