//
//  HFSHomeFlowCoordinator.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import UIKit

/// 通过协议解偶
protocol HFSHomeFlowCoordinatorDependencies {
    func makeHomeViewController(actions: HFSHomeViewModelActions) -> HFSHomeViewController
}

final class HFSHomeFlowCoordinator {
    private let dependencies : HFSHomeFlowCoordinatorDependencies
    
    private weak var navigationController: UINavigationController?
    
    private weak var homeViewController : HFSHomeViewController?
    private weak var homeSleepViewController : UIViewController?
    
    init(navigationController : UINavigationController, dependencies: HFSHomeFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        
        let actions = HFSHomeViewModelActions()
        /// 依赖注入获取对应viewController
        let viewController = dependencies.makeHomeViewController(actions: actions)
        
        self.navigationController?.pushViewController(viewController, animated: false)
        self.homeViewController = viewController
        
    }
}
