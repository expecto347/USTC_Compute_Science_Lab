#ifndef COMPRESS_H
#define COMPRESS_H

#include <stdio.h>
#include <stdlib.h>
typedef struct ArcNode{
    int adjvex;
    struct ArcNode *nextarc; //指向下一个邻接点
    int weight;
 }ArcNode; /* 表结点 */

typedef struct VNode{
    ArcNode *firstarc; //指向第一个邻接点
 }VNode; /* 头结点 */

void print_Compress_Graph(VNode *graph, int n);
VNode *create_Compress_Graph(char *filename, int *v);
#endif