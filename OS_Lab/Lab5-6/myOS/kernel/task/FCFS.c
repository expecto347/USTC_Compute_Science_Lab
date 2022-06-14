#include "../../include/myPrintk.h"
#include "../../include/kmalloc.h"
#include "../../include/FCFS.h"
#define NULL 0 //定义一个空指针

rdyQueue* rdyQ; //维护一个就绪队列

void idleTsk_func(void){
    myPrintk(0x7,"idleTsk is running\n");
    myPrintk(0x7,"Waiting for new task!\n");
    while(1){
        ;
    }
}

void init_rdyQ(void){
    createTsk(idleTsk_func); //初始化idle任务
    rdyQ = (rdyQueue*)kmalloc(sizeof(rdyQueue));
    rdyQ->head = (myTCB*)NULL;
    rdyQ->tail = (myTCB*)NULL;
    rdyQ->idleTsk = TCB_list->head;
}//初始化就绪队列

int check_rdyQ(void){
    //检查就绪队列是否为空，如果是空的则返回1,如果不是空的则返回0
    return ((rdyQ->head == (myTCB*)NULL) && (rdyQ->tail == (myTCB*)NULL));
}//检查就绪队列是否为空

myTCB currentTsk; //当前任务
void tskStart(myTCB *tsk){
    //将任务插入就绪队列
    if(tsk->status == ready) myPrintk(0x5,"tskStart: task is already start!\n");
    else{
        tsk->status = ready;
        currentTsk = *tsk;
        if(check_rdyQ()){
            rdyQ->head = tsk;
        }
        else{
            rdyQ->tail->next_Queue = tsk;
        }   
        rdyQ->tail = tsk; //将task插入尾部
    }
}

void tskEnd(void){
    //将任务从就绪队列中删除
    destroyTsk(currentTsk.tid);
}

myTCB* nextTask(void){
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

unsigned long* preTskStackPointer; //上一个任务的栈指针
void scheduleFCFS(void){
    //调度 
    myTCB* tsk = nextTask();
    context_switch(&preTskStackPointer, tsk->stack_top); //上下文切换，将当前任务的栈指针存储在preTskStackPointer中，将下一个任务的栈指针传入，进行上下文切换
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