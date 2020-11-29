.rdata
glabel D_809C4C44
    .asciz "../z_en_bom_bowl_man.c"
    .balign 4

glabel D_809C4C5C
    .asciz "../z_en_bom_bowl_man.c"
    .balign 4

.text
glabel EnBomBowlMan_Draw
/* 012BC 809C48EC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 012C0 809C48F0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 012C4 809C48F4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 012C8 809C48F8 AFA50054 */  sw      $a1, 0x0054($sp)
/* 012CC 809C48FC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 012D0 809C4900 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012D4 809C4904 3C06809C */  lui     $a2, %hi(D_809C4C44)       ## $a2 = 809C0000
/* 012D8 809C4908 24C64C44 */  addiu   $a2, $a2, %lo(D_809C4C44)  ## $a2 = 809C4C44
/* 012DC 809C490C 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 012E0 809C4910 2407038B */  addiu   $a3, $zero, 0x038B         ## $a3 = 0000038B
/* 012E4 809C4914 0C031AB1 */  jal     Graph_OpenDisps
/* 012E8 809C4918 AFA50048 */  sw      $a1, 0x0048($sp)
/* 012EC 809C491C 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 012F0 809C4920 0C024F46 */  jal     func_80093D18
/* 012F4 809C4924 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 012F8 809C4928 8FA50048 */  lw      $a1, 0x0048($sp)
/* 012FC 809C492C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01300 809C4930 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 01304 809C4934 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 01308 809C4938 3C04809C */  lui     $a0, %hi(D_809C4AA8)       ## $a0 = 809C0000
/* 0130C 809C493C 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 01310 809C4940 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 01314 809C4944 ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 01318 809C4948 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0131C 809C494C 86080234 */  lh      $t0, 0x0234($s0)           ## 00000234
/* 01320 809C4950 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01324 809C4954 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01328 809C4958 00084880 */  sll     $t1, $t0,  2
/* 0132C 809C495C 00892021 */  addu    $a0, $a0, $t1
/* 01330 809C4960 8C844AA8 */  lw      $a0, %lo(D_809C4AA8)($a0)
/* 01334 809C4964 3C19809C */  lui     $t9, %hi(func_809C48A8)    ## $t9 = 809C0000
/* 01338 809C4968 273948A8 */  addiu   $t9, $t9, %lo(func_809C48A8) ## $t9 = 809C48A8
/* 0133C 809C496C 00045900 */  sll     $t3, $a0,  4
/* 01340 809C4970 000B6702 */  srl     $t4, $t3, 28
/* 01344 809C4974 000C6880 */  sll     $t5, $t4,  2
/* 01348 809C4978 01CD7021 */  addu    $t6, $t6, $t5
/* 0134C 809C497C 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 01350 809C4980 00815024 */  and     $t2, $a0, $at
/* 01354 809C4984 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01358 809C4988 014E7821 */  addu    $t7, $t2, $t6
/* 0135C 809C498C 01E1C021 */  addu    $t8, $t7, $at
/* 01360 809C4990 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 01364 809C4994 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 01368 809C4998 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0136C 809C499C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01370 809C49A0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01374 809C49A4 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01378 809C49A8 AFB90010 */  sw      $t9, 0x0010($sp)
/* 0137C 809C49AC 0C0286B2 */  jal     SkelAnime_DrawFlex
/* 01380 809C49B0 8FA40054 */  lw      $a0, 0x0054($sp)
/* 01384 809C49B4 8FA80054 */  lw      $t0, 0x0054($sp)
/* 01388 809C49B8 3C06809C */  lui     $a2, %hi(D_809C4C5C)       ## $a2 = 809C0000
/* 0138C 809C49BC 24C64C5C */  addiu   $a2, $a2, %lo(D_809C4C5C)  ## $a2 = 809C4C5C
/* 01390 809C49C0 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01394 809C49C4 2407039B */  addiu   $a3, $zero, 0x039B         ## $a3 = 0000039B
/* 01398 809C49C8 0C031AD5 */  jal     Graph_CloseDisps
/* 0139C 809C49CC 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 013A0 809C49D0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 013A4 809C49D4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 013A8 809C49D8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 013AC 809C49DC 03E00008 */  jr      $ra
/* 013B0 809C49E0 00000000 */  nop
/* 013B4 809C49E4 00000000 */  nop
/* 013B8 809C49E8 00000000 */  nop
/* 013BC 809C49EC 00000000 */  nop
