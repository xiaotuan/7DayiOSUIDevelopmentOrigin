//
//  ViewController.m
//  UINavigationControllerTest
//
//  Created by apple on 16/1/30.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
int conIndex=1;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"第%d视图控制器",conIndex];
    conIndex++;
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame=CGRectMake(20, 100, 280, 30);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
//    
//    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"image"] forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem * btnItem1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(click)];
    UIBarButtonItem * btnItem2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(click)];
    self.toolbarItems = @[btnItem1,btnItem2];
    
//    self.navigationItem.backBarButtonItem = btnItem1;
    
    
    
//    UIBarButtonItem * item1= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(click)];
//    UIBarButtonItem * item2 = [[UIBarButtonItem alloc]initWithCustomView:[[UIView alloc]init]];
//    UIBarButtonItem * item3 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"image"] style:UIBarButtonItemStylePlain target:self action:@selector(click)];
//    UIBarButtonItem * item4 = [[UIBarButtonItem alloc]initWithTitle:@"标题" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
//    
//    self.navigationItem.leftBarButtonItems = @[item1,item2];
//    self.navigationItem.rightBarButtonItems = @[item3,item4];
    self.navigationController.toolbarHidden=NO;
    self.navigationController.toolbar.barTintColor = [UIColor redColor];
    self.navigationController.hidesBarsWhenVerticallyCompact=YES;
    self.navigationController.hidesBarsOnTap=YES;
    self.navigationController.hidesBarsWhenKeyboardAppears=YES;
    self.navigationController.hidesBarsOnSwipe=YES;
}
-(void)push{
    ViewController * con = [[ViewController alloc]init];
    con.title = [NSString stringWithFormat:@"第%d视图控制器",conIndex];
    [self.navigationController pushViewController:con animated:YES];
}
-(void)dealloc{
    conIndex--;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
