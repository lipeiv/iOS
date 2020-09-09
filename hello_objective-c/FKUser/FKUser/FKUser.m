//
//  FKUser.m
//  FKUser
//
//  Created by 李培培 on 2020/9/8.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

static NSString* nation = nil;
@implementation FKUser

+ (NSString*) nation
{
    return nation;
}

+ (void) setNation:(NSString *)newNation
{
    if(![nation isEqualToString:newNation])
    {
        nation = newNation;
    }
}
@end

int main(int argc, char * argv[])
{
    @autoreleasepool {
        [FKUser setNation:@"中国🇨🇳"];
        NSLog(@"FKUser中nation类变量为:%@", [FKUser nation]);
    }
}
