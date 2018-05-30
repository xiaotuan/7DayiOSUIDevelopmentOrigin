//
//  ViewController.m
//  UIActionSheetTest
//
//  Created by apple on 16/1/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIActionSheet * actionSheet = [[UIActionSheet alloc]initWithTitle:@"活动列表标题" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"注意" otherButtonTitles:@"确定", nil];
    [actionSheet showInView:self.view];
}
//点击按钮触发的方法
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
}
//活动列表将要消失时触发的方法
-(void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex{
    
}
//活动列表已经消失时触发的方法
-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
