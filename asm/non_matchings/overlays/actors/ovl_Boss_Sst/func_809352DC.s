.rdata
glabel D_80937910
    .asciz "../z_boss_sst.c"
    .balign 4

glabel D_80937920
    .asciz "../z_boss_sst.c"
    .balign 4

glabel D_80937930
    .asciz "../z_boss_sst.c"
    .balign 4

.late_rodata
glabel D_80937A4C
    .float 6.28318548203

glabel D_80937A50
    .float 6.28318548203

glabel D_80937A54
 .word 0x39C49BA6
glabel D_80937A58
 .word 0x3A449BA6

.text
glabel func_809352DC
/* 08D0C 809352DC 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 08D10 809352E0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 08D14 809352E4 AFB10028 */  sw      $s1, 0x0028($sp)
/* 08D18 809352E8 AFB00024 */  sw      $s0, 0x0024($sp)
/* 08D1C 809352EC AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 08D20 809352F0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 08D24 809352F4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 08D28 809352F8 3C068093 */  lui     $a2, %hi(D_80937910)       ## $a2 = 80930000
/* 08D2C 809352FC 24C67910 */  addiu   $a2, $a2, %lo(D_80937910)  ## $a2 = 80937910
/* 08D30 80935300 27A40084 */  addiu   $a0, $sp, 0x0084           ## $a0 = FFFFFFE4
/* 08D34 80935304 24071A9A */  addiu   $a3, $zero, 0x1A9A         ## $a3 = 00001A9A
/* 08D38 80935308 0C031AB1 */  jal     Graph_OpenDisps
/* 08D3C 8093530C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 08D40 80935310 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000004
/* 08D44 80935314 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 08D48 80935318 8FB900A4 */  lw      $t9, 0x00A4($sp)
/* 08D4C 8093531C 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 08D50 80935320 1301003C */  beq     $t8, $at, .L80935414
/* 08D54 80935324 8FAA00A4 */  lw      $t2, 0x00A4($sp)
/* 08D58 80935328 0C024F46 */  jal     func_80093D18
/* 08D5C 8093532C 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 08D60 80935330 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 08D64 80935334 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 08D68 80935338 35290080 */  ori     $t1, $t1, 0x0080           ## $t1 = FA000080
/* 08D6C 8093533C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 08D70 80935340 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 08D74 80935344 3C048093 */  lui     $a0, %hi(D_80937464)       ## $a0 = 80930000
/* 08D78 80935348 24847464 */  addiu   $a0, $a0, %lo(D_80937464)  ## $a0 = 80937464
/* 08D7C 8093534C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08D80 80935350 908E0001 */  lbu     $t6, 0x0001($a0)           ## 80937465
/* 08D84 80935354 908B0000 */  lbu     $t3, 0x0000($a0)           ## 80937464
/* 08D88 80935358 90880002 */  lbu     $t0, 0x0002($a0)           ## 80937466
/* 08D8C 8093535C 000E7C00 */  sll     $t7, $t6, 16
/* 08D90 80935360 000B6600 */  sll     $t4, $t3, 24
/* 08D94 80935364 018FC025 */  or      $t8, $t4, $t7              ## $t8 = 00000000
/* 08D98 80935368 00084A00 */  sll     $t1, $t0,  8
/* 08D9C 8093536C 03095025 */  or      $t2, $t8, $t1              ## $t2 = FA000080
/* 08DA0 80935370 354B00FF */  ori     $t3, $t2, 0x00FF           ## $t3 = FA0000FF
/* 08DA4 80935374 3C0D8093 */  lui     $t5, %hi(D_80937448)       ## $t5 = 80930000
/* 08DA8 80935378 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 08DAC 8093537C 8DAD7448 */  lw      $t5, %lo(D_80937448)($t5)
/* 08DB0 80935380 3C048093 */  lui     $a0, %hi(D_80937468)       ## $a0 = 80930000
/* 08DB4 80935384 24847468 */  addiu   $a0, $a0, %lo(D_80937468)  ## $a0 = 80937468
/* 08DB8 80935388 15A0000B */  bne     $t5, $zero, .L809353B8
/* 08DBC 8093538C 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 08DC0 80935390 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 08DC4 80935394 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 08DC8 80935398 3C0F8011 */  lui     $t7, %hi(D_80116280+0x10)
/* 08DCC 8093539C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 08DD0 809353A0 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 08DD4 809353A4 25EF6290 */  addiu   $t7, %lo(D_80116280+0x10)
/* 08DD8 809353A8 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 08DDC 809353AC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 08DE0 809353B0 1000002B */  beq     $zero, $zero, .L80935460
/* 08DE4 809353B4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L809353B8:
/* 08DE8 809353B8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 08DEC 809353BC 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 08DF0 809353C0 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 08DF4 809353C4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08DF8 809353C8 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 08DFC 809353CC AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 08E00 809353D0 908D0001 */  lbu     $t5, 0x0001($a0)           ## 80937469
/* 08E04 809353D4 90890000 */  lbu     $t1, 0x0000($a0)           ## 80937468
/* 08E08 809353D8 90990002 */  lbu     $t9, 0x0002($a0)           ## 8093746A
/* 08E0C 809353DC 000D7400 */  sll     $t6, $t5, 16
/* 08E10 809353E0 00095600 */  sll     $t2, $t1, 24
/* 08E14 809353E4 014E6025 */  or      $t4, $t2, $t6              ## $t4 = FA000088
/* 08E18 809353E8 00194200 */  sll     $t0, $t9,  8
/* 08E1C 809353EC 0188C025 */  or      $t8, $t4, $t0              ## $t8 = FB000088
/* 08E20 809353F0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 08E24 809353F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 08E28 809353F8 3C0D8093 */  lui     $t5, %hi(D_80936990)       ## $t5 = 80930000
/* 08E2C 809353FC 25AD6990 */  addiu   $t5, $t5, %lo(D_80936990)  ## $t5 = 80936990
/* 08E30 80935400 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 08E34 80935404 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 08E38 80935408 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 08E3C 8093540C 10000014 */  beq     $zero, $zero, .L80935460
/* 08E40 80935410 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
.L80935414:
/* 08E44 80935414 0C024F61 */  jal     func_80093D84
/* 08E48 80935418 8D440000 */  lw      $a0, 0x0000($t2)           ## FA000080
/* 08E4C 8093541C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08E50 80935420 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 08E54 80935424 35EF0080 */  ori     $t7, $t7, 0x0080           ## $t7 = FA000080
/* 08E58 80935428 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 08E5C 8093542C AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 08E60 80935430 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 08E64 80935434 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 08E68 80935438 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 08E6C 8093543C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08E70 80935440 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 08E74 80935444 3C188011 */  lui     $t8, %hi(D_80116280+0x10)
/* 08E78 80935448 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 08E7C 8093544C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 08E80 80935450 27186290 */  addiu   $t8, %lo(D_80116280+0x10)
/* 08E84 80935454 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 08E88 80935458 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 08E8C 8093545C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L80935460:
/* 08E90 80935460 8E2B0190 */  lw      $t3, 0x0190($s1)           ## 00000190
/* 08E94 80935464 3C098093 */  lui     $t1, %hi(func_8092F374)    ## $t1 = 80930000
/* 08E98 80935468 2529F374 */  addiu   $t1, $t1, %lo(func_8092F374) ## $t1 = 8092F374
/* 08E9C 8093546C 552B002A */  bnel    $t1, $t3, .L80935518
/* 08EA0 80935470 8E2A0004 */  lw      $t2, 0x0004($s1)           ## 00000004
/* 08EA4 80935474 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 08EA8 80935478 00000000 */  nop
/* 08EAC 8093547C 3C018093 */  lui     $at, %hi(D_80937A4C)       ## $at = 80930000
/* 08EB0 80935480 C4247A4C */  lwc1    $f4, %lo(D_80937A4C)($at)
/* 08EB4 80935484 46040182 */  mul.s   $f6, $f0, $f4
/* 08EB8 80935488 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 08EBC 8093548C E7A60068 */  swc1    $f6, 0x0068($sp)
/* 08EC0 80935490 3C018093 */  lui     $at, %hi(D_80937A50)       ## $at = 80930000
/* 08EC4 80935494 C4287A50 */  lwc1    $f8, %lo(D_80937A50)($at)
/* 08EC8 80935498 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 08ECC 8093549C 46080302 */  mul.s   $f12, $f0, $f8
/* 08ED0 809354A0 0C034348 */  jal     Matrix_RotateY
/* 08ED4 809354A4 E7AC0064 */  swc1    $f12, 0x0064($sp)
/* 08ED8 809354A8 C7AC0068 */  lwc1    $f12, 0x0068($sp)
/* 08EDC 809354AC 0C0342DC */  jal     Matrix_RotateX
/* 08EE0 809354B0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 08EE4 809354B4 862D0198 */  lh      $t5, 0x0198($s1)           ## 00000198
/* 08EE8 809354B8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 08EEC 809354BC 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 08EF0 809354C0 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 08EF4 809354C4 3C018093 */  lui     $at, %hi(D_80937A54)       ## $at = 80930000
/* 08EF8 809354C8 C4307A54 */  lwc1    $f16, %lo(D_80937A54)($at)
/* 08EFC 809354CC 46805020 */  cvt.s.w $f0, $f10
/* 08F00 809354D0 3C018093 */  lui     $at, %hi(D_80937A58)       ## $at = 80930000
/* 08F04 809354D4 C4247A58 */  lwc1    $f4, %lo(D_80937A58)($at)
/* 08F08 809354D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08F0C 809354DC 46100482 */  mul.s   $f18, $f0, $f16
/* 08F10 809354E0 46029300 */  add.s   $f12, $f18, $f2
/* 08F14 809354E4 46040182 */  mul.s   $f6, $f0, $f4
/* 08F18 809354E8 44066000 */  mfc1    $a2, $f12
/* 08F1C 809354EC 0C0342A3 */  jal     Matrix_Scale
/* 08F20 809354F0 46061381 */  sub.s   $f14, $f2, $f6
/* 08F24 809354F4 C7AC0068 */  lwc1    $f12, 0x0068($sp)
/* 08F28 809354F8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 08F2C 809354FC 0C0342DC */  jal     Matrix_RotateX
/* 08F30 80935500 46006307 */  neg.s   $f12, $f12
/* 08F34 80935504 C7AC0064 */  lwc1    $f12, 0x0064($sp)
/* 08F38 80935508 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 08F3C 8093550C 0C034348 */  jal     Matrix_RotateY
/* 08F40 80935510 46006307 */  neg.s   $f12, $f12
/* 08F44 80935514 8E2A0004 */  lw      $t2, 0x0004($s1)           ## 00000004
.L80935518:
/* 08F48 80935518 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 08F4C 8093551C 3C088093 */  lui     $t0, %hi(func_80934A44)    ## $t0 = 80930000
/* 08F50 80935520 314E0080 */  andi    $t6, $t2, 0x0080           ## $t6 = 00000000
/* 08F54 80935524 11C10011 */  beq     $t6, $at, .L8093556C
/* 08F58 80935528 25084A44 */  addiu   $t0, $t0, %lo(func_80934A44) ## $t0 = 80934A44
/* 08F5C 8093552C 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 08F60 80935530 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 08F64 80935534 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 08F68 80935538 3C0F8093 */  lui     $t7, %hi(func_80934A44)    ## $t7 = 80930000
/* 08F6C 8093553C 3C198093 */  lui     $t9, %hi(func_80935238)    ## $t9 = 80930000
/* 08F70 80935540 27395238 */  addiu   $t9, $t9, %lo(func_80935238) ## $t9 = 80935238
/* 08F74 80935544 25EF4A44 */  addiu   $t7, $t7, %lo(func_80934A44) ## $t7 = 80934A44
/* 08F78 80935548 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 08F7C 8093554C AFB90014 */  sw      $t9, 0x0014($sp)
/* 08F80 80935550 AFB10018 */  sw      $s1, 0x0018($sp)
/* 08F84 80935554 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 08F88 80935558 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 08F8C 8093555C 0C0289CF */  jal     SkelAnime_DrawFlex2
/* 08F90 80935560 AFAC001C */  sw      $t4, 0x001C($sp)
/* 08F94 80935564 1000000E */  beq     $zero, $zero, .L809355A0
/* 08F98 80935568 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L8093556C:
/* 08F9C 8093556C 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 08FA0 80935570 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 08FA4 80935574 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 08FA8 80935578 3C188093 */  lui     $t8, %hi(func_80935238)    ## $t8 = 80930000
/* 08FAC 8093557C 27185238 */  addiu   $t8, $t8, %lo(func_80935238) ## $t8 = 80935238
/* 08FB0 80935580 AFB80014 */  sw      $t8, 0x0014($sp)
/* 08FB4 80935584 AFB10018 */  sw      $s1, 0x0018($sp)
/* 08FB8 80935588 AFA80010 */  sw      $t0, 0x0010($sp)
/* 08FBC 8093558C 8E0902D0 */  lw      $t1, 0x02D0($s0)           ## 000002D0
/* 08FC0 80935590 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 08FC4 80935594 0C0289CF */  jal     SkelAnime_DrawFlex2
/* 08FC8 80935598 AFA9001C */  sw      $t1, 0x001C($sp)
/* 08FCC 8093559C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L809355A0:
/* 08FD0 809355A0 8E2D0190 */  lw      $t5, 0x0190($s1)           ## 00000190
/* 08FD4 809355A4 3C0B8093 */  lui     $t3, %hi(func_8092CC58)    ## $t3 = 80930000
/* 08FD8 809355A8 256BCC58 */  addiu   $t3, $t3, %lo(func_8092CC58) ## $t3 = 8092CC58
/* 08FDC 809355AC 556D0058 */  bnel    $t3, $t5, .L80935710
/* 08FE0 809355B0 8FB900A4 */  lw      $t9, 0x00A4($sp)
/* 08FE4 809355B4 86220198 */  lh      $v0, 0x0198($s1)           ## 00000198
/* 08FE8 809355B8 28410072 */  slti    $at, $v0, 0x0072
/* 08FEC 809355BC 10200053 */  beq     $at, $zero, .L8093570C
/* 08FF0 809355C0 28410015 */  slti    $at, $v0, 0x0015
/* 08FF4 809355C4 14200051 */  bne     $at, $zero, .L8093570C
/* 08FF8 809355C8 8FAA00A4 */  lw      $t2, 0x00A4($sp)
/* 08FFC 809355CC 0C024F61 */  jal     func_80093D84
/* 09000 809355D0 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 09004 809355D4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09008 809355D8 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 0900C 809355DC 241912FF */  addiu   $t9, $zero, 0x12FF         ## $t9 = 000012FF
/* 09010 809355E0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09014 809355E4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09018 809355E8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0901C 809355EC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 09020 809355F0 862C0198 */  lh      $t4, 0x0198($s1)           ## 00000198
/* 09024 809355F4 24180388 */  addiu   $t8, $zero, 0x0388         ## $t8 = 00000388
/* 09028 809355F8 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 0902C 809355FC 000C40C0 */  sll     $t0, $t4,  3
/* 09030 80935600 03081023 */  subu    $v0, $t8, $t0
/* 09034 80935604 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 09038 80935608 44810000 */  mtc1    $at, $f0                   ## $f0 = 450.00
/* 0903C 8093560C 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 09040 80935610 46805420 */  cvt.s.w $f16, $f10
/* 09044 80935614 44814000 */  mtc1    $at, $f8                   ## $f8 = 35.00
/* 09048 80935618 3C01C37A */  lui     $at, 0xC37A                ## $at = C37A0000
/* 0904C 8093561C 44819000 */  mtc1    $at, $f18                  ## $f18 = -250.00
/* 09050 80935620 3C01433E */  lui     $at, 0x433E                ## $at = 433E0000
/* 09054 80935624 44813000 */  mtc1    $at, $f6                   ## $f6 = 190.00
/* 09058 80935628 46128100 */  add.s   $f4, $f16, $f18
/* 0905C 8093562C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 09060 80935630 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFB4
/* 09064 80935634 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFA8
/* 09068 80935638 4604003C */  c.lt.s  $f0, $f4
/* 0906C 8093563C E7A40058 */  swc1    $f4, 0x0058($sp)
/* 09070 80935640 E7A80054 */  swc1    $f8, 0x0054($sp)
/* 09074 80935644 E7A6005C */  swc1    $f6, 0x005C($sp)
/* 09078 80935648 45020003 */  bc1fl   .L80935658
/* 0907C 8093564C 8FA600A4 */  lw      $a2, 0x00A4($sp)
/* 09080 80935650 E7A00058 */  swc1    $f0, 0x0058($sp)
/* 09084 80935654 8FA600A4 */  lw      $a2, 0x00A4($sp)
.L80935658:
/* 09088 80935658 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0908C 8093565C 0C0347BD */  jal     Matrix_MultVec3fExt
/* 09090 80935660 00C13021 */  addu    $a2, $a2, $at
/* 09094 80935664 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 09098 80935668 C7AA0048 */  lwc1    $f10, 0x0048($sp)
/* 0909C 8093566C C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 090A0 80935670 C7A40050 */  lwc1    $f4, 0x0050($sp)
/* 090A4 80935674 460A4300 */  add.s   $f12, $f8, $f10
/* 090A8 80935678 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 090AC 8093567C C7B2004C */  lwc1    $f18, 0x004C($sp)
/* 090B0 80935680 46043200 */  add.s   $f8, $f6, $f4
/* 090B4 80935684 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 090B8 80935688 46128380 */  add.s   $f14, $f16, $f18
/* 090BC 8093568C 44064000 */  mfc1    $a2, $f8
/* 090C0 80935690 0C034261 */  jal     Matrix_Translate
/* 090C4 80935694 00000000 */  nop
/* 090C8 80935698 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 090CC 8093569C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 090D0 809356A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 090D4 809356A4 44066000 */  mfc1    $a2, $f12
/* 090D8 809356A8 0C0342A3 */  jal     Matrix_Scale
/* 090DC 809356AC 46006386 */  mov.s   $f14, $f12
/* 090E0 809356B0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 090E4 809356B4 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 090E8 809356B8 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 090EC 809356BC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 090F0 809356C0 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 090F4 809356C4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 090F8 809356C8 8FAD00A4 */  lw      $t5, 0x00A4($sp)
/* 090FC 809356CC 3C058093 */  lui     $a1, %hi(D_80937920)       ## $a1 = 80930000
/* 09100 809356D0 24A57920 */  addiu   $a1, $a1, %lo(D_80937920)  ## $a1 = 80937920
/* 09104 809356D4 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 09108 809356D8 24061B16 */  addiu   $a2, $zero, 0x1B16         ## $a2 = 00001B16
/* 0910C 809356DC 0C0346A2 */  jal     Matrix_NewMtx
/* 09110 809356E0 AFA20040 */  sw      $v0, 0x0040($sp)
/* 09114 809356E4 8FA30040 */  lw      $v1, 0x0040($sp)
/* 09118 809356E8 3C0F8093 */  lui     $t7, %hi(D_80936E08)       ## $t7 = 80930000
/* 0911C 809356EC 25EF6E08 */  addiu   $t7, $t7, %lo(D_80936E08)  ## $t7 = 80936E08
/* 09120 809356F0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09124 809356F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09128 809356F8 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 0912C 809356FC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 09130 80935700 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 09134 80935704 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 09138 80935708 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
.L8093570C:
/* 0913C 8093570C 8FB900A4 */  lw      $t9, 0x00A4($sp)
.L80935710:
/* 09140 80935710 3C068093 */  lui     $a2, %hi(D_80937930)       ## $a2 = 80930000
/* 09144 80935714 24C67930 */  addiu   $a2, $a2, %lo(D_80937930)  ## $a2 = 80937930
/* 09148 80935718 27A40084 */  addiu   $a0, $sp, 0x0084           ## $a0 = FFFFFFE4
/* 0914C 8093571C 24071B1D */  addiu   $a3, $zero, 0x1B1D         ## $a3 = 00001B1D
/* 09150 80935720 0C031AD5 */  jal     Graph_CloseDisps
/* 09154 80935724 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 09158 80935728 8FA400A4 */  lw      $a0, 0x00A4($sp)
/* 0915C 8093572C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 09160 80935730 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 09164 80935734 26250038 */  addiu   $a1, $s1, 0x0038           ## $a1 = 00000038
/* 09168 80935738 262603C8 */  addiu   $a2, $s1, 0x03C8           ## $a2 = 000003C8
/* 0916C 8093573C 0C029BBD */  jal     SkinMatrix_Vec3fMtxFMultXYZ
/* 09170 80935740 00812021 */  addu    $a0, $a0, $at
/* 09174 80935744 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 09178 80935748 0C24D8E7 */  jal     func_8093639C
/* 0917C 8093574C 8FA500A4 */  lw      $a1, 0x00A4($sp)
/* 09180 80935750 8FBF002C */  lw      $ra, 0x002C($sp)
/* 09184 80935754 8FB00024 */  lw      $s0, 0x0024($sp)
/* 09188 80935758 8FB10028 */  lw      $s1, 0x0028($sp)
/* 0918C 8093575C 03E00008 */  jr      $ra
/* 09190 80935760 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
