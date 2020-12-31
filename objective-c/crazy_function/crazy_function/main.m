//
//  main.m
//  crazy_function
//
//  Created by 李培培 on 2020/9/7.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PI 3.14

void printRect(int, int);
void printTriangle(int);
int change(void);


int max(int x, int y)
{
    int z = x > y ? x : y;
    return z;
}

NSString * sayHi(NSString * name)
{
    NSLog(@"正在执行sayHi函数体");
    return [NSString stringWithFormat:@"%@, 你好👋", name];
}

double avg(int array[10])
{
    int sum = 0;
    for(int i = 0; i < 10 ; i++)
    {
        sum += array[i];
    }
    return sum / 10;
}

void fac(int n)
{
    auto int a = 1;
    static int b = 1;
    a += n;
    b += n;
    NSLog(@"a的值为:%d, b的值为%d", a, b);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"大值是:%d", max(4, 5));
        NSLog(@"%@", sayHi(@"TOM"));
        int scores[10];
        NSLog(@"输入10个数:");
        for(int i = 0; i < 10 ; i++)
        {
            scores[i] = rand() % 100 + 20;
            //scanf("%d", &scores[i]);
        }
        NSLog(@"平均成绩:%g", avg(scores));
        printRect(5, 10);
        printTriangle(7);
        extern int count;
        change();
        NSLog(@"%d", count);
        count = 50;
        change();
        
        for(int i = 0 ; i < 4 ; i++)
        {
            fac(i);
        }
        
        NSLog(@"PI,%g", PI);
        
        
        
        
        
    }
    return 0;
}
