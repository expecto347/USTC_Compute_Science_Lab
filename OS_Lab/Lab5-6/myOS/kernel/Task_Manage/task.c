#include "../../include/myPrintk.h"
#include "../../include/kmalloc.h"
#define ready 0 // ready 状态
#define waiting 1 // waiting 状态

typedef struct myTCB{
	int tid; //任务ID
	unsigned long status;  //任务状态
    unsigned long priority; //任务优先级
    unsigned long* stack_pointer; //任务栈指针
    unsigned long* stack_base; //任务栈底指针
} myTCB; //任务控制块

#define myTCB_SIZE 40

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列

typedef struct TCB_pool{
    myTCB* head;
    unsigned long size; //当前的TCB池的大小
} TCB_pool; //TCB池

unsigned long tid = 0; //任务ID
int createTsk(void (*tskBody)(void)){
    /*功能：本函数创建负责创建一个任务*/
    myTCB* tsk;
    if(tsk = (myTCB*)kmalloc(myTCB_SIZE)){
        
        tsk->tid = tid;
        tid++; //给任务tid赋值，并且下一个任务tid加1
        tsk->status = waiting; //任务处于waiting状态
        return tsk->tid; //返回任务tid
    }
    else{
        myPrintk(0x7,"the memory space is not enough\n"); //如果内存空间不足，打印提示信息
        return 0; //如果内存空间不足，返回0，表示创建任务失败
    }
}


