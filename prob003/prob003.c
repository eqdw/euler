#include <stdio.h>

int findNextPrime(int loc, int * primes){
  int candidate = primes[loc-1]+1;
  while(42){
    int isPrime = 1;
    int i;
    for(i=0;i<loc; i++){
      if(candidate % primes[i] == 0){
        isPrime = 0;
        break;
      }
    }
    if(isPrime){
      return candidate;
    }
    candidate++;
  }
}

int main(){
  int primes[10000] = {2, 3, 5, 7, 11};
  int len = 5;

  int factors[1000];
  int facLen = 0;

  unsigned long long num = 600851475143;
  int i = 0;

  while(num > 1){
    if(i == len){
      primes[len] = findNextPrime(len, primes);
      len++;
    }
    if(num % primes[i] == 0){
      factors[facLen++] = primes[i];
      num /= primes[i];
    } else {
      i++;
    }
  }

  printf("%d\n", factors[facLen-1]);

  return 0;
}
