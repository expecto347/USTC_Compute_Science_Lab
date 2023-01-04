.ORIG x3000
LD R6, ASCII
LD R5, NEGASCII
TRAP x23 ; trap instruction known as "IN"
ADD R1, R0, x0 ; move the first integer to R1
ADD R1, R1, R5 ; convert ASCII number to integer
TRAP x23 ; another "IN"
ADD R0, R0, R5 ; convert ASCII number to integer
ADD R2, R0, R1 ; add the two integers
ADD R2, R2, R6 ; convert sum to ASCII
LEA R0, MESG ; load the address of the message 
TRAP x22 ; trap known as "PUTS"
ADD R0, R2, x0 ; move the sum to R0, to be output
TRAP x21 ; display the sum
HALT
ASCII .FILL x30 ; mask to add to convert to ASCII
NEGASCII .FILL xFFD0 ; negated ASCII mask (-x30)
MESG .STRINGZ "The sum is "
.END