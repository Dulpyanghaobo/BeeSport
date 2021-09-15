//
//  HFSSportItemListViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

struct SportItemListViewModel: Equatable {
    /// 名称
    let title: String?
    /// 图片
    let posterImagePath: String?
    /// 视频时长
    let videoLongTime: String
    /// 多少个小节
    let snapCount: String
    /// 总共消耗多少kcal
    let burnKcal : String
}

extension SportItemListViewModel {
    init(sport: Sport) {
        self.title = sport.title ?? ""
        self.posterImagePath = sport.posterImagePath
        self.videoLongTime = sport.videoLongTime
        self.snapCount = sport.snapCount
        self.burnKcal = sport.burnKcal
    }
}
