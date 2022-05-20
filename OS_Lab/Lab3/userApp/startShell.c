#include "io.h"
#include "myPrintk.h"
#include "uart.h"
#include "vga.h"
#include "i8253.h"
#include "i8259A.h"
#include "tick.h"
#include "wallClock.h"

typedef struct myCommand {
    char name[80];
    char help_content[200];
    int (*func)(int argc, char (*argv)[8]);
    int f; //想用这个数字来表明是否存在这个指令
}myCommand; 

int func_cmd(int argc, char (*argv)[8]);
int func_help(int argc, char (*argv)[8]);
int func_NULL(int argc, char (*argv)[8]);

myCommand command[3]={
                        {"cmd\0","List all command\n\0",func_cmd,1},
                        {"help\0","Usage: help [command]\nDisplay info about [command]\n\0",func_help,1},
                        {"NULL\0","There's no Commend\n\0",func_NULL,0}
}; //指令初始化

void startShell(void){
//我们通过串口来实现数据的输入
char BUF[256]; //输入缓存区
int BUF_len=0;	//输入缓存区的长度

	int argc = 1;
    char argv[8][8];

    do{
        argc = 1;
        BUF_len=0; 

        myPrintk(0x07,"Student>>\0");
        while((BUF[BUF_len]=uart_get_char())!='\r'){
            uart_put_char(BUF[BUF_len]);//将串口输入的数存入BUF数组中
            BUF_len++;  //BUF数组的长度加
        }
        // uart_put_chars(" -pseudo_terminal\0");
        uart_put_char('\n');
        
        int i,j=0,t_1=1,t_2=0;
        for(i=0;BUF[i]!='\r';i++){ //将BUF[i]的字符读进argv中
            if(BUF[i] == ' '){
                argc++;
                j = 0;
            }
            else{
                argv[argc-1][j] = BUF[i];
                argv[argc-1][j+1] = '\0';
                j++;
            }
        }

        for(i=0; command[i].f != 0; i++){ //如果函数存在，f=1，那么执行循环
            t_1 = 1;
            char *name = command[i].name;
            for(j=0; (argv[0][j]!='\0')||(*name != '\0'); j++){
                if(argv[0][j] != *name) { //判断是否相等，相等则不变，否则将t设置为0；退出循环
                    t_1 = 0;
                    break;
                }
                name++;
            }

            if(t_1){ //如果相等，那么就执行相应的函数
            command[i].func(argc,argv);
            t_2 = 1;
            break;
            }
        }

        if(t_2 == 0){ //如果没有找到该函数，那么输出该指令未找到
            myPrintf(0x7, "Command '\0");                
            myPrintk(0x7, argv[0]);
            myPrintf(0x7, "' not found.\n\0");
        }

        for(i=0;i<8;i++){
            argv[i][0] = '\0'; //将每一个argv字符归零，防止直接按回车会出现显示上一条命令的错误
        }
    }while(1);

}

int func_cmd(int argc, char (*argv)[8]){
    if(argc == 1){
        for(int i=0; command[i].f != 0; i++){ //依次寻找指令的名称并且输出
        myPrintk(0x7,command[i].name);
        myPrintk(0x7,"\n");
        }
    }
    else{
        myPrintk(0x7,"Please enter an valid option!\n\0"); //如果参数不合法，那么提示输出合法参数
    }	
} 

int func_help(int argc, char (*argv)[8]){
    if(argc == 1){
        myPrintk(0x7, command[1].help_content); //若没有参数，那么就输出自身内容
    }
    else if(argc == 2){
        int i,j,t_1=1,t_2=0;
        for(i=0; command[i].f != 0; i++){ //如果函数存在，f=1，那么执行循环
            t_1 = 1;
            char *name = command[i].name;
            for(j=0; (argv[1][j]!='\0')||(*name != '\0'); j++){
                if(argv[1][j] != *name) { //判断是否相等，相等则不变，否则将t设置为0；退出循环
                    t_1 = 0;
                    break;
                }
                name++;
            }

            if(t_1){ //如果相等，那么就执行相应的函数
            myPrintk(0x7,command[i].help_content);
            t_2 = 1; //并将t_2设置为1，即告诉下面指令不执行
            break;
            }
        }

        if(t_2 == 0){ //如果没有找到该函数，那么输出该指令帮助未找到
            myPrintf(0x7, "Command '\0");                
            myPrintk(0x7, argv[1]);
            myPrintf(0x7, "' not found. Please check your option!\n\0");
        }
    }
    else{
        myPrintk(0x7,"Please enter an valid option!\n\0"); //如果参数不合法，那么提示输出合法参数
    }
	
}

int func_NULL(int argc, char (*argv)[8]){

}
