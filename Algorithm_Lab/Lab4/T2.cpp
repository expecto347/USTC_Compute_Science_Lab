#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

#define MAX_EDGES 450000
#define MAX_VERTICES 5000

struct edge {
    int src, dest, weight;
};

struct edge edges[MAX_EDGES];

int parent[MAX_VERTICES];
int size[MAX_VERTICES];

int cmp(const void *a, const void *b) {
    struct edge *edgeA = (struct edge *)a;
    struct edge *edgeB = (struct edge *)b;
    return edgeA->weight - edgeB->weight;
}

int find(int vertex) {
    if (vertex != parent[vertex])
        parent[vertex] = find(parent[vertex]);
    return parent[vertex];
}

void merge(int root1, int root2) {
    if (size[root1] > size[root2]) {
        parent[root2] = root1;
        size[root1] += size[root2];
    } else {
        parent[root1] = root2;
        size[root2] += size[root1];
    }
}

int findMaxWeightEdgeInCycle(int vertex, int parent, int maxWeightEdge, int e) {
    while (vertex != parent) {
        if (edges[vertex].weight > edges[maxWeightEdge].weight && vertex != e)
            maxWeightEdge = vertex;
        vertex = edges[vertex].src;
    }
    return maxWeightEdge;
}

int main() {
    int V, E;
    scanf("%d %d", &V, &E);

    for (int i = 0; i < E; i++) {
        scanf("%d %d %d", &edges[i].src, &edges[i].dest, &edges[i].weight);
    }

    qsort(edges, E, sizeof(edges[0]), cmp);

    for (int i = 1; i <= V; i++) {
        parent[i] = i;
        size[i] = 1;
    }

    int sum = 0;
    for (int i = 0; i < E; i++) {
        int root1 = find(edges[i].src);
        int root2 = find(edges[i].dest);
        if (root1 != root2) {
            merge(root1, root2);
            sum += edges[i].weight;
        }
    }

    printf("Minimum Spanning Tree Weight: %d\n", sum);

    int secondMinWeight = INT_MAX;
    int Enew = -1, Eold = -1;
    for (int i = 0; i < E; i++) {
        int root1 = find(edges[i].src);
        int root2 = find(edges[i].dest);
        if (root1 == root2) {
            int maxWeightEdge = findMaxWeightEdgeInCycle(edges[i].src, parent[edges[i].src], i, i);
            int delta = edges[i].weight - edges[maxWeightEdge].weight;
            if (delta < secondMinWeight) {
                secondMinWeight = delta;
                Enew = i;
                Eold = maxWeightEdge;
            }
        }
    }

    sum = sum - edges[Eold].weight + edges[Enew].weight;
    printf("Second Minimum Spanning Tree Weight: %d\n", sum);

    return 0;
}
