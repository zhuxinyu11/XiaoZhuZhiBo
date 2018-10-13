//
//  UIColor-Extension.swift
//  DYZB
//
// Created by 朱新余 on 2018/10/12.
// Copyright © 2018年 朱新余. All rights reserved.

import UIKit

extension UIColor {
    ///便利构造函数设置颜色
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    ///类方法随机颜色
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
}
