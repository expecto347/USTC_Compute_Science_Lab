#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct ArcNode{
    int adjvex;
    struct ArcNode *nextarc;
}ArcNode;

typedef struct VNode{
    ArcNode *firstarc;
}VNode;

typedef struct Graph{
    char *visited;
    VNode *adjlist;
    int n, m;
}Graph;

Graph *createGraph(int n, int m);
void addEdge(Graph *graph, int u, int v);
char canReach(Graph *graph, int u, int v);

int main(){
    int n, m;
    scanf("%d %d", &n, &m);
    Graph* graph = createGraph(n, m);

    for(int i = 0; i < m; i++){
        int u, v;
        scanf("%d %d", &u, &v);
        addEdge(graph, u, v);
    }

    int q;
    scanf("%d", &q);
    for(int i = 0; i < q; i++){
        int u, v, w;
        scanf("%d %d %d", &w, &u, &v);

        if(w)
            addEdge(graph, u, v);
        else
            printf("%d\n", canReach(graph, u, v)); 
        // reset visited
        memset(graph->visited, 0, sizeof(char) * (n + 1));
    }
    return 0;
}

Graph *createGraph(int n, int m){
    Graph *graph = (Graph*)malloc(sizeof(Graph));
    graph->n = n;
    graph->m = m;
    graph->visited = (char*)malloc(sizeof(char) * (n + 1));
    graph->adjlist = (VNode*)malloc(sizeof(VNode) * (n + 1));

    // set all visited to false
    memset(graph->visited, 0, sizeof(char) * (n + 1));

    // set all firstarc to NULL
    memset(graph->adjlist, 0, sizeof(VNode) * (n + 1));
    return graph;
}

void addEdge(Graph *graph, int u, int v){
    ArcNode *arc = (ArcNode*)malloc(sizeof(ArcNode));
    arc->adjvex = v;
    arc->nextarc = graph->adjlist[u].firstarc;
    graph->adjlist[u].firstarc = arc;
    graph->m++;
}

char canReach(Graph *graph, int u, int v){
    if(u == v)
        return 1;
    graph->visited[u] = 1;
    for(ArcNode *arc = graph->adjlist[u].firstarc; arc != NULL; arc = arc->nextarc){
        if(!graph->visited[arc->adjvex] && canReach(graph, arc->adjvex, v))
            return 1;
    }
    return 0;
}