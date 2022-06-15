#include "../../include/myPrintk.h"
#include "../../include/kmalloc.h"
#include "../../include/task.h"
#include "../../include/CTX_SW.h"
#include "../../include/schedule.h"
#define stack_size 1024 //定义一个1kb大小的栈
#define NULL 0 //定义一个空指针

rdyQueue* rdyQ; //维护一个就绪队列

TCB_pool* TCB_list;

void init_TCB_pool(void){
    TCB_list = (TCB_pool*)kmalloc(sizeof(TCB_pool));
    TCB_list->head = (myTCB*)NULL;
    TCB_list->size = 0;
}

unsigned long tid = 0; //任务ID
int createTsk(void (*tskBody)(void), tskPara *tskPara){
    //功能：本函数创建负责创建一个任务，传入的参数为任务函数的指针,返回任务的tid，如果失败则返回相应的错误代码
    myTCB* tsk;
    unsigned long pointer;
    if(tsk = (myTCB*)kmalloc(sizeof(myTCB))){
        tsk->tid = tid;
        tid++; //给任务tid赋值，并且下一个任务tid加1
        tsk->status = waiting; //任务处于waiting状态
        if(pointer = kmalloc(stack_size)){
            pointer = pointer + stack_size - 1;//计算栈底指针
        } //申请栈空间
        else{
            myPrintk(0x7,"The memory space is not enough!\n"); //打印提示信息
            kfree((unsigned long)tsk); //释放任务空间
            return -1; //如果内存空间不够分配堆栈那么就返回-1
        }
        tsk->stack_base = (unsigned long*)pointer;
        tsk->stack_top = (unsigned long*)pointer; //维护一个栈顶指针和一个栈底指针
        stack_init(&tsk->stack_top, tskBody); //初始化栈
        tsk->tskPara = tskPara; //给任务参数赋值

        if(TCB_list->head){
            tsk->next_myTCB = TCB_list->head;
            TCB_list->head = tsk;
            TCB_list->size++;
        }
        //如果TCB_list中没有任务，则将当前任务指针指向当前任务
        else{
            TCB_list->head = tsk;
            tsk->next_myTCB = (myTCB*)NULL;
            TCB_list->size++;
        }
        //如果TCB_list中有任务，则将新创建的任务插入到链表的最后
        return tsk->tid; //返回任务的tid
    }
    else{
        myPrintk(0x7,"The memory space is not enough!\n"); //如果内存空间不足，打印提示信息
        return -2; //如果内存空间不足，返回-2，表示创建任务失败
    }
}

void destroyTsk(int tskIndex){
    //功能：本函数删除一个任务，传入的参数为任务的tid
    if(!TCB_list->head){
        myPrintk(0x7,"Can't find the task! Please check the tid!\n"); //如果找不到则提示错误信息
        return;
    }
    else if(TCB_list->head->tid == tskIndex){ //检查头指针是否就是我们所需要寻找的tid
        kfree((unsigned long)TCB_list->head); //采用动态分配，释放这个地址
        kfree((unsigned long)TCB_list->head->stack_base + 1 - stack_size); //释放栈
        TCB_list->head == TCB_list->head->next_myTCB;
        TCB_list->size--;
        return;
    }
    else{
        myTCB* tsk;
        myTCB* preTsk;
        preTsk = TCB_list->head;
        tsk = TCB_list->head->next_myTCB;
        while(tsk){
            if(tsk->tid == tskIndex){
                preTsk->next_myTCB = tsk->next_myTCB;
                kfree((unsigned long)tsk); //释放当前任务地址空间
                kfree((unsigned long)tsk->stack_base + 1 - stack_size); //释放当前任务的栈空间
                return;
            }
            else{
                preTsk = tsk;
                tsk = tsk->next_myTCB;
            }
        }
        myPrintk(0x7,"Can't find the task! Please check the tid!\n"); //提示找不到该任务
    }
}

void stack_init(unsigned long **stk, void (*task)(void)){
    //功能：本函数初始化栈，传入的参数为栈指针和任务函数的指针
    (*stk)--; //将栈顶指针减1，即将栈顶指针指向栈底
    *(*stk)-- = (unsigned long)tskEnd; // tskEnd
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

unsigned long **prevTSK_StackPtrAddr;
unsigned long *nextTSK_StackPtr;
void context_switch(unsigned long **prevTskStkAddr, unsigned long *nextTskStk){
    prevTSK_StackPtrAddr = prevTskStkAddr;
    nextTSK_StackPtr = nextTskStk;
    CTX_SW();
} //上下文切换

myTCB* get_Tsk(int tid){
    //根据tid获取任务
    myTCB* tsk = TCB_list->head;
    while(tsk != (myTCB*)NULL){
        if(tsk->tid == tid){
            return tsk;
        }
        tsk = tsk->next_myTCB;
    }
    return (myTCB*)NULL;
}

void walk_TCB_list(){
    //遍历TCB_list
    myTCB* tsk = TCB_list->head;
    while(tsk != (myTCB*)NULL){
        myPrintk(0x7,"tid: %d  ",tsk->tid);
        myPrintk(0x7,"status: %d  ",tsk->status);
        myPrintk(0x7,"addr: %x\n",tsk);
        tsk = tsk->next_myTCB;
    }
}

void walk_rdyQ(void){
    //遍历就绪队列
    myTCB* tsk = rdyQ->head;
    while(tsk != (myTCB*)NULL){
        myPrintk(0x5,"tsk %d is ready  ",tsk->tid);
        myPrintk(0x5,"stack_top: %x  ",tsk->stack_top);
        myPrintk(0x5,"address: %x\n",tsk);
        tsk = tsk->next_Queue;
    }
}

void idleTsk_func(void){
    int color = 0x7;
    myPrintk(color,"*********************************************************\n");
	myPrintk(color,"****************This is the idleTsk_func!****************\n");
    myPrintk(color,"****************Waiting for new scheduling!**************\n");
	myPrintk(color,"*********************************************************\n");
	myPrintk(color,"\n");
    while(1){
        schedule();
    }
}

void init_rdyQ(void){
    tskPara* tskPara_tmp;
    tskPara_tmp = (tskPara*)kmalloc(sizeof(tskPara));
    tskPara_tmp->arrTime = 0;
    tskPara_tmp->exeTime = 0;
    tskPara_tmp->priority = 0;
    createTsk(idleTsk_func,tskPara_tmp); //初始化idle任务
    rdyQ = (rdyQueue*)kmalloc(sizeof(rdyQueue));
    rdyQ->head = (myTCB*)NULL;
    rdyQ->tail = (myTCB*)NULL;
    rdyQ->idleTsk = TCB_list->head;
}//初始化就绪队列

int check_rdyQ(void){
    //检查就绪队列是否为空，如果是空的则返回1,如果不是空的则返回0
    return ((rdyQ->head == (myTCB*)NULL) && (rdyQ->tail == (myTCB*)NULL));
}//检查就绪队列是否为空