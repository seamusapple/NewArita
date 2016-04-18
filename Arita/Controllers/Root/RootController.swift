//
//  ViewController.swift
//  Arita
//
//  Created by 李宏博 on 16/4/15.
//  Copyright © 2016年 DcBunny. All rights reserved.
//

import UIKit

class RootController: UITabBarController {

    let articleHome = ArticleHomeController()
    let goodHome = GoodHomeController()
    let userHome = UserHomeController()
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSubControllers()
        setTabBarItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        print("RootController receive a memory warning.")
    }
    
    // MARK: - setup page subviews
    func setSubControllers() {
        let articleNav = UINavigationController(rootViewController: articleHome)
        let goodNav = UINavigationController(rootViewController: goodHome)
        let userNav = UINavigationController(rootViewController: userHome)
        viewControllers = [articleNav, goodNav, userNav]
    }
    
    func setTabBarItem() {
        tabBar.barTintColor = UIColor.whiteColor()
        tabBar.translucent = false
    
        let articleItem = tabBar.items![0]
        let goodItem = tabBar.items![1]
        let userItem = tabBar.items![2]
        
        let color = UIColor.blackColor()
        let font = UIFont.systemFontOfSize(Font.tabBarFont)
        let attributes = [
            NSForegroundColorAttributeName : color,
            NSFontAttributeName : font
        ]
        
        articleItem.title = TextStr.tabBarItem1
        articleItem.setTitleTextAttributes(attributes , forState: UIControlState.Selected)
        
        goodItem.title = TextStr.tabBarItem2
        goodItem.setTitleTextAttributes(attributes, forState: UIControlState.Selected)
        
        userItem.title = TextStr.tabBarItem3
        userItem.setTitleTextAttributes(attributes, forState: UIControlState.Selected)
    }
}
