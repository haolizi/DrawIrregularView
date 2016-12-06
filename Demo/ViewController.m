//
//  ViewController.m
//  Demo
//
//  Created by chuang Hao on 2016/12/6.
//  Copyright © 2016年 Mr.Hao. All rights reserved.
//

#import "ViewController.h"
#import "DrawRoundView.h"

#define KSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define KSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define BARANDOM_COLOR      [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:0.88];//随机颜色

@interface ViewController ()

@property (nonatomic, strong) DrawRoundView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _drawView = [[DrawRoundView alloc] init];
    _drawView.frame = CGRectMake(0, KSCREEN_HEIGHT - 72, KSCREEN_WIDTH, 72);
    _drawView.backgroundColor = [UIColor clearColor];
    _drawView.fillColor = BARANDOM_COLOR;
    [self.view addSubview:_drawView];
    
    UIButton *chageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    chageBtn.frame = CGRectMake((KSCREEN_WIDTH - 100)/2, 200, 100, 30);
    chageBtn.backgroundColor = [UIColor redColor];
    [chageBtn setTitle:@"touch me" forState:UIControlStateNormal];
    [chageBtn addTarget:self action:@selector(chageBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chageBtn];
}

- (void) chageBtnAction {
    _drawView.fillColor = BARANDOM_COLOR;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
