//
//  HFSHomeViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/11.
//

import Foundation

protocol HFSHomeViewModelInput {
    func viewDidLoad()
}

protocol HFSHomeViewModelOutPut {

}

protocol HFSHomeViewModel :  HFSHomeViewModelInput, HFSHomeViewModelOutPut {
    
}

final class DefaultHomeViewModel : HFSHomeViewModel {

    
    
    private let actions : HFSHomeViewModelActions?
    
    init(actions : HFSHomeViewModelActions? = nil) {
        self.actions = actions
    }
}

extension DefaultHomeViewModel {
    func viewDidLoad() {
        
    }
}
