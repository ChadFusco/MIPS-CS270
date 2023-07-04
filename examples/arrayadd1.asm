#
#
# This MIPS assembly language program
# takes an array of four integers and
# increates the value of each of its element values 
# by 1
#
#


.data # data segment
A: .word 7, 3, 2, 5 # declare and initialize an array of words
length: .word 4 # declare and initialize a byte variable

.text # code segment

main:
     lw $t0, length # load *value* at memory location length into $t0
     la $a0, A      # load the *address* at memory location A into $a0
     add $t1, $zero, $zero

loop:  # beginning label for a loop to access all the array element values
     lw $t2, 0($a0) # load array element from memory
     addi $t2, $t2, 1 # increment element
     sw $t2, 0($a0) # write back to memory
     addi $a0, $a0, 4 # increment array pointer by 4 (word = 4 bytes)
     addi $t1, $t1, 1 # increment loop counter by 1
     blt $t1, $t0, loop # loop, if necessary
