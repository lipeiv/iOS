//
//  main.m
//  count
//
//  Created by MAC on 2020/08/21.
//  Copyright © 2020 lipeiv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    int count=8;
    
    NSLog(@"The numbers from 1 to %d:", count);
    
    for(int i = 1; i <= count; i ++){
        NSLog(@"第%d个数", i);
    }
    return 0;
}
