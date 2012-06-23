#lang scheme/base

; first fibonacci implementation using
; tree recursion. Lot of redundant computation,
; thus this is considered as a bad solution for
; calculating fibonacci numbers.

( define ( fib1 n )
         ( cond ( ( = 0 n ) 0 )
                ( ( = 1 n ) 1 )
                ( else ( + ( fib1 ( - n 1 ) ) ( fib1 ( - n 2 ) ) ) ) ) )

; second fibonacci implementation using linear iteration.

( define ( fib2 n )
         ( define ( fib-iter a b count )
                  ( if ( = 0 count )
                       b
                       ( fib-iter ( + a b ) a ( - count 1 ) ) ) )

         ( fib-iter 1 0 n ) )


