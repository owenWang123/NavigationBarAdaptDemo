//
//  HTContentViewController.m
//  NavigationBarAdaptDemo
//
//  Created by 皓天 on 2018/11/19.
//  Copyright © 2018年 owen. All rights reserved.
//

#import "HTContentViewController.h"
#import "Custom/UIBarButtonItem+SimpleInit.h"

@interface HTContentViewController ()

@end

@implementation HTContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self configNavigationBar];
}

- (void)configNavigationBar{
    self.title = @"Content";
    
    NSArray *items = @[[UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent1) image:[UIImage imageNamed:@"search"]],
                       [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent2) image:[UIImage imageNamed:@"top"]]];
    self.navigationItem.rightBarButtonItems = items;
}

#pragma mark- Action
- (void)rightNavigationEvent1{
    NSLog(@"rightNavigationEvent-1");
}
- (void)rightNavigationEvent2{
    NSLog(@"rightNavigationEvent-2");
}

@end
