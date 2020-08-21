//
//  main.m
//  wordFile
//
//  Created by MAC on 2020/08/21.
//  Copyright © 2020 lipeiv. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    FILE *wordFile = fopen("words.m", "r");
    char word[100];
    
    while (fgets(word, 100, wordFile)) {
        // strip off the trailing /n
        //word[strlen(word) - 1] = '¥0';
        
        NSLog(@"%s is %lu characters long", word, strlen(word));
    }
    
    fclose(wordFile);
    return 0;
}//main
