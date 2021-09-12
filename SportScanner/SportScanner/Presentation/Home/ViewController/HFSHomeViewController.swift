//
//  HFSHomeViewController.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import UIKit

class HFSHomeViewController: UIViewController,StoryboardInstantiable {

    private var viewModel: HFSHomeViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let goalSettingViewController = HFSGoalSettingViewController()
        self.navigationController?.pushViewController(goalSettingViewController)
    }
    
    /// 依赖注入
    /// - Parameter viewModel: 通过数据创建视图
    /// - Returns: 返回视图
    static func create(with viewModel : HFSHomeViewModel) -> HFSHomeViewController {
        let view = HFSHomeViewController.instantiateViewController()
        view.viewModel = viewModel
        return view
    }
    
    

}
