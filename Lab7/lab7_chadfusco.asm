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

    reverse5:
        # Save initial location of stack pointer for loop exit condition later on:
        move $t0, $sp
        # $s0 need not be saved because it's not used by this function
        lw $t1, 0($sp) # Load the 5th argument "Y" from 
        # reserve5 is a leaf function. Therefore, no stack space needs to be allocated for return address or arguments.
        addi $sp, $sp, -20
        sw $a0, 16($sp)
        sw $a1, 12($sp)
        sw $a2, 8($sp)
        sw $a3, 4($sp)
        sw $t1, 0($sp)

        loop:
            # load and print the char at the "top" of the stack:
            lw $a0, ($sp)
            li $v0, 11
            syscall
            # pop char off "top" of the stack:
            addu $sp, $sp, 4
            # if $a0 equal to first char, then end function:
            beq $sp, $t0, return
            j loop

        return:
            jr $ra
