//
//  AppFlowCoordinator.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import UIKit


final class AppFlowCoordinator {

    var navigationController: UINavigationController?
    private let appDIContainer: AppDIContainer
    
    init(navigationController: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        self.appDIContainer = appDIContainer
    }

    func start() {
        
        guard let navigationController = navigationController else {
            return
        }
        // 进入首页
        let homeScenceDIContainer = appDIContainer.makeHomesSceneDIContainer()
        let flow = homeScenceDIContainer.makeHomeFlowCoordinator(navigationController: navigationController)
        flow.start()
    }
}
