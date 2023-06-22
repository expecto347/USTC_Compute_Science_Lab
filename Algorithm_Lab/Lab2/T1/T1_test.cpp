#include<stdio.h>
#include<stdlib.h>
#include <math.h>
#include <algorithm>
#include <assert.h>
using namespace std;

typedef struct point {
    double x;
    double y;
} Point;

int partition(Point *arr, int left, int right);
Point select(Point *A, int p, int r, int i);
double findMedianX(Point *arr, int n);
double dist(Point p1, Point p2);
double closest_pair(Point *arr, int n);

int main() {
    int n;
    scanf("%d", &n);
    Point* points = (Point*)malloc(n * sizeof(Point));
    for (int i = 0; i < n; i++) {
        scanf("%lf", &points[i].x);
        scanf("%lf", &points[i].y);
    }
    // int n;
    // FILE *fp = fopen("test.txt", "r");
    // fscanf(fp, "%d", &n);
    // Point* points = (Point*)malloc(n * sizeof(Point));
    // for (int i = 0; i < n; i++) {
    //     fscanf(fp, "%lf", &points[i].x);
    //     fscanf(fp, "%lf", &points[i].y);
    // }
    // printf("complete reading the file");

    // qsort(points, n, sizeof(Point), compareY); // sort by y from large to small
    sort(points, points + n, [](auto x, auto y) { return x.y < y.y; }); // sort by y from large to small
    double d = closest_pair(points, n);
    printf("%.6lf\n", d);
    return 0;
}

int partition(Point *A, int p, int r) {
    Point x = A[r];
    int i = p - 1;
    for(int j = p; j < r; j++){
        if(A[j].x <= x.x){
            i++;
            Point tmp;
            tmp = A[i];
            A[i] = A[j];
            A[j] = tmp;
        }
    }
    Point tmp;
    tmp = A[i+1];
    A[i+1] = A[r];
    A[r] = tmp;
    return i+1;
}

Point select(Point *A, int p, int r, int i){
    if(p == r)
        return A[p];
    int q = partition(A, p, r);
    int k = q - p + 1;
    if(i == k)
        return A[q];
    else if(i < k)
        return select(A, p, q-1, i);
    else
        return select(A, q+1, r, i-k);
}

double findMedianX(Point *points, int n){
    Point result = select(points, 0, n-1, n/2);
    return result.x;
}

double dist(Point p1, Point p2) {
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
}

double closest_pair(Point *arr, int n) {
    if (n <= 3) {
        // 暴力求解
        double min = 1500;
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                double d = dist(arr[i], arr[j]);
                if ((d < min) && (d > 0.0000001)) {
                    min = d;
                }
            }
        }
        return min;
    }
    double medianX = findMedianX(arr, n);
    Point *arr1 = (Point*)malloc((n/2 + 1) * sizeof(Point));
    int size1 = 0;
    for (int i = 0; i < n; i++) {
        if (arr[i].x <= medianX) {
            arr1[size1++] = arr[i];
        }
    }
    double d1 = closest_pair(arr1, size1);
   // free(arr1);

    //Point *arr2 = (Point*)malloc((n/2 + 1) * sizeof(Point));
    int size2 = 0;
    for (int i = 0; i < n; i++) {
        if (arr[i].x > medianX) {
            arr1[size2++] = arr[i];
        }
    }
    double d2 = closest_pair(arr1, size2);
    double d = d1 < d2 ? d1 : d2;

    // free memory
    free(arr1);

    Point *strip = (Point*)malloc(n * sizeof(Point));
    int size = 0;
    for (int i = 0; i < n; i++) {
        if (abs(arr[i].x - medianX) < d) {
            strip[size++] = arr[i];
        }
    }

    for(int i = 0; i < size; i++) {
        for(int j = 0; j < 11; j++) {
            if(i + j < size) {
                double d3 = dist(strip[i], strip[i + j]);
                if((d3 < d) && (d3 > 0.0000001)) {
                    d = d3;
                }
            }
        }
    }

    // free memory
    free(strip);
    return d;
}