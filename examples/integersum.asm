# High level language code fragment for the C or Java code:
# 
#     for ( i = 3; i <= 100; i++) {
#         a = a + i;
#     }
# 
#  Assume that $t8 is the loop induction variable i,
#              $t9 has variable a,
#              $t1 is the constant value 100


           li   $t1, 100        # set constant
           li   $t8, 3          # initialize loop induction variable
  for:     bgt  $t8, $t1, endfor
           add  $t9, $t9, $t8
           add  $t8, $t8, 1      # increment loop induction variable
           j    for
  endfor: