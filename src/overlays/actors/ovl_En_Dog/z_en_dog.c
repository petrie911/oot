/*
 * File: z_en_dog.c
 * Overlay: ovl_En_Dog
 * Description: Dog
 */

#include "z_en_dog.h"

#define FLAGS 0x00000000

#define THIS ((EnDog*)thisx)

void EnDog_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDog_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDog_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDog_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDog_FollowPath(EnDog* this, GlobalContext* globalCtx);
void EnDog_ChooseMovement(EnDog* this, GlobalContext* globalCtx);
void EnDog_FollowLink(EnDog* this, GlobalContext* globalCtx);
void EnDog_RunAway(EnDog* this, GlobalContext* globalCtx);
void EnDog_FaceLink(EnDog* this, GlobalContext* globalCtx);
void EnDog_Wait(EnDog* this, GlobalContext* globalCtx);

const ActorInit En_Dog_InitVars = {
    ACTOR_EN_DOG,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DOG,
    sizeof(EnDog),
    (ActorFunc)EnDog_Init,
    (ActorFunc)EnDog_Destroy,
    (ActorFunc)EnDog_Update,
    (ActorFunc)EnDog_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 16, 20, 0, { 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0x00,   // health
    0x0000, // unk_10
    0x0000, // unk_12
    0x0000, // unk_14
    0x32,   // mass
};

static struct_80034EC0_Entry sAnimations[] = {
    { 0x06001368, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06001368, 1.0f, 0.0f, -1.0f, 0x00, -6.0f },
    { 0x06000D78, 1.0f, 0.0f, -1.0f, 0x00, -6.0f }, { 0x06000278, 1.0f, 0.0f, -1.0f, 0x00, -6.0f },
    { 0x06001150, 1.0f, 0.0f, 4.0f, 0x02, -6.0f },  { 0x06001150, 1.0f, 5.0f, 25.0f, 0x04, -6.0f },
    { 0x06000928, 1.0f, 0.0f, 6.0f, 0x02, -6.0f },  { 0x06000C28, 1.0f, 0.0f, -1.0f, 0x00, -6.0f },
};

typedef enum {
    /* 0x00 */ DOG_WALK,
    /* 0x01 */ DOG_RUN,
    /* 0x02 */ DOG_BARK,
    /* 0x03 */ DOG_SIT,
    /* 0x04 */ DOG_SIT_2,
    /* 0x05 */ DOG_BOW,
    /* 0x06 */ DOG_BOW_2,
} DogBehavior;

extern SkeletonHeaderSV D_06007290;
extern AnimationHeader D_06001368;
extern AnimationHeader D_06000D78;
extern AnimationHeader D_06000278;

void EnDog_PlayWalkSFX(EnDog* this) {
    AnimationHeader* walk = &D_06001368;
    if (this->skelAnime.animCurrentSeg == walk) {
        if ((this->skelAnime.animCurrentFrame == 1.0f) || (this->skelAnime.animCurrentFrame == 7.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHIBI_WALK);
        }
    }
}

void EnDog_PlayRunSFX(EnDog* this) {
    AnimationHeader* run = &D_06000D78;
    if (this->skelAnime.animCurrentSeg == run) {
        if ((this->skelAnime.animCurrentFrame == 2.0f) || (this->skelAnime.animCurrentFrame == 4.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_CHIBI_WALK);
        }
    }
}

void EnDog_PlayBarkSFX(EnDog* this) {
    AnimationHeader* bark = &D_06000278;
    if (this->skelAnime.animCurrentSeg == bark) {
        if ((this->skelAnime.animCurrentFrame == 13.0f) || (this->skelAnime.animCurrentFrame == 19.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_SMALL_DOG_BARK);
        }
    }
}

s32 EnDog_PlayAnimAndSFX(EnDog* this) {
    s32 animation;

    if (this->behavior != this->nextBehavior) {
        if (this->nextBehavior == DOG_SIT_2) {
            this->nextBehavior = DOG_SIT;
        }
        if (this->nextBehavior == DOG_BOW_2) {
            this->nextBehavior = DOG_BOW;
        }

        this->behavior = this->nextBehavior;
        switch (this->behavior) {
            case DOG_WALK:
                animation = 1;
                break;
            case DOG_RUN:
                animation = 2;
                break;
            case DOG_BARK:
                animation = 3;
                break;
            case DOG_SIT:
                animation = 4;
                break;
            case DOG_BOW:
                animation = 6;
                break;
        }
        func_80034EC0(&this->skelAnime, sAnimations, animation);
    }

    switch (this->behavior) {
        case DOG_SIT:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
                func_80034EC0(&this->skelAnime, sAnimations, 5);
                this->behavior = this->nextBehavior = DOG_SIT_2;
            }
            break;
        case DOG_BOW:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
                func_80034EC0(&this->skelAnime, sAnimations, 7);
                this->behavior = this->nextBehavior = DOG_BOW_2;
            }
            break;
        case DOG_WALK:
            EnDog_PlayWalkSFX(this);
            break;
        case DOG_RUN:
            EnDog_PlayRunSFX(this);
            break;
        case DOG_BARK:
            EnDog_PlayBarkSFX(this);
            if (this) {} // needed for regalloc
            break;
    }
    return 0;
}

s8 EnDog_CanFollow(EnDog* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        return 2;
    }

    if (globalCtx->sceneNum == SCENE_MARKET_DAY) {
        return 0;
    }

    if (this->collider.base.maskB & 1) {
        this->collider.base.maskB &= ~1;
        if (gSaveContext.dogParams != 0) {
            return 0;
        }
        gSaveContext.dogParams = (this->actor.params & 0x7FFF);
        return 1;
    }

    return 0;
}

s32 EnDog_UpdateWaypoint(EnDog* this, GlobalContext* globalCtx) {
    s32 change;

    if (this->path == NULL) {
        return 0;
    }

    if (this->reverse) {
        change = -1;
    } else {
        change = 1;
    }

    this->waypoint += change;

    if (this->reverse) {
        if (this->waypoint < 0) {
            this->waypoint = this->path->count - 1;
        }
    } else {
        if ((this->path->count - 1) < this->waypoint) {
            this->waypoint = 0;
        }
    }

    return 1;
}

s32 EnDog_Orient(EnDog* this, GlobalContext* globalCtx) {
    s16 targetYaw;
    f32 waypointDistSq;

    waypointDistSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, targetYaw, 10, 1000, 1);

    if ((waypointDistSq > 0.0f) && (waypointDistSq < 1000.0f)) {
        return EnDog_UpdateWaypoint(this, globalCtx);
    } else {
        return 0;
    }
}

void EnDog_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDog* this = THIS;
    s16 followingDog;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 24.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007290, NULL, &this->unk_1F4, &this->unk_242, 13);
    func_80034EC0(&this->skelAnime, sAnimations, 0);

    if ((this->actor.params & 0x8000) == 0) {
        this->actor.params = (this->actor.params & 0xF0FF) | ((((this->actor.params & 0x0F00) >> 8) + 1) << 8);
    }

    followingDog = ((gSaveContext.dogParams & 0x0F00) >> 8);
    if (followingDog == ((this->actor.params & 0x0F00) >> 8) && ((this->actor.params & 0x8000) == 0)) {
        Actor_Kill(&this->actor);
        return;
    }

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, 0, &sColChkInfoInit);
    Actor_SetScale(&this->actor, 0.0075f);
    this->waypoint = 0;
    this->actor.gravity = -1.0f;
    this->path = Path_GetByIndex(globalCtx, (this->actor.params & 0x00F0) >> 4, 0xF);

    switch (globalCtx->sceneNum) {
        case SCENE_MARKET_NIGHT:
            if ((!gSaveContext.dogIsLost) && (((this->actor.params & 0x0F00) >> 8) == 1)) {
                Actor_Kill(&this->actor);
            }
            break;
        case SCENE_IMPA: // Richard's Home
            if ((u32)(this->actor.params & 0x8000) == 0) {
                if (!gSaveContext.dogIsLost) {
                    this->nextBehavior = DOG_SIT;
                    this->actionFunc = EnDog_Wait;
                    this->actor.speedXZ = 0.0f;
                    return;
                } else {
                    Actor_Kill(&this->actor);
                    return;
                }
            }
            break;
    }

    if ((u32)(this->actor.params & 0x8000) != 0) {
        this->nextBehavior = DOG_WALK;
        this->actionFunc = EnDog_FollowLink;
    } else {
        this->nextBehavior = DOG_SIT;
        this->actionFunc = EnDog_ChooseMovement;
    }
}

void EnDog_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDog* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnDog_FollowPath(EnDog* this, GlobalContext* globalCtx) {
    s32 behaviors[] = { DOG_SIT, DOG_BOW, DOG_BARK };
    s32 unused[] = { 40, 80, 20 };
    f32 speed;
    s32 frame;

    if (EnDog_CanFollow(this, globalCtx) == 1) {
        this->actionFunc = EnDog_FollowLink;
    }

    if (DECR(this->behaviorTimer) != 0) {
        if (this->nextBehavior == DOG_WALK) {
            speed = 1.0f;
        } else {
            speed = 4.0f;
        }
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, speed, 0.4f, 1.0f, 0.0f);
        EnDog_Orient(this, globalCtx);
        this->actor.shape.rot = this->actor.posRot.rot;

        // Used to change between two text boxes for Richard's owner in the Market Day scene
        // depending on where he is on his path. En_Hy checks these event flags.
        if (this->waypoint < 9) {
            // Richard is close to her, text says something about his coat
            gSaveContext.eventInf[3] |= 1;
        } else {
            // Richard is far, text says something about running fast
            gSaveContext.eventInf[3] &= ~1;
        }
    } else {
        frame = globalCtx->state.frames % 3;
        this->nextBehavior = behaviors[frame];
        // no clue why they're using the behavior id to calculate timer. possibly meant to use the unused array?
        this->behaviorTimer = Math_Rand_S16Offset(60, behaviors[frame]);
        this->actionFunc = EnDog_ChooseMovement;
    }
}

void EnDog_ChooseMovement(EnDog* this, GlobalContext* globalCtx) {
    if (EnDog_CanFollow(this, globalCtx) == 1) {
        this->actionFunc = EnDog_FollowLink;
    }

    if (DECR(this->behaviorTimer) == 0) {
        this->behaviorTimer = Math_Rand_S16Offset(200, 100);
        if (globalCtx->state.frames % 2) {
            this->nextBehavior = DOG_WALK;
        } else {
            this->nextBehavior = DOG_RUN;
        }

        if (this->nextBehavior == DOG_RUN) {
            this->behaviorTimer /= 2;
        }
        this->actionFunc = EnDog_FollowPath;
    }
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.4f, 1.0f, 0.0f);
}

void EnDog_FollowLink(EnDog* this, GlobalContext* globalCtx) {
    f32 speed;

    if (gSaveContext.dogParams == 0) {
        this->nextBehavior = DOG_SIT;
        this->actionFunc = EnDog_Wait;
        this->actor.speedXZ = 0.0f;
        return;
    }

    if (this->actor.xzDistFromLink > 400.0f) {
        if (this->nextBehavior != DOG_SIT && this->nextBehavior != DOG_SIT_2) {
            this->nextBehavior = DOG_BOW;
        }
        gSaveContext.dogParams = 0;
        speed = 0.0f;
    } else if (this->actor.xzDistFromLink > 100.0f) {
        this->nextBehavior = DOG_RUN;
        speed = 4.0f;
    } else if (this->actor.xzDistFromLink < 40.0f) {
        if (this->nextBehavior != DOG_BOW && this->nextBehavior != DOG_BOW_2) {
            this->nextBehavior = DOG_BOW;
        }
        speed = 0.0f;
    } else {
        this->nextBehavior = DOG_WALK;
        speed = 1.0f;
    }

    Math_SmoothScaleMaxF(&this->actor.speedXZ, speed, 0.6f, 1.0f);

    if (!(this->actor.xzDistFromLink > 400.0f)) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 10, 1000, 1);
        this->actor.shape.rot = this->actor.posRot.rot;
    }
}

void EnDog_RunAway(EnDog* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < 200.0f) {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 4.0f, 0.6f, 1.0f);
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, (this->actor.yawTowardsLink ^ 0x8000), 10, 1000, 1);
    } else {
        this->actionFunc = EnDog_FaceLink;
    }
    this->actor.shape.rot = this->actor.posRot.rot;
}

void EnDog_FaceLink(EnDog* this, GlobalContext* globalCtx) {
    s16 rotTowardLink;
    s16 prevRotY;
    f32 absAngleDiff;

    // if the dog is more than 200 units away from Link, turn to face him then wait
    if (200.0f <= this->actor.xzDistFromLink) {
        this->nextBehavior = DOG_WALK;

        Math_SmoothScaleMaxF(&this->actor.speedXZ, 1.0f, 0.6f, 1.0f);

        rotTowardLink = this->actor.yawTowardsLink;
        prevRotY = this->actor.posRot.rot.y;
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, rotTowardLink, 10, 1000, 1);

        absAngleDiff = this->actor.posRot.rot.y;
        absAngleDiff -= prevRotY;
        absAngleDiff = fabsf(absAngleDiff);
        if (absAngleDiff < 200.0f) {
            this->nextBehavior = DOG_SIT;
            this->actionFunc = EnDog_Wait;
            this->actor.speedXZ = 0.0f;
        }
    } else {
        this->nextBehavior = DOG_RUN;
        this->actionFunc = EnDog_RunAway;
    }
    this->actor.shape.rot = this->actor.posRot.rot;
}

void EnDog_Wait(EnDog* this, GlobalContext* globalCtx) {
    this->unusedAngle = (this->actor.yawTowardsLink - this->actor.shape.rot.y);

    // If another dog is following Link and he gets within 200 units of waiting dog, run away
    if ((gSaveContext.dogParams != 0) && (this->actor.xzDistFromLink < 200.0f)) {
        this->nextBehavior = DOG_RUN;
        this->actionFunc = EnDog_RunAway;
    }
}

void EnDog_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDog* this = THIS;
    s32 pad;

    EnDog_PlayAnimAndSFX(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8002E4B4(globalCtx, &this->actor, this->collider.dim.radius, this->collider.dim.height * 0.5f, 0.0f, 5);
    Actor_MoveForward(&this->actor);
    this->actionFunc(this, globalCtx);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

s32 EnDog_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    return 0;
}

void EnDog_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

void EnDog_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDog* this = THIS;
    Color_RGBA8 colors[] = { { 255, 255, 200, 0 }, { 150, 100, 50, 0 } };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dog.c", 972);

    func_80093D18(globalCtx->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, colors[this->actor.params & 0xF].r, colors[this->actor.params & 0xF].g,
                   colors[this->actor.params & 0xF].b, colors[this->actor.params & 0xF].a);

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnDog_OverrideLimbDraw, EnDog_PostLimbDraw, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dog.c", 994);
}
