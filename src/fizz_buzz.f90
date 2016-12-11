module fizz_buzz

    use, intrinsic :: iso_c_binding, only: c_int

    implicit none

    public fizz_buzz_sum

    private

contains

    integer(c_int) function fizz_buzz_sum(u) bind(c)
        ! computes fizz-buzz-sum up to integer u
        use divisible, only: n_is_divisible_by_m

        integer(c_int), intent(in), value :: u
        integer :: i

        fizz_buzz_sum = 0

        do i = 1, u
            if (n_is_divisible_by_m(i, 3) .or. n_is_divisible_by_m(i, 5)) then
                fizz_buzz_sum = fizz_buzz_sum + i
            end if
        end do
    end function

end module
