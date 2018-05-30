//
//  ViewController.m
//  MPMoviePlayerViewControllerTest
//
//  Created by apple on 16/2/25.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController ()

@end

@implementation ViewController
- (IBAction)playMovie:(id)sender {
    NSString * path = [[NSBundle mainBundle]pathForResource:@"iphone" ofType:@"mp4"];
    NSURL * url = [NSURL fileURLWithPath:path];
    MPMoviePlayerViewController * controller = [[MPMoviePlayerViewController alloc]initWithContentURL:url];
    [self presentMoviePlayerViewControllerAnimated:controller];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
