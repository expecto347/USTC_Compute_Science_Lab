#ifndef __PRIORITY_H__
#define __PRIORITY_H__
#include "task.h"

void PRIORITY_schedule(void);
void PRIORITY_init(void);
void PRIORITY_tskStart(myTCB *tsk);
void PRIORITY_tskEnd(void);
myTCB* PRIORITY_nextTask(void);

#endif