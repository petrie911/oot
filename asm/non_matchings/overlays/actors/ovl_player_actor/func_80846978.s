glabel func_80846978
/* 14768 80846978 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 1476C 8084697C 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 14770 80846980 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 14774 80846984 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 14778 80846988 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 1477C 8084698C 84AE00B6 */  lh      $t6, 0x00B6($a1)           ## 000000B6
/* 14780 80846990 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 14784 80846994 44070000 */  mfc1    $a3, $f0                   
/* 14788 80846998 01C17821 */  addu    $t7, $t6, $at              
/* 1478C 8084699C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 14790 808469A0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 14794 808469A4 0C20DF03 */  jal     func_80837C0C              
/* 14798 808469A8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1479C 808469AC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 147A0 808469B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 147A4 808469B4 03E00008 */  jr      $ra                        
/* 147A8 808469B8 00000000 */  nop

