#ifndef __TASK_H_
#define __TASK_H_
#define ready 0 // ready 状态
#define waiting 1 // waiting 状态
#define myTCB_SIZE 20

typedef struct myTCB{
	unsigned long tid; // 任务ID
	unsigned long status; // 任务状态
    //unsigned long priority;
    unsigned long* stack_top; // 栈顶指针
    unsigned long* stack_base; // 栈底指针
    struct myTCB* next_myTCB; //TCB_pool中的下一个myTCB
    struct myTCB* next_Queue; //排队队列中的下一个myTCB
} myTCB;

typedef struct TCB_pool{
    myTCB* head;
    unsigned long size;
} TCB_pool;

void stack_init(unsigned long **stk, void (*task)(void));
void init_TCB_pool(void);
int createTsk(void (*tskBody)(void));
void destroyTsk(int tskIndex);
void context_switch(unsigned long **prevTskStkAddr, unsigned long *nextTskStk);
myTCB* get_Tsk(int tid);
void walk_TCB_list(void);

extern unsigned long tid;
extern TCB_pool* TCB_list;

#endif