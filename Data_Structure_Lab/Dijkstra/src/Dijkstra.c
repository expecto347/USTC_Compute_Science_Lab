#include "../include/Graph.h"
#include "../include/Classic.h"

int main() {
  int v;
  int **graph;
  graph = createGraph("/root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/input.txt", &v);
  printGraph(graph, v);
  Classic_Dijkstra(graph, v, 0, 4);
}