glabel func_80981C94
/* 04624 80981C94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04628 80981C98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0462C 80981C9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 04630 80981CA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 04634 80981CA4 C4840050 */  lwc1    $f4, 0x0050($a0)           ## 00000050
/* 04638 80981CA8 C4880054 */  lwc1    $f8, 0x0054($a0)           ## 00000054
/* 0463C 80981CAC C4900058 */  lwc1    $f16, 0x0058($a0)          ## 00000058
/* 04640 80981CB0 46002182 */  mul.s   $f6, $f4, $f0              
/* 04644 80981CB4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 04648 80981CB8 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 0464C 80981CBC 46004282 */  mul.s   $f10, $f8, $f0             
/* 04650 80981CC0 00000000 */  nop
/* 04654 80981CC4 46008482 */  mul.s   $f18, $f16, $f0            
/* 04658 80981CC8 E4860050 */  swc1    $f6, 0x0050($a0)           ## 00000050
/* 0465C 80981CCC E48A0054 */  swc1    $f10, 0x0054($a0)          ## 00000054
/* 04660 80981CD0 E4920058 */  swc1    $f18, 0x0058($a0)          ## 00000058
/* 04664 80981CD4 0C25FB91 */  jal     func_8097EE44              
/* 04668 80981CD8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0466C 80981CDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04670 80981CE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04674 80981CE4 03E00008 */  jr      $ra                        
/* 04678 80981CE8 00000000 */  nop

