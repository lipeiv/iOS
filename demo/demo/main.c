//
//  main.c
//  demo
//
//  Created by 李培培 on 2019/6/12.
//  Copyright © 2019 李培培. All rights reserved.
//

#include <stdio.h>
int num;
#define SIZE = 5
int main(int argc, const char * argv[]) {
    // insert code here...
    int i;
    int *p;
    p = &i;
    i = 2;
    
    printf("The address of variablev i is %p\n", &i);
    printf("The address of Variable p is %p \n", p);
    printf("The Value of Variable i is %d\n", i);
    printf("The Value of Variable p is %d\n", *p);
    
    int a = 11;
    float b;
    int sum;
    num = 2147483646;
    b = 12;
    sum = a + b;
    printf("%d + %f = %d\n", a, b, sum);
    printf("%f\n",b);
    printf("num= %d\n", num+2);
    return 0;
}

