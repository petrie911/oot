#ifndef _Z64_ANIMATION_H
#define _Z64_ANIMATION_H

#include "ultra64.h"
#include "z64dma.h"
#include "z64math.h"

extern u32 link_animetion_segment;
struct GlobalContext;
struct Actor;
struct SkelAnime;

#define LINK_ANIMATION_OFFSET(addr, offset) \
    (((u32)&_link_animetionSegmentRomStart) + ((u32)addr) - ((u32)&link_animetion_segment) + ((u32)offset))
#define LIMB_DONE 0xFF
#define ANIMATION_ENTRY_MAX 50
#define ANIM_FLAG_UPDATEY (1 << 1)
#define ANIM_FLAG_NOMOVE (1 << 4)

typedef enum {
    /* 0 */ ANIMMODE_LOOP,
    /* 1 */ ANIMMODE_LOOP_INTERP,
    /* 2 */ ANIMMODE_ONCE,
    /* 3 */ ANIMMODE_ONCE_INTERP,
    /* 4 */ ANIMMODE_LOOP_PARTIAL,
    /* 5 */ ANIMMODE_LOOP_PARTIAL_INTERP
} AnimationModes;

typedef enum { 
    /* -1 */ ANIMTAPER_DECEL = -1, 
    /*  0 */ ANIMTAPER_NONE, 
    /*  1 */ ANIMTAPER_ACCEL
} AnimationTapers;

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ Gfx* dList;
} StandardLimb; // size = 0xC

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ Gfx* dLists[2]; // Near and far
} LodLimb; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3s jointPos; // Root is position in model space, children are relative to parent
    /* 0x06 */ u8 child;
    /* 0x07 */ u8 sibling;
    /* 0x08 */ s32 unk_8; // Type of data contained in segment
    /* 0x0C */ void* segment; // Segment address of data. Currently unclear what.
} SkinLimb; // size = 0x10

// Model has limbs with only rigid meshes
typedef struct {
    /* 0x00 */ void** segment;
    /* 0x04 */ u8 limbCount;
} SkeletonHeader; // size = 0x8

// Model has limbs with flexible meshes
typedef struct {
    /* 0x00 */ SkeletonHeader sh;
    /* 0x08 */ u8 dListCount;
} FlexSkeletonHeader; // size = 0xC

// Index into the frame data table. 
typedef struct {
    /* 0x00 */ u16 x;
    /* 0x02 */ u16 y;
    /* 0x04 */ u16 z;
} JointIndex; // size = 0x06

typedef struct {
    /* 0x00 */ s16 frameCount;
} AnimationHeaderCommon;

typedef struct {
    /* 0x00 */ AnimationHeaderCommon common;
    /* 0x04 */ u32 segment;
} LinkAnimationHeader; // size = 0x8

typedef struct {
    /* 0x00 */ AnimationHeaderCommon common;
    /* 0x04 */ s16* frameData;         // "tbl"
    /* 0x08 */ JointIndex* jointIndices; // "ref_tbl"
    /* 0x0C */ u16 staticIndexMax;
} AnimationHeader; // size = 0x10

// Unused
typedef struct {
    /* 0x00 */ s16 xMax;
    /* 0x02 */ s16 x;
    /* 0x04 */ s16 yMax;
    /* 0x06 */ s16 y;
    /* 0x08 */ s16 zMax;
    /* 0x10 */ s16 z;
} JointKey; // size = 0x12

// Unused
typedef struct {
    /* 0x00 */ s16 frameCount;
    /* 0x02 */ s16 limbCount;
    /* 0x04 */ s16* frameData;
    /* 0x08 */ JointKey* jointKey;
} AnimationHeader2; // size = 0xC

typedef s32 (*OverrideLimbDrawOpa)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                   void*);

typedef void (*PostLimbDrawOpa)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void*);

typedef s32 (*OverrideLimbDraw)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void*, Gfx** gfx);

typedef void (*PostLimbDraw)(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void*, Gfx** gfx);

typedef enum {
    ANIMENTRY_LOADFRAME,
    ANIMENTRY_COPYALL,
    ANIMENTRY_INTERP,
    ANIMENTRY_COPYTRUE,
    ANIMENTRY_COPYFALSE,
    ANIMENTRY_MOVEACTOR
} AnimationType;

typedef struct {
    /* 0x00 */ DmaRequest req;
    /* 0x20 */ OSMesgQueue msgQueue;
    /* 0x38 */ OSMesg msg;
} AnimEntryLoadFrame; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 queueFlag;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dst;
    /* 0x08 */ Vec3s* src;
} AnimEntryCopyAll; // size = 0xC

typedef struct {
    /* 0x00 */ u8 queueFlag;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* base;
    /* 0x08 */ Vec3s* mod;
    /* 0x0C */ f32 weight;
} AnimEntryInterp; // size = 0x10

typedef struct {
    /* 0x00 */ u8 queueFlag;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dst;
    /* 0x08 */ Vec3s* src;
    /* 0x0C */ u8* copyFlag;
} AnimEntryCopyTrue; // size = 0x10

typedef struct {
    /* 0x00 */ u8 queueFlag;
    /* 0x01 */ u8 vecCount;
    /* 0x04 */ Vec3s* dst;
    /* 0x08 */ Vec3s* src;
    /* 0x0C */ u8* copyFlag;
} AnimEntryCopyFalse; // size = 0x10

typedef struct {
    /* 0x00 */ struct Actor* actor;
    /* 0x04 */ struct SkelAnime* skelAnime;
    /* 0x08 */ f32 unk_08;
} AnimEntryMoveActor; // size = 0xC

typedef union {
    AnimEntryLoadFrame load;
    AnimEntryCopyAll copy;
    AnimEntryInterp interp;
    AnimEntryCopyTrue copy1;
    AnimEntryCopyFalse copy0;
    AnimEntryMoveActor move;
} AnimationEntryData; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x04 */ AnimationEntryData data;
} AnimationEntry; // size = 0x40

typedef struct AnimationContext {
    /* 0x000 */ s16 animationCount;
    /* 0x004 */ AnimationEntry entries[ANIMATION_ENTRY_MAX];
} AnimationContext; // size = 0xC84

typedef void (*AnimationEntryCallback)(struct GlobalContext* globalCtx, AnimationEntryData* data);

// fcurve_skelanime structs
typedef struct {
    /* 0x00 */ u16 flags;
    /* 0x02 */ s16 frame;
    /* 0x04 */ s16 endVel;
    /* 0x06 */ s16 startVel;
    /* 0x08 */ f32 value;
} SkelCurveFrame; // size = 0xC

typedef struct {
    /* 0x00 */ u8* refIndex;
    /* 0x04 */ SkelCurveFrame* keyFrames;
    /* 0x08 */ s16* staticData;
    /* 0x0C */ s16 unk_0C;                // set to 1 in all existing animations
    /* 0x0E */ s16 frameCount;            // never used
} CurveAnimationHeader; // size 0x10

typedef struct {
    /* 0x00 */ u8 child;
    /* 0x01 */ u8 sibling;
    /* 0x04 */ Gfx* dList[2];
} SkelCurveLimb; // size >= 0x8

typedef struct {
    /* 0x00 */ SkelCurveLimb** limbs;
    /* 0x04 */ u8 limbCount;
} SkelCurveHeader; // size = 0x8

typedef struct {
    /* 0x00 */ Vec3s scale;
    /* 0x06 */ Vec3s rot;
    /* 0x0C */ Vec3s pos;
} LimbTransform; // size = 0x12

typedef struct {
    /* 0x00 */ u8 limbCount;                      // Number of limbs in the curve skeleton
    /* 0x04 */ SkelCurveLimb** limbs;             // Array of pointers to the individual limbs
    /* 0x08 */ CurveAnimationHeader* curveAnim;   // Header for current animation
    /* 0x0C */ f32 unk_0C;                        // seems to be unused
    /* 0x10 */ f32 endFrame;                      // Update returns true when this frame is reached
    /* 0x14 */ f32 playSpeed;                     // Multiplied by R_UPDATE_RATE / 2 to get frame rate
    /* 0x18 */ f32 curFrame;                      // Current frame in the animation
    /* 0x1C */ LimbTransform* transforms;         // Scale, rot, and pos of each limb relative to its parent
} SkelAnimeCurve; // size = 0x20

typedef s32 (*OverrideCurveLimbDraw)(struct GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, s32 limbIndex, void*);
typedef void (*PostCurveLimbDraw)(struct GlobalContext* globalCtx, SkelAnimeCurve* skelCurve, s32 limbIndex, void*);

typedef struct SkelAnime {
    /* 0x00 */ u8 limbCount;      // Number of limbs in the skeleton
    /* 0x01 */ u8 mode;           // 0: loop, 2: play once, 4: partial loop. +1 to interpolate between frames.
    /* 0x02 */ u8 dListCount;     // Number of display lists in a flexible skeleton
    /* 0x03 */ s8 taper;          // Tapering to use when morphing between animations. Only used by Door_Warp1.
    /* 0x04 */ void** skeleton;   // An array of pointers to limbs. Can be StandardLimb, LodLimb, or SkinLimb.
    /* 0x08 */ void* animation;   // Can be an AnimationHeader or LinkAnimationHeader.
    /* 0x0C */ f32 startFrame;    // In mode 4, start of partial loop.
    /* 0x10 */ f32 endFrame;      // In mode 2, Update returns true when curFrame is equal to this. In mode 4, end of partial loop.
    /* 0x14 */ f32 animLength;    // Total number of frames in the current animation's file.
    /* 0x18 */ f32 curFrame;      // Current frame in the animation
    /* 0x1C */ f32 playSpeed;     // Multiplied by R_UPDATE_RATE / 3 to get the animation's frame rate.
    /* 0x20 */ Vec3s* jointTable; // Current translation of model and rotations of all limbs
    /* 0x24 */ Vec3s* morphTable; // Table of values used to morph between animations
    /* 0x28 */ f32 morphWeight;   // Weight of the current animation morph as a fraction in [0,1]
    /* 0x2C */ f32 morphRate;     // Reciprocal of the number of frames in the morph
    /* 0x30 */ s32 (*update)();   // Can be Loop, Partial loop, Play once, Morph, or Tapered morph. Link only has Loop, Play once, and Morph
    /* 0x34 */ s8 initFlags;      // Flags used when initializing Link's skeleton
    /* 0x35 */ u8 moveFlags;      // Flags used for animations that move the actor in worldspace.
    /* 0x36 */ s16 prevRot;       // Previous rotation in worldspace.
    /* 0x38 */ Vec3s prevTransl;  // Previous modelspace translation.
    /* 0x3E */ Vec3s baseTransl;  // Base modelspace translation.
} SkelAnime; // size = 0x44

typedef struct {
    /* 0x000 */ u16 unk_0;
    /* 0x002 */ s16 unk_2;
    /* 0x004 */ s16 unk_4;
    /* 0x006 */ s8 unk_6;
    /* 0x007 */ s8 unk_7;
    /* 0x008 */ s8 unk_8;
    /* 0x009 */ u8 unk_9;
} Struct_800A57C0; // size = 0xA

typedef struct {
    /* 0x000 */ u8  unk_0;
    /* 0x002 */ s16 x;
    /* 0x004 */ s16 y;
    /* 0x006 */ s16 z;
    /* 0x008 */ u8  unk_8;
} Struct_800A598C_2; // size = 0xA

typedef struct {
    /* 0x000 */ u16 unk_0;
    /* 0x002 */ u16 unk_2;
    /* 0x004 */ u16 unk_4;
    /* 0x008 */ Struct_800A57C0* unk_8;
    /* 0x00C */ Struct_800A598C_2* unk_C;
} Struct_800A598C; // size = 0x10

typedef struct {
    /* 0x000 */ u16 unk_0;
    /* 0x002 */ u16 unk_2;
    /* 0x004 */ Struct_800A598C* unk_4;
    /* 0x008 */ Gfx* unk_8;
} Struct_800A5E28;

typedef struct {
    /* 0x000 */ u8 unk_0;
    /* 0x004 */ Vtx* buf[2];
} SkinAvb; // size = 0xC

typedef struct {
    /* 0x000 */ SkeletonHeader* skeletonHeader;
    /* 0x004 */ MtxF mtx;
    /* 0x044 */ s32 avbCount;
    /* 0x048 */ SkinAvb* avbTbl;
    /* 0x04C */ SkelAnime skelAnime;
} PSkinAwb; // size = 0x90

typedef void (*SkinCallback)(struct Actor*, struct GlobalContext*, PSkinAwb*);
typedef s32 (*SkinCallback2)(struct Actor*, struct GlobalContext*, s32, PSkinAwb*);

#endif
