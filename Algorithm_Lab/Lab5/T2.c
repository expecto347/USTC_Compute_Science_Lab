#include<stdio.h>
#include <stdlib.h>

// Function to search the sub-matrix in the main matrix.
int subMatrixSearch(char** A, char** B, int m1, int n1, int m2, int n2) {
    int i, j, k, l, temp;
    for (i = 0; i <= m2 - m1; i++) {
        for (j = 0; j <= n2 - n1; j++) {
            temp = 1;
            for (k = 0; k < m1; k++) {
                for (l = 0; l < n1; l++) {
                    if (A[k][l] != B[i + k][j + l]) {
                        temp = 0;
                        break;
                    }
                }
                if (temp == 0)
                    break;
            }
            if (temp)
                printf("%d %d\n", i, j);
        }
    }
    return 0;
}

int main() {
    int m1, n1;
    int m2, n2;

    scanf("%d %d", &m1 , &n1);

    char** A = (char**)malloc(m1 * sizeof(char*));
    for (int i = 0; i < m1; i++) {
        A[i] = (char*)malloc(n1 * sizeof(char));
        scanf("%s", A[i]);
    }

    scanf("%d %d", &m2 , &n2);

    char** B = (char**)malloc(m2 * sizeof(char*));
    for (int i = 0; i < m2; i++) {
        B[i] = (char*)malloc(n2 * sizeof(char));
        scanf("%s", B[i]);
    }

    subMatrixSearch(A, B, m1, n1, m2, n2);
    return 0;
}