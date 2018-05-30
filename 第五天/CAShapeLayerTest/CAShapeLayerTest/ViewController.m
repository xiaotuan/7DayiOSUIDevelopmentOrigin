//
//  ViewController.m
//  CAShapeLayerTest
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
    CAShapeLayer * layer = [CAShapeLayer layer];
    layer.position = CGPointMake(0, 0);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, 0, 100, 100);
    CGPathAddLineToPoint(path, 0, 300, 100);
    CGPathAddLineToPoint(path, 0, 200, 200);
    CGPathAddLineToPoint(path, 0, 100, 100);
    layer.path=path;
    
    layer.fillColor = [UIColor redColor].CGColor;
    layer.strokeColor = [UIColor blueColor].CGColor;
    layer.strokeStart = 0.3;
    layer.strokeEnd = 0.8;
    layer.lineWidth = 4;
    [self.view.layer addSublayer:layer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
