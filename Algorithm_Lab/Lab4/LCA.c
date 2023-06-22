#include <stdio.h>
#include <stdlib.h>

#define MAXN 6000
#define LOG 15

typedef struct pair {
    int first;
    int second;
} Pair;

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

typedef struct Node {
    int v, w;
    struct Node* next;
} Node;

Node* adj[MAXN];
int up[MAXN][LOG];
Pair dp[MAXN][LOG];
int h[MAXN];

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
    int n;
    scanf("%d", &n);
    // int u[n], v[n], w[n];
    for (int i = 0; i < n - 1; i++) {
        int u, v, w;
        scanf("%d %d %d", &u, &v, &w);
        Node* node = (Node*)malloc(sizeof(Node));
        node->v = v;
        node->w = w;
        node->next = adj[u];
        adj[u] = node;
        node = (Node*)malloc(sizeof(Node));
        node->v = u;
        node->w = w;
        node->next = adj[v];
        adj[v] = node;

    }

    printf("\n");

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

    int u_1, v_1;
    scanf("%d %d", &u_1, &v_1);
    Pair ans = lca(u_1, v_1);
    printf("%d %d\n", ans.first, ans.second);
    return 0;
}