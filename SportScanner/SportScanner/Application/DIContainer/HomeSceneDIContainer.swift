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
//
//    private let dependencies: Dependencies
//
//    // MARK: - Persistent Storage
//    lazy var moviesQueriesStorage: MoviesQueriesStorage = CoreDataMoviesQueriesStorage(maxStorageLimit: 10)
//    lazy var moviesResponseCache: MoviesResponseStorage = CoreDataMoviesResponseStorage()
//
//    init(dependencies: Dependencies) {
//        self.dependencies = dependencies
//    }
    
//    // MARK: - Use Cases
//    func makeSearchMoviesUseCase() -> SearchMoviesUseCase {
//        return DefaultSearchMoviesUseCase(moviesRepository: makeMoviesRepository(),
//                                          moviesQueriesRepository: makeMoviesQueriesRepository())
//    }
//
//    func makeFetchRecentMovieQueriesUseCase(requestValue: FetchRecentMovieQueriesUseCase.RequestValue,
//                                            completion: @escaping (FetchRecentMovieQueriesUseCase.ResultValue) -> Void) -> UseCase {
//        return FetchRecentMovieQueriesUseCase(requestValue: requestValue,
//                                              completion: completion,
//                                              moviesQueriesRepository: makeMoviesQueriesRepository()
//        )
//    }
    
//    // MARK: - Repositories
//    func makeMoviesRepository() -> MoviesRepository {
//        return DefaultMoviesRepository(dataTransferService: dependencies.apiDataTransferService, cache: moviesResponseCache)
//    }
//    func makeMoviesQueriesRepository() -> MoviesQueriesRepository {
//        return DefaultMoviesQueriesRepository(dataTransferService: dependencies.apiDataTransferService,
//                                              moviesQueriesPersistentStorage: moviesQueriesStorage)
//    }
//    func makePosterImagesRepository() -> PosterImagesRepository {
//        return DefaultPosterImagesRepository(dataTransferService: dependencies.imageDataTransferService)
//    }
    
//    // MARK: - Movies List
//    func makeMoviesListViewController(actions: MoviesListViewModelActions) -> MoviesListViewController {
//        return MoviesListViewController.create(with: makeMoviesListViewModel(actions: actions),
//                                               posterImagesRepository: makePosterImagesRepository())
//    }
//    
//    func makeMoviesListViewModel(actions: MoviesListViewModelActions) -> MoviesListViewModel {
//        return DefaultMoviesListViewModel(searchMoviesUseCase: makeSearchMoviesUseCase(),
//                                          actions: actions)
//    }
//    
//    // MARK: - Movie Details
//    func makeMoviesDetailsViewController(movie: Movie) -> UIViewController {
//        return MovieDetailsViewController.create(with: makeMoviesDetailsViewModel(movie: movie))
//    }
//    
//    func makeMoviesDetailsViewModel(movie: Movie) -> MovieDetailsViewModel {
//        return DefaultMovieDetailsViewModel(movie: movie,
//                                            posterImagesRepository: makePosterImagesRepository())
//    }
//
//    
//    func makeMoviesQueryListViewModel(didSelect: @escaping MoviesQueryListViewModelDidSelectAction) -> MoviesQueryListViewModel {
//        return DefaultMoviesQueryListViewModel(numberOfQueriesToShow: 10,
//                                               fetchRecentMovieQueriesUseCaseFactory: makeFetchRecentMovieQueriesUseCase,
//                                               didSelect: didSelect)
//    }
//
//    @available(iOS 13.0, *)
//    func makeMoviesQueryListViewModelWrapper(didSelect: @escaping MoviesQueryListViewModelDidSelectAction) -> MoviesQueryListViewModelWrapper {
//        return MoviesQueryListViewModelWrapper(viewModel: makeMoviesQueryListViewModel(didSelect: didSelect))
//    }
//
    
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
