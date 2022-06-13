#include "../../include/myPrintk.h"
#include "../../include/kmalloc.h"
#include "../../include/task.h"
#define NULL 0 //定义一个空指针

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列

rdyQueue* rdyQ; //维护一个就绪队列

void idleTsk(void);

void init_rdyQ(void){
    rdyQ = (rdyQueue*)kmalloc(sizeof(rdyQueue));
    rdyQ->head = (myTCB*)NULL;
    rdyQ->tail = (myTCB*)NULL;
    rdyQ->idleTsk = idleTsk;
}//初始化就绪队列