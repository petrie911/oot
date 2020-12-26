glabel func_80989B54
/* 00CD4 80989B54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CD8 80989B58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CDC 80989B5C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00CE0 80989B60 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00CE4 80989B64 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00CE8 80989B68 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 00CEC 80989B6C 00063400 */  sll     $a2, $a2, 16               
/* 00CF0 80989B70 24010043 */  addiu   $at, $zero, 0x0043         ## $at = 00000043
/* 00CF4 80989B74 00063403 */  sra     $a2, $a2, 16               
/* 00CF8 80989B78 10410022 */  beq     $v0, $at, .L80989C04       
/* 00CFC 80989B7C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00D00 80989B80 24010047 */  addiu   $at, $zero, 0x0047         ## $at = 00000047
/* 00D04 80989B84 10410007 */  beq     $v0, $at, .L80989BA4       
/* 00D08 80989B88 24010051 */  addiu   $at, $zero, 0x0051         ## $at = 00000051
/* 00D0C 80989B8C 10410039 */  beq     $v0, $at, .L80989C74       
/* 00D10 80989B90 00067080 */  sll     $t6, $a2,  2               
/* 00D14 80989B94 01C67021 */  addu    $t6, $t6, $a2              
/* 00D18 80989B98 000E70C0 */  sll     $t6, $t6,  3               
/* 00D1C 80989B9C 1000004E */  beq     $zero, $zero, .L80989CD8   
/* 00D20 80989BA0 008E8021 */  addu    $s0, $a0, $t6              
.L80989BA4:
/* 00D24 80989BA4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00D28 80989BA8 A7A6002A */  sh      $a2, 0x002A($sp)           
/* 00D2C 80989BAC 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00D30 80989BB0 44811000 */  mtc1    $at, $f2                   ## $f2 = 500.00
/* 00D34 80989BB4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00D38 80989BB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00D3C 80989BBC 87A6002A */  lh      $a2, 0x002A($sp)           
/* 00D40 80989BC0 46040181 */  sub.s   $f6, $f0, $f4              
/* 00D44 80989BC4 00067880 */  sll     $t7, $a2,  2               
/* 00D48 80989BC8 01E67821 */  addu    $t7, $t7, $a2              
/* 00D4C 80989BCC 000F78C0 */  sll     $t7, $t7,  3               
/* 00D50 80989BD0 46023202 */  mul.s   $f8, $f6, $f2              
/* 00D54 80989BD4 022F8021 */  addu    $s0, $s1, $t7              
/* 00D58 80989BD8 E6020154 */  swc1    $f2, 0x0154($s0)           ## 00000154
/* 00D5C 80989BDC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00D60 80989BE0 E6080150 */  swc1    $f8, 0x0150($s0)           ## 00000150
/* 00D64 80989BE4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00D68 80989BE8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00D6C 80989BEC 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00D70 80989BF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 500.00
/* 00D74 80989BF4 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00D78 80989BF8 46128102 */  mul.s   $f4, $f16, $f18            
/* 00D7C 80989BFC 10000036 */  beq     $zero, $zero, .L80989CD8   
/* 00D80 80989C00 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
.L80989C04:
/* 00D84 80989C04 0006C080 */  sll     $t8, $a2,  2               
/* 00D88 80989C08 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D8C 80989C0C 0306C021 */  addu    $t8, $t8, $a2              
/* 00D90 80989C10 0018C0C0 */  sll     $t8, $t8,  3               
/* 00D94 80989C14 02388021 */  addu    $s0, $s1, $t8              
/* 00D98 80989C18 E600015C */  swc1    $f0, 0x015C($s0)           ## 0000015C
/* 00D9C 80989C1C E6000160 */  swc1    $f0, 0x0160($s0)           ## 00000160
/* 00DA0 80989C20 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00DA4 80989C24 E6000164 */  swc1    $f0, 0x0164($s0)           ## 00000164
/* 00DA8 80989C28 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00DAC 80989C2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00DB0 80989C30 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00DB4 80989C34 44815000 */  mtc1    $at, $f10                  ## $f10 = 180.00
/* 00DB8 80989C38 46060201 */  sub.s   $f8, $f0, $f6              
/* 00DBC 80989C3C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00DC0 80989C40 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 00DC4 80989C44 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00DC8 80989C48 E6120154 */  swc1    $f18, 0x0154($s0)          ## 00000154
/* 00DCC 80989C4C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00DD0 80989C50 E6100150 */  swc1    $f16, 0x0150($s0)          ## 00000150
/* 00DD4 80989C54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00DD8 80989C58 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00DDC 80989C5C 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00DE0 80989C60 44814000 */  mtc1    $at, $f8                   ## $f8 = 180.00
/* 00DE4 80989C64 46040181 */  sub.s   $f6, $f0, $f4              
/* 00DE8 80989C68 46083282 */  mul.s   $f10, $f6, $f8             
/* 00DEC 80989C6C 1000001A */  beq     $zero, $zero, .L80989CD8   
/* 00DF0 80989C70 E60A0158 */  swc1    $f10, 0x0158($s0)          ## 00000158
.L80989C74:
/* 00DF4 80989C74 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00DF8 80989C78 A7A6002A */  sh      $a2, 0x002A($sp)           
/* 00DFC 80989C7C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E00 80989C80 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00E04 80989C84 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00E08 80989C88 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 00E0C 80989C8C 46100481 */  sub.s   $f18, $f0, $f16            
/* 00E10 80989C90 87A6002A */  lh      $a2, 0x002A($sp)           
/* 00E14 80989C94 3C01C3FA */  lui     $at, 0xC3FA                ## $at = C3FA0000
/* 00E18 80989C98 44814000 */  mtc1    $at, $f8                   ## $f8 = -500.00
/* 00E1C 80989C9C 46049182 */  mul.s   $f6, $f18, $f4             
/* 00E20 80989CA0 0006C880 */  sll     $t9, $a2,  2               
/* 00E24 80989CA4 0326C821 */  addu    $t9, $t9, $a2              
/* 00E28 80989CA8 0019C8C0 */  sll     $t9, $t9,  3               
/* 00E2C 80989CAC 02398021 */  addu    $s0, $s1, $t9              
/* 00E30 80989CB0 E6080154 */  swc1    $f8, 0x0154($s0)           ## 00000154
/* 00E34 80989CB4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E38 80989CB8 E6060150 */  swc1    $f6, 0x0150($s0)           ## 00000150
/* 00E3C 80989CBC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E40 80989CC0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00E44 80989CC4 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00E48 80989CC8 44819000 */  mtc1    $at, $f18                  ## $f18 = 600.00
/* 00E4C 80989CCC 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00E50 80989CD0 46128102 */  mul.s   $f4, $f16, $f18            
/* 00E54 80989CD4 E6040158 */  swc1    $f4, 0x0158($s0)           ## 00000158
.L80989CD8:
/* 00E58 80989CD8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E5C 80989CDC 00000000 */  nop
/* 00E60 80989CE0 3C088099 */  lui     $t0, %hi(D_8098CF80)       ## $t0 = 80990000
/* 00E64 80989CE4 8508CF80 */  lh      $t0, %lo(D_8098CF80)($t0)  
/* 00E68 80989CE8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00E6C 80989CEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 00E70 80989CF0 44883000 */  mtc1    $t0, $f6                   ## $f6 = -0.00
/* 00E74 80989CF4 00000000 */  nop
/* 00E78 80989CF8 468030A0 */  cvt.s.w $f2, $f6                   
/* 00E7C 80989CFC 46081282 */  mul.s   $f10, $f2, $f8             
/* 00E80 80989D00 00000000 */  nop
/* 00E84 80989D04 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00E88 80989D08 46028480 */  add.s   $f18, $f16, $f2            
/* 00E8C 80989D0C E6120168 */  swc1    $f18, 0x0168($s0)          ## 00000168
/* 00E90 80989D10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E94 80989D14 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00E98 80989D18 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00E9C 80989D1C 03E00008 */  jr      $ra                        
/* 00EA0 80989D20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
