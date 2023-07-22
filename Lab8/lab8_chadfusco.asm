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

.data

.globl main

.text
	main:
