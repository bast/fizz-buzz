module divisible

    implicit none

    public n_is_divisible_by_m

    private

contains

    logical function n_is_divisible_by_m(n, m)
        ! returns true if integer n is divisible by integer m
        ! returns false otherwise
        integer, intent(in) :: n
        integer, intent(in) :: m

        n_is_divisible_by_m = (modulo(n, m) == 0)
    end function

end module
