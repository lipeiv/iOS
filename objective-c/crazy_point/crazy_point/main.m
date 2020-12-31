//
//  main.m
//  crazy_point
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>

void copyString(char* to, char* from)
{
    //如果from指针指向的字符不为\0
    while (*from) {
        *to++ = *from++;
    }
    *to = '\0';
}

void map(int* data, int len, int *(fn))
{
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 200;
        int* p;
        p = &a;
        NSLog(@"a的值为:%d,从p指针读出a的值为:%d", a, *p);
        NSLog(@"先取出a变量的指针(即内存地址):%p,再获取指针指向的变量:%d", &a, *(&a));
        
        int arr[] = {4, 20, 10, -3, 34};
        for(int i = 0,len = sizeof(arr) / sizeof(arr[0]); i < len ; i ++)
        {
            NSLog(@"%p,%d", &arr[0] + i, *(arr + i));  // arr == &arr[0]
        }
    
        char* str = "www.crayitit.org";
        char dest[100];
        copyString(dest, str);
        NSLog(@"%s", dest);
        copyString(dest, "Objective-C is Funny!");
        NSLog(@"%s", dest);
    
    }
    return 0;
}
