//sequence.asm

//NAME: Andre Athari
//UIN: 633008865

//This asm computes the following piecewise function:
//         { 1-x   if x < 0     }
// f(x) =  { x-3   if x is odd  }
//         { -x    if x is even }
//where the first case has priority
//(i.e., ignore the other two cases if x is negative).
//Assuming RAM[0] stores the input number x,
//your program should compute the result f(x)
//and store it in RAM[1].
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@0
D = M

@LESS_THAN
D ; JLT

@EVEN_CASE
D ; JEQ

@LOOP_MOD
0 ; JEQ

(LOOP_MOD)
D = D - 1
D = D - 1
@LOOP_MOD
D ; JGT

@EVEN_CASE
D ; JEQ

@ODD_CASE
0 ; JMP


(EVEN_CASE)
@0
D = M
D = -D
@1
M = D
@END
0 ; JMP

(ODD_CASE)
@0
D = M
@3
D = D - A
@1
M = D
@END
0 ; JMP

(LESS_THAN)
@0
D = M
D = -D
D = D + 1
@1
M = D
@END
0 ; JMP


(END)