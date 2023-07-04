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
	tenints:  .word 3, 17, 12, 9, 36, 102, 81, 500, -1, 9
	
.globl main

.text
	main:
        la $t0, tenints # load the address of tenints into $t0
        li $t1, 0 # initialize i to 0
        li $t2, 0 # initialize sum to 0
    loop:
        sll $t3, $t1, 2 # $t3 is the array index pointer
        addu $t3, $t3, $t0 # point pointer to address of current array element
        lw $t3, 0($t3) # load current array element into $t3
        addu $t2, $t2, $t3 # add to sum
        addiu $t1, $t1, 1 # increment index
        slti $t3, $t1, 10 # test if i < 10
        bne $t3, $zero, loop # continue looping if i < 10
    compare:
        li $t1, 767
        slt $t0, $t1, $t2 # $t0 = 767 < sum ? 1 : 0
        bge $t2, $t1, notNegative # go to notNegative if sum >= 767
        addi $t0, $zero, -1
    notNegative:
        li $v0, 10
        syscall