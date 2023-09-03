#define noise_note(a, b, c, d) (a), ((b) << 4) | (c), (d)
#define sound_ret 0xFF

// Individual noise samples, arranged into groups of 3 bytes, with sound_ret
// terminating the array when in the first slot.
static const u8 sDrumNoiseDataDrum00[] = {
    noise_note(32, 1, 1, 0),
    sound_ret
};

static const u8 sDrumNoiseDataSnare1[] = {
    noise_note(32, 12, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataSnare2[] = {
    noise_note(32, 11, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataSnare3[] = {
    noise_note(32, 10, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataSnare4[] = {
    noise_note(32, 8, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataDrum05[] = {
    noise_note(39, 8, 4, 55),
    noise_note(38, 8, 4, 54),
    noise_note(37, 8, 3, 53),
    noise_note(36, 8, 3, 52),
    noise_note(35, 8, 2, 51),
    noise_note(34, 8, 1, 50),
    sound_ret
};

static const u8 sDrumNoiseDataTriangle1[] = {
    noise_note(32, 5, 1, 42),
    sound_ret
};

static const u8 sDrumNoiseDataTriangle2[] = {
    noise_note(33, 4, 1, 43),
    noise_note(32, 6, 1, 42),
    sound_ret
};

static const u8 sDrumNoiseDataHiHat1[] = {
    noise_note(32, 8, 1, 16),
    sound_ret
};

static const u8 sDrumNoiseDataSnare5[] = {
    noise_note(32, 8, 2, 35),
    sound_ret
};

static const u8 sDrumNoiseDataSnare6[] = {
    noise_note(32, 8, 2, 37),
    sound_ret
};

static const u8 sDrumNoiseDataSnare7[] = {
    noise_note(32, 8, 2, 38),
    sound_ret
};

static const u8 sDrumNoiseDataHiHat2[] = {
    noise_note(32, 10, 1, 16),
    sound_ret
};

static const u8 sDrumNoiseDataHiHat3[] = {
    noise_note(32, 10, 2, 17),
    sound_ret
};

static const u8 sDrumNoiseDataSnare8[] = {
    noise_note(32, 10, 2, 80),
    sound_ret
};

static const u8 sDrumNoiseDataTriangle3[] = {
    noise_note(32, 10, 1, 24),
    noise_note(32, 3, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataTriangle4[] = {
    noise_note(34, 9, 1, 40),
    noise_note(32, 7, 1, 24),
    sound_ret
};

static const u8 sDrumNoiseDataSnare9[] = {
    noise_note(32, 9, 1, 34),
    sound_ret
};

static const u8 sDrumNoiseDataSnare10[] = {
    noise_note(32, 7, 1, 34),
    sound_ret
};

static const u8 sDrumNoiseDataSnare11[] = {
    noise_note(32, 6, 1, 34),
    sound_ret
};

static const u8 sDrumNoiseDataDrum20[] = {
    noise_note(32, 1, 1, 17),
    sound_ret
};

static const u8 sDrumNoiseDataDrum21[] = {
    sound_ret
};

static const u8 sDrumNoiseDataSnare12[] = {
    noise_note(32, 9, 1, 51),
    sound_ret
};

static const u8 sDrumNoiseDataSnare13[] = {
    noise_note(32, 5, 1, 50),
    sound_ret
};

static const u8 sDrumNoiseDataSnare14[] = {
    noise_note(32, 8, 1, 49),
    sound_ret
};

static const u8 sDrumNoiseDataKick1[] = {
    noise_note(32, 8, 8, 107),
    noise_note(32, 7, 1, 0),
    sound_ret
};

static const u8 sDrumNoiseDataTriangle5[] = {
    noise_note(48, 9, 1, 24),
    sound_ret
};

static const u8 sDrumNoiseDataDrum27[] = {
    noise_note(39, 9, 2, 16),
    sound_ret
};

static const u8 sDrumNoiseDataDrum28[] = {
    noise_note(51, 9, 1, 0),
    noise_note(51, 1, 1, 0),
    sound_ret
};

static const u8 sDrumNoiseDataDrum29[] = {
    noise_note(51, 9, 1, 17),
    noise_note(51, 1, 1, 0),
    sound_ret
};

static const u8 sDrumNoiseDataCrash1[] = {
    noise_note(51, 8, 8, 21),
    noise_note(32, 6, 5, 18),
    sound_ret
};

static const u8 sDrumNoiseDataDrum31[] = {
    noise_note(51, 5, 1, 33),
    noise_note(51, 1, 1, 17),
    sound_ret
};

static const u8 sDrumNoiseDataDrum32[] = {
    noise_note(51, 5, 1, 80),
    noise_note(51, 1, 1, 17),
    sound_ret
};

static const u8 sDrumNoiseDataDrum33[] = {
    noise_note(32, 10, 1, 49),
    sound_ret
};

static const u8 sDrumNoiseDataCrash2[] = {
    noise_note(32, 8, 4, 18),
    sound_ret
};

static const u8 sDrumNoiseDataDrum35[] = {
    noise_note(51, 8, 1, 0),
    noise_note(51, 1, 1, 0),
    sound_ret
};

static const u8 sDrumNoiseDataDrum36[] = {
    noise_note(51, 8, 1, 33),
    noise_note(51, 1, 1, 17),
    sound_ret
};

static const u8 sDrumNoiseDataKick2[] = {
    noise_note(32, 10, 8, 107),
    noise_note(32, 7, 1, 0),
    sound_ret
};

// Groups the separate samples into sample groups
static const u8 *const sDrumkitData0[] = {
    sDrumNoiseDataDrum00,
    sDrumNoiseDataSnare1,
    sDrumNoiseDataSnare2,
    sDrumNoiseDataSnare3,
    sDrumNoiseDataSnare4,
    sDrumNoiseDataDrum05,
    sDrumNoiseDataTriangle1,
    sDrumNoiseDataTriangle2,
    sDrumNoiseDataHiHat1,
    sDrumNoiseDataSnare5,
    sDrumNoiseDataSnare6,
    sDrumNoiseDataSnare7,
    sDrumNoiseDataHiHat2
};

static const u8 *const sDrumkitData1[] = {
    sDrumNoiseDataDrum00,
    sDrumNoiseDataHiHat1,
    sDrumNoiseDataSnare5,
    sDrumNoiseDataSnare6,
    sDrumNoiseDataSnare7,
    sDrumNoiseDataHiHat2,
    sDrumNoiseDataHiHat3,
    sDrumNoiseDataSnare8,
    sDrumNoiseDataTriangle3,
    sDrumNoiseDataTriangle4,
    sDrumNoiseDataSnare9,
    sDrumNoiseDataSnare10,
    sDrumNoiseDataSnare11
};

static const u8 *const sDrumkitData2[] = {
    sDrumNoiseDataDrum00,
    sDrumNoiseDataSnare1,
    sDrumNoiseDataSnare9,
    sDrumNoiseDataSnare10,
    sDrumNoiseDataSnare11,
    sDrumNoiseDataDrum05,
    sDrumNoiseDataTriangle1,
    sDrumNoiseDataTriangle2,
    sDrumNoiseDataHiHat1,
    sDrumNoiseDataSnare5,
    sDrumNoiseDataSnare6,
    sDrumNoiseDataSnare7,
    sDrumNoiseDataHiHat2
};

static const u8 *const sDrumkitData3[] = {
    sDrumNoiseDataDrum21,
    sDrumNoiseDataSnare12,
    sDrumNoiseDataSnare13,
    sDrumNoiseDataSnare14,
    sDrumNoiseDataKick1,
    sDrumNoiseDataTriangle5,
    sDrumNoiseDataDrum20,
    sDrumNoiseDataDrum27,
    sDrumNoiseDataDrum28,
    sDrumNoiseDataDrum29,
    sDrumNoiseDataDrum21,
    sDrumNoiseDataKick2,
    sDrumNoiseDataCrash2
};

static const u8 *const sDrumkitData4[] = {
    sDrumNoiseDataDrum21,
    sDrumNoiseDataDrum20,
    sDrumNoiseDataSnare13,
    sDrumNoiseDataSnare14,
    sDrumNoiseDataKick1,
    sDrumNoiseDataDrum33,
    sDrumNoiseDataTriangle5,
    sDrumNoiseDataDrum35,
    sDrumNoiseDataDrum31,
    sDrumNoiseDataDrum32,
    sDrumNoiseDataDrum36,
    sDrumNoiseDataKick2,
    sDrumNoiseDataCrash1
};

static const u8 *const sDrumkitData5[] = {
    sDrumNoiseDataDrum00,
    sDrumNoiseDataSnare9,
    sDrumNoiseDataSnare10,
    sDrumNoiseDataSnare11,
    sDrumNoiseDataDrum27,
    sDrumNoiseDataDrum28,
    sDrumNoiseDataDrum29,
    sDrumNoiseDataDrum05,
    sDrumNoiseDataTriangle1,
    sDrumNoiseDataCrash1,
    sDrumNoiseDataSnare14,
    sDrumNoiseDataSnare13,
    sDrumNoiseDataKick2
};

// A simple table pointing to each of the sample groups
static const u8 *const *const sDrumkitDataTable[] = {
    sDrumkitData0,
    sDrumkitData1,
    sDrumkitData2,
    sDrumkitData3,
    sDrumkitData4,
    sDrumkitData5
};
