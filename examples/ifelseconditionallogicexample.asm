# This program performs the following if - else conditional logic:
# if (temperature >= 25)  
# {
#   $t1 = 0
# }
# else 
# {
#   $t1 = 1
# }

.data
temperature: .word -32

.text
lw  $t0, temperature
blt $t0, 25, else25
li  $t1, 0
j   endif25
else25:
li  $t1, 1
endif25:
