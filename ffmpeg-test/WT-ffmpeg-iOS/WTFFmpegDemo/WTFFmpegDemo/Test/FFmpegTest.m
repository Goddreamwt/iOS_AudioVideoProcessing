//
//  FFmpegTest.m
//  WTFFmpegDemo
//
//  Created by mac on 2018/11/13.
//  Copyright © 2018年 WT. All rights reserved.
//

#import "FFmpegTest.h"

@implementation FFmpegTest

//测试FFmpeg配置
+(void)ffmpegTestConfig{
    const char * configuration = avcodec_configuration();
    NSLog(@"配置信息：%s",configuration);
}

//打开视频文件
+(void)ffmpegOpenfile:(NSString *)filePath{
    //1.注册组件
    av_register_all();
    
    //2.打开封装格式文件
    /*
     @param 封装格式上下文
     @param 打开视频地址->path
     @param 指定输入封装格式
     @param 指定默认配置信息
     @return 0->成功 失败返回averror
     */
    AVFormatContext * avformat_context = avformat_alloc_context();
    const char *url = [filePath UTF8String];
    int avformat_open_input_result = avformat_open_input(&avformat_context,url, NULL, NULL);
    if (avformat_open_input_result !=0) {
        NSLog(@"打开文件失败");
        return;
    }
    
    NSLog(@"打开文件成功");
}
@end
