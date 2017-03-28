//
//  main.m
//  获取与变更当前目录
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        //获取当前目录
        NSString *path = [fm currentDirectoryPath];
        NSLog(@"初始状态下的当前目录: <%@>",path);
        //变更当前目录
        NSArray * paths = NSSearchPathForDirectoriesInDomains (NSDesktopDirectory, NSUserDomainMask, YES);
        NSString * desktopPath = [paths objectAtIndex:0];
        [fm changeCurrentDirectoryPath:desktopPath];
        //检查当前目录
        NSString *newpath = [fm currentDirectoryPath];
        NSLog(@"变更后的当前目录: <%@>",newpath);
    }
    return 0;
}
