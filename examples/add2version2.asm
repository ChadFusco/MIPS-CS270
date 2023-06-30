# add2version2.asm-- A program that computes the sum of 1 and 2, 
# leaving the result in register $t3. 
# Registers used: 
# t1 - used to hold the constant 1. 
# t2 - used to hold the constant 2.
# t3 - used to hold the result 

li $t1, 0               # load 0 into $t1. 
li $t2, 0               # load 0 into $t2.
addi $t1, $t1, 1        # $t1 = $t1 + 1 ($t1++)
addi $t2, $t1, 1        # $t2 = $t1 + 1 ($t2 = 2)
add  $t3, $t2, $t1      # $t3 = $t1 + $t2 ($t3 = 3)
li $v0, 10              # syscall code 10 is for exit. # put 10 into $v0.
syscall                 # make the syscall.
# end of add2version2.asm