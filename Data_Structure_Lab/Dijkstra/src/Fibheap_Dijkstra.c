#include "Fibheap_Dijkstra.h"

void FibDijkstra(VNode *graph, int n, int start, int end) {
    // init
    int i;
    int *dist = (int *)malloc(sizeof(int) * n);
    int *path = (int *)malloc(sizeof(int) * n);
    int *visited = (int *)malloc(sizeof(int) * n);
    for (i = 0; i < n; i++) {
        dist[i] = INFINITY_INT;
        path[i] = -1;
        visited[i] = 0;
    }
    dist[start] = 0;
    // init fibheap
    fibheap_t fibheap = fibheap_new();
    fibnode_t *fibnode = (fibnode_t *)malloc(sizeof(fibnode_t) * n);
    for (i = 0; i < n; i++) {
        fibnode[i] = fibheap_insert(fibheap, dist[i], (void *)i);
    }
    // dijkstra  
    int u, v, w;
    while (!fibheap_empty(fibheap)) {
        u = (int)fibheap_extract_min(fibheap);
        visited[u] = 1;
        if (u == end) {
            break;
        }
        ArcNode *arcnode = graph[u].firstarc;
        while (arcnode != NULL) {
            v = arcnode->adjvex;
            w = arcnode->weight;
            if (visited[v] == 0 && dist[u] + w < dist[v]) {
                dist[v] = dist[u] + w;
                path[v] = u;
                fibheap_replace_key(fibheap, fibnode[v], dist[v]);
            }
            arcnode = arcnode->nextarc;
        }
    }
    // print
    printf("FibDijkstra: %d -> %d: %d\n", start, end, dist[end]);
    printf("Path: ");
    int *stack = (int *)malloc(sizeof(int) * n);
    int top = -1;
    i = end;
    while (i != -1) {
        stack[++top] = i;
        i = path[i];
    }
    while (top != 0) {
        printf("%d --> ", stack[top--]);
    }
    printf("%d", stack[top]);
    printf("\n");
}