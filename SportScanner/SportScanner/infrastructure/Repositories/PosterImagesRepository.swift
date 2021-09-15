//
//  PosterImagesRepository.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/15.
//

import Foundation

protocol PosterImagesRepository {
    func fetchImage(with imagePath: String, width: Int, completion: @escaping (Result<Data, Error>) -> Void) -> Cancellable?
}
