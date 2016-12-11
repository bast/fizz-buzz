#include "gtest/gtest.h"
#include "fizz_buzz.h"

TEST(fizz_buzz, sum_small_number)
{
    int res;
    res = fizz_buzz_sum(10);
    ASSERT_EQ(res, 33);
}

TEST(fizz_buzz, sum_larger_number)
{
    int res;
    res = fizz_buzz_sum(100);
    ASSERT_EQ(res, 2418);
}
