#Assembly Language Emulator
The Assembly Language Emulator is an emulator for a stripped down version of assembly written in the Cincom Smalltalk programming language. The overall goal of this project was to create a GUI using Cincom's VisualWorks IDE while using some of the more interesting features of the Smalltalk language.

To use the program download the [VisualWorks IDE] (http://www.cincomsmalltalk.com/main/products/visualworks/) and import this project. Note that this isn't pure Smalltalk code, it's VisualWorks' markup language used for importing programs.

The emulator contains several components:

* An editor field for entering and editing assembly language source code (one instruction per line)
* A save button to save source code into memory
* An action button for executing one line of code, starting from line 0
* An action button for executing the entire program, starting from the current value of the program counter
* Data memory. A 16-bit, word-addressable memory (RAM) for data, holding 64 words. Words are addressed by their location, starting from location 0 all the way up to location 63.
* Program memory. This stores the program being executed. It can store up to 256 instructions, numbered from 0 to 255.
* Resister A, a 16-bit register.
* Resister B, a 16-bit register.
* Program counter (PC). The PC holds the address (number in program memory) of the next instruction to be executed. Before the program starts execution, the PC holds the value 0. It is subsequently updated as each instruction is executed.
* A zero-result bit. This bit is set if the last ADD instruction produced a zero result. This bit is cleared if the last ADD instruction produced a result different from zero. The bit is changed only after ADD instructions are executed.
* An overflow bit. This bit is set whenever an ADD instruction produces an overflow (i.e., a result that cannot be stored in 2’s complement notation with 16 bits). It is cleared if the ADD instruction did not produce an overflow.

This is the instruction set supported be this emulator:
* LDA <number>: Loads byte at data memory address number into Register A.
* LDB <number>: Loads byte at data memory address number into Register B.
* LDI <number>: Loads the number into Register A.
* ST <number>: Stores content of Register A into data memory at address number.
* XCH: Exchanges the content registers A and B.
* JMP <number>: Transfers control to instruction at address number in program memory.
* JZS <number>: Transfers control to instruction at address number if the zero-result bit is set.
* JVS <number>: Transfers control to instruction at address number if the overflow bit is set.
* ADD: Adds the content of registers A and B. The sum is stored in A. The overflow and zero-result bits are set or cleared as needed.
* HLT: Terminates program execution.
