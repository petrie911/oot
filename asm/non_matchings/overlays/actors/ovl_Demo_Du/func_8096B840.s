.rdata
glabel D_8096CFD0
    .asciz "../z_demo_du_inKenjyanomaDemo02.c"
    .balign 4

glabel D_8096CFF4
    .asciz "../z_demo_du_inKenjyanomaDemo02.c"
    .balign 4

.text
glabel func_8096B840
/* 01D70 8096B840 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 01D74 8096B844 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01D78 8096B848 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01D7C 8096B84C AFA40080 */  sw      $a0, 0x0080($sp)
/* 01D80 8096B850 AFA50084 */  sw      $a1, 0x0084($sp)
/* 01D84 8096B854 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 01D88 8096B858 3C188097 */  lui     $t8, %hi(D_8096CE74)       ## $t8 = 80970000
/* 01D8C 8096B85C 3C098097 */  lui     $t1, %hi(D_8096CE84)       ## $t1 = 80970000
/* 01D90 8096B860 00027880 */  sll     $t7, $v0,  2
/* 01D94 8096B864 030FC021 */  addu    $t8, $t8, $t7
/* 01D98 8096B868 8F18CE74 */  lw      $t8, %lo(D_8096CE74)($t8)
/* 01D9C 8096B86C 3C068097 */  lui     $a2, %hi(D_8096CFD0)       ## $a2 = 80970000
/* 01DA0 8096B870 24C6CFD0 */  addiu   $a2, $a2, %lo(D_8096CFD0)  ## $a2 = 8096CFD0
/* 01DA4 8096B874 AFB80070 */  sw      $t8, 0x0070($sp)
/* 01DA8 8096B878 84830194 */  lh      $v1, 0x0194($a0)           ## 00000194
/* 01DAC 8096B87C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFCC
/* 01DB0 8096B880 24070113 */  addiu   $a3, $zero, 0x0113         ## $a3 = 00000113
/* 01DB4 8096B884 0003C880 */  sll     $t9, $v1,  2
/* 01DB8 8096B888 01394821 */  addu    $t1, $t1, $t9
/* 01DBC 8096B88C 8D29CE84 */  lw      $t1, %lo(D_8096CE84)($t1)
/* 01DC0 8096B890 AFA90064 */  sw      $t1, 0x0064($sp)
/* 01DC4 8096B894 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01DC8 8096B898 0C031AB1 */  jal     Graph_OpenDisps
/* 01DCC 8096B89C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01DD0 8096B8A0 8FAB0084 */  lw      $t3, 0x0084($sp)
/* 01DD4 8096B8A4 0C024F61 */  jal     func_80093D84
/* 01DD8 8096B8A8 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01DDC 8096B8AC 8FA40070 */  lw      $a0, 0x0070($sp)
/* 01DE0 8096B8B0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01DE4 8096B8B4 3C058016 */  lui     $a1, %hi(gSegments)
/* 01DE8 8096B8B8 00047900 */  sll     $t7, $a0,  4
/* 01DEC 8096B8BC 000FC702 */  srl     $t8, $t7, 28
/* 01DF0 8096B8C0 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01DF4 8096B8C4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01DF8 8096B8C8 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 01DFC 8096B8CC 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 01E00 8096B8D0 00187080 */  sll     $t6, $t8,  2
/* 01E04 8096B8D4 24A56FA8 */  addiu   $a1, %lo(gSegments)
/* 01E08 8096B8D8 00AEC821 */  addu    $t9, $a1, $t6
/* 01E0C 8096B8DC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01E10 8096B8E0 8F290000 */  lw      $t1, 0x0000($t9)           ## 00000000
/* 01E14 8096B8E4 3C0600FF */  lui     $a2, 0x00FF                ## $a2 = 00FF0000
/* 01E18 8096B8E8 34C6FFFF */  ori     $a2, $a2, 0xFFFF           ## $a2 = 00FFFFFF
/* 01E1C 8096B8EC 00865024 */  and     $t2, $a0, $a2
/* 01E20 8096B8F0 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01E24 8096B8F4 012A5821 */  addu    $t3, $t1, $t2
/* 01E28 8096B8F8 01676021 */  addu    $t4, $t3, $a3
/* 01E2C 8096B8FC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01E30 8096B900 8FA40064 */  lw      $a0, 0x0064($sp)
/* 01E34 8096B904 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E38 8096B908 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 01E3C 8096B90C 0004C100 */  sll     $t8, $a0,  4
/* 01E40 8096B910 00187702 */  srl     $t6, $t8, 28
/* 01E44 8096B914 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01E48 8096B918 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01E4C 8096B91C 000EC880 */  sll     $t9, $t6,  2
/* 01E50 8096B920 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 01E54 8096B924 00B94821 */  addu    $t1, $a1, $t9
/* 01E58 8096B928 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01E5C 8096B92C 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 01E60 8096B930 00865824 */  and     $t3, $a0, $a2
/* 01E64 8096B934 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01E68 8096B938 014B6021 */  addu    $t4, $t2, $t3
/* 01E6C 8096B93C 01876821 */  addu    $t5, $t4, $a3
/* 01E70 8096B940 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 01E74 8096B944 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E78 8096B948 24847FC0 */  addiu   $a0, $a0, 0x7FC0           ## $a0 = 06007FC0
/* 01E7C 8096B94C 00047100 */  sll     $t6, $a0,  4
/* 01E80 8096B950 000ECF02 */  srl     $t9, $t6, 28
/* 01E84 8096B954 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01E88 8096B958 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E8C 8096B95C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 01E90 8096B960 37180028 */  ori     $t8, $t8, 0x0028           ## $t8 = DB060028
/* 01E94 8096B964 00194880 */  sll     $t1, $t9,  2
/* 01E98 8096B968 00A95021 */  addu    $t2, $a1, $t1
/* 01E9C 8096B96C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01EA0 8096B970 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 01EA4 8096B974 00866024 */  and     $t4, $a0, $a2
/* 01EA8 8096B978 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 01EAC 8096B97C 016C6821 */  addu    $t5, $t3, $t4
/* 01EB0 8096B980 01A77821 */  addu    $t7, $t5, $a3
/* 01EB4 8096B984 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01EB8 8096B988 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01EBC 8096B98C 8FA80080 */  lw      $t0, 0x0080($sp)
/* 01EC0 8096B990 3C0C8011 */  lui     $t4, %hi(D_80116280)
/* 01EC4 8096B994 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01EC8 8096B998 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01ECC 8096B99C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01ED0 8096B9A0 8D1901A8 */  lw      $t9, 0x01A8($t0)           ## 000001A8
/* 01ED4 8096B9A4 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01ED8 8096B9A8 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 01EDC 8096B9AC 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 01EE0 8096B9B0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01EE4 8096B9B4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01EE8 8096B9B8 258C6280 */  addiu   $t4, %lo(D_80116280)
/* 01EEC 8096B9BC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01EF0 8096B9C0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 01EF4 8096B9C4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01EF8 8096B9C8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01EFC 8096B9CC 2502014C */  addiu   $v0, $t0, 0x014C           ## $v0 = 0000014C
/* 01F00 8096B9D0 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 01F04 8096B9D4 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 01F08 8096B9D8 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 01F0C 8096B9DC AFA00018 */  sw      $zero, 0x0018($sp)
/* 01F10 8096B9E0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01F14 8096B9E4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01F18 8096B9E8 8E0D02D0 */  lw      $t5, 0x02D0($s0)           ## 000002D0
/* 01F1C 8096B9EC 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01F20 8096B9F0 0C0289CF */  jal     SkelAnime_DrawFlex2
/* 01F24 8096B9F4 AFAD001C */  sw      $t5, 0x001C($sp)
/* 01F28 8096B9F8 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 01F2C 8096B9FC 8FAF0084 */  lw      $t7, 0x0084($sp)
/* 01F30 8096BA00 3C068097 */  lui     $a2, %hi(D_8096CFF4)       ## $a2 = 80970000
/* 01F34 8096BA04 24C6CFF4 */  addiu   $a2, $a2, %lo(D_8096CFF4)  ## $a2 = 8096CFF4
/* 01F38 8096BA08 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFCC
/* 01F3C 8096BA0C 24070130 */  addiu   $a3, $zero, 0x0130         ## $a3 = 00000130
/* 01F40 8096BA10 0C031AD5 */  jal     Graph_CloseDisps
/* 01F44 8096BA14 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01F48 8096BA18 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01F4C 8096BA1C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01F50 8096BA20 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 01F54 8096BA24 03E00008 */  jr      $ra
/* 01F58 8096BA28 00000000 */  nop
