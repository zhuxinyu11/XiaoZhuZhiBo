//
//  HomeViewController.swift
//  XiaoZhuZhiBo
//
//  Created by 朱新余 on 2018/10/12.
//  Copyright © 2018年 朱新余. All rights reserved.
//

import UIKit

///标题栏高度
private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {
 
    // MARK:- 懒加载属性
    fileprivate lazy var pageTitleView : PageTitleView = {[weak self] in
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        titleView.delegate = self
        return titleView
        }()
    
    fileprivate lazy var pageContentView : PageContentView = {[weak self] in
        
        // 确定内容的frame
        let contentH = kScreenH - kStatusBarH - kNavigationBarH - kTitleViewH - kTabbarH

        let contentFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH + kTitleViewH, width: kScreenW, height: contentH)

        // 确定所有的子控制器
        var childVcs = [UIViewController]()
        childVcs.append(RecommendViewController())
        childVcs.append(GameViewController())
//        childVcs.append(AmuseViewController())
//        childVcs.append(FunnyViewController())
        
        let contentView = PageContentView(frame: contentFrame, childVcs: childVcs, parentViewController: self!)
        contentView.delegate = self
        return contentView
        }()

    
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        //不需要调整UIScrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        //设置UI界面
        setUpUI()
    }

}

// MARK: - 设置UI界面
extension HomeViewController {
    
    private func setUpUI() {
        // 设置导航栏
        setupnavigationBar()
        
        // 添加TitleView
        view.addSubview(pageTitleView)
        
        // 添加ContentView
        view.addSubview(pageContentView)
    }
    /// 设置导航栏
    private func setupnavigationBar() {

        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: CGSize(width: 40, height: 40))
  
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)

        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
    }
}


// MARK:- 遵守PageTitleViewDelegate协议
extension HomeViewController : PageTitleViewDelegate {
    func pageTitleView(titleView: PageTitleView, selectedIndex index: Int) {
        pageContentView.setCurrentIndex(index)
    }
}

// MARK:- 遵守PageContentViewDelegate协议
extension HomeViewController : PageContentViewDelegate {
    func pageContentView(_ contentView: PageContentView, progress: CGFloat, sourceIndex: Int, targetIndex: Int) {
        pageTitleView.setTitleWithProgress(progress, sourceIndex: sourceIndex, targetIndex: targetIndex)
    }
}
