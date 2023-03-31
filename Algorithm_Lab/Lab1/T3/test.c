// FFT计算多项式乘积
#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#define PI 3.14159265358979323846

typedef struct {
    double real;
    double imag;
} complex;

complex complex_mul(complex a, complex b);
complex *fft(char *array, int n);
complex *ifft(complex *array, int n);

int main(){
    int n;
    scanf("%d", &n);
    // 计算2的n次幂
    int m = 1;
    while(m < 2 * n){
        m *= 2;
    }

    char *a, *b;
    a = (char *)malloc(sizeof(char) * (m));
    b = (char *)malloc(sizeof(char) * (m));
    for(int i = 0; i < n; i++){
        scanf("%d", &a[i]);
    }
    for(int i = 0; i < n; i++){
        scanf("%d", &b[i]);
    }

    // // 从文件中读取数据
    // FILE *fp;
    // fp = fopen("test.txt", "r");
    // int n;
    // fscanf(fp, "%d", &n);
    // int *a, *b;
    // a = (int *)malloc(sizeof(int) * (n + 1));
    // b = (int *)malloc(sizeof(int) * (n + 1));
    // for(int i = 0; i <= n; i++){
    //     fscanf(fp, "%d", &a[i]);
    // }
    // for(int i = 0; i <= n; i++){
    //     fscanf(fp, "%d", &b[i]);
    // }
    // fclose(fp);
    // // printf("Calculate %dth degree polynomial multiplication", n);
    
    for(int i = n + 1; i < m; i++){
        a[i] = 0;
        b[i] = 0;
    }

    for(int i = 0; i < m; i++){
        printf("%d ", a[i]);
    }
    // 计算FFT
    complex *A, *B;
    A = fft(a, m);
    B = fft(b, m);

    // print A
    printf("\n------------------\n");
    for(int i = 0; i < m; i++){
        printf("%lf + %lfi\n", A[i].real, A[i].imag);
    }

    printf("\n------------------\n");
    for(int i = 0; i < m; i++){
        printf("%lf + %lfi\n", B[i].real, B[i].imag);
    }

    // 计算乘积
    complex *C;
    C = (complex *)malloc(sizeof(complex) * m);
    for(int i = 0; i < m; i++){
        C[i] = complex_mul(A[i], B[i]);
    }
    
    // 计算IFFT
    complex *D;
    D = ifft(C, m);

    // 输出结果
    for(int i = 0; i < n; i++){
        // printf("%d\n", (int)(D[i].real / m + 0.5));
        printf("%d\n", (int)round(D[i].real));
    }
    
    // // 将结果输出到result_c.txt
    // FILE *fp_output;
    // fp_output = fopen("result_c.txt", "w");
    // for(int i = 0; i < 2 * n + 1; i++){
    //     fprintf(fp_output, "%d\n", (int)(round(D[i].real / m)));
    // }
    // fclose(fp_output);
    return 0;
}

complex *fft(char *array, int n){
    complex *result;
    result = (complex *)malloc(sizeof(complex) * n);
    if(n == 1){
        result[0].real = array[0];
        result[0].imag = 0;
        return result;
    }
    
    char *a, *b;
    a = (char *)malloc(sizeof(char) * (n / 2));
    b = (char *)malloc(sizeof(char) * (n / 2));
    for(int i = 0; i < n / 2; i++){
        a[i] = array[2 * i];
        b[i] = array[2 * i + 1];
    }
    complex *A, *B;
    A = fft(a, n / 2);
    B = fft(b, n / 2);

    for(int i = 0; i < n / 2; i++){
        complex w;
        w.real = cos(2 * PI * i / n);
        w.imag = sin(2 * PI * i / n);
        result[i].real = A[i].real + complex_mul(w, B[i]).real;
        result[i].imag = A[i].imag + complex_mul(w, B[i]).imag;
        result[i + n / 2].real = A[i].real - complex_mul(w, B[i]).real;
        result[i + n / 2].imag = A[i].imag - complex_mul(w, B[i]).imag;
    }

    //free
    free(a);
    free(b);
    free(A);
    free(B);
    return result;
}

// ifft
complex *ifft(complex *array, int n){
    complex *result;
    result = (complex *)malloc(sizeof(complex) * n);
    if(n == 1){
        result[0].real = array[0].real;
        result[0].imag = array[0].imag;
        return result;
    }

    complex *a, *b;
    a = (complex *)malloc(sizeof(complex) * (n / 2));
    b = (complex *)malloc(sizeof(complex) * (n / 2));
    for(int i = 0; i < n / 2; i++){
        a[i].real = array[2 * i].real;
        a[i].imag = array[2 * i].imag;
        b[i].real = array[2 * i + 1].real;
        b[i].imag = array[2 * i + 1].imag;
    }

    complex *A, *B;
    A = ifft(a, n / 2);
    B = ifft(b, n / 2);

    for(int i = 0; i < n / 2; i++){
        complex w;
        w.real = cos(-2 * PI * i / n);
        w.imag = sin(-2 * PI * i / n); // w = e^(-2 * PI * i / n)
        result[i].real = A[i].real + complex_mul(w, B[i]).real;
        result[i].imag = A[i].imag + complex_mul(w, B[i]).imag;
        result[i + n / 2].real = A[i].real - complex_mul(w, B[i]).real;
        result[i + n / 2].imag = A[i].imag - complex_mul(w, B[i]).imag;
    }

    //free
    free(a);
    free(b);
    free(A);
    free(B);
    return result;
}

complex complex_mul(complex a, complex b){
    complex result;
    result.real = a.real * b.real - a.imag * b.imag;
    result.imag = a.real * b.imag + a.imag * b.real;
    return result;
}