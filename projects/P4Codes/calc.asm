//NAME AND UIN
// Andre Athari
// 633008865

// File name: calc.asm

// The program develops a calculator application. 
// The operands a and b are integer numbers stored in RAM[0] (R0) and RAM[1] (R1), respectively.
// The operation choice c is stored in RAM[2] (R2), respectively
// if c == 1, do a + b
// if c == 2, do a - b
// if c == 3, do a * b
// if c == 4, do a / b
// For Addition and Subtraction operations the operands a and b can be positive or negative.
// For Multiplication operation only ONE operand can be negative.
// For Division operation BOTH operands must be positive and must be greater than 0.
// Store the final result (quotient for Division) in RAM[3] (R3). Only the Division operation 
// stores the remainder in RAM[4] (R4).


// Put your code below this line

@2
D=M
@ADD
D=D-1
D;JEQ
@SUB
D=D-1
D;JEQ
@MULT
D=D-1
D;JEQ
@DIV
D=D-1
D;JEQ
@END
0;JMP

(ADD)
@0
D=M
@1
D=D+M
@3
M=D
@END
0;JMP

(SUB)
@0
D=M
@1
D=D-M
@3
M=D
@END
0;JMP

(MULT)
@0
D=M
@R5
M=D
@1
D=M
@R6
M=D
@R7
M=0
@R8
M=0
@R5
D=M
@A_POS
D;JGE
D=-D
@R5
M=D
@R8
M=M+1

(A_POS)
@R6
D=M
@B_POS
D;JGE
D=-D
@R6
M=D
@R8
M=M+1

(B_POS)
@R8
D=M
@2
D=D-A
@MAKE_NEG
D;JEQ

(MULT_LOOP)
@R6
D=M
@END_MULT
D;JEQ
@R7
D=M
@R5
D=D+M
@R7
M=D
@R6
M=M-1
@MULT_LOOP
0;JMP

(END_MULT)
@R8
D=M
D=D-1
@MAKE_NEGATIVE
D;JEQ
@R7
D=M
@3
M=D
@END
0;JMP

(MAKE_NEGATIVE)
@R7
D=-M
@3
M=D
@END
0;JMP

(MAKE_NEG)
D=-1
@1024
M=D
@END
0;JMP

(DIV)
@0
D=M
@R5
M=D
@1
D=M
@R6
M=D
@R5
D=M
@DIV_ERROR
D;JLE
@R6
D=M
@DIV_ERROR
D;JLE
@R7
M=0

(DIV_LOOP)
@R5
D=M
@R6
D=D-M
@DIV_END
D;JLT
@R5
M=D
@R7
M=M+1
@DIV_LOOP
0;JMP

(DIV_END)
@R7
D=M
@3
M=D
@R5
D=M
@4
M=D
@END
0;JMP

(DIV_ERROR)
@0
D=A
@3
M=D
@4
M=D
@END
0;JMP

(END)
@END
0;JMP
