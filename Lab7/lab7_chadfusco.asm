# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Write a program that takes 5 characters as parameters to a function named reverse5.

# You are to write your program with a main label that has programming logic to call reverse5. 

# You should write reverse5 to take 5 parameters.

# Use these characters in the part of the program with the main label: 

# H, A, P, P, Y

# These 5 characters are the 5 characters to pass to reverse5.  The are to be arranged so that:

# “H” is the first character parameter,
# “A” is the second character parameter.
# “P” is the third character parameter,
# “P” is the forth character parameter.
# “Y” is the fifth character parameter.

# Each parameter must be a single character.  None of the parameters are allowed to be strings.

# reverse5 should do the following:

# pushes H on the stack first
# pushes A on the stack second
# pushes P on the stack third
# pushes P on the stack forth
# pushes Y on the stack fifth (last)
# prints each character before it is popped off of the stack
# pops the characters off the stack in the reverse order that the characters are placed on the stack.  This means the characters should be printed and the stack popped in this order:
# print Y then pop
# print P then pop
# print P then pop
# print A then pop
# print H then pop for the last time
# This means when reverse5 has returned to where it was called, the printing should output the characters to display in this way:   YPPAH

.data
    char0: .ascii "H"   
    char1: .ascii "A"
    char2: .ascii "P"
    char3: .ascii "P"
    char4: .ascii "Y"

.globl main

.text
	main:
        lbu $a0, char0
        lbu $a1, char1
        lbu $a2, char2
        lbu $a3, char3
        lbu $s0, char4

        # create new stack frame
        # because main is the program's entry point, there is no value in $ra to be saved, so no space needs to be allocated for it on the stack prior to calling add4
        addi $sp, $sp, -4
        sw $s0, 0($sp)

        jal reverse5

        # We no longer need the temporaries on the stack, so we just restore the stack pointer back to its original state
        addi $sp, $sp, 4

        li $v0, 10
        syscall
    add4:
        # add4 is a leaf function. Therefore, no stack space needs to be allocated for return address or arguments. Furthermore, no t-registers or s-registers are used, so add4 doesn't need to save anything on the stack.
        add $v0, $a0, $a1
        add $v0, $v0, $a2
        add $v0, $v0, $a3
        jr $ra
