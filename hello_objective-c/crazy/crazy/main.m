//
//  main.m
//  crazy
//
//  Created by MAC on 2020/09/04.
//  Copyright © 2020 lipeiv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *$str = @"Hello, World!";
        NSDate *date = [[NSDate alloc] init];
        enum season {apring = 4, summer = 1, fall, winter};
        enum season myLove, yourLove;
        myLove = winter;
        yourLove = fall;
        NSString *arr[5] = {@"zhao赵", @"qian钱💰", @"sun孙", @"li李"};
        NSLog(@"字符串%@的长度为：%ld",$str,[$str length]);
        NSLog(@"当前日期：%@", date);
        NSLog(@"winter: %u, fall:%u", myLove, yourLove);
        NSLog(@"%@, %@", arr[0], arr[4]);
        
        void (^printStr)(void) = ^(void)
        {
            NSLog(@"我正在学习Objective—C的块block");
        };
        //调用块
        printStr();
        
        double (^hypot)(double, double) =
            ^(double num1, double num2)
        {
            return sqrt(num1 * num1 + num2 * num2);
        };
        NSLog(@"%g", hypot(3,4));
        
        __block int my = 20;
        void(^printMy)(void) = ^(void)
        {
            NSLog(@"%d", my);
            my = 30; //尝试对__block变量赋值是允许的✅；
            NSLog(@"%d", my);
        };
        printMy();
        my = 40;
        printMy();
    }
    return 0;
}
