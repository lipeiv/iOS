//
//  main.m
//  crazy_dog
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog* dog = [[FKDog alloc] init];
        [dog run];
    }
    return 0;
}
