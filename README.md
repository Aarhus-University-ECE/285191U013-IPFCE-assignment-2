# IPFCE-Week-2-Development and Derivation of (simple) programs


See `./Assignment_Week02.pdf` for the assignment.

## Build

```bash
make
# or
cmake -S . -B build
cmake --build build --target all
```

## Exercises
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
Implement a Linear Congruent Random Number Generator computing:

$$ x_{i+1} = (a * x_i + c) \mod m $$

where $m > 0, 0 < a < m, 0 < c < m$.

The first value, called the seed, is $x_0$. Your

`xi+1 = (a * xi + c) % m`
where `m > 0, 0 < a < m, 0 < c < m`. The first value, called the seed, is `x0`. Your program should take four integer inputs from the user for `a; m; c; x0`. Given these input values from the user, your program should compute all values $x_0, x_1, ...,  x_{m-1}$ and print them to the console as a table in the form:  
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
