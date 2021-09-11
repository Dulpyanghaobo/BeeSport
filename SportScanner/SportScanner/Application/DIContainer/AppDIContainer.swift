//
//  AppDIContainer.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import Foundation


final class AppDIContainer {
    
    lazy var appConfiguration = AppConfiguration()
    
    // MARK: - Network
//    lazy var apiDataTransferService: DataTransferService = {
//        let config = ApiDataNetworkConfig(baseURL: URL(string: appConfiguration.apiBaseURL)!,
//                                          queryParameters: ["api_key": appConfiguration.apiKey,
//                                                            "language": NSLocale.preferredLanguages.first ?? "en"])
//
//        let apiDataNetwork = DefaultNetworkService(config: config)
//        return DefaultDataTransferService(with: apiDataNetwork)
//    }()
//    func makeHomeSceneDIContainer() -> HFSHomeViewController {
//        return
//    }
    
    // MARK: - DIContainers of scenes
    func makeHomesSceneDIContainer() -> HomeSceneDIContainer {
      
        let dependencies = HomeSceneDIContainer.Dependencies()
        
        return HomeSceneDIContainer(dependencies: dependencies)
    }
}
