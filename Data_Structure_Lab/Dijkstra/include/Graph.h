#ifndef GRAPH
#define GRAPH
#include<stdio.h>
#include<stdlib.h>

#define INFINITY 1073741823 //2^30 - 1
int **createGraph(char *filename, int *v);
void printGraph(int **graph, int n);
#endif