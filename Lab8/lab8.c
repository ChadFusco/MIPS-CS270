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
    return 0;
}  // end f

int main() {
      int result = 0;
   
      result = f(7,12,19,41);

      printf("result: %d\n", result);

      return (result);
} // end main