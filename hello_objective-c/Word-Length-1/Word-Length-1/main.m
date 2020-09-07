//
//  main.m
//  Word-Length-1
//
//  Created by MAC on 2020/08/21.
//  Copyright © 2020 lipeiv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *words[4] = {@"abcd", @"汉字", @"漢字が", @"😂"};
        NSLog(@"address %p", words);
        int wordCount = 4;
        for(int i = 0; i < wordCount; i ++){
            NSLog(@"%@ is %lu characters long", words[i], [words[i] length]);
        }
        
        char char1 = 'a';
        char char2 = '\t';
        char char3 = 'b';
        NSLog(@"%c%c%c", char1, char2, char3);
        return 0;
        
        
    }
        
}// main
