#include<stdio.h>
#include<stdlib.h>
#include <math.h>
#include <algorithm>
#include <assert.h>
#include <iostream>
#include <time.h>
using namespace std;
#define MAX 100000

typedef struct point {
    double x;
    double y;
} Point;

int partition(Point *arr, int left, int right);
Point select(Point *A, int p, int r, int i);
double findMedianX(Point *arr, int n);
double dist(Point p1, Point p2);
double closest_pair(Point *arr, int n);

// clock_t time_func;
// int num;

int main() {
    // clock_t start, end;
    // time_func = 0;
    // num = 0;

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
    // ios::sync_with_stdio(false); cin.tie(nullptr);
    // int n; cin >> n;
    // Point* points = (Point*)malloc(n * sizeof(Point));
    // for (int i = 0; i < n; i++)
    //     cin >> points[i].x >> points[i].y;

    // qsort(points, n, sizeof(Point), compareY); // sort by y from large to small
    clock_t start, end;
    start = clock();
    sort(points, points + n, [](auto x, auto y) { return x.y < y.y; }); // sort by y from large to small
    double d = closest_pair(points, n);
    printf("%.6lf\n", d);
    // cout << "time: " << (double)(time_func) / CLOCKS_PER_SEC << endl;
    end = clock();
    cout << "total time: " << (double)(end - start) / CLOCKS_PER_SEC << endl;
    // cout << "num: " << num << endl;
    return 0;
}

int partition(Point *A, int p, int r) {
    Point x = A[r];
    int i = p - 1;
    for(int j = p; j < r; j++){
        if(A[j].x <= x.x){
            i++;
            // Point tmp;
            // tmp = A[i];
            // A[i] = A[j];
            // A[j] = tmp;
            swap(A[i], A[j]);
        }
    }
    swap(A[i+1], A[r]);
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
    // num++;
    Point result = select(points, 0, n-1, n/2);
    return result.x;
}

double dist(Point p1, Point p2) {
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
}

double closest_pair(Point *arr, int n) {
    // clock_t start, end;
    if (n <= 3) {
        // 暴力求解
        double min = MAX;
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                double d = dist(arr[i], arr[j]);
                if (d < min) {
                    min = d;
                }
            }
        }
        return min;
    }
    
    // start = clock();
    double medianX = findMedianX(arr, n);
    // double medianX = arr[n/2].x;
    // end = clock();
    // time_func += end - start;
    Point *arr1 = (Point*)malloc(n * sizeof(Point));
    Point *arr2 = (Point*)malloc(n * sizeof(Point));
    int size1 = 0, size2 = 0;
    for (int i = 0; i < n; i++) {
        if (arr[i].x <= medianX) {
            arr1[size1++] = arr[i];
        }
        else {
            arr2[size2++] = arr[i];
        }
    }
    double d1 = closest_pair(arr1, size1);
    double d2 = closest_pair(arr2, size2);
    double d = d1 < d2 ? d1 : d2;

    // free memory
    free(arr1);
    free(arr2);

    Point *strip = (Point*)malloc(n * sizeof(Point));
    int size = 0;
    for (int i = 0; i < n; i++) {
        if (abs(arr[i].x - medianX) < d) {
            strip[size++] = arr[i];
        }
    }

    for(int i = 0; i < size-1; i++) {
      double d3 = dist(strip[i], strip[i+1]);
       d = d3 < d ? d3: d;
    }

    // free memory
    free(strip);
    return d;
}