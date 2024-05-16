5 REM *** MANDELBROT SET , https://www.facebook.com/groups/tec1z80/posts/1797061804136194/?comment_id=1797065120802529 ***
10 F = 50
20 FOR Y = -12 TO 12
30 FOR X = -49 TO 29
40 C = X * 229 / 100
50 D = Y * 416 / 100
60 A = C, B = D, I = 0
70 Q = B / F, S = B - (Q * F)
80 T = ((A * A) - (B * B)) / F + C
90 B = 2 * ((A * Q) + (A * S / F)) + D
100 A = T, P = A / F, Q = B / F
110 IF ((P * P) + (Q * Q)) >= 5 GOTO 140
120 I = I + 1
130 IF I < 16 GOTO 70
140 PRINT #1,$(48-I),
150 NEXT X
160 PRINT
170 NEXT Y
