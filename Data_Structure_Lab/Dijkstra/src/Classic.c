#include "Classic.h"

void Classic_Dijkstra(int **Graph, int n, int start, int end) {
    int cost[n][n], distance[n], pred[n];
    int visited[n], count, mindistance, nextnode, i, j;

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
    printf("Path: %d", end);
    j = end;
    do {
        j = pred[j];
        printf(" <- %d", j);
    } while (j != start);
    printf("\n");

    return;
}