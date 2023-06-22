#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define INF 1e9

struct Edge {
    int v, w, next;
};

struct Node {
    int dis, id;
};

struct Edge e[42005];
int head[605], vis[605], t[605];
int cnt, n, m;
long long h[605], dis[605];

void addedge(int u, int v, int w) {
    e[++cnt].v = v;
    e[cnt].w = w;
    e[cnt].next = head[u];
    head[u] = cnt;
}

int spfa(int s) {
    int queue[605];
    int front = 0, rear = 0;
    memset(h, 63, sizeof(h));
    h[s] = 0;
    vis[s] = 1;
    queue[rear++] = s;

    while (front != rear) {
        int u = queue[front++];
        vis[u] = 0;

        for (int i = head[u]; i; i = e[i].next) {
            int v = e[i].v;

            if (h[v] > h[u] + e[i].w) {
                h[v] = h[u] + e[i].w;

                if (!vis[v]) {
                    vis[v] = 1;
                    queue[rear++] = v;
                    t[v]++;

                    if (t[v] == n + 1)
                        return 0;
                }
            }
        }
    }

    return 1;
}

void dijkstra(int s) {
    struct Node queue[605];
    int front = 0, rear = 0;

    for (int i = 1; i <= n; i++)
        dis[i] = INF;

    memset(vis, 0, sizeof(vis));
    dis[s] = 0;
    queue[rear].dis = 0;
    queue[rear++].id = s;

    while (front != rear) {
        int u = queue[front++].id;

        if (vis[u])
            continue;

        vis[u] = 1;

        for (int i = head[u]; i; i = e[i].next) {
            int v = e[i].v;

            if (dis[v] > dis[u] + e[i].w) {
                dis[v] = dis[u] + e[i].w;

                if (!vis[v]) {
                    queue[rear].dis = dis[v];
                    queue[rear++].id = v;
                }
            }
        }
    }
}

int main() {
    int q;

    scanf("%d%d", &n, &m);

    for (int i = 1; i <= m; i++) {
        int u, v, w;
        scanf("%d%d%d", &u, &v, &w);
        addedge(u, v, w);
    }

    for (int i = 1; i <= n; i++)
        addedge(0, i, 0);

    if (!spfa(0)) {
        printf("negative-weight cycle\n");
        return 0;
    }

    for (int u = 1; u <= n; u++) {
        for (int i = head[u]; i; i = e[i].next) {
            e[i].w += h[u] - h[e[i].v];
        }
    }

    scanf("%d", &q);

    for (int i = 0; i < q; i++) {
        int u, v;
        scanf("%d%d", &u, &v);
        dijkstra(u);

        if (dis[v] == INF)
            printf("268435455\n");
        else
            printf("%lld\n", dis[v] + h[v] - h[u]);
    }

    return 0;
}
