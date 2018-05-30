//
//  ViewController.m
//  CAKeyframeAnimationTest
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CALayer * _layer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _layer = [CALayer layer];
    _layer.bounds = CGRectMake(0, 0, 100, 100);
    _layer.backgroundColor = [UIColor redColor].CGColor;
    _layer.position = CGPointMake(50, 100);
    [self.view.layer addSublayer:_layer];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CAKeyframeAnimation * ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    ani.values = @[[NSValue valueWithCGPoint:CGPointMake(50, 100)],[NSValue valueWithCGPoint:CGPointMake(120, 100)],[NSValue valueWithCGPoint:CGPointMake(120, 200)],[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    ani.keyTimes = @[@0,@0.5,@0.8,@1];
    ani.duration = 3;
    [_layer addAnimation:ani forKey:@""];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
