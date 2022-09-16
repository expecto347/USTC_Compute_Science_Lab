#include "../../../include/myPrintk.h"
#include "../../../include/kmalloc.h"
#include "../../../include/FCFS.h"
#define NULL 0 //定义一个空指针

void FCFS_tskStart(myTCB *tsk){
    //将任务插入就绪队列
    if(tsk->status == ready) myPrintk(0x5,"tskStart: task is already start!\n");
    else{
        tsk->status = ready;
        if(check_rdyQ()){
            rdyQ->head = tsk;
        }
        else{
            rdyQ->tail->next_Queue = tsk;
        }   
        rdyQ->tail = tsk; //将task插入尾部
    }
}

void FCFS_tskEnd(void){
    //将任务从就绪队列中删除
    destroyTsk(currentTsk->tid); //从任务池中销毁任务
    FCFS_schedule(); //调度
}

myTCB* FCFS_nextTask(void){
    //从就绪队列中取出一个任务
    if(check_rdyQ()){
        return rdyQ->idleTsk;
    }
    else{
        myTCB* tsk = rdyQ->head;
        rdyQ->head = rdyQ->head->next_Queue; //取出第一个就绪任务
        if(rdyQ->head == (myTCB*)NULL) rdyQ->tail = (myTCB*)NULL;
        return tsk;
    }
}

myTCB* currentTsk; //当前任务
unsigned long* preTskStackPointer; //上一个任务的栈指针
void FCFS_schedule(void){
    //调度 
    myTCB* tsk = nextTask();
    if(tsk->tid == 0 && currentTsk->tid == 0) return; //如果当前任务以及下一个任务都是idle任务，则不做任何操作
    else{
        currentTsk = tsk;
        rdyQ->idleTsk->stack_top = rdyQ->idleTsk->stack_base;
        stack_init(&rdyQ->idleTsk->stack_top,idleTsk_func);
        context_switch(&preTskStackPointer, tsk->stack_top); //上下文切换，将当前任务的栈指针存储在preTskStackPointer中，将下一个任务的栈指针传入，进行上下文切换
    }
}