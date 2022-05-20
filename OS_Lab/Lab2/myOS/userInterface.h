#ifndef __USERINTERFACE_H__
#define __USERINTERFACE_H__

/* 内核提供给用户程序的函数接口 
 * 本实验中，为测试使用，myPrintk 也包含在内 */

int myPrintf(int color, const char *format, ...);
int myPrintk(int color, const char *format, ...);

#endif
