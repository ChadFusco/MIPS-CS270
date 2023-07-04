# This program performs the following if statement:
# if (num < 0) 
# {
#   num = - num;
# }

.data
num: .word -18

.text
lw   $t0, num
bgez $t0, endif0
sub  $t0,$zero,$t0   # 0 - num
sw   $t0, num
endif0:
 #  num is now guaranteed to be greater than or equal to 0
