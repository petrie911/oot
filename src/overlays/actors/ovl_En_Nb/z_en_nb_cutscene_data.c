#include "z_en_nb.h"
#include "z64cutscene_commands.h"

// clang-format off
static CutsceneData D_80AB431C[] = {
    CS_BEGIN_CUTSCENE(27, 3011),
    CS_UNK_DATA_LIST(0x00000020, 1),
        CS_UNK_DATA(0x00010000, 0x0BB80000, 0x00000000, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, 0x00000002, 0x00000000, 0x00000000, 0x00000000),
    CS_NPC_ACTION_LIST(31, 5),
        CS_NPC_ACTION(0x0001, 0, 501, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 501, 502, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0004, 502, 573, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 216, 0, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 573, 621, 0x0000, 0x0000, 0x0000, 0, 216, 0, 0, 82, 0, 0.0f, -2.7916667f, 0.0f),
        CS_NPC_ACTION(0x0003, 621, 3011, 0x0000, 0x0000, 0x0000, 0, 82, 0, 0, 82, 0, 0.0f, 0.0f, 0.0f),
    CS_PLAYER_ACTION_LIST(3),
        CS_PLAYER_ACTION(0x000D, 0, 240, 0x0000, 0x1555, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0005, 240, 461, 0x0000, 0x1555, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 1.401298464324817e-45f),
        CS_PLAYER_ACTION(0x0013, 461, 1616, 0x0000, 0x9555, 0x0000, 0, 6, 0, 0, 6, 0, 0.0f, 0.0f, 1.401298464324817e-45f),
    CS_NPC_ACTION_LIST(49, 1),
        CS_NPC_ACTION(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, -16, -121, 0, -16, -121, 0.0f, 0.0f, 0.0f),
    CS_LIGHTING_LIST(1),
        CS_LIGHTING(0x0004, 0, 3000, 0x0000, 0x00000000, 0xFFFFFF9E, 0x00000000, 0x0000002F, 0xFFFFFF9E, 0x00000000, 0x0000002F),
    CS_NPC_ACTION_LIST(39, 1),
        CS_NPC_ACTION(0x0001, 0, 3000, 0x0000, 0x0000, 0x0000, 0, 0, -2, 0, 0, -2, 0.0f, 0.0f, 0.0f),
    CS_NPC_ACTION_LIST(40, 3),
        CS_NPC_ACTION(0x0001, 0, 145, 0x0000, 0x0000, 0x0000, -97, 6, -167, -97, 6, -167, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0002, 145, 431, 0x0000, 0x0000, 0x0000, -97, 6, -167, -97, 6, -167, 0.0f, 0.0f, 0.0f),
        CS_NPC_ACTION(0x0003, 431, 1399, 0x0000, 0x0000, 0x0000, -97, 6, -167, -97, 6, -167, 0.0f, 0.0f, 0.0f),
    CS_SCENE_TRANS_FX(0x0005, 500, 530),
    CS_SCENE_TRANS_FX(0x0001, 489, 499),
    CS_SCENE_TRANS_FX(0x0001, 765, 795),
    CS_TEXT_LIST(10),
        CS_TEXT_NONE(0, 345),
        CS_TEXT_DISPLAY_TEXTBOX(0x6035, 345, 353, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(353, 374),
        CS_TEXT_DISPLAY_TEXTBOX(0x6039, 374, 399, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(399, 400),
        CS_TEXT_DISPLAY_TEXTBOX(0x603A, 400, 424, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(424, 760),
        CS_TEXT_DISPLAY_TEXTBOX(0x003F, 760, 765, 0x0000, 0x0000, 0x0000),
        CS_TEXT_NONE(765, 825),
        CS_TEXT_DISPLAY_TEXTBOX(0x6036, 825, 835, 0x0000, 0x0000, 0x0000),
    CS_NPC_ACTION_LIST(62, 1),
        CS_NPC_ACTION(0x0004, 0, 3000, 0x0000, 0x0000, 0x0000, 50, 80, 56, 50, 80, 56, 0.0f, 0.0f, 0.0f),
    CS_TERMINATOR(DESERT_COLOSSUS_SPIRIT_BLUE_WARP, 865, 907),
    CS_PLAY_BGM_LIST(1),
        CS_PLAY_BGM(0x0044, 575, 576, 0x0000, 0x00000000, 0xFFFFFFEF, 0x00000000, 0x00000034, 0xFFFFFFEF, 0x00000000, 0x00000034),
    CS_FADE_BGM_LIST(1),
        CS_FADE_BGM(0x0004, 479, 529, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFC7, 0x0000005C, 0x00000000, 0xFFFFFFC7, 0x0000005C),
    CS_CAM_POS_LIST(0, 366),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, -269, 89, -454, 0x00C6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, -269, 89, -454, 0x00C8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, -269, 89, -454, 0x00D7),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, -223, 75, -377, 0x00E8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, -92, 31, -157, 0x00EA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, 13, 15, 19, 0x013D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, 49, 28, 77, 0x013F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.800003f, 74, 20, 122, 0x014E),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 50.599964f, 74, 20, 122, 0x015F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.399944f, 74, 20, 122, 0x0161),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.399944f, 74, 20, 122, 0x300A),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.399944f, 74, 20, 122, 0x656F),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 45.399944f, 74, 20, 122, 0x676F),
    CS_CAM_POS_LIST(263, 2484),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 134, 19, 198, 0x00C6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 134, 19, 198, 0x00C8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 134, 43, 198, 0x00D7),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 133, 60, 197, 0x00E8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 133, 60, 197, 0x00EA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 62.004566f, 133, 60, 197, 0x013D),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 62.004566f, 133, 60, 197, 0x013F),
    CS_CAM_POS_LIST(363, 1595),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 116, 21, 45, 0x00C6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 116, 21, 45, 0x00C8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 116, 21, 45, 0x00D7),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 117, 24, 69, 0x00E8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 105, 46, 117, 0x00EA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 105, 46, 117, 0x013D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 40.399925f, 105, 46, 117, 0x013F),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 40.399925f, 105, 46, 117, 0x002E),
    CS_CAM_POS_LIST(433, 1594),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945f, 139, 33, -108, 0x00C6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945f, 139, 33, -108, 0x00C8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945f, 140, 81, -109, 0x00D7),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 45.599945f, 140, 252, -109, 0x00E8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600002f, 140, 252, -109, 0x00EA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600002f, 140, 252, -109, 0x013D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.600002f, 140, 252, -109, 0x013F),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.600002f, 140, 252, -109, 0x002E),
    CS_CAM_POS_LIST(498, 840),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 13, 854, 2, 0x00C6),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 853, 5, 0x00C8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -3, 853, 5, 0x00D7),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -9, 853, -6, 0x00E8),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, -2, 852, -17, 0x00EA),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 852, -17, 0x013D),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 16, 852, -6, 0x013F),
        CS_CAM_POS(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 9, 852, 5, 0x002E),
        CS_CAM_POS(CS_CMD_STOP, 0x00, 0, 60.0f, -3, 851, 5, 0x0063),
    CS_CAM_POS_PLAYER_LIST(574, 1755),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 33, -27, 0x00C6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 33, -27, 0x00C8),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 68, -26, 0x00D7),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 103, -26, 0x00E8),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 103, -26, 0x00EA),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 103, -26, 0x013D),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 68.599945f, 0, 103, -26, 0x013F),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 68.599945f, 0, 103, -26, 0x002E),
    CS_CAM_FOCUS_POINT_LIST(0, 395),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, -141, 51, -239, 0x00C6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, -141, 51, -239, 0x00C8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, -141, 52, -239, 0x00D7),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, -96, 32, -164, 0x00E8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, 34, 19, 56, 0x00EA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, 138, 2, 230, 0x013D),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 60.800003f, 165, 22, 286, 0x013F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 35, 55.799984f, 181, 116, 315, 0x014E),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 50.599964f, 175, 134, 305, 0x015F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.399944f, 172, 142, 300, 0x0161),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.399944f, 171, 142, 300, 0x300A),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.399944f, 171, 141, 299, 0x656F),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 45.399944f, 171, 141, 299, 0x676F),
    CS_CAM_FOCUS_POINT_LIST(263, 2513),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 70, 62.004566f, -67, 36, 17, 0x00C6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 70, 62.004566f, -67, 32, 17, 0x00C8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 62.004566f, -66, 34, 18, 0x00D7),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 62.004566f, -60, 24, 23, 0x00E8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 62.004566f, -60, 22, 23, 0x00EA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 62.004566f, -60, 19, 23, 0x013D),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 62.004566f, -60, 18, 23, 0x013F),
    CS_CAM_FOCUS_POINT_LIST(363, 1624),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 40.399925f, 34, 58, 269, 0x00C6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 40.399925f, 34, 58, 269, 0x00C8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 40.399925f, 34, 58, 269, 0x00D7),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 40.399925f, 42, 74, 293, 0x00E8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 41, 40.399925f, 22, 93, 336, 0x00EA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 40.399925f, 22, 93, 336, 0x013D),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 40.399925f, 22, 93, 336, 0x013F),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 40.399925f, 22, 93, 336, 0x002E),
    CS_CAM_FOCUS_POINT_LIST(433, 1623),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.599945f, 4, 14, 108, 0x00C6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 45.599945f, 4, 14, 108, 0x00C8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 50.999966f, 4, 76, 108, 0x00D7),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 70.599915f, 111, 501, -62, 0x00E8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.599915f, 111, 500, -62, 0x00EA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 1000, 70.599915f, 111, 500, -62, 0x013D),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 70.39992f, 111, 500, -62, 0x013F),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 30, 70.39992f, 111, 500, -62, 0x002E),
    CS_CAM_FOCUS_POINT_LIST(498, 889),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 60.0f, 3, 6, -6, 0x00C6),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 40, 60.0f, 3, 6, -6, 0x00C8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 30, 50.999966f, 3, 6, -6, 0x00D7),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 20, 20.59985f, 3, 6, -6, 0x00E8),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 51, 10.799838f, 3, 6, -6, 0x00EA),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.399838f, 3, 6, -6, 0x013D),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.399838f, 3, 6, -6, 0x013F),
        CS_CAM_FOCUS_POINT(CS_CMD_CONTINUE, 0x00, 50, 10.199839f, 3, 6, -6, 0x002E),
        CS_CAM_FOCUS_POINT(CS_CMD_STOP, 0x00, 50, 10.999838f, 3, 6, -6, 0x0063),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(574, 1784),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 0, 100, 5, 0x00C6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 0, 101, 6, 0x00C8),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 1, 99, 41, 0x00D7),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 0, 42, 16, 0x00E8),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 0, 42, 16, 0x00EA),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 68.599945f, 0, 42, 16, 0x013D),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 68.599945f, 0, 42, 16, 0x013F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 68.599945f, 0, 42, 16, 0x002E),
    CS_END(),
};
// clang-format on
