//
//  main.m
//  crazy_block
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef void (^FKPrintBlock)(NSString*);
        FKPrintBlock print = ^(NSString* info)
        {
            NSLog(@"%@", info);
        };
        
        FKPrintBlock looPrint = ^(NSString* info)
        {
            for (int i = 0; i < 3; i ++) {
                NSLog(@"%@", info);
            }
        };
    
        print(@"Objective-C");
        looPrint(@"iOS");
    
    
    
    }
    return 0;
}
