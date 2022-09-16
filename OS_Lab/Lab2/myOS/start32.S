STACK_SIZE = 0x4000	# 栈的大小，可自行修改

/* ===== code32 =========================== */

.globl _start                   # GNU default entry point
.text
.code32
_start:
    jmp establish_stack

dead:	jmp dead                # Never here

# Set up the stack
establish_stack:

    # 指定栈底地址（栈是逆向增长的，栈底是高地址），提供两种参考方案
    # 1. 根据 操作系统在内存中的结束地址 和 STACK_SIZE，计算栈底 （下面三行被注释掉的内容）
    # 2. 硬编码，手动填入一个固定的栈底地址 （下面第四行未被注释掉的内容）
    # 使用其中一种，请注释/删除掉另一种
    movl    $_end, %eax     # 填入正确的内容
    addl    $STACK_SIZE, %eax   # make room for stack
    andl    $0xffffffe0, %eax   # align
    # movl    $????????, %eax     # 填入栈底地址
	
    movl    %eax, %esp          # set stack pointer
    movl    %eax, %ebp          # set base pointer

# Zero out the BSS segment
zero_bss:
    cld                         # make direction flag count up
    movl    $_end, %ecx         # find end of .bss
    movl    $_bss_start, %edi   # edi = beginning of .bss
    subl    %edi, %ecx          # ecx = size of .bss in bytes
    shrl    %ecx                # size of .bss in longs
    shrl    %ecx
	
    xorl    %eax, %eax          # value to clear out memory
    repne                       # while ecx != 0
    stosl                       # clear a long in the bss


# Transfer control to main
to_main:	
    call osStart

shut_down:	
    jmp shut_down	# Never here	

/* ===== data =========================== */
