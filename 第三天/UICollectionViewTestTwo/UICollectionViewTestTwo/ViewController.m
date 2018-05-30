//
//  ViewController.m
//  UICollectionViewTestTwo
//
//  Created by apple on 16/2/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "MyLayout.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyLayout * layout = [[MyLayout alloc]init];
    UICollectionView * collect  = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 320, 400) collectionViewLayout:layout];
    collect.delegate=self;
    collect.dataSource=self;
    
    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    [self.view addSubview:collect];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell * cell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 25;
    cell.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    return cell;
}
@end
