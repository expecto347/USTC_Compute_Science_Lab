#include "../../include/myPrintk.h"
#include "../../include/kmalloc.h"
#define ready 0 // ready 状态
#define waiting 1 // waiting 状态
#define stack_size 4096 //定义一个4kb大小的栈

typedef struct myTCB{
	unsigned long tid; //任务ID
	unsigned long status;  //任务状态
    unsigned long priority; //任务优先级
    unsigned long* stack_pointer; //任务栈指针
    unsigned long* stack_base; //任务栈底指针
} myTCB; //任务控制块

#define myTCB_SIZE 20

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列

typedef struct TCB_pool{
    myTCB* head;
    unsigned long size; //当前的TCB池的大小
} TCB_pool; //TCB池

void stack_init(unsigned long **stk, void (*task)(void));

unsigned long tid = 0; //任务ID
int createTsk(void (*tskBody)(void)){
    /*功能：本函数创建负责创建一个任务，传入的参数为任务函数的指针*/
    myTCB* tsk;
    unsigned long pointer;
    if(tsk = (myTCB*)kmalloc(myTCB_SIZE)){
        tsk->tid = tid;
        tid++; //给任务tid赋值，并且下一个任务tid加1
        tsk->status = waiting; //任务处于waiting状态
        if(pointer = kmalloc(stack_size)){
            pointer = pointer + stack_size - 1;//计算栈底指针
        } //申请栈空间
        else{
            myPrintk(0x7,"the memory space is not enough\n"); //打印提示信息
            return -1;
        }
        tsk->stack_base = (unsigned long*)pointer;
        tsk->stack_pointer = (unsigned long*)pointer; //维护一个栈顶指针和一个栈底指针
        stack_init(&tsk->stack_pointer, tskBody);
        return tsk->tid; //返回任务tid
    }
    else{
        myPrintk(0x7,"the memory space is not enough\n"); //如果内存空间不足，打印提示信息
        return -2; //如果内存空间不足，返回0，表示创建任务失败
    }
}

void stack_init(unsigned long **stk, void (*task)(void)){
    *(*stk)-- = (unsigned long)0x08; // CS
    *(*stk)-- = (unsigned long)task; // eip
    // pushf
    *(*stk)-- = (unsigned long)0x0202; // flag registers
    // pusha
    *(*stk)-- = (unsigned long)0xAAAAAAAA; // eax
    *(*stk)-- = (unsigned long)0xCCCCCCCC; // ecx
    *(*stk)-- = (unsigned long)0xDDDDDDDD; // edx
    *(*stk)-- = (unsigned long)0xBBBBBBBB; // ebx
    *(*stk)-- = (unsigned long)0x44444444; // esp
    *(*stk)-- = (unsigned long)0x55555555; // ebp
    *(*stk)-- = (unsigned long)0x66666666; // esi
    **stk     = (unsigned long)0x77777777; // edi
}