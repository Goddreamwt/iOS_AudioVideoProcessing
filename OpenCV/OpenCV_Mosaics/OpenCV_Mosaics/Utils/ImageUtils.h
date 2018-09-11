//
//  ImageUtils.h
//  OpenCV_Mosaics
//
//  Created by mac on 2018/9/10.
//  Copyright © 2018年 WT. All rights reserved.
//

#import <UIKit/UIKit.h>
//导入openCV框架
//核心头文件
#import <opencv2/opencv.hpp>
//对iOS支持
#import <opencv2/imgcodecs/ios.h>
//导入矩形帮助类
#import <opencv2/highgui.hpp>
#import <opencv2/core/types.hpp>

//导入C++命名空间
using namespace cv;

@interface ImageUtils : NSObject

//定义方法：处理图片
+(UIImage *)openCVImage:(UIImage *)image level:(int)level;

@end
