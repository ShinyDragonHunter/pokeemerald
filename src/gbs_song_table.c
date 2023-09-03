#include "gbs_song_table.h"
#include "constants/gbs_songs.h"

#define SONG(label, ...) { .header = (struct SongHeader*)&label, __VA_ARGS__ }
const struct Song gGBSSongTable[GBS_MUSIC_COUNT] = {
    // Gold/Silver
    [GBS_MUSIC_VIRIDIAN_CITY] = SONG(gbs_Music_ViridianCity, 0),
    [GBS_MUSIC_AZALEA_TOWN]   = SONG(gbs_Music_AzaleaTown, 0),
    [GBS_MUSIC_VIOLET_CITY]   = SONG(gbs_Music_VioletCity, 0),
    [GBS_MUSIC_LAKE_OF_RAGE]  = SONG(gbs_Music_LakeOfRage, 0),
    [GBS_MUSIC_ROUTE_37]      = SONG(gbs_Music_Route37, 0),

    // Crystal
    [GBS_MUSIC_SUICUNE_BATTLE] = SONG(gbs_Music_SuicuneBattle, 0),
    [GBS_MUSIC_MOBILE_CENTER]  = SONG(gbs_Music_MobileCenter, 0),

    // Gold/Silver sfx
    [GBS_SFX_ITEM]      = SONG(gbs_Sfx_Item, 2),
    [GBS_SFX_LEVEL_UP]  = SONG(gbs_Sfx_LevelUp, 2),
    [GBS_SFX_GET_TM]    = SONG(gbs_Sfx_GetTm, 2),
    [GBS_SFX_GET_BADGE] = SONG(gbs_Sfx_GetBadge, 2),

    // Red/Blue
    [GBS_MUSIC_LAVENDER]         = SONG(gbs_Music_Lavender, 0),
    [GBS_MUSIC_TRAINER_BATTLE]   = SONG(gbs_Music_TrainerBattle, 0),
    [GBS_MUSIC_BIKE_RIDING]      = SONG(gbs_Music_BikeRiding, 0),
    [GBS_MUSIC_RBY_TITLE_SCREEN] = SONG(gbs_Music_RBYTitleScreen, 0),
    [GBS_MUSIC_DUNGEON2]         = SONG(gbs_Music_Dungeon2, 0),
    [GBS_MUSIC_CINNABAR_MANSION] = SONG(gbs_Music_CinnabarMansion, 0),
    [GBS_MUSIC_POKEMON_TOWER]    = SONG(gbs_Music_PokemonTower, 0),

    // Custom
    [GBS_MUSIC_ROUTE_101_RSE]      = SONG(gbs_Music_Route101RSE, 0),
    [GBS_MUSIC_ABANDONED_SHIP_RSE] = SONG(gbs_Music_AbandonedShipRSE, 0),
    [GBS_MUSIC_OCEANIC_MUSEUM_RSE] = SONG(gbs_Music_OceanicMuseumRSE, 0),
};
