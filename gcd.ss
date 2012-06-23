#lang scheme/base

; Euclid's algorithm to calculate greatest common divisor.

( define ( gcd a b )
         ( if ( = 0 b )
              a
              ( gcd b ( remainder a b ) ) ) )

