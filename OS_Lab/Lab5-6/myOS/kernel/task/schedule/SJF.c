#include "../../../include/SJF.h"
#include "../../../include/myPrintk.h"
void SJF_tskStart(myTCB *tsk){
    //将任务插入就绪队列
    if(tsk->status == ready) myPrintk(0x5,"tskStart: task is already start!\n");
    else{
        tsk->status = ready;
        if(check_rdyQ()){
            rdyQ->head = tsk;
        }
        else{
            rdyQ->tail->next_Queue = tsk;
        }   
        rdyQ->tail = tsk; //将task插入尾部
    }
}

myTCB* currentTsk; //当前任务
void SJF_schedule(void){
    //调度 
    myTCB* tsk = SJF_nextTask();
    if(tsk->tid == 0 && currentTsk->tid == 0) return; //如果当前任务以及下一个任务都是idle任务，则不做任何操作
    else{
        currentTsk = tsk;
        rdyQ->idleTsk->stack_top = rdyQ->idleTsk->stack_base;
        stack_init(&rdyQ->idleTsk->stack_top,idleTsk_func);
        context_switch(&preTskStackPointer, tsk->stack_top); //上下文切换，将当前任务的栈指针存储在preTskStackPointer中，将下一个任务的栈指针传入，进行上下文切换
    }
}

void SJF_tskEnd(void){
    //将任务从就绪队列中删除
    destroyTsk(currentTsk->tid); //从任务池中销毁任务

    myTCB* tsk = rdyQ->head;
    myTCB* preTsk = 0;
    while(tsk != 0){
        if(tsk == currentTsk){
            if(preTsk == 0){
                rdyQ->head = tsk->next_Queue;
            }
            else{
                preTsk->next_Queue = tsk->next_Queue;
            }
            SJF_schedule();
        }
        preTsk = tsk;
        tsk = tsk->next_Queue;
    } //从就绪队列中删除任务
}

myTCB* SJF_nextTask(void){
    if(check_rdyQ()) return rdyQ->idleTsk; //如果任务队列为空，则返回idle任务
    else{
        myTCB* tmp;
        myTCB* min;
        tmp = rdyQ->head->next_Queue;
        min = rdyQ->head;

        while(tmp != 0){
            if(tmp->tskPara->exeTime < min->tskPara->exeTime){
                min = tmp;
            }
            tmp = tmp->next_Queue;
        }
        return min;
    }
}
