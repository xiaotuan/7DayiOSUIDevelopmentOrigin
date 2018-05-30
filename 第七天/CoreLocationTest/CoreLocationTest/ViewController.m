//
//  ViewController.m
//  CoreLocationTest
//
//  Created by apple on 16/3/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()<CLLocationManagerDelegate>
{
    CLLocationManager* manager;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    manager = [[CLLocationManager alloc]init];//初始化一个定位管理对象
    [manager requestAlwaysAuthorization];//申请定位服务权限
//    [manager requestWhenInUseAuthorization];
    manager.delegate=self;//设置代理
    [manager startUpdatingLocation];//开启定位服务
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    NSLog(@"%@",locations);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
