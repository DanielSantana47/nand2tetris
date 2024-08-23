// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

    @sum
    M=0
    @R0
    D=M
(LOOP)
    @i
    MD=M-1 //decrement the counter
    @FINISH
    D;JLT
    @R1
    D=M

    @sum
    M=D+M //tally the sum
    @LOOP
    @;JMP
(FINISH)
    @sum
    D=M
    @R2
    M=D
(END)
    @END
    0;JMP