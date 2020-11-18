#ifndef _Z_BOSS_VA_H_
#define _Z_BOSS_VA_H_

#include <ultra64.h>
#include <global.h>

struct BossVa;

typedef void (*BossVaActionFunc)(struct BossVa*, GlobalContext*);

typedef struct BossVa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossVaActionFunc actionFunc;
    /* 0x0194 */ u8 onCeiling;
    /* 0x0195 */ u8 burst;
    /* 0x0196 */ s8 invincibilityTimer;
    /* 0x0197 */ u8 isDead;
    /* 0x0198 */ s32 timer;
    /* 0x019C */ s16 timer2;
    /* 0x01A0 */ f32 unk_1A0; // Upper body section pulse, Bari spin radius
    /* 0x01A4 */ f32 unk_1A4; // Lower body segment pulse, Bari bob phase
    /* 0x01A8 */ f32 unk_1A8; // Death camera zoom. Always 0.
    /* 0x01AC */ s16 unk_1AC; // Body pulse phase, death camera rotation, Bari radius
    /* 0x01AE */ s16 bodyGlow;
    /* 0x01B0 */ s16 unk_1B0; // Body glow pulse rate, death growths counter, zapper death camera
    /* 0x01B4 */ Vec3f armTip;
    /* 0x01C0 */ Vec3f zapNeckPos;
    /* 0x01CC */ Vec3f zapHeadPos;
    /* 0x01D8 */ Vec3f unk_1D8; // Bari scale, Attach point for Bari spin, zapper head
    /* 0x01E4 */ s16 unk_1E4; // Various Zapper rotations
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ s16 unk_1E8;
    /* 0x01EA */ s16 unk_1EA;
    /* 0x01EC */ s16 unk_1EC;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 unk_1F0; // Bari lightning scale
    /* 0x01F2 */ s16 unk_1F2; // Intro camera rotation rate
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ Vec3s headRot;
    /* 0x01FC */ Vec3f effectPos[10];
    /* 0x0274 */ Vec3f unk_274; // Unused body position
    /* 0x0280 */ Vec3f unk_280; // Unused body position
    /* 0x028C */ ColliderCylinder collider1;
    /* 0x02D8 */ ColliderJntSph collider2;
    /* 0x02F8 */ ColliderJntSphItem elements[1];
    /* 0x0338 */ ColliderQuad collider3;
} BossVa; // size = 0x03B8

typedef enum BossVaParam {
    BOSSVA_BODY = -1,
    BOSSVA_SUPPORT_1,
    BOSSVA_SUPPORT_2,
    BOSSVA_SUPPORT_3,
    BOSSVA_ZAPPER_1,
    BOSSVA_ZAPPER_2,
    BOSSVA_ZAPPER_3,
    BOSSVA_BARI_UPPER_1,
    BOSSVA_BARI_UPPER_2,
    BOSSVA_BARI_UPPER_3,
    BOSSVA_BARI_UPPER_4,
    BOSSVA_BARI_UPPER_5,
    BOSSVA_BARI_LOWER_1,
    BOSSVA_BARI_LOWER_2,
    BOSSVA_BARI_LOWER_3,
    BOSSVA_BARI_LOWER_4,
    BOSSVA_BARI_LOWER_5,
    BOSSVA_STUMP_1,
    BOSSVA_STUMP_2,
    BOSSVA_STUMP_3,
    BOSSVA_DOOR
} BossVaParam;

extern const ActorInit Boss_Va_InitVars;

#endif
