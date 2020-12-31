//
//  main.m
//  crazy_logic
//
//  Created by 李培培 on 2020/9/7.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int age = 30;
        if(age > 20)
        {
            NSLog(@"年龄大于20");
        }
        
        int a = 5;
        if(a)
            NSLog(@"a为非零");
        else
            ;
            NSLog(@"a为0⃣️");
            NSLog(@"不加{}则只有一行代码作为代码块,这一条总会执行的");
        if (age > 60) {
            NSLog(@"年龄大于60");
        }
        else if(age >= 40)
        {
            NSLog(@"中年");
        }
        else if(age >= 18)
            NSLog(@"青年");
        else if(age >= 0)
            NSLog(@"子供");
        else
            NSLog(@"エラー");
        
        printf("%d", a);
        printf("D\n");
        NSLog(@"%li",sizeof(@"w"));
        
        char str[30] = "I love iOS";
        strcat(str, ", and you?");
        printf("%s\t%li\n", str, strlen(str));
        
        
        
        
    }
    return 0;
}
