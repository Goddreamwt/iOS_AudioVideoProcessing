//
//  FFmpegTest.h
//  WTFFmpegDemo
//
//  Created by mac on 2018/11/13.
//  Copyright © 2018年 WT. All rights reserved.
//

#import <Foundation/Foundation.h>

//引入头文件
//核心库->音视频编解码库
#import <libavcodec/avcodec.h>
//导入封装格式库
#import <libavformat/avformat.h>

@interface FFmpegTest : NSObject

//测试FFmpeg配置
+(void)ffmpegTestConfig;

//打开视频文件
+(void)ffmpegOpenfile:(NSString *)filePath;
@end
