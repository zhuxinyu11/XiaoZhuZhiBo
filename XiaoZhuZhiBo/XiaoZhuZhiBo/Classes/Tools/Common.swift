//
//  Common.swift
//  XiaoZhuZhiBo
//
//  Created by 朱新余 on 2018/10/13.
//  Copyright © 2018年 朱新余. All rights reserved.
//

import UIKit

/// 状态栏高度
let kStatusBarH : CGFloat = (IS_IPHONE_X ? 44.0 : 20.0)
/// 导航条高度
let kNavigationBarH : CGFloat = 44
/// Tabbar高度
let kTabbarH : CGFloat = (IS_IPHONE_X ? (49.0+34.0) : 49.0)
// Tabbar安全的底部边距.
let kTabbarSafeBottomMargin = (IS_IPHONE_X ? 34.0 : 0.0)
// 状态栏+导航条高度
let  kStatusBarAndNavigationBarH = (IS_IPHONE_X ? 88.0 : 64.0)

let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height

let IS_IPHONE4 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 960).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE5 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 1136).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE6 =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 750, height: 1334).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE6_PLUS =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1242, height: 2208).equalTo((UIScreen.main.currentMode?.size)!) : false)


let IS_IPHONE6_PLUS_SCALE =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1125, height: 2001).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE_X =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1125, height: 2436).equalTo((UIScreen.main.currentMode?.size)!) : false)


