#ifndef __SCHEDULE_H__
#define __SCHEDULE_H__
#include "task.h"

#define FCFS 1
#define RR 2
#define PRIORITY 3

extern int schedule_type;

void schedule(void);
void tskStart(myTCB* tsk);
void tskEnd(void);
myTCB* nextTask(void);

#endif