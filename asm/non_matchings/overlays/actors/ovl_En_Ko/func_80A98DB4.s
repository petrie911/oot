glabel func_80A98DB4
/* 02004 80A98DB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02008 80A98DB8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0200C 80A98DBC AFB00020 */  sw      $s0, 0x0020($sp)
/* 02010 80A98DC0 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 02014 80A98DC4 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 02018 80A98DC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0201C 80A98DCC 10410007 */  beq     $v0, $at, .L80A98DEC
/* 02020 80A98DD0 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 02024 80A98DD4 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 02028 80A98DD8 10410004 */  beq     $v0, $at, .L80A98DEC
/* 0202C 80A98DDC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 02030 80A98DE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 02034 80A98DE4 10000034 */  beq     $zero, $zero, .L80A98EB8
/* 02038 80A98DE8 E4840220 */  swc1    $f4, 0x0220($a0)           ## 00000220
.L80A98DEC:
/* 0203C 80A98DEC 90CE1D6C */  lbu     $t6, 0x1D6C($a2)           ## 00001D6C
/* 02040 80A98DF0 3C0F8012 */  lui     $t7, %hi(gDbgCamEnabled)
/* 02044 80A98DF4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02048 80A98DF8 15C00004 */  bne     $t6, $zero, .L80A98E0C
/* 0204C 80A98DFC 00000000 */  nop
/* 02050 80A98E00 8DEFD394 */  lw      $t7, %lo(gDbgCamEnabled)($t7)
/* 02054 80A98E04 51E0000A */  beql    $t7, $zero, .L80A98E30
/* 02058 80A98E08 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
.L80A98E0C:
/* 0205C 80A98E0C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ

/* 02060 80A98E10 24C500E0 */  addiu   $a1, $a2, 0x00E0           ## $a1 = 000000E0
/* 02064 80A98E14 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 02068 80A98E18 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 0206C 80A98E1C 00000000 */  nop
/* 02070 80A98E20 46060082 */  mul.s   $f2, $f0, $f6
/* 02074 80A98E24 10000003 */  beq     $zero, $zero, .L80A98E34
/* 02078 80A98E28 C6080218 */  lwc1    $f8, 0x0218($s0)           ## 00000218
/* 0207C 80A98E2C C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
.L80A98E30:
/* 02080 80A98E30 C6080218 */  lwc1    $f8, 0x0218($s0)           ## 00000218
.L80A98E34:
/* 02084 80A98E34 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 02088 80A98E38 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 0208C 80A98E3C 4602403C */  c.lt.s  $f8, $f2
/* 02090 80A98E40 26040220 */  addiu   $a0, $s0, 0x0220           ## $a0 = 00000220
/* 02094 80A98E44 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 02098 80A98E48 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0209C 80A98E4C 45020005 */  bc1fl   .L80A98E64
/* 020A0 80A98E50 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 020A4 80A98E54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 020A8 80A98E58 10000004 */  beq     $zero, $zero, .L80A98E6C
/* 020AC 80A98E5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 020B0 80A98E60 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
.L80A98E64:
/* 020B4 80A98E64 00000000 */  nop
/* 020B8 80A98E68 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80A98E6C:
/* 020BC 80A98E6C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 020C0 80A98E70 44050000 */  mfc1    $a1, $f0
/* 020C4 80A98E74 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 020C8 80A98E78 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 020CC 80A98E7C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 020D0 80A98E80 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 020D4 80A98E84 C6100220 */  lwc1    $f16, 0x0220($s0)          ## 00000220
/* 020D8 80A98E88 4612803C */  c.lt.s  $f16, $f18
/* 020DC 80A98E8C 00000000 */  nop
/* 020E0 80A98E90 45020007 */  bc1fl   .L80A98EB0
/* 020E4 80A98E94 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 020E8 80A98E98 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 020EC 80A98E9C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 020F0 80A98EA0 0301C824 */  and     $t9, $t8, $at
/* 020F4 80A98EA4 10000004 */  beq     $zero, $zero, .L80A98EB8
/* 020F8 80A98EA8 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 020FC 80A98EAC 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
.L80A98EB0:
/* 02100 80A98EB0 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 02104 80A98EB4 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
.L80A98EB8:
/* 02108 80A98EB8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0210C 80A98EBC 8FB00020 */  lw      $s0, 0x0020($sp)
/* 02110 80A98EC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02114 80A98EC4 03E00008 */  jr      $ra
/* 02118 80A98EC8 00000000 */  nop
