glabel func_80B99F40
/* 00000 80B99F40 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80B99F44 AFB50034 */  sw      $s5, 0x0034($sp)           
/* 00008 80B99F48 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 0000C 80B99F4C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00010 80B99F50 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00014 80B99F54 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00018 80B99F58 24B50024 */  addiu   $s5, $a1, 0x0024           ## $s5 = 00000024
/* 0001C 80B99F5C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00020 80B99F60 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 00024 80B99F64 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 00028 80B99F68 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 0002C 80B99F6C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00030 80B99F70 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00034 80B99F74 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00038 80B99F78 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000024
/* 0003C 80B99F7C 868E001C */  lh      $t6, 0x001C($s4)           ## 0000001C
/* 00040 80B99F80 3C1680BA */  lui     $s6, %hi(D_80B9A818)       ## $s6 = 80BA0000
/* 00044 80B99F84 26D6A818 */  addiu   $s6, $s6, %lo(D_80B9A818)  ## $s6 = 80B9A818
/* 00048 80B99F88 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 0004C 80B99F8C 000FC040 */  sll     $t8, $t7,  1               
/* 00050 80B99F90 02D8C821 */  addu    $t9, $s6, $t8              
/* 00054 80B99F94 87280000 */  lh      $t0, 0x0000($t9)           ## 00000000
/* 00058 80B99F98 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 0005C 80B99F9C 2650000C */  addiu   $s0, $s2, 0x000C           ## $s0 = 0000000C
/* 00060 80B99FA0 29010002 */  slti    $at, $t0, 0x0002           
/* 00064 80B99FA4 14200021 */  bne     $at, $zero, .L80B9A02C     
/* 00068 80B99FA8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0006C 80B99FAC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 80.00
/* 00070 80B99FB0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00074 80B99FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000000C
.L80B99FB8:
/* 00078 80B99FB8 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0007C 80B99FBC 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000024
/* 00080 80B99FC0 00119400 */  sll     $s2, $s1, 16               
/* 00084 80B99FC4 00129403 */  sra     $s2, $s2, 16               
/* 00088 80B99FC8 00122400 */  sll     $a0, $s2, 16               
/* 0008C 80B99FCC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00090 80B99FD0 00042403 */  sra     $a0, $a0, 16               
/* 00094 80B99FD4 4600A182 */  mul.s   $f6, $f20, $f0             
/* 00098 80B99FD8 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 0000000C
/* 0009C 80B99FDC 00122400 */  sll     $a0, $s2, 16               
/* 000A0 80B99FE0 00042403 */  sra     $a0, $a0, 16               
/* 000A4 80B99FE4 46062200 */  add.s   $f8, $f4, $f6              
/* 000A8 80B99FE8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 000AC 80B99FEC E6080000 */  swc1    $f8, 0x0000($s0)           ## 0000000C
/* 000B0 80B99FF0 4600A402 */  mul.s   $f16, $f20, $f0            
/* 000B4 80B99FF4 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000014
/* 000B8 80B99FF8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
/* 000BC 80B99FFC 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 00000018
/* 000C0 80B9A000 26312000 */  addiu   $s1, $s1, 0x2000           ## $s1 = 00002000
/* 000C4 80B9A004 46105480 */  add.s   $f18, $f10, $f16           
/* 000C8 80B9A008 E612FFFC */  swc1    $f18, -0x0004($s0)         ## 00000014
/* 000CC 80B9A00C 8689001C */  lh      $t1, 0x001C($s4)           ## 0000001C
/* 000D0 80B9A010 312A0003 */  andi    $t2, $t1, 0x0003           ## $t2 = 00000000
/* 000D4 80B9A014 000A5840 */  sll     $t3, $t2,  1               
/* 000D8 80B9A018 02CB6021 */  addu    $t4, $s6, $t3              
/* 000DC 80B9A01C 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 000E0 80B9A020 026D082A */  slt     $at, $s3, $t5              
/* 000E4 80B9A024 5420FFE4 */  bnel    $at, $zero, .L80B99FB8     
/* 000E8 80B9A028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000018
.L80B9A02C:
/* 000EC 80B9A02C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 000F0 80B9A030 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 000F4 80B9A034 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 000F8 80B9A038 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 000FC 80B9A03C 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00100 80B9A040 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00104 80B9A044 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00108 80B9A048 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 0010C 80B9A04C 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 00110 80B9A050 03E00008 */  jr      $ra                        
/* 00114 80B9A054 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
