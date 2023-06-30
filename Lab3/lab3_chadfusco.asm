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

	
.globl main

.text
	main:

		
		li $v0, 10
		syscall
