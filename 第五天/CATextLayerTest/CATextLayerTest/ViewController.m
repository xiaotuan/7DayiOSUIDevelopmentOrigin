//
//  ViewController.m
//  CATextLayerTest
//
//  Created by apple on 16/3/3.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CATextLayer * layer = [CATextLayer layer];
    layer.bounds = CGRectMake(0, 0, 320, 100);
    layer.position = CGPointMake(160, 100);
    layer.string = @"我是文字Layer";
    layer.fontSize = 25;
    layer.foregroundColor = [UIColor redColor].CGColor;
    layer.alignmentMode = kCAAlignmentCenter;
    [self.view.layer addSublayer:layer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
