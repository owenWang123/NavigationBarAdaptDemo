//
//  ViewController.m
//  NavigationBarAdaptDemo
//
//  Created by 皓天 on 2018/11/19.
//  Copyright © 2018年 owen. All rights reserved.
//

#import "ViewController.h"
#import "UINavigation-SXFixSpace/UINavigationConfig.h"
#import "Custom/UIBarButtonItem+SimpleInit.h"
#import "HTContentViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *nextBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self configNavigationBar];
    [self configUI];
}

- (void)configNavigationBar{
    self.title = @"Home";
    /**
     // 全局设置。此方法设置后，左右两侧UIBarButtonItem离边界会有 15 的边距
     [UINavigationConfig shared].sx_disableFixSpace = NO;//默认为NO  可以修改
     [UINavigationConfig shared].sx_defaultFixSpace = 10;//默认为0 可以修改
     */
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(leftNavigationEvent) image:[UIImage imageNamed:@"home"]];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) image:[UIImage imageNamed:@"search"]];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) title:@"Right Navigation"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) title:@"Search" image:[UIImage imageNamed:@"search"] imageTitleSpace:5 margin:UIEdgeInsetsMake(0, 0, 0, 10)];
}
- (void)configUI{
    self.nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.nextBtn.frame = CGRectMake(100, 200, 100, 50);
    [self.view addSubview:self.nextBtn];
    [self.nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    self.nextBtn.backgroundColor = [UIColor redColor];
    [self.nextBtn addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark- Action
- (void)buttonEvent:(UIButton *)sender{
    HTContentViewController *controller = [[HTContentViewController alloc]init];
    
    [self.navigationController pushViewController:controller animated:YES];
}
- (void)leftNavigationEvent{
    NSLog(@"leftNavigationEvent");
}
- (void)rightNavigationEvent{
    NSLog(@"rightNavigationEvent");
}
@end
