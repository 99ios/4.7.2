//
//  main.m
//  目录的创建、重命名与删除
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
        //创建目录
        NSString *myfolderPath = [path stringByAppendingPathComponent:@"myfolder"];
        if ([fm createDirectoryAtPath:myfolderPath withIntermediateDirectories:YES attributes:nil error:nil]) {
            NSLog(@"目录创建成功!");
        }
        //重命名与移动目录
        NSString *myfolderNEWPath = [path stringByAppendingPathComponent:@"myNEWfolder"];
        if ([fm moveItemAtPath:myfolderPath toPath:myfolderNEWPath error:nil]) {
            NSLog(@"目录重命名成功");
        }
        //目录删除
        if ([fm removeItemAtPath:myfolderNEWPath error:nil]) {
            NSLog(@"目录删除成功");
        }
    }
    return 0;
}
