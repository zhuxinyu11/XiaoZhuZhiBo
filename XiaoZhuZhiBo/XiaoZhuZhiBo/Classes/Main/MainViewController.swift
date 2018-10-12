//
//  MainViewController.swift
//  XiaoZhuZhiBo
//
//  Created by 朱新余 on 2018/10/12.
//  Copyright © 2018年 朱新余. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")

    }
    
    private func addChildVc(storyName: String){
        ///通过storyboard获取控制器
        let vc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(vc)
    }
}
