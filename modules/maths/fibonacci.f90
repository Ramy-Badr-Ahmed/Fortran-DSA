!> Module for Fibonacci series calculations
!! Provides both recursive and iterative implementations.
!! Reference: https://en.wikipedia.org/wiki/Fibonacci_number

module fibonacci_module
    implicit none
contains

    !! Recursive function to compute the nth Fibonacci number
    recursive function fib_rec(n) result(f)
        integer, intent(in), value :: n
        integer :: f
        if (n <= 1) then
            f = n
        else
            f = fib_rec(n - 1) + fib_rec(n - 2)
        end if
    end function fib_rec

    !! Iterative function to compute the nth Fibonacci number
    function fib_itr(n) result(f)
        integer, intent(in) :: n
        integer :: f, tmp, f_1
        integer :: i
        if (n <= 1) then
            f = n
        else
            f_1 = 0
            f = 1
            do i = 2, n
                tmp = f
                f = f + f_1
                f_1 = tmp
            end do
        end if
    end function fib_itr

end module fibonacci_module
