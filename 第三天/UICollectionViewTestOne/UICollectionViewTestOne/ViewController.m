//
//  ViewController.m
//  UICollectionViewTestOne
//
//  Created by apple on 16/2/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "MyLayout.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
//    layout.minimumLineSpacing=30;
//    layout.minimumInteritemSpacing=10;
//    layout.scrollDirection=UICollectionViewScrollDirectionVertical;
//    layout.itemSize = CGSizeMake(100, 100);
    MyLayout * layout = [[MyLayout alloc]init];
    layout.itemCount = 20;
    UICollectionView * collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellID"];
    collectionView.delegate=self;
    collectionView.dataSource=self;
    [self.view addSubview:collectionView];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    cell.backgroundColor =[UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    return cell;
}
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.row%2==0) {
//        return CGSizeMake(50, 50);
//    }else{
//        return CGSizeMake(100, 100);
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
