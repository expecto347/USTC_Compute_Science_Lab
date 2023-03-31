#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define M_PI 3.14159265358979323846

typedef struct fu
{
	double real;	//实部 
	double imag;	//虚部 
}fu;

/*计算复数的乘*/
struct fu mul(fu a,fu b)
{
	fu r;
	r.real=a.real*b.real-a.imag*b.imag;
	r.imag=a.real*b.imag+a.imag*b.real;
	return r;
}
/*dft*/ 
void dft_ffts(struct fu* linear,int size,int start,int step) 
{
	int i,j,k;
	fu* dft=(struct fu*)malloc(sizeof(struct fu)*size);
	fu mulf;
	for(i=0;i<size;i++)	//频率循环 
	{
		dft[i].real=0;
		dft[i].imag=0;
		for(k=0;k<size;k++)	//时域循环 
		{
			mulf.real=cos(2*M_PI*i*k/size);
			mulf.imag=(-1)*sin(2*M_PI*i*k/size);
			mulf=mul(linear[k*step+start],mulf);
			dft[i].real+=mulf.real; 
			dft[i].imag+=mulf.imag;
		}
	}
	for(i=start,j=0;j<size;i+=step,j++)
	{
		linear[i].real=dft[j].real;
		linear[i].imag=dft[j].imag;
	}
	free(dft);
}
 
/* fpix为时域序列，用复数表示，可支持复数序列变换*/
/* step为fpix数组中序列元素的间隔，做二维fft的接口用，若只进行以为fft可直接设为1 */
void ffts(struct fu* fpix,int fu_step,int size,int start)	
{
	int h=0,sizemin=size,step=1;
	int i,j,k,z,x;
	fu *W;
	fu *fft=(struct fu*)malloc(sizeof(struct fu)*size);
	fu m1,m2,mulf;
	if(size%2==0)
		W=(struct fu*)malloc(sizeof(struct fu)*(size/2));
	else
	{
		dft_ffts(fpix,size,start,fu_step);
		return;
	}
	/*计算Wn*/ 
	for(j=0;j<size/2;j++)
	{
		W[j].real=cos(2*M_PI*j/size);
		W[j].imag=(-1)*sin(2*M_PI*j/size);
	}
	i=size;
	while(i%2==0)
	{
		h++;
		i/=2;
		sizemin=i;
		step*=2;
	}
	/*初始化fft*/
	int n=step;
	int index=0;
	for(i=0;i<step;i++)	//每块,i为起始编号 
	{
		index=0;
		for(j=0;j<h;j++)
		{
			index=index<<1;
			index+=(i>>j)&0x01;
		}
		index=index*sizemin;
		k=index;
		for(j=0,z=i;j<sizemin;j++,z+=step)
		{
			fft[index]=fpix[z*fu_step+start];
			index++;
		}
		dft_ffts(fft,sizemin,k,1);
	}
	for(i=1;h>0;h--,i++)	//每层 
	{
		for(j=0;j<step/2;j++)	//每块,step/2 变化完的块数 
		{
			for(k=j*sizemin*2,z=0;z<sizemin;z++,k++)
			{
				m1=fft[k];
				m2=fft[k+sizemin];
				mulf=mul(m2,W[z*step/2]);
				fft[k].real=m1.real+mulf.real;
				fft[k].imag=m1.imag+mulf.imag;
				fft[k+sizemin].real=m1.real-mulf.real;
				fft[k+sizemin].imag=m1.imag-mulf.imag;
			}
		}
		sizemin*=2;
		step/=2;
	}
	for(i=0;i<size;i++)
	{
		fpix[i*fu_step+start]=fft[i];
	}
	free(fft);
}

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
    fu *A, *B;
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
    fu *C;
    C = (fu *)malloc(sizeof(fu) * m);
    for(int i = 0; i < m; i++){
        C[i] = mul(A[i], B[i]);
    }
    
    // 计算IFFT
    fu *D;
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
