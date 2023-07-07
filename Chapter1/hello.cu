//nvcc -arch sm_61 hello.cu -o hello 

#include <stdio.h>

__global__ void helloFromGPU (void)
{
   printf("Hello World from GPU and from thread #:%d.!\n", threadIdx.x);
}
int main(void)
{
   //hello from cpu
   printf("Hello World from CPU!\n");
   helloFromGPU <<<1, 10>>>();
   cudaDeviceReset();
   return 0;
}
