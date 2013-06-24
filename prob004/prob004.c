#include <stdio.h>
#include <string.h>

int isPalindrome(int num){
  char str[15];
  sprintf(str, "%d", num);
  int j = strlen(str) - 1;
  int i;        
  for(i=0;i<j;i++, j--){
    if(str[i] != str[j]){
      return 0; 
    }
  }             
  return 1;
}

int main(){

  int i, j;
  int biggest = 0;
  int temp;

  for(i=100; i<1000; i++){
    for(j=100;j<1000;j++){
      temp = i*j;
      if(temp > biggest && isPalindrome(temp) ){
        biggest = temp;
      }
    }
  }
  printf("%d is the biggest palindromic product\n", biggest);

  return 0;
}
