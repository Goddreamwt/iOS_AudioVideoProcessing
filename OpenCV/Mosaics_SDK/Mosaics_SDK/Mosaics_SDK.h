//
//  Mosaics_SDK.h
//  Mosaics_SDK
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 WT. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface Mosaics_SDK : NSObject

//定义方法：处理图片
+(UIImage *)openCVImage:(UIImage *)image level:(int)level;

@end
