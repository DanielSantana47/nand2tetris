// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(START) //while (true)
    @SCREEN
    D=A
    @i
    M=D //i = SCREEN

(LOOP)
    @i
    D=M
    @24575 // screen - 1
    D=A-D
    @STARTD
    D;JLT // i < screen - 1 (negative check)
    @KBD
    D=M
    @BLACKEN // if (kbd != 0)
    D;JNE

// clear the screen (write "white" in every pixel)
    @i
    D=M
    A=D
    M=0
    @CONTINUE

(BLACKEN)
    @i
    D=M
    A=D
    M=-1

(CONTINUE)
    @i
    M=M+1 // i++
    @LOOP
    0;JMP