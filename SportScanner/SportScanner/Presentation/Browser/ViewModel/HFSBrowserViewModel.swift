//
//  HFSBrowserViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import Foundation

protocol HFSBrowserViewModelInput {
    func updatePosterListId(identifiter: Int)
}

protocol HFSBrowserViewModelOutput {
    var title : String { get }
    var imageUrl : String { get }
    var overView: String{ get }
}

protocol HFSBrowserViewModel : HFSBrowserViewModelInput,HFSBrowserViewModelOutput { }


final class DefaultBrowserViewModel : HFSBrowserViewModel {

    
    var title: String
    
    var imageUrl: String
    
    var overView: String
    
    private let posterImagePath: String?
    
    init(_ title: String,_ imageUrl: String,_ overView: String) {
        self.title = title
        self.imageUrl = imageUrl
        self.overView = overView
        self.posterImagePath = ""
    }
    
}

/// 输入源
extension DefaultBrowserViewModel {
    func updatePosterListId(identifiter: Int) {
            
    }
}
