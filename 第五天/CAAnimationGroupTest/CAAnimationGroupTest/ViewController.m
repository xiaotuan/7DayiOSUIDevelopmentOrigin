//
//  ViewController.m
//  CAAnimationGroupTest
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
    _layer.bounds= CGRectMake(0, 0, 100, 100);
    _layer.position = CGPointMake(100, 100);
    _layer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:_layer];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CABasicAnimation * ani1 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    ani1.toValue = (id)[UIColor blueColor].CGColor;
    CABasicAnimation * ani2 = [CABasicAnimation animationWithKeyPath:@"position"];
    ani2.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 300)];
    CAAnimationGroup * group = [CAAnimationGroup animation];
    group.duration = 3;
    group.animations = @[ani1,ani2];
    [_layer addAnimation:group forKey:@""];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
