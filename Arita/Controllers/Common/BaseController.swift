//
//  BaseController.swift
//  Arita
//
//  Created by DcBunny on 16/4/18.
//  Copyright © 2016年 DcBunny. All rights reserved.
//

import UIKit

class BaseController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBaseConditions()
    }
    
    private func setBaseConditions() {
        edgesForExtendedLayout = UIRectEdge.None
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    func setNaviBarTitle(title: String) {
        navigationItem.title = title
    }
    
    func setNaviBarBtnItemWithTitle(title: String, direction: Bool,
                                    style: UIBarButtonItemStyle, action: Selector) {
        let barBtnItem = UIBarButtonItem(title: title, style: style, target: self, action: action)
        if direction {
            navigationItem.leftBarButtonItem = barBtnItem
        } else {
            navigationItem.rightBarButtonItem = barBtnItem
        }
    }
    
    func setNaviBarBtnItemWithImage(image: UIImage, direction: Bool,
                                    style: UIBarButtonItemStyle, action: Selector) {
        let barBtnItem = UIBarButtonItem(image: image, style: style, target: self, action: action)
        if direction {
            navigationItem.leftBarButtonItem = barBtnItem
        } else {
            navigationItem.rightBarButtonItem = barBtnItem
        }
    }
}
