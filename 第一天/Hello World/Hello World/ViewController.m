//
//  ViewController.m
//  Hello World
//
//  Created by apple on 15/12/28.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建并初始化UILabel控件
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 120, 100)];
    //设置Label文字
    label.text = @"Hello World Hello World Hello World Hello World";
    label.numberOfLines = 2;
//    //设置文字颜色
//    label.textColor = [UIColor redColor];
//    //设置字体
//    label.font = [UIFont systemFontOfSize:15];
//    //设置背景颜色
//    label.backgroundColor = [UIColor blueColor];
//    //设置对齐模式
//    label.textAlignment = NSTextAlignmentRight;
//    //设置阴影颜色
//    label.shadowColor = [UIColor greenColor];
//    //设置阴影偏移尺寸
//    label.shadowOffset = CGSizeMake(5, 5);
    label.lineBreakMode = NSLineBreakByClipping|NSLineBreakByTruncatingHead;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
