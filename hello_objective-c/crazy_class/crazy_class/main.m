//
//  main.m
//  crazy_class
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* person = [[FKPerson alloc] init];
        [person say:@"Hello, I love iOS!"];
        [person setName:@"孙悟空🐒" andAge:500];
        NSLog(@"%@",[person info]);
    }
    return 0;
}
