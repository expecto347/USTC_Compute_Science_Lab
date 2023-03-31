// FFT实现两个向量的卷积

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.14159265358979323846

typedef struct {
    double real;
    double imag;
} Complex;

void FFT(Complex *x, int len, int flag);
void Convolution(Complex *x, Complex *y, int N);

int main()
{
    int N, i;
    Complex *x, *y;

    scanf("%d", &N);

    x = (Complex *)malloc(N * sizeof(Complex));
    y = (Complex *)malloc(N * sizeof(Complex));

    for (i = 0; i < N; i++)
        scanf("%lf", &x[i].real);

    for (i = 0; i < N; i++)
        scanf("%lf", &y[i].real);

    Convolution(x, y, N);

    for (i = 0; i < N; i++)
        printf("%d\n", (int)round(x[i].real));
    return 0;
}

void FFT(Complex *x, int len, int flag){
    if(len == 1) return;
    Complex *x1 = (Complex *)malloc(len/2 * sizeof(Complex));
    Complex *x2 = (Complex *)malloc(len/2 * sizeof(Complex));
    
    for(int i = 0; i < len/2; i++){
        x1[i].real = x[2*i].real;
        x1[i].imag = x[2*i].imag;
        x2[i].real = x[2*i+1].real;
        x2[i].imag = x[2*i+1].imag;
    }

    FFT(x1, len/2, flag);
    FFT(x2, len/2, flag);

    Complex w_n;
    if(flag == 1){
        w_n.real = cos(2*PI/len);
        w_n.imag = sin(2*PI/len);
    }
    else{
        w_n.real = cos(2*PI/len);
        w_n.imag = -sin(2*PI/len);
    }

    Complex w;
    w.real = 1;
    w.imag = 0;

    for(int i = 0; i < len/2; i++){
        Complex temp;
        temp.real = w.real * x2[i].real - w.imag * x2[i].imag;
        temp.imag = w.real * x2[i].imag + w.imag * x2[i].real;
        x[i].real = x1[i].real + temp.real;
        x[i].imag = x1[i].imag + temp.imag;
        x[i+len/2].real = x1[i].real - temp.real;
        x[i+len/2].imag = x1[i].imag - temp.imag;
        Complex temp_w;
        temp_w.real = w.real * w_n.real - w.imag * w_n.imag;
        temp_w.imag = w.real * w_n.imag + w.imag * w_n.real;
        w.real = temp_w.real;
        w.imag = temp_w.imag;
    }

    free(x1);
    free(x2);
}

void Convolution(Complex *x, Complex *y, int N)
{
    int i;

    for (i = 0; i < N; i++) {
        x[i].imag = 0;
        y[i].imag = 0;
    }

    FFT(x, N, 1);
    FFT(y, N, 1);

    for (i = 0; i < N; i++) {
        x[i].real = x[i].real * y[i].real - x[i].imag * y[i].imag;
        x[i].imag = x[i].real * y[i].imag + x[i].imag * y[i].real;
    }

    FFT(x, N, -1);
}
