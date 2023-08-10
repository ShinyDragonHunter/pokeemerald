const struct Trainer gBattlePartners[] = {
    [PARTNER_NONE] =
    {
        .party = {.NoItemDefaultMoves = NULL},
    },

    [PARTNER_STEVEN] =
    {
        .aiFlags = 0, // TODO: allow partners to use their own AI flags
        .party = EVERYTHING_CUSTOMIZED(sParty_StevenPartner),
        .trainerClass = TRAINER_CLASS_RIVAL,
        .encounterMusic_gender = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_BACK_PIC_STEVEN,
        .trainerName = _("STEVEN"),
    },
};
