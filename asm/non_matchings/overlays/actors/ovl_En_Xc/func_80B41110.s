glabel func_80B41110
/* 04F30 80B41110 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04F34 80B41114 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04F38 80B41118 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04F3C 80B4111C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04F40 80B41120 0C2CF12C */  jal     func_80B3C4B0              
/* 04F44 80B41124 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04F48 80B41128 0C2CF0C7 */  jal     func_80B3C31C              
/* 04F4C 80B4112C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F50 80B41130 0C2D016A */  jal     func_80B405A8              
/* 04F54 80B41134 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F58 80B41138 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F5C 80B4113C 0C2D03AB */  jal     func_80B40EAC              
/* 04F60 80B41140 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F64 80B41144 14400006 */  bne     $v0, $zero, .L80B41160     
/* 04F68 80B41148 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F6C 80B4114C 0C2CF233 */  jal     func_80B3C8CC              
/* 04F70 80B41150 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04F74 80B41154 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F78 80B41158 0C2CF11A */  jal     func_80B3C468              
/* 04F7C 80B4115C 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B41160:
/* 04F80 80B41160 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04F84 80B41164 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04F88 80B41168 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04F8C 80B4116C 03E00008 */  jr      $ra                        
/* 04F90 80B41170 00000000 */  nop

