//
//  MyActivityIndicatorView.h
//  MyActivityIndicatorView
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyActivityIndicatorView : UIView
//获取单例对象
+(MyActivityIndicatorView *)getActivityIndicatorView;
//开始展示活动指示器
+(void)startActivity;
//停止展示活动指示器
+(void)stopActivity;
//设置活动指示器的提示文案
+(void)setText:(NSString *)text;
@property(nonatomic,strong)UILabel * titleLabel;
@property(nonatomic,assign)BOOL show;
@end
