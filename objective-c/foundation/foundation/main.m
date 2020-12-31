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
        // 读取文件内容，用文件内容初始化字符串
        NSString* str3 = [NSString stringWithContentsOfFile:@"main.m"
            encoding:NSUTF8StringEncoding
            error:nil];
        NSLog(@"%@" , str3);
        
        NSDate* date1 = [NSDate date];
        NSLog(@"%@", date1);
        
        NSString* str4 = @"Hello";
        NSString* book = @"《疯狂iOS讲义》";
        // 在str后面追加固定的字符串
        // 原来字符串对象并不改变，只是将新生成的字符串重新赋给str指针变量
        str4 = [str4 stringByAppendingString:@",iOS!"];
        NSLog(@"%@" , str4);
        // 获取字符串对应的C风格字符串
        const char* cstr2 = [str UTF8String];
        NSLog(@"获取的C字符串：%s" , cstr2);
        // 在str后面追加带变量的字符串。
        // 原来字符串对象并不改变，只是将新生成的字符串重新赋给str指针变量
        str = [str stringByAppendingFormat:@"%@是一本非常不错的图书."
            , book];
        NSLog(@"%@" , str);
        NSLog(@"str的字符个数为：%lu" , [str length]);
        NSLog(@"str按UTF-8字符集解码后字节数为：%lu" , [str
            lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        // 获取str的前10个字符组成的字符串
        NSString* s1 = [str substringToIndex:10];
        NSLog(@"%@" , s1);
        // 获取str的从第5个字符开始，与后面字符组成的字符串
        NSString* s2 = [str substringFromIndex:5];
        NSLog(@"%@" , s2);
        // 获取str从第5个字符开始，到第15个字符组成的字符串
        NSString* s3 = [str substringWithRange:NSMakeRange(5, 15)];
        NSLog(@"%@" , s3);
        // 获取iOS在str中出现位置
        NSRange pos = [str rangeOfString:@"iOS"];
        NSLog(@"iOS在str中出现的开始位置：%ld, 长度为：%ld"
            , pos.location , pos.length);
        // 将str的所有字符转为大写
        str = [str uppercaseString];
        NSLog(@"%@" , str);
        
        
        // 获取当前进程对应的ProcessInfo对象
        NSProcessInfo* proInfo = [NSProcessInfo processInfo];
        // 获取运行该程序所指定的参数
        NSArray* arr = [proInfo arguments];
        NSLog(@"运行程序的参数为：%@" , arr);
        NSLog(@"进程标识符为：%d" ,
            [proInfo processIdentifier]);
        NSLog(@"进程的进程名为：%@" ,
            [proInfo processName]);
        NSLog(@"进程所在系统的主机名为：%@"
            , [proInfo hostName]);
        NSLog(@"进程所在系统的操作系统为：%ld"
            , [proInfo operatingSystem]);
        NSLog(@"进程所在系统的操作系统名为：%@"
            , [proInfo operatingSystemName]);
        NSLog(@"进程所在系统的操作系统版本字符串为：%@"
            , [proInfo operatingSystemVersionString]);
        NSLog(@"进程所在系统的物理内存为：%lld"
            , [proInfo physicalMemory]);
        NSLog(@"进程所在系统的处理器数量为：%ld"
            , [proInfo processorCount]);
        NSLog(@"进程所在系统的激活的处理器数量为：%ld"
            , [proInfo activeProcessorCount]);
        NSLog(@"进程所在系统的运行时间为：%f"
            , [proInfo systemUptime]);
        
        
    }
    return 0;
}
