//
//  Sport.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

struct Sport: Equatable, Identifiable {
    typealias Identifier = String

    let id: Identifier
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

struct SportPage: Equatable {
    let page: Int
    let totalPages: Int
    let sports: [Sport]
}
