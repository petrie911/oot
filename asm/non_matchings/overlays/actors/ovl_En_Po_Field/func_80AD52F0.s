glabel func_80AD52F0
/* 017F0 80AD52F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017F4 80AD52F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017F8 80AD52F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 017FC 80AD52FC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01800 80AD5300 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01804 80AD5304 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01808 80AD5308 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0180C 80AD530C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01810 80AD5310 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
/* 01814 80AD5314 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01818 80AD5318 10400003 */  beq     $v0, $zero, .L80AD5328     
/* 0181C 80AD531C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01820 80AD5320 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 01824 80AD5324 84C20196 */  lh      $v0, 0x0196($a2)           ## 00000196
.L80AD5328:
/* 01828 80AD5328 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0182C 80AD532C 3C01417F */  lui     $at, 0x417F                ## $at = 417F0000
/* 01830 80AD5330 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.94
/* 01834 80AD5334 468021A0 */  cvt.s.w $f6, $f4                   
/* 01838 80AD5338 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0183C 80AD533C 84CF00B6 */  lh      $t7, 0x00B6($a2)           ## 000000B6
/* 01840 80AD5340 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01844 80AD5344 25F81000 */  addiu   $t8, $t7, 0x1000           ## $t8 = 00001000
/* 01848 80AD5348 46083282 */  mul.s   $f10, $f6, $f8             
/* 0184C 80AD534C A4D800B6 */  sh      $t8, 0x00B6($a2)           ## 000000B6
/* 01850 80AD5350 4459F800 */  cfc1    $t9, $31
/* 01854 80AD5354 44C8F800 */  ctc1    $t0, $31
/* 01858 80AD5358 00000000 */  nop
/* 0185C 80AD535C 46005424 */  cvt.w.s $f16, $f10                 
/* 01860 80AD5360 4448F800 */  cfc1    $t0, $31
/* 01864 80AD5364 00000000 */  nop
/* 01868 80AD5368 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 0186C 80AD536C 51000013 */  beql    $t0, $zero, .L80AD53BC     
/* 01870 80AD5370 44088000 */  mfc1    $t0, $f16                  
/* 01874 80AD5374 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 01878 80AD5378 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0187C 80AD537C 46105401 */  sub.s   $f16, $f10, $f16           
/* 01880 80AD5380 44C8F800 */  ctc1    $t0, $31
/* 01884 80AD5384 00000000 */  nop
/* 01888 80AD5388 46008424 */  cvt.w.s $f16, $f16                 
/* 0188C 80AD538C 4448F800 */  cfc1    $t0, $31
/* 01890 80AD5390 00000000 */  nop
/* 01894 80AD5394 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 01898 80AD5398 15000005 */  bne     $t0, $zero, .L80AD53B0     
/* 0189C 80AD539C 00000000 */  nop
/* 018A0 80AD53A0 44088000 */  mfc1    $t0, $f16                  
/* 018A4 80AD53A4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 018A8 80AD53A8 10000007 */  beq     $zero, $zero, .L80AD53C8   
/* 018AC 80AD53AC 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80AD53B0:
/* 018B0 80AD53B0 10000005 */  beq     $zero, $zero, .L80AD53C8   
/* 018B4 80AD53B4 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 018B8 80AD53B8 44088000 */  mfc1    $t0, $f16                  
.L80AD53BC:
/* 018BC 80AD53BC 00000000 */  nop
/* 018C0 80AD53C0 0500FFFB */  bltz    $t0, .L80AD53B0            
/* 018C4 80AD53C4 00000000 */  nop
.L80AD53C8:
/* 018C8 80AD53C8 44D9F800 */  ctc1    $t9, $31
/* 018CC 80AD53CC A0C80217 */  sb      $t0, 0x0217($a2)           ## 00000217
/* 018D0 80AD53D0 14400003 */  bne     $v0, $zero, .L80AD53E0     
/* 018D4 80AD53D4 A0C800C8 */  sb      $t0, 0x00C8($a2)           ## 000000C8
/* 018D8 80AD53D8 0C2B4F5A */  jal     func_80AD3D68              
/* 018DC 80AD53DC 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AD53E0:
/* 018E0 80AD53E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018E4 80AD53E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018E8 80AD53E8 03E00008 */  jr      $ra                        
/* 018EC 80AD53EC 00000000 */  nop

