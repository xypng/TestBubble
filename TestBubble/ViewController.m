//
//  ViewController.m
//  TestBubble
//
//  Created by XiaoYiPeng on 16/3/31.
//  Copyright © 2016年 XiaoYiPeng. All rights reserved.
//

#import "ViewController.h"
#import "BubbleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BubbleView *bubbleView = [[BubbleView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 50, 300, 40)];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-300)/2, 50, 300, 40)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    [self.view addSubview:bubbleView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
