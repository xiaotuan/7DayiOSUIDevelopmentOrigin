//
//  ViewController.m
//  LoginView
//
//  Created by apple on 16/1/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
   UITextField * userNameField;
}
@end 

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建输入框对象
    userNameField = [[UITextField alloc]initWithFrame:CGRectMake(40, 120, 240, 40)];
    UITextField * passwdField = [[UITextField alloc]initWithFrame:CGRectMake(40, 200, 240, 40)];
    //设置风格
    userNameField.borderStyle = UITextBorderStyleRoundedRect;
    passwdField.borderStyle = UITextBorderStyleRoundedRect;
    userNameField.placeholder = @"请输入用户名";
    passwdField.placeholder = @"请输入密码";
    [self.view addSubview:userNameField];
    [self.view addSubview:passwdField];
    //设置挂件视图
    UIImageView * userImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    userImage.image = [UIImage imageNamed:@"login_user"];
    userNameField.leftView = userImage;
    UIImageView * passImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    passImage.image  = [UIImage imageNamed:@"login_pwdico"];
    passwdField.leftView = passImage;
    userNameField.leftViewMode = UITextFieldViewModeAlways;
    passwdField.leftViewMode = UITextFieldViewModeAlways;
    //登录按钮
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(110, 260, 100, 30);
    [btn setTitle:@"立即登录" forState:UIControlStateNormal];
    //设置代理
    userNameField.delegate =self;
    [self.view addSubview:btn];
}


-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (string.length>0) {
        if ([string characterAtIndex:0]<='9'&&[string characterAtIndex:0]>='0') {
            if (textField.text.length<=10) {
                return YES;
            }
        }
        NSLog(@"请输入正确的手机号");
         return NO;
    }
    return YES;
   
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [userNameField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
