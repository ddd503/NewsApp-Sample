//
//  NewsAPIRepository.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation

protocol NewsAPIRepository {
    func request(_ completion: (Result<Data, Error>) -> Void)
}

struct NewsAPIRepositoryImpl: NewsAPIRepository {
    func request(_ completion: (Result<Data, Error>) -> Void) {
        // TODO: NewsAPIにアクセスする
    }
}
