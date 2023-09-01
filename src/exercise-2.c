#include <stdio.h>

int main() {

  int result;
  int j;
  int N;

  printf("Enter a number: ");
  scanf("%d", &N);
  result = N;
  j = 0;

  while (j < N) {
    result = result + 1;
    j = j + 1;
  }

  printf("The result is %d.\n", result);

  return 0;
}
