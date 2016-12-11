[![License](https://img.shields.io/badge/license-%20BSD--3-blue.svg)](../master/LICENSE)


# fizz-buzz

Exercise to practice building projects with [CMake](https://cmake.org).

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
