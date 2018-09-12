//
//  Mosaics_SDK.m
//  Mosaics_SDK
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 WT. All rights reserved.
//

#import "Mosaics_SDK.h"

#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import <opencv2/highgui.hpp>
#import <opencv2/core/types.hpp>

using namespace cv;
@implementation Mosaics_SDK

+(UIImage *)openCVImage:(UIImage *)image level:(int)level{
    //实现功能
    //第一步：将iOS图片转换为openCV图片（Mat矩阵）
    Mat mat_image_src;
    UIImageToMat(image, mat_image_src);
    
    //第二步：确定宽高
    int width = mat_image_src.cols;
    int height = mat_image_src.rows;
    
    
    //图片类型->进行转换
    //在OpenCV里面
    //坑隐藏
    //支持->RGB处理
    //图片ARGB
    //将ARGB转换为RGB
    Mat mat_image_dst;
    cvtColor(mat_image_src,mat_image_dst,CV_RGBA2RGB,3);
    
    //克隆一张图片 为了不影响原始图片
    Mat mat_image_clone = mat_image_dst.clone();
    //第三步：马赛克处理
    //分析马赛克算法原理
    //level => 3*3矩形
    //我们可以设置level 进行动态处理
    int x= width - level;
    int y = height - level;
    
    //一个矩形一个矩形去处理
    for (int i = 0; i < y; i += level) {
        for (int j = 0; j < x; j += level) {
            //创建矩形区域
            Rect2i mosaicsRect = Rect2i(j,i,level,level);
            //原始数据：给Rect2i区域->填充数据
            Mat roi = mat_image_dst(mosaicsRect);
            
            //让整个Rect2i区域颜色值保持一致
            //mat_image_clone.at<Vec3b>(i,j) ->像素点(颜色值组成-》多个) ->ARGB ->数组
            //mat_image_clone.at<Vec3b>(i,j)[0] R值
            //mat_image_clone.at<Vec3b>(i,j)[1] G值
            //mat_image_clone.at<Vec3b>(i,j)[2] B值
            Scalar scalar = Scalar(
                                   mat_image_clone.at<Vec3b>(i,j)[0],
                                   mat_image_clone.at<Vec3b>(i,j)[1],
                                   mat_image_clone.at<Vec3b>(i,j)[2]);
            //修改后的数据：将处理好的矩形区域->数据->拷贝到图片上
            //CV_8UC3
            //CV_表示:框架的命名空间
            //8表示:每个颜色值是8位
            //U表示:有符号类型(sign -> 有正负 ->简写"S") -128->127、无符号类型(Unsign->只有正数 ->简写"U") 0->255
            //C表示:char类型
            //3表示：3个通道 RGB
            Mat roiCopy = Mat(mosaicsRect.size(),CV_8UC3,scalar);
            roiCopy.copyTo(roi);
        }
    }
    //第四步：将OpenCV格式图片转换为iOS图片格式
    return MatToUIImage(mat_image_dst);
}
@end
