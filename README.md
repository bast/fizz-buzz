[![License](https://img.shields.io/badge/license-%20poetic-blue.svg)](../master/LICENSE.md)


# fizz-buzz

Exercise to practice building projects with [CMake](https://cmake.org).


## Background

Inspired by a [Project Euler exercise](https://projecteuler.net/problem=1) and
based on the [popular game](https://en.wikipedia.org/wiki/Fizz_buzz) and
popular programming job interview question where you have to say/print "Fizz" if a
natural number is divisible by 3 and "Buzz" if it is divisible by 5:

```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
Fizz Buzz
...
```

We wish to build a code which computes the "Fizz-buzz sum" for a given natural
number N, summing all natural numbers <= N which are multiples of 3 or 5. For
N=10 the sum is 3+5+6+9+10 = 33.

The source code and unit tests are there:

```shell
$ ./bin/fb.x

Fizz-buzz sum for integer 10 is 33
Fizz-buzz sum for integer 100 is 2418

$ ./bin/unit_tests

[==========] Running 2 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 2 tests from fizz_buzz
[ RUN      ] fizz_buzz.sum_small_number
[       OK ] fizz_buzz.sum_small_number (0 ms)
[ RUN      ] fizz_buzz.sum_larger_number
[       OK ] fizz_buzz.sum_larger_number (0 ms)
[----------] 2 tests from fizz_buzz (0 ms total)

[----------] Global test environment tear-down
[==========] 2 tests from 1 test case ran. (0 ms total)
[  PASSED  ] 2 tests.
```


## Tasks

- Build the code using CMake. First only the sources, later also tests. For the
  tests you need to link against [Google Test](https://github.com/google/googletest).
- Define a version number inside CMake and print it to the output of the executable.
- Print the Git hash to the output of the executable.
