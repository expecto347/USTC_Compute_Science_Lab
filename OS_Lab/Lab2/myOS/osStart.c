#include "vga.h"
#include "myPrintk.h"

/* 此文件无需修改 */

// 用户程序入口
void myMain(void);

void osStart(void) {

    clear_screen();
    myPrintk(0x2, "Starting the OS...\n");
    myMain();
    myPrintk(0x2, "Stop running... shutdown\n");
    while(1); 
}
