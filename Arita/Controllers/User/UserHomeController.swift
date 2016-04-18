//
//  UserHomeController.swift
//  Arita
//
//  Created by DcBunny on 16/4/18.
//  Copyright © 2016年 DcBunny. All rights reserved.
//

import UIKit

class UserHomeController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPageViewSettings()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        print("GoodHomeController receive a memory warning.")
    }
    
    //MARK: - controller settings
    func setPageViewSettings() {
        setNaviBarTitle(TextStr.goodHomeTitle)
        setNaviBarBtnItemWithTitle("返回", direction: true, style: UIBarButtonItemStyle.Plain, action: #selector(back))
    }
    
    //MARK: - event response
    func back() {
        navigationController?.popViewControllerAnimated(true)
    }
}
