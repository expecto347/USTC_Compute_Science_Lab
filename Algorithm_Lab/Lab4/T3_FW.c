#include<stdio.h>
#include<stdlib.h>

#define INF 0x0FFFFFFF

void floydWarshall (int **graph, int V, int **dist){
    int i, j, k;

    for (i = 0; i < V; i++)
        for (j = 0; j < V; j++)
            dist[i][j] = graph[i][j];

    for (k = 0; k < V; k++)
        for (i = 0; i < V; i++)
            for (j = 0; j < V; j++){
                if (dist[i][k] + dist[k][j] < dist[i][j])
                    dist[i][j] = dist[i][k] + dist[k][j];
            }

    // check for negative weight cycle
    for (i = 0; i < V; i++){
        if (dist[i][i] < 0){
            printf("negative-weight cycle\n");
            exit(0);
        }
    }
    return;
}

int main(){
    int n, m;
    scanf("%d %d", &n, &m);
    int **graph = (int **)malloc(n * sizeof(int *));
    for (int i = 0; i < n; i++){
        graph[i] = (int *)malloc(n * sizeof(int));
        for (int j = 0; j < n; j++){
            graph[i][j] = INF;
        }
    }

    for (int i = 0; i < m; i++){
        int u, v, w;
        scanf("%d %d %d", &u, &v, &w);
        graph[u -1][v - 1] = w;
    }

    // Allocate memory for dist matrix
    int **dist = (int **)malloc(n * sizeof(int *));
    for (int i = 0; i < n; i++){
        dist[i] = (int *)malloc(n * sizeof(int));
    }

    floydWarshall(graph, n, dist);

    int q;
    scanf("%d", &q);

    for(int i = 0; i < q; i++){
        int u, v;
        scanf("%d %d", &u, &v);
        if (dist[u - 1][v - 1] == INF){
            printf("%d\n", INF);
        }
        else{
            printf("%d\n", dist[u - 1][v - 1]);
        }
    }
    
    // Free memory of graph matrix
    for (int i = 0; i < n; i++){
        free(graph[i]);
    }
    free(graph);

    return 0;
}