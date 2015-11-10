//
//  JCHomePageViewController.m
//  TabbarFrameDemo
//
//  Created by jiechen on 15/9/13.
//  Copyright © 2015年 jch. All rights reserved.
//

#import "JCHomePageViewController.h"

@interface JCHomePageViewController ()

@end

@implementation JCHomePageViewController

+ (instancetype)getInstance
{
    JCHomePageViewController *vc = [JCHomePageViewController new];
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
