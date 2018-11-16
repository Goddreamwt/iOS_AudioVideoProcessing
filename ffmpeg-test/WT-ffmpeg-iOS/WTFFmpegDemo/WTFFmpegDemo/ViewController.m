//
//  ViewController.m
//  WTFFmpegDemo
//
//  Created by mac on 2018/11/13.
//  Copyright © 2018年 WT. All rights reserved.
//

#import "ViewController.h"
#import "FFmpegTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试
    [FFmpegTest ffmpegTestConfig];
    
    //案例
    NSString * path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@".avi"];
    [FFmpegTest ffmpegOpenfile:path];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
