#include "Compress.h"

VNode *create_Compress_Graph(char *filename, int *v) {
    FILE *fp;
    int i;
    fp = fopen(filename, "r");
    if (fp == NULL) {
    printf("Error opening file!\n");
    exit(1);
    }
    // get number of vertices
    int count, n, max;
    count = 0;
    max = 0; // max value of int
    while(fscanf(fp, "%d", &n) != EOF) {
        count++;
        if(!(count % 3)) continue;
        else if(n > max) {
            max = n;
        }
    }

    *v = max + 1; // number of vertices
    printf("Number of vertices: %d\n", *v);

    // create graph
    VNode *graph = (VNode *)malloc(sizeof(VNode) * (max + 1)); // +1 for 0
    if(graph == NULL) {
        printf("Error allocating memory!\n");
        exit(1);
    }

    // initialize graph
    for(i = 0; i < max + 1; i++) {
        graph[i].firstarc = NULL;
    }

    // fill graph
    rewind(fp);
    int v1, v2, w;
    while(fscanf(fp, "%d %d %d", &v1, &v2, &w) != EOF) {
        ArcNode *p = (ArcNode *)malloc(sizeof(ArcNode));
        p->adjvex = v2;
        p->weight = w;
        p->nextarc = graph[v1].firstarc;
        graph[v1].firstarc = p;

        p = (ArcNode *)malloc(sizeof(ArcNode));
        p->adjvex = v1;
        p->weight = w;
        p->nextarc = graph[v2].firstarc;
        graph[v2].firstarc = p;
    }

    fclose(fp);

    return graph;
}

void print_Compress_Graph(VNode *graph, int n) {
    int i;
    ArcNode *p;
    for(i = 0; i < n; i++) {
        p = graph[i].firstarc;
        while(p != NULL) {
            printf("%d %d %d\n", i, p->adjvex, p->weight);
            p = p->nextarc;
        }
    }
}