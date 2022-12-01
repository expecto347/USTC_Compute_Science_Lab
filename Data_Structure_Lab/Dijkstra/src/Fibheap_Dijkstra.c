#include "Fibheap_Dijkstra.h"

void FibDijkstra(VNode *graph, int n, int start, int end) {
    // initialize
    int i, j, k;
    int *distance = (int *)malloc(sizeof(int) * n);
    int *pred = (int *)malloc(sizeof(int) * n);

    // create heap
    FIB_HEAP *heap = (FIB_HEAP *)malloc(sizeof(FIB_HEAP));
    heap->min = NULL;
    heap->n = 0;

    // create nodes
    NODE **nodes = (NODE **)malloc(sizeof(NODE *) * n);

    // initialize distance and pred
    for (i = 0; i < n; i++) {
        if(i != start) {
            distance[i] = INFINITY_INT;
            pred[i] = -1;
        }
        else {
            distance[i] = 0;
            pred[i] = -1;
        }
    }

    // initialize nodes
    for (i = 0; i < n; i++) {
        nodes[i] = (NODE *)malloc(sizeof(NODE));
        nodes[i]->key = distance[i];
        nodes[i]->degree = 0;
        nodes[i]->parent = NULL;
        nodes[i]->child = NULL;
        nodes[i]->left_sibling = NULL;
        nodes[i]->right_sibling = NULL;
        nodes[i]->mark = 0;
        nodes[i]->id = i;
    }

    // insert nodes into heap
    for (i = 0; i < n; i++) {
        insertion(heap, nodes[i], distance[i]);
    }

    // extract min
    NODE *min_node;
    while (heap->n != 0) {
        min_node = extract_min(heap);
        ArcNode *arc = graph[min_node->id].firstarc;
        while (arc != NULL) {
            if (distance[arc->adjvex] > distance[min_node->id] + arc->weight) {
                distance[arc->adjvex] = distance[min_node->id] + arc->weight;
                pred[arc->adjvex] = min_node->id;
                decrease_key(heap, nodes[arc->adjvex], distance[arc->adjvex]);
            }
            arc = arc->nextarc;
        }
    }

    // print result
    printf("The minimum distance from %d to %d is %d\n", start, end, distance[end]);
    printf("The path is: ");
    int *path = (int *)malloc(sizeof(int) * n);
    int path_length = 0;
    int temp = end;
    while (temp != -1) {
        path[path_length++] = temp;
        temp = pred[temp];
    }
    for (i = path_length - 1; i > 0; i--) {
        printf("%d --> ", path[i]);
    }
    printf("%d\n", path[0]);
}