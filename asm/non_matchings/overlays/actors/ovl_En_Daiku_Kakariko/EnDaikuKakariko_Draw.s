.rdata
glabel D_809E55E0
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

glabel D_809E55FC
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

.text
glabel EnDaikuKakariko_Draw
/* 01020 809E5340 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01024 809E5344 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01028 809E5348 AFA40058 */  sw      $a0, 0x0058($sp)
/* 0102C 809E534C AFA5005C */  sw      $a1, 0x005C($sp)
/* 01030 809E5350 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01034 809E5354 3C06809E */  lui     $a2, %hi(D_809E55E0)       ## $a2 = 809E0000
/* 01038 809E5358 24C655E0 */  addiu   $a2, $a2, %lo(D_809E55E0)  ## $a2 = 809E55E0
/* 0103C 809E535C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01040 809E5360 24070464 */  addiu   $a3, $zero, 0x0464         ## $a3 = 00000464
/* 01044 809E5364 0C031AB1 */  jal     Graph_OpenDisps
/* 01048 809E5368 AFA50050 */  sw      $a1, 0x0050($sp)
/* 0104C 809E536C 8FAF005C */  lw      $t7, 0x005C($sp)
/* 01050 809E5370 0C024F46 */  jal     func_80093D18
/* 01054 809E5374 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01058 809E5378 8FA90058 */  lw      $t1, 0x0058($sp)
/* 0105C 809E537C 8FA80050 */  lw      $t0, 0x0050($sp)
/* 01060 809E5380 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01064 809E5384 8522001C */  lh      $v0, 0x001C($t1)           ## 0000001C
/* 01068 809E5388 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0106C 809E538C 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 01070 809E5390 14400009 */  bne     $v0, $zero, .L809E53B8
/* 01074 809E5394 00000000 */  nop
/* 01078 809E5398 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0107C 809E539C 3C0AAA0A */  lui     $t2, 0xAA0A                ## $t2 = AA0A0000
/* 01080 809E53A0 354A46FF */  ori     $t2, $t2, 0x46FF           ## $t2 = AA0A46FF
/* 01084 809E53A4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01088 809E53A8 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 0108C 809E53AC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01090 809E53B0 10000020 */  beq     $zero, $zero, .L809E5434
/* 01094 809E53B4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
.L809E53B8:
/* 01098 809E53B8 14410009 */  bne     $v0, $at, .L809E53E0
/* 0109C 809E53BC 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 010A0 809E53C0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 010A4 809E53C4 3C0DAAC8 */  lui     $t5, 0xAAC8                ## $t5 = AAC80000
/* 010A8 809E53C8 35ADFFFF */  ori     $t5, $t5, 0xFFFF           ## $t5 = AAC8FFFF
/* 010AC 809E53CC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 010B0 809E53D0 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 010B4 809E53D4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 010B8 809E53D8 10000016 */  beq     $zero, $zero, .L809E5434
/* 010BC 809E53DC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L809E53E0:
/* 010C0 809E53E0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 010C4 809E53E4 14410009 */  bne     $v0, $at, .L809E540C
/* 010C8 809E53E8 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 010CC 809E53EC 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 010D0 809E53F0 3C1800E6 */  lui     $t8, 0x00E6                ## $t8 = 00E60000
/* 010D4 809E53F4 371846FF */  ori     $t8, $t8, 0x46FF           ## $t8 = 00E646FF
/* 010D8 809E53F8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 010DC 809E53FC AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 010E0 809E5400 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 010E4 809E5404 1000000B */  beq     $zero, $zero, .L809E5434
/* 010E8 809E5408 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
.L809E540C:
/* 010EC 809E540C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 010F0 809E5410 14410008 */  bne     $v0, $at, .L809E5434
/* 010F4 809E5414 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 010F8 809E5418 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 010FC 809E541C 3C0BC800 */  lui     $t3, 0xC800                ## $t3 = C8000000
/* 01100 809E5420 356B96FF */  ori     $t3, $t3, 0x96FF           ## $t3 = C80096FF
/* 01104 809E5424 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01108 809E5428 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 0110C 809E542C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01110 809E5430 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
.L809E5434:
/* 01114 809E5434 8D250150 */  lw      $a1, 0x0150($t1)           ## 00000150
/* 01118 809E5438 8D26016C */  lw      $a2, 0x016C($t1)           ## 0000016C
/* 0111C 809E543C 9127014E */  lbu     $a3, 0x014E($t1)           ## 0000014E
/* 01120 809E5440 3C0C809E */  lui     $t4, %hi(func_809E50B4)    ## $t4 = 809E0000
/* 01124 809E5444 3C0D809E */  lui     $t5, %hi(func_809E5288)    ## $t5 = 809E0000
/* 01128 809E5448 25AD5288 */  addiu   $t5, $t5, %lo(func_809E5288) ## $t5 = 809E5288
/* 0112C 809E544C 258C50B4 */  addiu   $t4, $t4, %lo(func_809E50B4) ## $t4 = 809E50B4
/* 01130 809E5450 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 01134 809E5454 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 01138 809E5458 AFA90018 */  sw      $t1, 0x0018($sp)
/* 0113C 809E545C 0C0286B2 */  jal     SkelAnime_DrawFlex
/* 01140 809E5460 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01144 809E5464 8FAE005C */  lw      $t6, 0x005C($sp)
/* 01148 809E5468 3C06809E */  lui     $a2, %hi(D_809E55FC)       ## $a2 = 809E0000
/* 0114C 809E546C 24C655FC */  addiu   $a2, $a2, %lo(D_809E55FC)  ## $a2 = 809E55FC
/* 01150 809E5470 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01154 809E5474 2407047F */  addiu   $a3, $zero, 0x047F         ## $a3 = 0000047F
/* 01158 809E5478 0C031AD5 */  jal     Graph_CloseDisps
/* 0115C 809E547C 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 01160 809E5480 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01164 809E5484 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01168 809E5488 03E00008 */  jr      $ra
/* 0116C 809E548C 00000000 */  nop
