//
//  PrintFunctionLib.m
//  crazy_function
//
//  Created by 李培培 on 2020/9/7.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <Foundation/Foundation.h>

extern void printRect(int height, int width)
{
    for(int i = 0; i < height; i++)
        {
            for (int j = 0; j < width; j++) {
                printf(" * ");
            }
            printf("\n");
        }
}

extern void printTriangle(int height)
{
    for(int i = 0; i < height; i++)
    {
        for(int j = 0; j < height - 1 - i; j++)
        {
            printf("   ");
        }
        printf("😂\n");
    }
}
