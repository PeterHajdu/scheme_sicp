#lang scheme/base

( define ( power a b )
         ( if ( = b 1 )
              a
              ( * a ( power a ( - b 1 ) ) ) ) )


( define ( factorial n )
         ( if ( = 1 n )
              1
              ( * n ( factorial ( - n 1 ) ) ) ) )


( define ( triang n )
         ( if ( < n 2 )
              n
              ( + n ( triang ( - n 1 ) ) ) ) )

