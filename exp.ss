#lang scheme/base

; linear recursion
; O( n ) steps and O( n ) in space

( define ( exp1 b n )
         ( if ( = n 0 )
              1
              ( * b ( exp1 b ( - n 1 ) ) ) ) )

; linear iteration
; O( n ) speps and O( 1 ) in space

( define ( exp2 b n )
         ( define ( exp-iter b n sum )
                  ( if ( = n 0 )
                       sum
                       ( exp-iter b ( - n 1 ) ( * sum b ) ) ) )

         ( exp-iter b n 1 ) )

; fast exponential
; O( log( n ) )

( define ( square x )
         ( * x x ) )

( define ( even? n )
         ( = ( remainder n 2 ) 0 ) )

( define ( fast-exp b n )
         ( cond ( ( = n 0 ) 1 )
                ( ( even? n ) ( square ( fast-exp b ( / n 2 ) ) ) )
                ( else ( * b ( fast-exp b ( - n 1 ) ) ) ) ) )

; fast exponential with linear iteration

( define ( fast-exp2 b n )
         ( define ( exp-iter b n sum )
                  ( cond ( ( = n 0 ) sum )
                         ( ( even? n ) ( exp-iter ( square b ) ( / n 2 ) sum ) )
                         ( else ( exp-iter b ( - n 1 ) ( * sum b ) ) ) ) )

         ( exp-iter b n 1 ) )

