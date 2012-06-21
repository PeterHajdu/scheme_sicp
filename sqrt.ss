#lang scheme/base


( define ( sqr x )
         ( * x x ) )

( define ( average x y )
         ( / ( + x y ) 2 ) )

( define ( new-sqrt x )
         ( define ( sqrt-iter guess )
                  ( if ( good-enough? guess )
                       guess
                       ( sqrt-iter ( enhance-guess guess ) ) ) )

         ( define ( good-enough? guess )
                  ( < ( abs ( - x ( sqr guess ) ) ) 0.001 ) )

         ( define ( enhance-guess guess )
                  ( average guess ( / x guess ) ) )

         ( sqrt-iter 1.0 ) )

