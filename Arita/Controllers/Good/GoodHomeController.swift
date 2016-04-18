//
//  GoodController.swift
//  Arita
//
//  Created by DcBunny on 16/4/18.
//  Copyright © 2016年 DcBunny. All rights reserved.
//

import UIKit

class GoodHomeController: BaseController {

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // temp for test
        let btn = UIButton(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        btn.setTitle("Go", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.blueColor()
        btn.addTarget(self, action: #selector(go), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(btn)
        
        setPageViewSettings()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        print("GoodHomeController receive a memory warning.")
    }
    
    //MARK: - controller settings
    func setPageViewSettings() {
        setNaviBarTitle(TextStr.goodHomeTitle)
    }
    
    //MARK: - event response
    func go() {
        let test = UserHomeController()
        navigationController?.pushViewController(test, animated: true)
    }
}
