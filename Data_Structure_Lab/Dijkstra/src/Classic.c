#include "Classic.h"

void Classic_Dijkstra(int **Graph, int n, int start, int end) {
    int distance[n], pred[n];
    int **cost;
    int visited[n], count, mindistance, nextnode, i, j;

    //Initialize cost
    cost = (int **) malloc(n * sizeof(int *));
    for (i = 0; i < n; i++) {
        cost[i] = (int *) malloc(n * sizeof(int));
    }

    // Creating cost matrix
    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++)
        if (Graph[i][j] == 0)
            cost[i][j] = INFINITY_INT;
        else
            cost[i][j] = Graph[i][j];

    for (i = 0; i < n; i++) { // Initializing pred[], distance[] and visited[]
        distance[i] = cost[start][i];
        pred[i] = start;
        visited[i] = 0;
    }

    distance[start] = 0;
    visited[start] = 1;
    pred[start] = -1;
    count = 1;

    while (count < n - 1) { // Finding the shortest path for each node
        mindistance = INFINITY_INT;
        for (i = 0; i < n; i++) // Nextnode gives the node at minimum distance
            if (distance[i] < mindistance && !visited[i]) {
                mindistance = distance[i];
                nextnode = i;
            }

        visited[nextnode] = 1;
        for (i = 0; i < n; i++) // Check if a better path exists through nextnode
            if (!visited[i])
                if (mindistance + cost[nextnode][i] < distance[i]) {
                    distance[i] = mindistance + cost[nextnode][i];
                    pred[i] = nextnode;
                }
        count++;
    }

    // Printing the distance
    printf("Distance from %d to %d: %d\n", start, end, distance[end]);

    // Printing the path
    printf("Path: ");
    int *stack = (int *)malloc(sizeof(int) * n);
    int top = -1;
    i = end;
    while (i != -1) {
        stack[++top] = i;
        i = pred[i];
    }
    while (top != 0) {
        printf("%d --> ", stack[top--]);
    }
    printf("%d", stack[top]);
    printf("\n");
}