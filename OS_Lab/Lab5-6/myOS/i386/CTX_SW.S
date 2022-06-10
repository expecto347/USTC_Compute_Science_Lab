.text
.code32

.global CTX_SW
CTX_SW:
    pushf
    pusha
    movl prevTSK_StackPtrAddr, %eax
    movl %esp, (%eax)
    movl nextTSK_StackPtr, %esp
    popa
    popf
    ret