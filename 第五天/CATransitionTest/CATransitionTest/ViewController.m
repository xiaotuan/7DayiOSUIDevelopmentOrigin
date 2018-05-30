//
//  ViewController.m
//  CATransitionTest
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CALayer * layer = [CALayer layer];
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.position = CGPointMake(100, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    CATransition * ani = [CATransition animation];
    ani.type = kCATransitionPush;
    ani.subtype = kCATransitionFromRight;
    ani.duration = 3;
    [layer addAnimation:ani forKey:@""];
    [self.view.layer addSublayer:layer];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
