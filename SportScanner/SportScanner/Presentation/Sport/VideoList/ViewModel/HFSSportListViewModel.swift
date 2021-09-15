//
//  HFSSportListViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation


struct SportsListViewModelActions {
    
    /// 从运动视频列表当中进入运动详情页
    let showSportDetails: (Sport) -> Void
}

/// 下一页或者全屏加载
enum SportsListViewModelLoading {
    case fullScreen
    case nextPage
}

protocol SportsListViewModelInput {
    func viewDidLoad()
    func didSelectItem(at index: Int)
}

protocol SportsListViewModelOutput {
    var items: Observable<[SportItemListViewModel]> { get }
    var loading: Observable<SportsListViewModelLoading?> { get }
    var query: Observable<String> { get }
    var error: Observable<String> { get }
    var isEmpty: Bool { get }
    var screenTitle: String { get }
    var emptyDataTitle: String { get }
    var errorTitle: String { get }
    var searchBarPlaceholder: String { get }
}

protocol SportsListViewModel : SportsListViewModelInput,SportsListViewModelOutput{}

final class DefaultSportsListViewModel : SportsListViewModel
{
    
    var title: String?
    // MARK: - OUTPUT
    let items: Observable<[SportItemListViewModel]> = Observable([])
    var loading: Observable<SportsListViewModelLoading?> = Observable(.none)
    let query: Observable<String> = Observable("")
    let error: Observable<String> = Observable("")
    var isEmpty: Bool { return items.value.isEmpty }
    let screenTitle = NSLocalizedString("Movies", comment: "")
    let emptyDataTitle = NSLocalizedString("Search results", comment: "")
    let errorTitle = NSLocalizedString("Error", comment: "")
    let searchBarPlaceholder = NSLocalizedString("Search Movies", comment: "")
}

extension DefaultSportsListViewModel
{
    func viewDidLoad()
    {
        self.title = "Workouts Video"
    }
    
    func didSelectItem(at index: Int)
    {
        
    }
    
    private func update() {
        
    }
}
