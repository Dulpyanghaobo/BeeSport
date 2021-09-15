//
//  HFSSportDetailViewModel.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

protocol SportDetailViewModelInput {
    
}

protocol SportDetailViewModelOutPut {
    
}

protocol SportDetailViewModel : SportDetailViewModelInput,SportDetailViewModelOutPut {}

final class DefaultSportDetailViewModel :SportDetailViewModel
{
    private var posterImagePath : String? = nil
    private let posterImagesRepository : PosterImagesRepository
    
    // MARK: - OUTPUT
    let title: String
    let posterImage: Observable<Data?> = Observable(nil)
    let isPosterImageHidden: Bool
    
    
    
    init(sport: Sport,
         posterImagesRepository: PosterImagesRepository) {
        self.title = sport.title ?? ""
        self.posterImagePath = sport.posterImagePath
        self.isPosterImageHidden = sport.posterImagePath == nil
        self.posterImagesRepository = posterImagesRepository
    }
    
}

extension DefaultSportDetailViewModel
{
    
}
