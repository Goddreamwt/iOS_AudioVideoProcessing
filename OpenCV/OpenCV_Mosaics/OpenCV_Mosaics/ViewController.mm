//
//  ViewController.m
//  OpenCV_Mosaics
//
//  Created by mac on 2018/9/10.
//  Copyright © 2018年 WT. All rights reserved.
//

#import "ViewController.h"
#import "ImageUtils.h"

@interface ViewController ()
@property(nonatomic,strong)UIImageView * bgImageView;
@property(nonatomic,strong)UIButton * originalBtn;
@property(nonatomic,strong)UIButton * mosaicsBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    self.bgImageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 50, 250, 250)];
    self.bgImageView.image =[UIImage imageNamed:@"liuyifei"];
    [self.view addSubview:self.bgImageView];
    
    self.originalBtn =[[UIButton alloc]initWithFrame:CGRectMake(30, 340, 100, 40)];
    [self.originalBtn setTitle:@"原始图片" forState:UIControlStateNormal];
    [self.originalBtn setBackgroundColor:[UIColor redColor]];
    [self.originalBtn addTarget:self action:@selector(originalBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.originalBtn];
    
    self.mosaicsBtn =[[UIButton alloc]initWithFrame:CGRectMake(220, 340, 100, 40)];
    [self.mosaicsBtn setTitle:@"马赛克图片" forState:UIControlStateNormal];
    [self.mosaicsBtn setBackgroundColor:[UIColor greenColor]];
    [self.mosaicsBtn addTarget:self action:@selector(mosaicsBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.mosaicsBtn];
}

//正常图片
-(void)originalBtnClick:(UIButton *)btn{
    NSLog(@"1111");
    _bgImageView.image =[UIImage imageNamed:@"liuyifei"];
}

//马赛克图片
-(void)mosaicsBtnClick:(UIButton *)btn{

    //openCV框架下开发(基于C/C++)
    NSLog(@"2222");
    _bgImageView.image =[ImageUtils openCVImage:_bgImageView.image level:10];
}
@end
