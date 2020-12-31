//
//  FKDog.m
//  crazy_dog
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import "FKDog.h"

@implementation FKDog

- (void) jump
{
    NSLog(@"正在执行jump方法");
}

- (void) run
{
    //FKDog* d = [[FKDog alloc] init];
    [self jump];
    NSLog(@"正在执行run方法");
}

@end
