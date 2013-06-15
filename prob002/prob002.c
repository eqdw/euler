#include <stdio.h>

int main(){

  unsigned long fibs[100]; 
  int len = 0;
  fibs[0] = 1;
  fibs[1] = 2;
  fibs[2] = 3;
  int i;

  for(i=2; fibs[i-1] <= 4000000; i++){
    fibs[i] = fibs[i-1] + fibs[i-2]; 
    printf("DEBUG: fibs[i] = %lu\n", fibs[i]);
  }

  len = i;

  unsigned long sum = 0;
  for(i=0;i<len;i++){
    if(fibs[i] % 2 == 0){
      sum += fibs[i];
    }
  }

  printf("%lu\n", sum);

  return 0;
}
