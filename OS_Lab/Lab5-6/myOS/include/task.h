#ifndef __TASK_H_
#define __TASK_H_

void stack_init(unsigned long **stk, void (*task)(void));
int createTsk(void (*tskBody)(void));

unsigned long tid;

#endif