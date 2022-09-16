#ifndef __FCFS_H_
#define __FCFS_H_
#include "task.h"

void FCFS_schedule(void);
void FCFS_tskStart(myTCB *tsk);
void FCFS_tskEnd(void);
myTCB* FCFS_nextTask(void);

#endif