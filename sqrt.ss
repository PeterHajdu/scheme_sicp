#lang scheme/base

( define ( sqrt-iter guess x )
         ( if ( good-enough? guess x )
              guess
              ( sqrt-iter ( enhance-guess guess x ) x ) ) )

( define ( good-enough? guess x )
         ( < ( abs ( - x ( sqr guess ) ) ) 0.001 ) )

( define ( enhance-guess guess x )
         ( average guess ( / x guess ) ) )

( define ( sqr x )
         ( * x x ) )

( define ( average x y )
         ( / ( + x y ) 2 ) )

( define ( new-sqrt x )
         ( sqrt-iter 1.0 x ) )

