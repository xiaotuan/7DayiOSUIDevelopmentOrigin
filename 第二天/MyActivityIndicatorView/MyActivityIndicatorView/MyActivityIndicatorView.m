//
//  MyActivityIndicatorView.m
//  MyActivityIndicatorView
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MyActivityIndicatorView.h"

@implementation MyActivityIndicatorView

+(MyActivityIndicatorView *)getActivityIndicatorView{
    static MyActivityIndicatorView* myView = nil;
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        myView = [[MyActivityIndicatorView alloc] init] ;
    }) ;
    return myView ;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = [UIScreen mainScreen].bounds;
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,self.frame.size.height/2+20, self.frame.size.width, 30)];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        
        UIActivityIndicatorView * ind = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        ind.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        [ind startAnimating];
        [self addSubview:ind];
    }
    return self;
}
+(void)startActivity{
    if ([MyActivityIndicatorView  getActivityIndicatorView].show) {
        return;
    }
    [[[UIApplication sharedApplication].delegate window]addSubview:[MyActivityIndicatorView getActivityIndicatorView]];
    [MyActivityIndicatorView  getActivityIndicatorView].show=YES;
}
+(void)stopActivity{
    if ([MyActivityIndicatorView  getActivityIndicatorView].show) {
         [[MyActivityIndicatorView getActivityIndicatorView]removeFromSuperview];
    }
   [MyActivityIndicatorView  getActivityIndicatorView].show=NO;
}
+(void)setText:(NSString *)text{
    [MyActivityIndicatorView getActivityIndicatorView].titleLabel.text=text;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
