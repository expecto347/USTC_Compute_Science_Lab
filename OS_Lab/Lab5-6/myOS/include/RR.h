#ifndef __RR_H__
#define __RR_H__
#include "task.h"

void RR_schedule(void);
void RR_init(void);
void RR_tskStart(myTCB *tsk);
void RR_tskEnd(void);
myTCB* RR_nextTask(void);

#endif