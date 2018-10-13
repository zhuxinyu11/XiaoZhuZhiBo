//
//  UIBarButtonItem-Extension.swift
//  XiaoZhuZhiBo
//
//  Created by 朱新余 on 2018/10/12.
//  Copyright © 2018年 朱新余. All rights reserved.
//
import UIKit
import Foundation

extension UIBarButtonItem {
    /// 类方法创建Item
    class func createItem(imageName : String, highImagename : String, size : CGSize) ->UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named:highImagename), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    
    
    /// Image便利构造函数创建Item
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero)  {

        let btn = UIButton()

        btn.setImage(UIImage(named: imageName), for: UIControlState())
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        // 设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        // 创建UIBarButtonItem
        self.init(customView : btn)
    }
}
