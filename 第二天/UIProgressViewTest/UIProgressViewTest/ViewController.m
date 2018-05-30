//
//  ViewController.m
//  UIProgressViewTest
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIProgressView * progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(20, 100, 280, 20)];
    progressView.progressTintColor = [UIColor redColor];
    progressView.trackTintColor = [UIColor greenColor];
    progressView.progress=0.5;
    [self.view addSubview:progressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
