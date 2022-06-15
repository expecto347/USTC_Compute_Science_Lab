#include "../../include/task.h"
#include "../../include/myPrintk.h"
#include "../../include/tsk_arr.h"
#include "../../include/schedule.h"

int time;
int run = 0;
void oneTickUpdateTsk(void){
    if(time % 1000 == 0) {
        arrangeTsk();
        if(schedule_type == PRIORITY && run) schedule(); //优先级调度
    }
    time = time + 10;
}

void arrangeTsk(){
    myTCB* tsk = TCB_list->head;
    while(tsk){
        if((tsk->status) == waiting && (tsk->tskPara->arrTime == time / 1000)){
            tskStart(tsk);
        }
        tsk = tsk->next_myTCB;
    }
}