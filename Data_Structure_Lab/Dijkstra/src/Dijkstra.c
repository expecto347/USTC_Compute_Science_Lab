#include "../include/Dijkstra.h"
#include<string.h>

int main() {
  int v, n;
  int end, start;
  //enter the algorithm
  printf("Please choose the algorithm you want to use:\n");
  printf("1. Classic_Dijkstra\n");
  printf("2. Fibheap_Dijkstra\n");
  scanf("%d", &n);
  if(n == 1){
    while (1)
    {
      printf("Please enter the path of the graph file:(enter 'q' to quit!) \n");
      char path[100];
      scanf("%s", path);
      if (strcmp(path, "q") == 0)
      {
        break;
      }
      printf("Please enter the start and end vertex: \n");
      scanf("%d %d", &start, &end);
      int **graph = createGraph(path, &v);
      Classic_Dijkstra(graph, v, start, end);
    }
  }
  else if(n == 2){
    while (1)
    {
      printf("Please enter the path of the graph file:(enter 'q' to quit!) \n");
      char path[100];
      scanf("%s", path);
      if (strcmp(path, "q") == 0)
      {
        break;
      }
      printf("Please enter the start and end vertex: \n");
      scanf("%d %d", &start, &end);
      VNode *graph = create_Compress_Graph(path, &v);
      FibDijkstra(graph, v, start, end);
    }
  }
  else{
    printf("Please enter the correct number!\n");
  }
}