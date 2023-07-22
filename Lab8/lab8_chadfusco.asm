# NAME:
# -------------------
# Chad Fusco

# TASK:
# -------------------
# The following main program and 4 parameter function are written in the high level language C:
# int f(int a, int b, int c, int d) {    
#     if (a < b) { 
#        return (c); 
#     }
#     if (a == b) {
#        return (d);
#     }
#     if (a > b) {
#        return (c + d);
#     }
# }  // end f

# int main() {
#       int result = 0;
   
#       result = f(7,12,19,41);

#       return (result);
# } // end main

# Translate this C program into a MIPS assembly program.   In your translation, you are to use the following rules:

# All parameter passed to a function must have their values placed in the parameter registers $a0, $a1, $a2, and $a3 before the function is called.
# All integer values are 32 bits long. 
# All values returned from a function must be stored in the $v0 register.

.text
	main:
		addi $a0, $zero, 7
		addi $a1, $zero, 12
		addi $a2, $zero, 19
		addi $a3, $zero, 41
		jal f
		j end
	f:
		slt $t0, $a0, $a1	# t0 = 1 if a < b
		beq $t0, $zero, else	# branch to else if t0 = 0
		move $v0, $a2	# return int c
		jr $ra

		else:
			slt $t0, $a1, $a0	# t0 = 1 if b < a
			beq $t0, $zero, elseend		# branch to elseend if t0 = 0
			add $v0, $a2, $a3	# return int c + int d
			jr $ra

		elseend:
			move $v0, $a3	# return int d
			jr $ra
	end:
