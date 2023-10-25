```forth
\ Constants scaled by 10000
: CA   458 * 10000 / ;
: CB   833 * 10000 / ;

\ Variables A and B are initially 0
: A  0 ;
: B  0 ;

\ One iteration of the Mandelbrot algorithm
: ITERATE
  A @ A @ * B @ B @ * - CA +  B @ A @ * 2* + CB +
  A !
  B !
;

\ Main loop to generate Mandelbrot set
: MANDELBROT
  -12000 12000 1000 DO  \ Y loop scaled by 1000
    CR
    -39000 39000 1000 DO  \ X loop scaled by 1000
      0 A ! 0 B !  \ Initialize A and B to 0
      0  \ Initialize loop counter (I)
      BEGIN
        ITERATE
        A @ A @ * B @ B @ * + 40000 > OR  9 >  \ Check magnitude
      UNTIL
      DROP 48 + EMIT  \ Print ASCII character, drop counter
    LOOP
  LOOP
;

MANDELBROT
```
