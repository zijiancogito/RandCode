#include <stdlib.h>
#include <stdio.h>

int f_rand_0() __attribute__((noinline));
int f_rand_1() __attribute__((noinline));
int f_rand_2() __attribute__((noinline));
int f_rand_3() __attribute__((noinline));
int f_rand_4() __attribute__((noinline));

double func0(float p0, int p1)
{
  double v0 = (double)(f_rand_0());
  int v1 = (int)(f_rand_1());
  int v5 = (int)(749);
  float v2 = (float)(f_rand_2());
  int v4 = (int)(862);
  float v3 = (float)(498);
  printf("BB: %d", 0);
  float v8 = (float)((int)(v1) | (int)(v4));
  if((int)(v8) > (int)(p1))
  {
    printf("BB: %d", 1);
    double v9 = (double)((float)(v2) - p0);
    double v10 = (double)((int)((int)(v8) * p1) ^ (int)v1);
    double v11 = (double)((float)(p0) + v2);
    while((int)(v10) <= (int)(v1))
    {
      printf("BB: %d", 2);
      if((int)(p0) <= (int)(242))
      {
        printf("BB: %d", 3);
        v1 = (int)((int)(v5) % (int)(v4));
        v2 = (float)((int)((int)((int)(p0) | (int)(p1)) ^ (int)p0) ^ (int)p0);
        v9 = (double)(~ ((int)v9));
        v1 = (int)((int)((int)((int)(v10) % (int)(v0)) % (int)v8) & (int)p0);
        v11 = (double)((int)(p1) | (int)(v9));
      } 
      printf("BB: %d", 4);
      v2 = (float)((int)(v3) ^ (int)(v4));
      while((int)(v11) <= (int)(829))
      {
        printf("BB: %d", 5);
        v2 = (float)((double)((double)(v8) - v0) * v10);
        v11 = (double)((int)((float)(v8) * v8) & (int)v3);
        p0 = (float)((float)(v2) * p0);
        double v12 = (double)((int)(v1) | (int)(v4));
        v12 = (double)((int)(p0) & (int)(v0));
      } 
      printf("BB: %d", 6);
      p1 = (int)((int)((int)(v9) % (int)(p0)) ^ (int)p0);
      if((int)(v1) > (int)(p1))
      {
        printf("BB: %d", 7);
        v11 = (double)(~ (int)(p1));
        double v12 = (double)((int)(~ ((int)v9)) ^ (int)v8);
        int v13 = (int)((int)(v11) ^ (int)(v4));
        double v14 = (double)((int)((int)(v8) & (int)(v0)) | (int)v1);
        v8 = (float)(~ ((int)p1));
      } 
      else
      {
        printf("BB: %d", 8);
        v1 = (int)((float)(~ (int)(v2)) - p0);
        double v12 = (double)((int)((int)((double)(v11) + v9) % (int)v4) & (int)v1);
        double v13 = (double)((int)((double)((int)(v1) & (int)(v8)) * v0) + v1);
        p0 = (float)((int)((int)(v10) * v5) % (int)v4);
        double v14 = (double)((int)(v0) + v1);
      } 
    } 
    printf("BB: %d", 9);
    if((int)(p1) >= (int)(v5))
    {
      printf("BB: %d", 10);
      float v12 = (float)((int)(v8) & (int)(v4));
      int v13 = (int)((int)((double)((int)(v0) & (int)(v9)) / v9) & (int)v8);
      v3 = (float)((float)((int)(v12) % (int)(v12)) + v3);
      double v14 = (double)((double)(v0) - v0);
      float v15 = (float)((int)((int)((float)(v12) - v3) ^ (int)v9) + v4);
    } 
    else
    {
      printf("BB: %d", 11);
      float v12 = (float)((double)((int)(~ ((int)v2)) * v1) * v9);
      double v13 = (double)((double)(v12) * v0);
      float v14 = (float)((float)((int)((int)(v9) + v5) * v1) + v3);
      double v15 = (double)((float)(v0) + v8);
      v0 = (double)((int)(v4) % (int)(v4));
    } 
  } 
  printf("BB: %d", 12);
  float v9 = (float)(~ (int)(v0));
  double v10 = (double)((int)(v9) | (int)(v1));
  float v11 = (float)((int)((int)(v1) ^ (int)(v8)) ^ (int)p0);

  printf("BB: %d", 13);
  double ret = (double)((double)((int)((int)(v1) * v4) % (int)v4) * v0);
  return ret;
}


int main(void)
{
  int v0 = (int)(13);
  double v1 = (double)(877);
  float v2 = (float)(834);
  double v3 = func0(v1, v1);
  printf("%f", v3);
  return 0;
}


int f_rand_0(void)
{
  int v0 = rand();
  printf("f_rand_0: %d", 0);
  return v0;
}


int f_rand_1(void)
{
  int v0 = rand();
  printf("f_rand_1: %d", 1);
  return v0;
}


int f_rand_2(void)
{
  int v0 = rand();
  printf("f_rand_2: %d", 2);
  return v0;
}


int f_rand_3(void)
{
  int v0 = rand();
  printf("f_rand_3: %d", 3);
  return v0;
}


int f_rand_4(void)
{
  int v0 = rand();
  printf("f_rand_4: %d", 4);
  return v0;
}


