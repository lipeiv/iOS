//
//  ExternVar.m
//  crazy_function
//
//  Created by 李培培 on 2020/9/7.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>

int count = 0;

void change()
{
    NSLog(@"count的值为:%d", count);
    count = 20;
}
