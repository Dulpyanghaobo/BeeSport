//
//  HFSGoalSettingViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import Foundation

enum HFSGoalSettingType {
    case HFSGoalSettingType
}

struct HFSGoalSettingViewModelActions {
//    let showMovieDetail:
}

/// 加载事件
protocol HFSGoalSettingViewModelInput {
    func viewDidLoad()
    
    
}

/// 操作事件
protocol HFSGoalSettingViewModelOutput {
    func showPopView()
    
}
