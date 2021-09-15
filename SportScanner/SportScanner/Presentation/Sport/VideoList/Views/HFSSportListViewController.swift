//
//  HFSSportListViewController.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import UIKit

class HFSSportListViewController: UIViewController {

    private var viewModel: SportsListViewModel!
    
    private var sportsTableViewController : SportListTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewModel.viewDidLoad()
//        moviesTableViewController?.viewModel = viewModel
//        moviesTableViewController?.posterImagesRepository = posterImagesRepository
    }
    
    /// 相数据绑定
    /// - Parameter viewModel: listViewModel
    private func bind(to viewModel: SportsListViewModel) {
        viewModel.items.observe(on: self) { [weak self] _ in self?.updateItems()}
        viewModel.loading.observe(on: self) { [weak self] in self?.updateLoading($0)}
        viewModel.query.observe(on: self) { [weak self] in self?.updateSearchQuery($0)}
        viewModel.error.observe(on: self) { [weak self] in
            self?.showError($0)
        }
    }
    
    func updateItems() {
        sportsTableViewController?.load()
    }
    
    private func updateLoading(_ loading: SportsListViewModelLoading?) {
        
    }

    private func updateQueriesSuggestions() {

    }

    private func updateSearchQuery(_ query: String) {

    }

    private func showError(_ error: String) {

    }
    /// 依赖注入
    /// - Parameter viewModel: 通过数据创建视图
    /// - Returns: 返回视图
    static func create(with viewModel : SportsListViewModel) -> HFSSportListViewController {
        let view = HFSSportListViewController.init()
        view.viewModel = viewModel
        return view
    }
}
