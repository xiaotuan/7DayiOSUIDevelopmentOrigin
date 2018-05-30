//
//  ViewController.m
//  UIImageViewTest
//
//  Created by apple on 16/1/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"灯泡"]];
//    UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"image1"] highlightedImage:[UIImage imageNamed:@"image2"]];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    imageView.highlighted=YES;
    //设置初始图片
    imageView.image = [UIImage imageNamed:@"跳-1-0"];
    //创建并初始化一个可变数组 用于存放每一帧图片
    NSMutableArray * imageArray = [[NSMutableArray alloc]init];
    //循环向数组中添加图片帧
    for (int i=0; i<4; i++) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"跳-1-%d",i]];
        [imageArray addObject:image];
    }
    //将图片帧数组设置为ImageView的帧动画素材数组
    imageView.animationImages = imageArray;
    //设置动画每播放一轮的时间
    imageView.animationDuration =1;
    //设置动画播放的循环次数
    imageView.animationRepeatCount = 0;
    //开始播放动画
    [imageView startAnimating];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
