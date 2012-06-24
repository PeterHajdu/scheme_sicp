#lang scheme/base

; searching for divisors

( define ( divides? n div )
         ( = 0 ( remainder n div ) ) )

( define ( find-divisor n divisor )
         ( cond ( ( divides? n divisor ) divisor )
                ( ( > divisor ( sqrt n ) ) n )
                ( else ( find-divisor n ( + divisor 1 ) ) ) ) )

; TODO: if divisor is > 2 than in every iteration we can increment
; it with 2.

( define ( smallest-divisor n )
         ( find-divisor n 2 ) )

( define ( prime? n )
         ( = ( smallest-divisor n ) n ) )


; Fermat's little theorem: If n is a prime number and a is any positive
; integer less than n, then a raised to the nth poweris congruent to a
; modulo n.

; TODO: even, square and all the tiny procedures should be used

( define ( expmod base exp modulo )
         ( cond ( ( = exp 0 ) 1 )
                ( ( = ( remainder exp 2 ) 0 ) ( remainder ( expmod ( * base base ) ( / exp 2 ) modulo ) modulo ) )
                ( else ( remainder ( * base ( expmod base ( - exp 1 ) modulo ) ) modulo ) ) ) )

( define ( fermat-test p )
         ( define ( try a )
                  ( = ( expmod a p p ) a ) )

         ( try ( + 1 ( random ( - p 1 ) ) ) ) )

; some Carmichael numbers to fool around:
; 561, 1105, 1729, 2465, 2821, 6601

; let's find primes

( define ( printinnewline msg )
         ( newline )
         ( display msg ) )

( define ( find-num test low high )
         ( define ( test-report num )
                  ( if ( test num )
                       ( printinnewline num )
                       #false ) )

         ( if ( > low high )
              ( display "end" )
              ( ( test-report low )
                ( find-num test ( + low 1 ) high ) ) ) )

; TODO: much slower with the fermat-test
; find out why and correct it.

