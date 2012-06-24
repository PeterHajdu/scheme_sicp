#lang scheme/base

; summation of series

( define ( identity x ) x )

( define ( inc x ) ( + x 1 ) )

( define ( sum f a next b )
         ( if ( > a b )
              0
              ( + ( f a ) ( sum f ( next a ) next b ) ) ) )

; integral implementation using numeric approximation

( define ( integral f a b dx )
         ( * ( sum f
               ( + a ( / dx 2.0 ) )
               ( lambda ( x ) ( + x dx ) )
               b )
             dx ) )


