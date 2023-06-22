// C++ 实现的 Dinic's 算法
#include <bits/stdc++.h>
using namespace std;

// 表示边的结构体
struct Edge {
	int to;  // 边的终点
	int flow;  // 边上的流量
	int capacity;  // 边的容量
	int reverse_index;  // 对应反向边在邻接列表中的索引
};

// 残余图
class Graph {
	int num_vertices;  // 顶点数量
	int* levels;  // 保存节点的层级
	vector<Edge>* adj;  // 邻接列表

public:
	Graph(int num_vertices) {
		adj = new vector<Edge>[num_vertices];
		this->num_vertices = num_vertices;
		levels = new int[num_vertices];
	}

	// 向图中添加边
	void addEdge(int from, int to, int capacity) {
		Edge forward{ to, 0, capacity, (int)adj[to].size() };
		Edge backward{ from, 0, 0, (int)adj[from].size() };
		adj[from].push_back(forward);
		adj[to].push_back(backward);  // 反向边
	}

	bool BFS(int source, int sink);
	int sendFlow(int source, int flow, int sink, int start[]);
	int DinicMaxflow(int source, int sink);
};

// 检查是否可以从 s 到 t 发送更多流量
bool Graph::BFS(int source, int sink) {
	for (int i = 0; i < num_vertices; i++)
		levels[i] = -1;
	levels[source] = 0;  // 源节点的层级

	list<int> q;
	q.push_back(source);

	while (!q.empty()) {
		int current = q.front();
		q.pop_front();
		for (Edge& edge : adj[current]) {
			if (levels[edge.to] < 0 && edge.flow < edge.capacity) {
				levels[edge.to] = levels[current] + 1;
				q.push_back(edge.to);
			}
		}
	}

	// 如果不能到达汇点，返回 false
	return levels[sink] < 0 ? false : true;
}

int Graph::sendFlow(int current, int flow, int sink, int start[]) {
	if (current == sink)
		return flow;

	for (; start[current] < adj[current].size(); start[current]++) {
		Edge& edge = adj[current][start[current]];

		if (levels[edge.to] == levels[current] + 1 && edge.flow < edge.capacity) {
			int curr_flow = min(flow, edge.capacity - edge.flow);
			int temp_flow = sendFlow(edge.to, curr_flow, sink, start);

			if (temp_flow > 0) {
				edge.flow += temp_flow;
				adj[edge.to][edge.reverse_index].flow -= temp_flow;
				return temp_flow;
			}
		}
	}

	return 0;
}

int Graph::DinicMaxflow(int source, int sink) {
	if (source == sink)
		return -1;

	int total_flow = 0;

	while (BFS(source, sink) == true) {
		int* start = new int[num_vertices + 1]{0};

        while (int flow = sendFlow(source, INT_MAX, sink, start)) {
            total_flow  += flow;
        }
          delete[] start;
    }

    return total_flow;
}

int main(){
    int n;
    cin >> n;
    Graph g(n);
    int m;
    cin >> m;
    for(int i = 0; i < m; i++){
        int u, v, c;
        cin >> u >> v >> c;
        u--; v--;
        g.addEdge(u, v, c);
    }
    int s, t;
    cin >> s >> t;
    s--; t--;
    
    cout << g.DinicMaxflow(s, t) << endl;
    return 0;
}
