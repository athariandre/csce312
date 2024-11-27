//NAME AND UIN
// Andre Athari
// 633008865

// File name: palin.asm

// The program develops a Palindrome checker application. 
// The input to the program is a 5 digit integer A and is stored in RAM[0] (R0).
// A helper value of 10 is stored in RAM[8] (R8) by virtue of the tst file command.
// Number A is a positive integer.
// A has exactly 5 digits and no more no less.

// Program functions as follows: 
// Extract the individual digits from number A and store them in R2-R6 registers in that order.
// Result of 1 is stored in R1 if the number A is a Palindrome else result of 0 is stored in R1

// Put your code below this line

@2
D=A
@9
M=D

(EXTRACT)
@0
D=M
@ZERO_CHECK
D;JEQ

@10
M=0

(TRUNCATE_LOOP)
@0
D=M
@8
D=D-M
@TRUNCATE_END
D;JLT

@0
M=D
@10
M=M+1
@TRUNCATE_LOOP
0;JMP

(TRUNCATE_END)
@0
D=M
@9
A=M
M=D

@10
D=M
@0
M=D

@9
M=M+1
@EXTRACT
0;JMP

(ZERO_CHECK)
@2
D=M
@6
D=D-M
@EXIT_FALSE
D;JNE

@3
D=M
@5
D=D-M
@EXIT_FALSE
D;JNE

// input is a palindrome
@1
D=A
@1
M=D
@END
0;JMP

(EXIT_FALSE)
// input is not a palindrome
@0
D=A
@1
M=D

(END)
// exit loop
@END
0;JMP
