#ifndef __FCFS_H_
#define __FCFS_H_
#include "task.h"

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列
#endif