//
//  main.m
//  foundation
//
//  Created by 李培培 on 2020/9/19.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unichar data[7] = {65, 97, 98, 99, 100, 101, 102};
        //使用Unicode数值初始化字符串
        NSString *str = [[NSString alloc] initWithCharacters:data length:7];
        NSLog(@"%@", str);
        
        char* cstr = "Hello iOS!";
        //将C风格的字符串转换为NSString对象
        NSString* str2 = [NSString stringWithUTF8String:cstr];
        NSLog(@"%@", str2);
        
        //将字符串写入制定文件
        [str2 writeToFile:@"myFile.txt"
            atomically:YES
            encoding:NSUTF8StringEncoding
                    error:nil];
        
        
    }
    return 0;
}
