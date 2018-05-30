//
//  ViewController.m
//  AutolayoutTestThree
//
//  Created by apple on 16/3/12.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * view1 = [[UIView alloc]init];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor redColor];
    //添加约束前 必须将子视图添加在父视图上
    [self.view addSubview:view1];
    //将view1视图约束在屏幕竖直方向的中间
    NSLayoutConstraint * constraintX = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    [self.view addConstraint:constraintX];
    //将view1视图约束在屏幕水平方向的中间
    NSLayoutConstraint * constraintY = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self.view addConstraint:constraintY];
    //将视图的宽度约束为100
    NSLayoutConstraint * constraintW = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    [view1 addConstraint:constraintW];
    //将视图的高度约束为100
    NSLayoutConstraint * constraintH = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    [view1 addConstraint:constraintH];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
