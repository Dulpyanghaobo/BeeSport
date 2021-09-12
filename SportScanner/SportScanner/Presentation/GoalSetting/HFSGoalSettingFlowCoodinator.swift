//
//  HFSGoalSettingFlowCoodinator.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import UIKit
/// 通过协议解偶
protocol HFSGoalSettingFlowCoodinatorDependencies {
    func makeGoalSettingViewController(actions: HFSGoalSettingViewModelActions) -> HFSGoalSettingViewController
}

final class HFSGoalSettingFlowCoodinator {
    private let dependencies : HFSGoalSettingFlowCoodinatorDependencies
    
    private weak var navigationController: UINavigationController?
    
    private weak var goalSettingViewController : HFSGoalSettingViewController?
    private weak var homeSleepViewController : UIViewController?
    
    init(navigationController : UINavigationController, dependencies: HFSGoalSettingFlowCoodinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        
        let actions = HFSGoalSettingViewModelActions()
        /// 依赖注入获取对应viewController
        let viewController = dependencies.makeGoalSettingViewController(actions: actions)
        
        self.navigationController?.pushViewController(viewController)
        self.goalSettingViewController = viewController
        
    }
}
