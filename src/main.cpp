#include <stdio.h>

// C interface to the Fortran code
#include "fizz_buzz.h"

// contains version number
#include "config.h"

int main()
{
    printf("Running Fizz-buzz version v%i.%i.%i\n", VERSION_MAJOR, VERSION_MINOR, VERSION_PATCH);
    printf("Configure-time Git hash: %s\n\n", GIT_HASH);

    printf("Fizz-buzz sum for integer 10 is %i\n", fizz_buzz_sum(10));
    printf("Fizz-buzz sum for integer 100 is %i\n", fizz_buzz_sum(100));

    return 0;
}
