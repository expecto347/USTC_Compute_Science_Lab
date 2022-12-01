#include "../include/Dijkstra.h"

int main() {
  int v;
  VNode *graph;
  graph = create_Compress_Graph("/root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/infoS.txt", &v);
  // print_Compress_Graph(graph, v);
  // Classic_Dijkstra(graph, v, 5, 6);
  FibDijkstra(graph, v, 5, 6);
}