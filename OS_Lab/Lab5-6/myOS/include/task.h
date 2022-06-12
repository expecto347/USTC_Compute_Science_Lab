#ifndef __TASK_H_
#define __TASK_H_

void stack_init(unsigned long **stk, void (*task)(void));
void init_TCB_pool(void);
int createTsk(void (*tskBody)(void));
void destroyTsk(int tskIndex);

typedef struct myTCB{
	unsigned long tid;
	unsigned long status;
    //unsigned long priority;
    unsigned long* stack_pointer;
    unsigned long* stack_base;
    myTCB* next_myTCB;
} myTCB;

typedef struct TCB_pool{
    myTCB* head;
    unsigned long size;
} TCB_pool;

extern unsigned long tid;
extern TCB_pool* TCB_list;

#endif