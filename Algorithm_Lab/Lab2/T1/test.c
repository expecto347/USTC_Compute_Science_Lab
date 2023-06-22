#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct point {
    double x;
    double y;
} Point;

void swap(Point* a, Point* b);
int partition_x(Point arr[], int low, int high);
int partition_y(Point arr[], int low, int high);
double findMedian(Point arr[], int n);
void quickSort(Point arr[], int low, int high);
double distance(Point p1, Point p2);
double closest_pair(Point* points, int n);

int main(void){
    int n;
    scanf("%d", &n);
    Point* points = (Point*)malloc(n * sizeof(Point));
    for (int i = 0; i < n; i++) {
        scanf("%lf", &points[i].x);
        scanf("%lf", &points[i].y);
    }
    quickSort(points, 0, n - 1);
    double d = closest_pair(points, n);
    printf("%.6lf", d);
}

void swap(Point* a, Point* b) {
    Point temp = *a;
    *a = *b;
    *b = temp;
}

int partition_x(Point arr[], int low, int high) {
    double pivot = arr[high].x;
    int i = low - 1;

    for (int j = low; j <= high - 1; j++) {
        if (arr[j].x < pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }

    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

double quickSelect(Point arr[], int low, int high, int k) {
    if (low == high) {
        return arr[low].x;
    }

    int pi = partition_x(arr, low, high);
    int len = pi - low + 1;

    if (k == len) {
        return arr[pi].x;
    } else if (k < len) {
        return quickSelect(arr, low, pi - 1, k);
    } else {
        return quickSelect(arr, pi + 1, high, k - len);
    }
}

double findMedian(Point arr[], int n) {
    if (n % 2 == 0) {
        double median1 = quickSelect(arr, 0, n - 1, n / 2);
        double median2 = quickSelect(arr, 0, n - 1, n / 2 + 1);
        return (median1 + median2) / 2.0;
    } else {
        return quickSelect(arr, 0, n - 1, n / 2 + 1);
    }
}

int partition_y(Point arr[], int low, int high) {
    double pivot = arr[high].y;
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++) {
        if (arr[j].y > pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }

    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

void quickSort(Point arr[], int low, int high) {
    if (low < high) {
        int pi = partition_y(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

double distance(Point p1, Point p2) {
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2));
}

double closest_pair(Point* points, int n) {
    if(n <= 3){
        double min = distance(points[0], points[1]);
        for(int i = 0; i < n; i++){
            for(int j = i + 1; j < n; j++){
                double d = distance(points[i], points[j]);
                if(d < min){
                    min = d;
                }
            }
        }
        return min;
    }
    double median = findMedian(points, n);

    Point* left = (Point*)malloc((n/2 + 1) * sizeof(Point));
    Point* right = (Point*)malloc((n/2 + 1) * sizeof(Point));
    int leftSize = 0;
    int rightSize = 0;
    for(int i = 0; i < n; i++){
        if(points[i].x <= median){
            left[leftSize++] = points[i];
        } else {
            right[rightSize++] = points[i];
        }
    }

    double d1 = closest_pair(left, leftSize);
    double d2 = closest_pair(right, rightSize);
    double d = d1 < d2 ? d1 : d2;

    Point* strip = (Point*)malloc(n * sizeof(Point));
    int stripSize = 0;
    for(int i = 0; i < n; i++){
        if(abs(points[i].x - median) < d){
            strip[stripSize++] = points[i];
        }
    }

    for(int i = 0; i < stripSize; i++){
        for(int j; j < 11; j++){
            if(i + j < stripSize){
                double d3 = distance(strip[i], strip[i + j]);
                if(d3 < d){
                    d = d3;
                }
            }
        }
    }

    //free
    free(left);
    free(right);
    free(strip);
    return d;
}