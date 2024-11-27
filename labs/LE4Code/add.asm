//addn.asm

//NAME: Andre Athari
//UIN: 633008865

//This asm computes the sum of two numbers
//Assuming RAM[0] stores the number a and RAM[1] stores the number b
//so conceptually, the goal is to compute RAM[0] + RAM[1].
//The result will be stored to RAM[2].
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@0
D = M
@1
D = D+M
@2
M = D
@15
0; JMP
