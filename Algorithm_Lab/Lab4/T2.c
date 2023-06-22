#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<limits.h>

#define MAXN 6000
#define LOG 15

typedef struct pair {
    int first;
    int second;
} Pair;

typedef struct Node {
    int v, w;
    struct Node* next;
} Node;

struct Edge {
    int src, dest, weight;
    char isMST;
};

struct Graph {
    int V, E;
    struct Edge* edge;
};

Node* adj[MAXN];
int up[MAXN][LOG];
Pair dp[MAXN][LOG];
int h[MAXN];

int min(int a, int b){
    return a < b ? a : b;
}

struct Graph* createGraph(int V, int E) {
    struct Graph* graph = (struct Graph*) malloc(sizeof(struct Graph));
    graph->V = V;
    graph->E = E;

    graph->edge = (struct Edge*) malloc(graph->E * sizeof(struct Edge));

    return graph;
}

struct subset {
    int parent;
    int rank;
};

int find(struct subset subsets[], int i) {
    if (subsets[i].parent != i)
        subsets[i].parent = find(subsets, subsets[i].parent);

    return subsets[i].parent;
}

void Union(struct subset subsets[], int x, int y) {
    int xroot = find(subsets, x);
    int yroot = find(subsets, y);

    if (subsets[xroot].rank < subsets[yroot].rank)
        subsets[xroot].parent = yroot;
    else if (subsets[xroot].rank > subsets[yroot].rank)
        subsets[yroot].parent = xroot;
    else {
        subsets[yroot].parent = xroot;
        subsets[xroot].rank++;
    }
}

int myComp(const void* a, const void* b) {
    struct Edge* a1 = (struct Edge*)a;
    struct Edge* b1 = (struct Edge*)b;
    return a1->weight > b1->weight;
}

void KruskalMST(struct Graph* graph, struct Edge* result) {
    int V = graph->V;
    int e = 0;
    int i = 0;

    qsort(graph->edge, graph->E, sizeof(graph->edge[0]), myComp);

    struct subset *subsets = (struct subset*) malloc(V * sizeof(struct subset));

    for (int v = 0; v < V; ++v) {
        subsets[v].parent = v;
        subsets[v].rank = 0;
    }

    while (e < V - 1) {
        struct Edge next_edge = graph->edge[i++];

        int x = find(subsets, next_edge.src); // find parent of src
        int y = find(subsets, next_edge.dest); // find parent of dest

        if (x != y) {
            result[e++] = next_edge; // add to result
            graph->edge[i - 1].isMST = 1;
            Union(subsets, x, y);
        }
    }

    free(subsets);
    return;
}


Pair combine(Pair a, Pair b) {
    int v[4] = {a.first, a.second, b.first, b.second};
    int topTwo = -3, topOne = -2;
    for (int i = 0; i < 4; i++) {
        if (v[i] > topOne) {
            topTwo = topOne;
            topOne = v[i];
        } else if (v[i] > topTwo && v[i] < topOne) {
            topTwo = v[i];
        }
    }
    Pair res = {topOne, topTwo};
    return res;
}

void dfs(int u, int par, int d) {
    h[u] = 1 + h[par];
    up[u][0] = par;
    dp[u][0].first = d;
    dp[u][0].second = -1;
    Node* v = adj[u];
    while (v != NULL) {
        if (v->v != par) {
            dfs(v->v, u, v->w);
        }
        v = v->next;
    }
}

Pair lca(int u, int v) {
    Pair ans = {-2, -3};
    if (h[u] < h[v]) {
        int temp = u;
        u = v;
        v = temp;
    }
    for (int i = LOG - 1; i >= 0; i--) {
        if (h[u] - h[v] >= (1 << i)) {
            ans = combine(ans, dp[u][i]);
            u = up[u][i];
        }
    }
    if (u == v) {
        return ans;
    }
    for (int i = LOG - 1; i >= 0; i--) {
        if (up[u][i] != -1 && up[v][i] != -1 && up[u][i] != up[v][i]) {
            ans = combine(ans, combine(dp[u][i], dp[v][i]));
            u = up[u][i];
            v = up[v][i];
        }
    }
    ans = combine(ans, combine(dp[u][0], dp[v][0]));
    return ans;
}

int main() {
    int n, m;
    scanf("%d %d", &n, &m);
    struct Graph* graph = createGraph(n, m);

    for(int i = 0; i < m; i++){
        int u, v, w;
        scanf("%d %d %d", &u, &v, &w);
        graph->edge[i].src = u - 1;
        graph->edge[i].dest = v - 1;
        graph->edge[i].weight = w;
        graph->edge[i].isMST = 0;
    }

    struct Edge result[n];  
    KruskalMST(graph, result);

    int minCost = 0;
    for (int i = 0; i < n - 1; ++i)
        minCost += result[i].weight;
    printf("%d\n", minCost);

    for (int i = 0; i < n - 1; i++) {
        int u, v, w;
        u = result[i].src + 1;
        v = result[i].dest + 1;
        w = result[i].weight;
        Node* node = malloc(sizeof(Node));
        node->v = v;
        node->w = w;
        node->next = adj[u];
        adj[u] = node;

        node = malloc(sizeof(Node));
        node->v = u;
        node->w = w;
        node->next = adj[v];
        adj[v] = node;
    }
    dfs(1, 0, 0);

    for (int i = 1; i < LOG; i++) {
        for (int j = 1; j <= n; j++) {
            if (up[j][i - 1] != -1) {
                int ancestor = up[j][i - 1];
                up[j][i] = up[ancestor][i - 1];
                dp[j][i] = combine(dp[j][i - 1], dp[ancestor][i - 1]);
            }
        }
    }

    int ans = INT_MAX;
    Pair p;
    for(int i = 0; i < m; i++){
        if (!graph->edge[i].isMST){
            int w = graph->edge[i].weight;
            p = lca(graph->edge[i].src + 1, graph->edge[i].dest + 1);
            ans = min(ans, minCost + w - p.first);
        }          
    }

    printf("%d\n", ans);
    return 0;
}
