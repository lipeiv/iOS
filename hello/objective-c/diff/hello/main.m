//
//  main.m
//  hello
//
//  Created by MAC on 2020/08/21.
//  Copyright © 2020 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int thing1, int thing2){
    if(thing1 == thing2){
        return (NO);
    } else {
        return (YES);
    }
}//areIntsDifferent

NSString *boolString(BOOL yesNo){
    if(yesNo == NO){
        return (@"NO");
    }else{
        return (@"YES");
    }
}//booString

int main(int argc, const char *argv[]){
    BOOL areTheydifferent;
    
    areTheydifferent = areIntsDifferent(5, 5);
    
    NSLog(@"are %d and %d different? %@",
          5,5, boolString(areTheydifferent));
    
    areTheydifferent = areIntsDifferent(23, 42);
    
    NSLog(@"are %d and %d different? %@",
          23,42, boolString(areTheydifferent));
    
    return (0);
}//main
