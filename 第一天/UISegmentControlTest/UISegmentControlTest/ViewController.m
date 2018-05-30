//
//  ViewController.m
//  UISegmentControlTest
//
//  Created by apple on 16/1/8.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISegmentedControl * segmentedControl = [[UISegmentedControl alloc]initWithItems:@[@"one++++++",@"two++++++++++",@"three++",@"four"]];
    segmentedControl.frame = CGRectMake(20, 100, 280, 40);
    segmentedControl.apportionsSegmentWidthsByContent=YES;
    [segmentedControl setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:1];
    [segmentedControl addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];
}

-(void)click:(UISegmentedControl * )seg{
    NSUInteger index = seg.selectedSegmentIndex;
    NSLog(@"%lu",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
