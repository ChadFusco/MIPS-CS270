# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Make an array of word values that has 10 total elements.  The array should be made using the label a.
# The elements should be these integer values:    5, 6, 7, 10, 14, 17, 21, 22, 25, 36
# After the array a is made, access the first element of a and store the array’s first value in the register $t0.
# Then access the last element of a and store the array’s last value in the register $t1.

.data
	a: .word 5, 6, 7, 10, 14, 17, 21, 22, 25, 36
	
.globl main

.text
	main:
		la $t2, a # Pointer is created. Points to memory address of first element in array "a"
		lw $t0, 0($t2) # $t0 = a[0]
		lw $t1, 36($t2) # $t1 = a[9]
		
		li $v0, 10
		syscall
