# Test cases for MIPS 5-Stage pipeline

.data
    .word 0,1,2,3,0x80000000,0x80000100,0x100,5,0
        
_start:
    add $t1, $0, $0     # $t1 = 0                                                       00004820
    j _test0            #                                                               08000002

_test0:
    addi $t2, $0, 1      # $t2 = 1                                                      200a0001
    addi $t2, $t2, 1      # $t2 = 2                                                     214a0001
    add $t2, $t2, $t2      # $t2 = 4                                                    014a5020
    addi $t2, $t2, -4     # $t2 = 0                                                     214afffc
    beq $t2, $0, _next0   # if $t2 == $0: $t1++, go next testcase, else: go fail        11400001
    j _fail                 #                                                           08000015
_next0:
    addi $t1, $t1, 1      # $t1++                                                       21290001
    j _test1                #                                                           0800000a

_test1:
    addi $0, $0, 4      # $0 += 4                                                       20000004
    lw $t2, 4($0)       # $t2 = MEM[1]                                                  8c0a0004
    lw $t3, 8($0)       # $t3 = MEM[2]                                                  8c0b0008
    add $t4, $t2, $t3   #                                                               014b6020
    sw $t4, 0($0)       # MEM[0] = $t4                                                  ac0c0000
    lw $t5, 0($0)       # $t5 = MEM[0]                                                  8c0d0000
    lw $t6, 12($0)      # $t6 = MEM[3]                                                  8c0e000c
    beq $t5, $t6, _next1    #                                                           11ae0001
    j _fail                 #                                                           08000015
	
_next1:
    addi $t1, $t1, 1        #                                                           21290001
    j _success              #                                                           08000016

_fail:
    j _fail                 #                                                           08000015

_success: 
    j _success   # if success: $t1 == 2                                                 08000016