#include "global.h"

void SkelCurve_Clear(SkelAnimeCurve* skelCurve) {
    skelCurve->limbCount = 0;
    skelCurve->limbs = NULL;
    skelCurve->curveAnim = NULL;
    skelCurve->curFrame = 0.0f;
    skelCurve->playSpeed = 0.0f;
    skelCurve->endFrame = 0.0f;
    skelCurve->transforms = NULL;
    skelCurve->unk_0C = 0.0f;
}

s32 SkelCurve_Init(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, SkelCurveHeader* skelCurveSeg,
                   CurveAnimationHeader* curveAnim) {
    SkelCurveHeader* skelCurveHeader = SEGMENTED_TO_VIRTUAL(skelCurveSeg);

    skelCurve->limbCount = skelCurveHeader->limbCount;
    skelCurve->limbs = SEGMENTED_TO_VIRTUAL(skelCurveHeader->limbs);

    skelCurve->transforms = ZeldaArena_MallocDebug(sizeof(*skelCurve->transforms) * skelCurve->limbCount,
                                                   "../z_fcurve_data_skelanime.c", 125);
    (skelCurve->transforms != NULL) ? (void) 0 : (__assert("this->now_joint != NULL", "../z_fcurve_data_skelanime.c", 127));
    skelCurve->curFrame = 0.0f;
    return 1;
}

void SkelCurve_Destroy(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve) {
    if (skelCurve->transforms != NULL) {
        ZeldaArena_FreeDebug(skelCurve->transforms, "../z_fcurve_data_skelanime.c", 146);
    }
}

void SkelCurve_SetAnim(SkelAnimeCurve* skelCurve, CurveAnimationHeader* curveAnim, f32 arg2, f32 endFrame,
                       f32 curFrame, f32 playSpeed) {
    skelCurve->unk_0C = arg2 - skelCurve->playSpeed;
    skelCurve->endFrame = endFrame;
    skelCurve->curFrame = curFrame;
    skelCurve->playSpeed = playSpeed;
    skelCurve->curveAnim = curveAnim;
}

s32 SkelCurve_Update(GlobalContext* globalCtx, SkelAnimeCurve* skelCurve) {
    CurveAnimationHeader* curveAnim;
    u8* animRefIndex;
    SkelCurveFrame* keyFrames;
    u16* staticData;
    s32 i;
    s32 finished = false;
    s16* transforms;    

    curveAnim = SEGMENTED_TO_VIRTUAL(skelCurve->curveAnim);
    animRefIndex = SEGMENTED_TO_VIRTUAL(curveAnim->refIndex);
    keyFrames = SEGMENTED_TO_VIRTUAL(curveAnim->keyFrames);
    staticData = SEGMENTED_TO_VIRTUAL(curveAnim->staticData);
    transforms = (s16*)skelCurve->transforms;

    skelCurve->curFrame += skelCurve->playSpeed * R_UPDATE_RATE * 0.5f;

    if (((skelCurve->playSpeed >= 0.0f) && (skelCurve->curFrame > skelCurve->endFrame)) ||
        ((skelCurve->playSpeed < 0.0f) && (skelCurve->curFrame < skelCurve->endFrame))) {
        skelCurve->curFrame = skelCurve->endFrame;
        finished = true;
    }

    for (i = 0; i < skelCurve->limbCount; i++) {
        s32 j;
        s32 k;

        for (j = 0; j < 3; j++) {
            for (k = 0; k < 3; k++, animRefIndex++, transforms++) {
                if (*animRefIndex == 0) {
                    f32 transformData = *staticData;

                    staticData++;
                    *transforms = transformData;
                } else {
                    f32 transformData = SkelCurve_GetTransform(skelCurve->curFrame, keyFrames, *animRefIndex);

                    keyFrames += *animRefIndex;
                    if (j == 0) {
                        *transforms = transformData * 1024.0f;
                    } else if (j == 1) {
                        *transforms = transformData * (32768.0f / 180.0f);
                    } else {
                        *transforms = transformData * 100.0f;
                    }
                }
            }
        }
    }

    return finished;
}

void SkelCurve_DrawLimb(GlobalContext* globalCtx, s32 limbIndex, SkelAnimeCurve* skelCurve,
                        OverrideCurveLimbDraw overrideLimbDraw, PostCurveLimbDraw postLimbDraw, s32 lod, void* data) {
    SkelCurveLimb* limb = SEGMENTED_TO_VIRTUAL(skelCurve->limbs[limbIndex]);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fcurve_data_skelanime.c", 279);

    Matrix_Push();

    if (overrideLimbDraw == NULL ||
        (overrideLimbDraw != NULL && overrideLimbDraw(globalCtx, skelCurve, limbIndex, data))) {
        Vec3f scale;
        Vec3s rot;
        Vec3f pos;
        Gfx* dList;
        Vec3s* transform = (Vec3s*)&skelCurve->transforms[limbIndex];

        scale.x = transform->x / 1024.0f;
        scale.y = transform->y / 1024.0f;
        scale.z = transform->z / 1024.0f;
        transform++;
        rot.x = transform->x;
        rot.y = transform->y;
        rot.z = transform->z;
        transform++;
        pos.x = transform->x;
        pos.y = transform->y;
        pos.z = transform->z;

        Matrix_JointPosition(&pos, &rot);
        Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);

        if (lod == 0) {
            s32 pad1;

            dList = limb->dList[0];
            if (dList != NULL) {
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fcurve_data_skelanime.c", 321),
                          G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, dList);
            }
        } else if (lod == 1) {
            s32 pad2;

            dList = limb->dList[0];
            if (dList != NULL) {
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fcurve_data_skelanime.c", 332),
                          G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, dList);
            }
            dList = limb->dList[1];
            if (dList != NULL) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fcurve_data_skelanime.c", 338),
                          G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, dList);
            }
        } else {
            // FcSkeletonInfo_draw_child (): Not supported
            osSyncPrintf("FcSkeletonInfo_draw_child():未対応\n");
        }
    }

    if (postLimbDraw != NULL) {
        postLimbDraw(globalCtx, skelCurve, limbIndex, data);
    }

    if (limb->child != LIMB_DONE) {
        SkelCurve_DrawLimb(globalCtx, limb->child, skelCurve, overrideLimbDraw, postLimbDraw, lod, data);
    }

    Matrix_Pop();

    if (limb->sibling != LIMB_DONE) {
        SkelCurve_DrawLimb(globalCtx, limb->sibling, skelCurve, overrideLimbDraw, postLimbDraw, lod, data);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fcurve_data_skelanime.c", 371);
}

void SkelCurve_Draw(Actor* actor, GlobalContext* globalCtx, SkelAnimeCurve* skelCurve,
                    OverrideCurveLimbDraw overrideLimbDraw, PostCurveLimbDraw postLimbDraw, s32 lod, void* data) {
    if (skelCurve->transforms != NULL) {
        SkelCurve_DrawLimb(globalCtx, 0, skelCurve, overrideLimbDraw, postLimbDraw, lod, data);
    }
}
