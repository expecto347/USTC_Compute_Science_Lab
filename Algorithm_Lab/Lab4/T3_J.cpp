#include <cstring>
#include <iostream>
#include <queue>
#define INF 1e9
using namespace std;
struct edge {
  int v, w, next;
} e[10005];
struct node {
  int dis, id;
  bool operator<(const node& a) const { return dis > a.dis; }
  node(int d, int x) { dis = d, id = x; }
};
int head[5005], vis[5005], t[5005];
int cnt, n, m;
long long h[5005], dis[5005];
void addedge(int u, int v, int w) {
  e[++cnt].v = v;
  e[cnt].w = w;
  e[cnt].next = head[u];
  head[u] = cnt;
}
bool spfa(int s) {
  queue<int> q;
  memset(h, 63, sizeof(h));
  h[s] = 0, vis[s] = 1;
  q.push(s);
  while (!q.empty()) {
    int u = q.front();
    q.pop();
    vis[u] = 0;
    for (int i = head[u]; i; i = e[i].next) {
      int v = e[i].v;
      if (h[v] > h[u] + e[i].w) {
        h[v] = h[u] + e[i].w;
        if (!vis[v]) {
          vis[v] = 1;
          q.push(v);
          t[v]++;
          if (t[v] == n + 1) return false;
        }
      }
    }
  }
  return true;
}
void dijkstra(int s) {
  priority_queue<node> q;
  for (int i = 1; i <= n; i++) dis[i] = INF;
  memset(vis, 0, sizeof(vis));
  dis[s] = 0;
  q.push(node(0, s));
  while (!q.empty()) {
    int u = q.top().id;
    q.pop();
    if (vis[u]) continue;
    vis[u] = 1;
    for (int i = head[u]; i; i = e[i].next) {
      int v = e[i].v;
      if (dis[v] > dis[u] + e[i].w) {
        dis[v] = dis[u] + e[i].w;
        if (!vis[v]) q.push(node(dis[v], v));
      }
    }
  }
  return;
}
int main() {
  ios::sync_with_stdio(false);
  cin >> n >> m;
  for (int i = 1; i <= m; i++) {
    int u, v, w;
    cin >> u >> v >> w;
    addedge(u, v, w);
  }
  for (int i = 1; i <= n; i++) addedge(0, i, 0);
  if (!spfa(0)) {
    cout << "negative-weight cycle" << endl;
    return 0;
  }
  for (int u = 1; u <= n; u++)
    for (int i = head[u]; i; i = e[i].next) e[i].w += h[u] - h[e[i].v];
  int q;
  scanf("%d", &q);
  for(int i = 0; i < q; i++) {
    int u, v;
    scanf("%d %d", &u, &v);
    dijkstra(u);
    if(dis[v] == INF) printf("268435455\n");
    else printf("%lld\n", dis[v] + h[v] - h[u]);
  }
  return 0;
}