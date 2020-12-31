//
//  FKPersion.h
//  crazy_class
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface FKPerson : NSObject
{
    //定义成员变量
    NSString* _name;
    int _age;
}

// 定义方法
- (void) setName:(NSString*) name andAge: (int) age;

- (void) say: (NSString *) content;

- (NSString*) info;

+ (void) foo;

@end
