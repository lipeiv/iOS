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
        
        //自动类型转化
        int a = 6;
        float f = a;
        NSLog(@"%d, %g,", a, f); // 6.0?
        short b = 65;
        char c = b;
        NSLog(@"%c", c); //A
        double d = b;
        NSLog(@"%g", d); //65.0?
        double d2 = 97.3434;
        int it = d2;
        NSLog(@"%d", it); //97
        char ch = d2;
        NSLog(@"%c", ch); //a
        int iValue = 33000;
        short sValue = iValue;
        NSLog(@"%d", sValue);
        
        //强制类型转化
        int a2 = 100;
        int b2 = 3;
        float f1 = a2 / b2;
        float f2 = (float) a2 / b2;
        int it2 = (int)2.3 + (int)122.2;
        NSLog(@"f1:%g, f2:%g, it2:%d, ", f1, f2, it2);
        
        //计算
        double a3 = 3.2;
        double b3 = pow(a3, 5);
        NSLog(@"b3:%g, sqrt:%g", b3, sqrt(a3));
        double d3 = arc4random() % 10;  // 0~10随机数
        NSLog(@"%g, %g", d3, sin(1.57));
        NSLog(@"%d, %d", 5 & 9, 5 | 9);  //1, 13
        NSLog(@"%d, %d", ~-5, 5 ^ 9); //4, 12
        
        //运算符
        int a4 = 2;
        NSLog(@"%d, %d, %d", a4, (a4 *= 3 , 5 < 8), a4);
        int b4 = (a4 = 3, a4 = 4, a4 = 6, a4 = 9);
        NSLog(@"%d, %d",a4, b4);
        NSString * str = 5 > 3 ? @"5大于3" : @"5小于3";
        NSLog(@"%@", str);
        a3 > a4 ? NSLog(@"a3大于a4") : NSLog(@"a3不大于a4");
    }
    return 0;
}
