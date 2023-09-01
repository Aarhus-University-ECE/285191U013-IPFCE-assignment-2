# IPFCE-Week-2-Development and Derivation of (simple) programs


See `./Assignment_Week02.pdf` for the assignment.

## Build

```bash
make
# or
cmake -S . -B build
cmake --build build --target all
```

To build and run a specific exercise, use the `exercise-<number>` target, e.g.:

```bash
make exercise-3
```

## Exercises

### Exercise 2
What is the program below calculating (i.e. what is the relation between the input and
what is written in line 15)? You should not write in detail an explanation of what the
different lines do, but what you would write as a comment in the top of the program
describing the overall function of the program.

```c
#include <stdio.h>

int main() {

	int result;
	int j;
	int N;

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
```

Write a program that makes the same calculation but without a loop. Do so in `src/exercise-2.c`.

### Exercise 3
Write a program to compute the Fibonacci numbers. Your program should take an
integer n as input from the user, and it then calculates and prints each Fibonacci
number from the first Fibonacci number to the nth. For example, a typical execution
where the user inputs n = 7 could be:
```
7  
0 1 1 2 3 5 8
```

See `src/exercise-3.c` for where to write your solution.

### Exercise 4
Implement a *Linear Congruent Random Number Generator* computing:

$$ x_{i+1} = (a * x_i + c) \mod m $$

where $m > 0, 0 < a < m, 0 < c < m$.

The first value, called the seed, is $x_0$. Your program should take four integer inputs from the user for $a,m,c,x_0$. Given these input values from the user, your program should compute all values $x_0, x_1, ..., x_{m-1}$ and print them to the console as a table in the form:

```
n0 x0
n1 x1
...
n(m-1) x(m-1)
```
   
**Answer the following question: What pattern do you observe? (either as a comment, or in the document with your other written answers)**
   
See `src/exercise-4.c` for where to write your solution.

### Exercise 5
Compute the integer root $r$ of a number n such that 
$$ r^2 \leq n < (r + 1)^2 $$
Your program should take integer $n$ as input from the user and print the integer root $r$.

An example execution where the user inputs $n = 17$ could be:
```
17
4
```
   
See `src/exercise-5.c` for where to write your solution.

### Exercise 7

See the `pdf` for the exercise. A copy of the program is in `src/exercise-7.c`. Add your own comments to this file when asked to do so in the exercise.
