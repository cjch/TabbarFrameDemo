//
//  JCMainTabbarController.swift
//  TabbarFrameDemo
//
//  Created by jiechen on 15/11/10.
//  Copyright © 2015年 jiechen. All rights reserved.
//

import UIKit

class JCMainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.configSystemTabbar()
        self.configCustomTabbar()
    }
    
    func configSystemTabbar() {
        let firstController = FirstViewController()
        let secondController = SecondViewController()
        let thirdController = ThirdViewController()
        
        firstController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.MostRecent, tag: 0)
        firstController.view.backgroundColor = UIColor.redColor()
        
        secondController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Contacts, tag: 1)
        secondController.view.backgroundColor = UIColor.lightGrayColor()
        
        thirdController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        thirdController.view.backgroundColor = UIColor.blueColor()
        
        self.viewControllers = [firstController, secondController, thirdController];
    }
    
    func configCustomTabbar() {
        let controllers = [FirstViewController(), SecondViewController(), ThirdViewController()]
        let tabTitles = ["首页", "发现", "我的"]
        let tabImages = [UIImage(named: "tabbar_myCenter_nor"), UIImage(named: "tabbar_find_nor"), UIImage(named: "tabbar_myCenter_nor")]
        
        var navControllers: [UINavigationController] = []
        for idx in 0..<controllers.count {
            let navController = UINavigationController(rootViewController: controllers[idx])
            navController.tabBarItem.title = tabTitles[idx]
            navController.tabBarItem.image = tabImages[idx]
            navControllers.append(navController)
        }
        self.viewControllers = navControllers
    }
}
