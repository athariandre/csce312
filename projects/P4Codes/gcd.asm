//NAME AND UIN
// Andre Athari
// 633008865

// File name: gcd.asm
// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in M0 (R0) and M1 (R1). 
// The gcd is stored in M2 (R2).

// var inits
@0
D = M
@3
M = D
@1
D = M
@4
M = D

(LOOP)
// check m = 0
@4
D = M
@FINISHED
D;JEQ

// init m5,m6
@4
D = M
@5
M = D
@3
D = M
@6
M = D

(MOD)
// calculate remainder
@6
D = M
@4
D = D - M
@DONE
D;JLT
@6
D = M
@4
D = D - M
@6
M = D
@MOD
0;JMP

(DONE)
// check remainder
@5
D = M
@3
M = D
@6
D = M
@4
M = D
@LOOP
0;JMP

(FINISHED)
// store results
@3
D = M
@2
M = D

(END)
// exit program
@END
0;JMP