# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Using this array:
# tenints:  .word 3, 17, 12, 9, 36, 102, 81, 500, -1, 9
# Write a program which uses an assembly language loop to add all the array element values, and examine how the sum of all the array element values is compares to the value 767.  Do this by using the loop to add each array element value into a register you choose to hold the sum, and then check to how the sum in that register compares to the value 767.  

# Include programming logic that implements the following conditional logic: 
# if the register holding the array sum is less than 767
#       assign the value of -1 to the register $t0
# else if the register holding the array sum is equal to 767
#       assign the value of 0 to the register $t0
# else
#       assign the value of 1 to the register $t0

.data
	a: .word 5
	
.globl main

.text
	main:
    lw $t1, a
    slt $t0, $zero, $t1 # $t0 = 0 < a ? 1 : 0
    bge $t1, $zero, notNegative # go to notNegative if a >= 0
    addi $t0, $zero, -1
    notNegative:
    li $v0, 10
    syscall