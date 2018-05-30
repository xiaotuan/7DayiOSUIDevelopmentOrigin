//
//  ViewController.m
//  UIViewAnimationTest
//
//  Created by apple on 16/2/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView * _colorView;
    UIImageView * _imageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _colorView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    _colorView.backgroundColor = [UIColor redColor];
    
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    _imageView.image = [UIImage imageNamed:@"image"];
    [self.view addSubview:_imageView];
    [self.view addSubview:_colorView];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [UIView animateWithDuration:3 animations:^{
//        _imageView.contentStretch = CGRectMake(0.5, 0.5, 1, 1);
//        _colorView.transform = CGAffineTransformMakeRotation(M_PI_4);
//    }completion:^(BOOL finished) {
//        [UIView animateWithDuration:2 animations:^{
//            _colorView.frame = CGRectMake(100, 100, 200, 200);
//        }completion:^(BOOL finished) {
//            [UIView animateWithDuration:1 animations:^{
//                _colorView.backgroundColor = [UIColor blueColor];
//            }];
//        }];
//    }];
    [UIView beginAnimations:@"test" context:nil];
    
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(start)];
    [UIView setAnimationDidStopSelector:@selector(stop)];
    [UIView setAnimationDuration:3.0];
    [UIView setAnimationDelay:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:3];
    _colorView.backgroundColor = [UIColor blueColor];
    [UIView commitAnimations];
}

-(void)start{
    NSLog(@"start");
}
-(void)stop{
    NSLog(@"stop");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
