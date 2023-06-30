# A demonstration of some simple MIPS instructions

	# All memory structures are placed after the
	# .data assembler directive
	.data

	# The .word assembler directive reserves space
	# in memory for a single 4-byte word (or multiple 4-byte words)
	# and assigns that memory location an initial value
	# (or a comma separated list of initial values)
value:	.word 12
Z:	.word 0

	# Declare main as a global function
	.globl main 

	# All program code is placed after the
	# .text assembler directive
	.text 		

# The label 'main' represents the starting point
main:
	li $t2, 25		# Load immediate value (25) 
	lw $t3, value		# Load the word stored in value (see the .data section at the top)
	add $t4, $t2, $t3	# Add
	sub $t5, $t2, $t3	# Subtract
	sw $t5, Z		# Store the answer in Z (declared in the .data section at the top
        li $v0, 10              # syscall code 10 is for exit. # put it into $t0.
        syscall                 # make the syscall.