//
//  NewsAPIRepository.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation

protocol NewsAPIRepository {
    func request(_ completion: @escaping (Result<NewsAPIResponse, Error>) -> Void)
}

struct NewsAPIRepositoryImpl: NewsAPIRepository {
    func request(_ completion: @escaping (Result<NewsAPIResponse, Error>) -> Void) {
        // TODO: NewsAPIから情報を取得する
    }
}
