#include "../../include/task.h"
#include "../../include/myPrintk.h"
#include "../../include/tsk_arr.h"
#include "../../include/schedule.h"

int time;
void oneTickUpdateTsk(void){
    if(time % 1000 == 0) arrangeTsk();
    time = time + 10;

    if(schedule_type == PRIORITY) schedule(); //优先级调度
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