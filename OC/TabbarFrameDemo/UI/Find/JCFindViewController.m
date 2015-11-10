//
//  JCFindViewController.m
//  TabbarFrameDemo
//
//  Created by jiechen on 15/9/13.
//  Copyright © 2015年 jch. All rights reserved.
//

#import "JCFindViewController.h"

@interface JCFindViewController ()

@end

@implementation JCFindViewController

+ (instancetype)getInstance
{
    JCFindViewController *vc = [JCFindViewController new];
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发现";
    self.view.backgroundColor = [UIColor blueColor];
}


@end
