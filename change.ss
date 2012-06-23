#lang scheme/base

; Compute the number of ways to change any given
; amount of money.

( define ( change amount )
         ( define ( cc amount kinds-of-change )
                  ( cond ( ( or ( = kinds-of-change 0 ) ( < amount 0 ) ) 0 )
                         ( ( = amount 0 ) 1 )
                         ( else ( + ( cc ( - amount ( first-denomination kinds-of-change ) ) kinds-of-change )
                                    ( cc amount ( - kinds-of-change 1 ) ) ) ) ) )

         ( define ( first-denomination kinds-of-change )
                  ( cond ( ( = kinds-of-change 5 ) 1 )
                         ( ( = kinds-of-change 4 ) 5 )
                         ( ( = kinds-of-change 3 ) 10 )
                         ( ( = kinds-of-change 2 ) 25 )
                         ( ( = kinds-of-change 1 ) 50 ) ) )

         ( cc amount 5 ) )

; This solution uses tree recursion.
; TODO: give a solution using linear iteration

