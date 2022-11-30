#include "Graph.h"
#include "Classic.h"

// return graph created by input txt
int **createGraph(char *filename, int *v) {
    FILE *fp;
    int i, j, **graph;
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
    if(graph = (int **)malloc(sizeof(int *) * (max + 1))); // +1 for 0
    else{
        printf("Error allocating memory!\n");
        exit(1);
    }
    for(i = 0; i < max + 1; i++) {
        if(graph[i] = (int *)malloc(sizeof(int) * (max + 1)));
        else{
            printf("Error allocating memory!\n");
            exit(1);
        }
    }

    // initialize graph
    for(i = 0; i < max + 1; i++) {
        for(j = 0; j < max + 1; j++) {
            graph[i][j] = 0;
        }
    }

    // fill graph
    rewind(fp);
    int v1, v2, w;
    while(fscanf(fp, "%d %d %d", &v1, &v2, &w) != EOF) {
        graph[v1][v2] = w;
        graph[v2][v1] = w; // undirected graph
    }

    fclose(fp);

    return graph;
}

void printGraph(int **graph, int n) {
    int i, j;
    for(i = 0; i < n; i++) {
        for(j = 0; j < n; j++) {
            printf("%d ", graph[i][j]);
        }
        printf("\n");
    }
}