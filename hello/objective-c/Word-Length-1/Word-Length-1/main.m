//
//  main.m
//  Word-Length-1
//
//  Created by MAC on 2020/08/21.
//  Copyright © 2020 lipeiv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    char *words[4] = {"aard", "abacufs", "alldude", "zydote"};
    NSLog(@"address %x", &words);
    int wordCount = 4;
    
    for(int i = 0; i < wordCount; i ++){
        NSLog(@"%s is %lu characters long, %x", words[i], strlen(words[i]), &words[i]);
    }

    return 0;
}// main
