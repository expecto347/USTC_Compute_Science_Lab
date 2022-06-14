#ifndef __FCFS_H_
#define __FCFS_H_
#include "task.h"

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列


void scheduleFCFS(void);
void init_rdyQ(void);
void tskStart(myTCB *tsk);
void tskEnd(void);
void walk_rdyQ(void);

extern unsigned long* preTskStackPointer;
extern rdyQueue* rdyQ; //维护一个就绪队列
extern myTCB currentTsk; //当前任务
#endif