//
//  ViewController.m
//  UIWebViewTest
//
//  Created by apple on 16/2/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView * webView = [[UIWebView alloc]initWithFrame:self.view.frame];
    NSURL * url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    webView.delegate=self;
    
//    NSString *htmlStr = @"<html><head><meta charset=\"UTF-8\"><title> 主标题 | 副标题</title></head><body><p>hello world</p></body></html>";
//    [webView loadHTMLString:htmlStr baseURL:nil];
//    NSURL * imageUrl = [[NSURL alloc]initFileURLWithPath:[[NSBundle mainBundle] pathForResource:@"image" ofType:@"png"]];
    
//    NSData * data = [NSData dataWithContentsOfURL:imageUrl];
//    [webView loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    webView.dataDetectorTypes = UIDataDetectorTypePhoneNumber|UIDataDetectorTypeLink;
    [self.view addSubview:webView];
}
//加载失败调用的方法
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
}
//将要加载请求时调用的方法
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    return YES;
}
//加载数据结束调用的方法
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
}
//已经开始加载数据时调用的方法
-(void)webViewDidStartLoad:(UIWebView *)webView{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
