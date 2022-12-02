#ifndef GRAPH_H
#define GRAPH_H
#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#define INFINITY_INT 1073741823 //2^30 - 1
int **createGraph(char *filename, int *v);
void printGraph(int **graph, int n);
#endif