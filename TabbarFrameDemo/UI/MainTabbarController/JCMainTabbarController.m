//
//  JCMainTabbarController.m
//  TabbarFrameDemo
//
//  Created by jiechen on 15/9/13.
//  Copyright © 2015年 jch. All rights reserved.
//

#import "JCMainTabbarController.h"
#import "JCHomePageViewController.h"
#import "JCFindViewController.h"
#import "JCMyCenterViewController.h"

@interface JCMainTabbarController ()

@end

@implementation JCMainTabbarController

+ (instancetype)sharedInstance
{
    static JCMainTabbarController *tabbarVC = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarVC = [[JCMainTabbarController alloc]init];
    });
    return tabbarVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadSubviewControllers];
}

- (void)loadSubviewControllers
{
    //子控制器
    NSArray *viewControllers = @[[JCHomePageViewController getInstance],
                                 [JCFindViewController getInstance],
                                 [JCMyCenterViewController getInstance]];
    
    //tabBarItem的标题，如果不配置，则使用子控制器的标题。
    NSArray *tabTitles = @[@"首页", @"发现", @"我的"];
    NSArray *tabImages = @[[UIImage imageNamed:@"tabbar_myCenter_nor"], //目前没有素材
                           [UIImage imageNamed:@"tabbar_find_nor"],
                           [UIImage imageNamed:@"tabbar_myCenter_nor"]];
    NSArray *tabSelectedImages = @[];
    
    NSMutableArray *navigationControllers = [NSMutableArray arrayWithCapacity:viewControllers.count];
    [viewControllers enumerateObjectsUsingBlock:^(UIViewController *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UINavigationController *navCon =[[UINavigationController alloc] initWithRootViewController:obj];
        navCon.tabBarItem.title = tabTitles[idx];
        navCon.tabBarItem.image = tabImages[idx];
        [navigationControllers addObject:navCon];
    }];
    self.viewControllers = navigationControllers;
}

@end
