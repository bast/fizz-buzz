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
.
|-- LICENSE.md
|-- README.md
|-- src
|   |-- divisible.f90
|   |-- fizz_buzz.f90
|   |-- fizz_buzz.h
|   `-- main.cpp
`-- test
    |-- fizz_buzz.cpp
    `-- main.cpp
```


## Tasks

- Build a shared library.
- Build and link the main program.
- Build the unit tests and link against [Google Test](https://github.com/google/googletest).
- Define a version number inside CMake and print it to the output of the executable.
- Print the Git hash to the output of the executable.
- Create an installer so the program can be installed properly (GNU standards).
- Create a DEB or RPM package (if relevant for your distribution).
