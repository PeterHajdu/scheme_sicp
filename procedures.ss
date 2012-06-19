#lang scheme/base

( define ( power a b )
         ( cond ( ( = b 1 ) a )
                ( else ( * a ( power a ( - b 1 ) ) ) ) ) )


( define ( factorial n )
         ( cond ( ( = 1 n ) 1 )
                ( else ( * n ( factorial ( - n 1 ) ) ) ) ) )


( define ( triang n )
         ( cond ( ( < n 2 ) n )
                ( else ( + n ( triang ( - n 1 ) ) ) ) ) )


( define ( abs n )
         ( cond ( ( < n 0 ) ( - n ) )
                ( else ( n ) ) ) )

; if is a special form of cond
; for cond <predicate> <consequent> else <alternate>
; if <predicate> <consequent> <alternate>

( define ( abs2 n )
         ( if ( < n 0 )
              ( - n )
              n ) )

; the model of evaluation allows combinations whose
; operator is a compound expression
; fascinating :)

( define ( aplusabsb a b )
         ( ( if ( > b 0 ) + - ) a b ) )


