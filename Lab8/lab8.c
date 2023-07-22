#include <stdio.h>

int f(int a, int b, int c, int d) {    
    if (a < b) { 
       return (c); 
    }
    if (a == b) {
       return (d);
    }
    if (a > b) {
       return (c + d);
    }
}  // end f

int main() {
      int result = 0;
   
      result = f(7,12,19,41); // should be 19

      printf("result: %d\n", result);

      return (result);
} // end main
