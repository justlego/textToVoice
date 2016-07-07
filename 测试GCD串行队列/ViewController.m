//
//  ViewController.m
//  测试GCD串行队列
//
//  Created by Apple on 16/6/24.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "TXSoundPlayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClicked
{
    NSLog(@"当前运行系统为：iOS%@",[[UIDevice currentDevice] systemVersion]);
    [self ceshi:@"测试GCD串行队列"];
}

- (void)ceshi:(NSString *)text
{
    TXSoundPlayer *player = [TXSoundPlayer soundPlayerInstance];
    [player play:text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
