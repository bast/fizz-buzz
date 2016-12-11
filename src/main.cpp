#include <stdio.h>

// C interface to the Fortran code
#include "fizz_buzz.h"

int main()
{
    printf("Fizz-buzz sum for integer 10 is %i\n", fizz_buzz_sum(10));
    printf("Fizz-buzz sum for integer 100 is %i\n", fizz_buzz_sum(100));

    return 0;
}
