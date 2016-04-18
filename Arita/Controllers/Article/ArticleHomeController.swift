//
//  ArticleController.swift
//  Arita
//
//  Created by DcBunny on 16/4/18.
//  Copyright © 2016年 DcBunny. All rights reserved.
//

import UIKit
import SnapKit

class ArticleHomeController: UIViewController {
    //MARK: - Article Constant
    let NAME_TITLE = "阿里塔"
    let COLOR_TITLE = UIColor.init(red: 255, green: 82, blue: 43, alpha: 1.0)
    let kRowInTableView = Int(4)
    let kCellHeightTata = CGFloat(246.5)
    let kCellHeightCom = CGFloat(245)
    //MARK: - Article Componets
//    var loginBtn = UIBarButtonItem()
    var articleHomeTableView = UITableView()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNav()
        addPageSubviews()
        layoutPageSubviews()
        setPageSubviews()
        setDelegateAndDataSource()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - init methods
    func setNav() {
//        loginBtn.setBackgroundImage(UIImage(named: "home_login"), forState: .Normal, barMetrics: .DefaultPrompt)
        
        navigationItem.title = NAME_TITLE
//        navigationItem.rightBarButtonItem = loginBtn
    }
    
    func addPageSubviews() {
        view.addSubview(articleHomeTableView)
    }
    
    func layoutPageSubviews() {
        articleHomeTableView.snp_makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(view)
        }
    }
    
    func setPageSubviews() {
        view.backgroundColor = UIColor.whiteColor()
        
        articleHomeTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        articleHomeTableView.showsVerticalScrollIndicator = false
        articleHomeTableView.allowsSelection = false
        articleHomeTableView.registerClass(HomeTataCell.self, forCellReuseIdentifier: "TataCell")
        articleHomeTableView.registerClass(HomeCyAndShCell.self, forCellReuseIdentifier: "CyAndShCell")
        articleHomeTableView.registerClass(HomeSjCell.self, forCellReuseIdentifier: "SjCell")
        articleHomeTableView.registerClass(HomeCyAndShCell.self, forCellReuseIdentifier: "CyAndShCell")
    
    }
    
    func setDelegateAndDataSource() {
        articleHomeTableView.delegate = self
        articleHomeTableView.dataSource = self
    }
    
}

//MARK: - TableView DataSource and Delagate
extension ArticleHomeController: UITableViewDelegate, UITableViewDataSource {
    //MARK: - TableView DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kRowInTableView
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cellId = "TataCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
            
            return cell
            
        case 1:
            let cellId = "CyAndShCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
            
            return cell
            
        case 2:
            let cellId = "SjCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
            
            return cell
            
        default:
            let cellId = "CyAndShCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
            
            return cell
            
        }
    }
    
    //MARK: - TableView Delegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return kCellHeightTata
        } else {
            return kCellHeightCom
        }
        
    }
    
    
}




