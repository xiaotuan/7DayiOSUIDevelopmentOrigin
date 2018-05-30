//
//  ViewController.m
//  UIAlertControllerTest
//
//  Created by apple on 16/1/28.
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
    UIAlertController * alertCon = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * action = [UIAlertAction actionWithTitle:@"Destructive" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"click");
    }];
    [alertCon addAction:action];
    [alertCon addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"文本框1";
    }];
    [alertCon addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"文本框2";
    }];
    [alertCon addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"文本框3";
    }];
    [self presentViewController:alertCon animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
