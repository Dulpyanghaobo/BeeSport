//
//  HFSSportFlowCoordinator.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

/// 通过协议解偶
protocol HFSSportFlowCoordinatorDependencies {
    func makeSportListViewController(actions: SportsListViewModelActions) -> HFSSportListViewController;
    func makeSportDetailsViewController(sport : Sport) -> UIViewController;
}

final class HFSSportFlowCoordinator {
    private let dependencies : HFSSportFlowCoordinatorDependencies
    
    private weak var navigationController: UINavigationController?
    
    private weak var sportViewController : HFSSportListViewController?
    private weak var homeSleepViewController : UIViewController?
    
    init(navigationController : UINavigationController, dependencies: HFSSportFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        let actions = SportsListViewModelActions(showSportDetails: showSportDetails)
        /// 依赖注入获取对应viewController
        let viewController = dependencies.makeSportListViewController(actions: actions)
        self.navigationController?.pushViewController(viewController)
        self.sportViewController = viewController
        
    }
    
    func showSportDetails(sport: Sport) {
        let viewController = dependencies.makeSportDetailsViewController(sport: sport)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
