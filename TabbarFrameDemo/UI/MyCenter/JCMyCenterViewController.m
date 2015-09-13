//
//  JCMyCenterViewController.m
//  TabbarFrameDemo
//
//  Created by jiechen on 15/9/13.
//  Copyright © 2015年 jch. All rights reserved.
//

#import "JCMyCenterViewController.h"

@interface JCMyCenterViewController ()

@end

@implementation JCMyCenterViewController

+ (instancetype)getInstance
{
    JCMyCenterViewController *vc = [JCMyCenterViewController new];
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    self.view.backgroundColor = [UIColor redColor];
}


@end
