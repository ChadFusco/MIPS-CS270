# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Write a program that has a two functions -- a function named main, and another function named add4. 

# main is the first function executed in the program.  main is used to load 4 integer values into registers $t0, $t1, $t2, and $t3.  The integer values may be any four 32-bit values you wish and may be loaded by using immediate mode. 

# add4 is used to add 4 integer parameters together, and places the parameter's sum in the register $v0.

# Inside main you are to call add4.  main is to pass the 4 integer values in $t0, $t1, $t2, and $t3 as parameters to the function add4.   After the sum calculated by add4 is placed in register $v0, add4 is to return to main.  Once main is returned to, the value add4 placed in register $v0 should be copied into register $s1.

.data
	tenints:  .word 3, 17, 12, 9, 36, 102, 81, 500, -1, 9
	
.globl main

.text
	main:
        li $v0, 10
        syscall