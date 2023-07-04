# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Using this label:
# a:  .word 5
# Write a program which uses branching instructions to perform the following high level language if...else if... else conditional logic:

# if the value for the label a is less than 0
#       assign the value of -1 to the register $t0
# else if the value for the label a is equal to 0
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