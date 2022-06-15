#include "../../include/task.h"
#include "../../include/myPrintk.h"
#include "../../include/tsk_arr.h"
#include "../../include/schedule.h"

int time = 0;
void oneTickUpdateTsk(void){
    time = time + 10;
    if(time % 1000) arrangeTsk(time/1000);
}

void arrangeTsk(int time){
    myTCB* tsk = TCB_list->head;
    while(tsk){
        if(tsk->status == waiting && tsk->tskPara->arrTime == time){
            tsk->status = ready;
            tskStart(tsk);
        }
        tsk = tsk->next_myTCB;
    }
}