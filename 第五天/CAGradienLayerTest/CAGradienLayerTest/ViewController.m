//
//  ViewController.m
//  CAGradienLayerTest
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
    // Do any additional setup after loading the view, typically from a 
    CAGradientLayer * layer = [CAGradientLayer layer];
    layer.colors = @[(id)[UIColor redColor].CGColor,(id)[UIColor  blueColor].CGColor];
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.position = CGPointMake(100, 100);
    layer.locations = @[@0.2];
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1, 1);
    [self.view.layer addSublayer:layer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
