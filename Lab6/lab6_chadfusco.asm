# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Write a program that has a two functions -- a function named main, and another function named add4. 

# main is the first function executed in the program.  main is used to load 4 integer values into registers $t0, $t1, $t2, and $t3.  The integer values may be any four 32-bit values you wish and may be loaded by using immediate mode. 

# add4 is used to add 4 integer parameters together, and places the parameter's sum in the register $v0.

# Inside main you are to call add4.  main is to pass the 4 integer values in $t0, $t1, $t2, and $t3 as parameters to the function add4.   After the sum calculated by add4 is placed in register $v0, add4 is to return to main.  Once main is returned to, the value add4 placed in register $v0 should be copied into register $s1.
	
.globl main

.text
	main:
        li $t0, 10
        li $t1, 11
        li $t2, 12
        li $t3, 13

        # set up arguments to add4 function
        move $a0, $t0
        move $a1, $t1
        move $a2, $t2
        move $a3, $t3

        # save temporaries on stack
        # because main is the program's entry point, there is no value in $ra to be saved, so no space needs to be allocated for it on the stack prior to calling add4
        addi $sp, $sp, -16
        sw $t0, 12($sp)
        sw $t1, 8($sp)
        sw $t2, 4($sp)
        sw $t3, 0($sp)

        jal add4

        # We no longer need the temporaries on the stack, so we just restore the stack pointer back to its original state
        addi $sp, $sp, 16

        move $s1, $v0 # $s1 should be 46

        li $v0, 10
        syscall
    add4:
        # add4 is a leaf function. Therefore, no stack space needs to be allocated for return address or arguments. Furthermore, no t-registers or s-registers are used, so add4 doesn't need to save anything on the stack.
        add $v0, $a0, $a1
        add $v0, $v0, $a2
        add $v0, $v0, $a3
        jr $ra
