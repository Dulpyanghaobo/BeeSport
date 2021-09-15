//
//  HFSSportDI.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

final class HFSSportDIContainer {
    
    struct Dependencies {
        let apiDataTransferService : DataTransferService
        let imageDataTransferService : DataTransferService
        let videoDataTransferService : DataTransferService
    }
    
    private let dependencies : Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    // MARK: - Movies List
    func makeSportListViewController(actions: SportsListViewModelActions) -> HFSSportListViewController {
        return HFSSportListViewController.create(with: makeSportsListViewModel(actions: actions))
    }
    
    func makeSportsListViewModel(actions: SportsListViewModelActions) -> SportsListViewModel {
        return DefaultSportsListViewModel()
    }
    
    // MARK: - Sport Detail
    func makeSportDetailsViewController(sport : Sport) -> UIViewController {
        return HFSSportDetailViewController()
    }
    

}
