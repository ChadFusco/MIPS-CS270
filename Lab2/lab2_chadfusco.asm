# Write comments in your program that state your name, the programming logic, and any assembly language instruction line level details you feel you'd like to explain how you are using the assembly language instructions to perform the calculation of the sum.

# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# Write a program that finds the sum of the following integer values:  2, 4, 9, 16, 25, 36, 49, 64, 81, 100
# Each integer value should be stored with its own label.
# Calculate the sum by accessing each of the labels, adding the integer value of each label, and storing the sum of the integers in the register $t0.

.data
	n2: .word 2
	n4: .word 4
	n9: .word 9
	n16: .word 16
	n25: .word 25
	n36: .word 36
	n49: .word 49
	n64: .word 64
	n81: .word 81
	n100: .word 100
	
.globl main

.text
	main:
		lw $t1, n2
		add $t0, $zero, $t1
		lw $t1, n4
		add $t0, $t0, $t1
		lw $t1, n9
		add $t0, $t0, $t1
		lw $t1, n16
		add $t0, $t0, $t1
		lw $t1, n25
		add $t0, $t0, $t1
		lw $t1, n36
		add $t0, $t0, $t1
		lw $t1, n49
		add $t0, $t0, $t1
		lw $t1, n64
		add $t0, $t0, $t1
		lw $t1, n81
		add $t0, $t0, $t1
		lw $t1, n100
		add $t0, $t0, $t1
		
		li $v0, 10
		syscall
