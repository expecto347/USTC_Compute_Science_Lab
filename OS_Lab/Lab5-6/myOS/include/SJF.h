#ifndef __SJF_H__
#define __SJF_H__
#include "task.h"

void SJF_schedule(void);
void SJF_init(void);
void SJF_tskStart(myTCB *tsk);
void SJF_tskEnd(void);
myTCB* SJF_nextTask(void);

#endif