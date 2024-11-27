//addn.asm

//NAME: Andre Athari
//UIN: 633008865

//This asm computes the sum of n numbers
//Assuming RAM[0] stores the value n (how many numbers to sum)
//and the numbers are stored in consecutive addresses starting at address 1.
//The result will be stored in RAM[0], overwriting the original value of n.
//It may be useful to use variables when solving this problem.
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@0
D = M
@numCount
M = D

@0
M = 0

@1
D = A
@addrPtr
M = D

(LOOP)
@numCount
D = M
@END
D;JEQ

@addrPtr
A = M
D = M
@0
M = M + D

@addrPtr
M = M + 1

@numCount
M = M - 1

@LOOP
0;JMP

(END)
@END
0;JMP