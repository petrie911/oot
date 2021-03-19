#include "global.h"

#define SKELCURVE_NO_INTERP (1 << 0)
#define SKELCURVE_LERP (1 << 1)

f32 SkelCurve_CubicInterp(f32 x, f32 velScale, f32 start, f32 end, f32 startVel, f32 endVel) {
    f32 x2 = x * x;
    f32 x3 = x * x * x;
    f32 pad[7];
    

    return (x3 * 2.0f - x2 * 3.0f + 1.0f) * start + (x2 * 3.0f - x3 * 2.0f) * end +
           (x3 - x2 * 2.0f + x) * startVel * velScale + (x3 - x2) * endVel * velScale;
}

#define F32_INTERP_WEIGHT(val, start, end) (((f32)(val) - (f32)(start)) / ((f32)(end) - (f32)(start)))

f32 SkelCurve_GetTransform(f32 frame, SkelCurveFrame* keyFrames, s32 frameCount) {
    s32 i;
    s32 j;

    if (frame <= keyFrames[0].frame) {
        return keyFrames[0].value;
    }
    if (frame >= keyFrames[frameCount - 1].frame) {
        return keyFrames[frameCount - 1].value;
    }

    for (i = 0;; i++) {
        j = i + 1;
        if (keyFrames[j].frame > frame) {
            if (keyFrames[i].flags & SKELCURVE_NO_INTERP) {
                return keyFrames[i].value;
            } else if (keyFrames[i].flags & SKELCURVE_LERP) {
                return keyFrames[i].value + F32_INTERP_WEIGHT(frame, keyFrames[i].frame, keyFrames[j].frame) *
                           (keyFrames[j].value - keyFrames[i].value);
            } else {
                f32 diff = (f32)keyFrames[j].frame - (f32)keyFrames[i].frame;

                return SkelCurve_CubicInterp(F32_INTERP_WEIGHT(frame, keyFrames[i].frame, keyFrames[j].frame),
                                     diff * (1.0f / 30.0f), keyFrames[i].value, keyFrames[j].value,
                                     keyFrames[i].startVel, keyFrames[j].endVel);
            }
        }
    }
}
