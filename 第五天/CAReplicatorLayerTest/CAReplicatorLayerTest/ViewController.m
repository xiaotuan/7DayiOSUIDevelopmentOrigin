//
//  ViewController.m
//  CAReplicatorLayerTest
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
    // Do any additional setup after loading the view, typically from a nib.
    //创建一个普通layer
    CALayer * layer = [CALayer layer];
    layer.bounds = CGRectMake(0, 0, 50, 50);
    layer.position = CGPointMake(50, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    //创建拷贝容器
    CAReplicatorLayer * reLayer = [CAReplicatorLayer layer];
    reLayer.instanceRedOffset = -0.2;
    reLayer.position = CGPointMake(0, 0);
    reLayer.instanceTransform = CATransform3DMakeTranslation(100, 0, 0);
    reLayer.instanceCount = 3;
    [reLayer addSublayer:layer];
    [self.view.layer addSublayer:reLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
