//
//  ViewController.m
//  StretchableImage
//
//  Created by Apple on 16/4/4.
//  Copyright © 2016年 ywj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *stretButtonA;
@property (nonatomic, strong) UIButton *stretButtonA1;
@property (nonatomic, strong) UIButton *stretButtonB;
@property (nonatomic, strong) UIButton *stretButtonB1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.stretButtonA];
    [self.view addSubview:self.stretButtonA1];
    [self.view addSubview:self.stretButtonB];
    [self.view addSubview:self.stretButtonB1];
}

// 图chat_butttle_blue_bg.png用stretchableImage拉伸
// stretchableImage 在ios5.0已经废弃
- (UIButton *)stretButtonA
{
    if (_stretButtonA == nil) {
        CGFloat w = 200;
        CGFloat h = 50;
        _stretButtonA = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, w, h)];
        [_stretButtonA setTitle:@"stretchableImage" forState:UIControlStateNormal];
        UIImage *interBgImg = [[UIImage imageNamed:@"chat_butttle_blue_bg.png"] stretchableImageWithLeftCapWidth:15 topCapHeight:30];
        [_stretButtonA setBackgroundImage:interBgImg forState:UIControlStateNormal];
    }
    return _stretButtonA;
}

// 图chat_butttle_blue_bg.png用resizableImage拉伸
- (UIButton *)stretButtonA1
{
    if (_stretButtonA1 == nil) {
        CGFloat w = 200;
        CGFloat h = 50;
        
        CGFloat top = 10;
        CGFloat left = 17;
        CGFloat bottom = 34;
        CGFloat right = 17;
        _stretButtonA1 = [[UIButton alloc] initWithFrame:CGRectMake(50, 260, w, h)];
        [_stretButtonA1 setTitle:@"resizableImage" forState:UIControlStateNormal];
        UIImage *interBgImg = [[UIImage imageNamed:@"chat_butttle_blue_bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right) resizingMode:UIImageResizingModeTile];
        [_stretButtonA1 setBackgroundImage:interBgImg forState:UIControlStateNormal];
    }
    return _stretButtonA1;
}


// 图article_recommend_interest_bg.png用stretchableImage拉伸
// stretchableImage 在ios5.0已经废弃
- (UIButton *)stretButtonB
{
    if (_stretButtonB == nil) {
        CGFloat w = 200;
        CGFloat h = 50;
        _stretButtonB = [[UIButton alloc] initWithFrame:CGRectMake(50, 320, w, h)];
        [_stretButtonB setTitle:@"stretchableImage" forState:UIControlStateNormal];
        UIImage *interBgImg = [[UIImage imageNamed:@"article_recommend_interest_bg.png"] stretchableImageWithLeftCapWidth:13 topCapHeight:20];
        [_stretButtonB setBackgroundImage:interBgImg forState:UIControlStateNormal];
    }
    return _stretButtonB;
}

// 图article_recommend_interest_bg.png用stretchableImage拉伸
// stretchableImage 在ios5.0已经废弃
- (UIButton *)stretButtonB1
{
    if (_stretButtonB1 == nil) {
        CGFloat w = 200;
        CGFloat h = 50;
        
        // imageSize 43 * 62px
        CGFloat top = 10;
        CGFloat left = 10;
        CGFloat bottom = 20;
        CGFloat right = 10;
        
        _stretButtonB1 = [[UIButton alloc] initWithFrame:CGRectMake(50, 380, w, h)];
        [_stretButtonB1 setTitle:@"resizableImage" forState:UIControlStateNormal];
        UIImage *interBgImg = [[UIImage imageNamed:@"article_recommend_interest_bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right) resizingMode:UIImageResizingModeTile];
        [_stretButtonB1 setBackgroundImage:interBgImg forState:UIControlStateNormal];
    }
    return _stretButtonB1;
}


- (void)streButtonAction:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
}

@end
