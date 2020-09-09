//
//  FKPerson.m
//  crazy_class
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "FKPerson.h"

@implementation FKPerson
{
    int _testAttr;
}

- (void) setName: (NSString *) n andAge: (int) a
{
    _name = n;
    _age = a;
}

- (void) say: (NSString *) content
{
    NSLog(@"%@", content);
}

- (NSString*) info
{
    [self test];
    return [NSString stringWithFormat:@"我是一个人,名字为:%@, 年龄为:%d.", _name, _age];
}

- (void) test
{
    NSLog(@"--只为实现test方法--");
}

+ (void) foo
{
    NSLog(@"FKPerson类的类方法,通过类名调用.");
}
@end
