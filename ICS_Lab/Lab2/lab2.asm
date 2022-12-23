.ORIG x3000
AND R3, R3, x0 ; clear R3, to be used storing 2^k
AND R4, R4, x0 ; clear R4, to be used to store a_n
AND R5, R5, x0 ; clear R5, to be used to store a_{n+1}
AND R6, R6, x0 ;
AND R7, R7, x0
LD R1, q
LD R2, N
ADD R2, R2, #-1 ; Initialize R2
LD R3, p
LOOP2   LD R4 a_n
        LD R5 a_n+1
        ST R5, a_n
        NOT R0, R3
        ADD R0, R0, #1
LOOP_mod1 	ADD R4, R4, R0 ;先执行减法操作
			BRzp LOOP_mod1; 如果得到的数是大于等于零的，继续执行减法操作，直到得到小于等于零的结果
			ADD R4, R4, R3 ;得到最后的取模的值
	  NOT R0, R1
	  ADD R0, R0, #1
LOOP_mod2   ADD R5, R5, R0
            BRzp LOOP_mod2
            ADD R5, R5, R1
    ADD R6, R4, R5 ; ADD
    ST R6, a_n+1
    ADD R2, R2, #-1
    BRnp LOOP2
    ST R6, result
TRAP x25 
.END

.ORIG x3100
p .FILL #1024
q .FILL #789
N .FILL #300
result .FILL #0
a_n .FILL #1
a_n+1 .FILL #1
.END