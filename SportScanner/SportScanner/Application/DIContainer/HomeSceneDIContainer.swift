//
//  HomeSceneDIContainer.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import UIKit

final class HomeSceneDIContainer {
    
    struct Dependencies {
//        let apiDataTransferService: DataTransferService
//        let imageDataTransferService: DataTransferService
    }
    
    private let dependencies : Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    // MARK: - Flow Coordinators
    func makeHomeFlowCoordinator(navigationController: UINavigationController) -> HFSHomeFlowCoordinator {
        return HFSHomeFlowCoordinator(navigationController: navigationController, dependencies:self)
    }
    
    func makeHomeViewController(actions: HFSHomeViewModelActions) -> HFSHomeViewController {
        return HFSHomeViewController.create(with: makeHomeViewModel(actions: actions))
    }
    
    func makeHomeViewModel(actions : HFSHomeViewModelActions) -> HFSHomeViewModel {
        return DefaultHomeViewModel(actions: actions)
    }
    
}


extension HomeSceneDIContainer : HFSHomeFlowCoordinatorDependencies {

}
