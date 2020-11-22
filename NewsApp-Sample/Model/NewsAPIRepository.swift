//
//  NewsAPIRepository.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation
import Combine

protocol NewsAPIRepository {
    func request(_ completion: @escaping (Result<NewsAPIResponse, Error>) -> Void)
    func request() -> AnyPublisher<NewsAPIResponse, Error>
}

struct NewsAPIRepositoryImpl: NewsAPIRepository {
    func request(_ completion: @escaping (Result<NewsAPIResponse, Error>) -> Void) {
        // TODO: NewsAPIから情報を取得する
    }

    func request() -> AnyPublisher<NewsAPIResponse, Error> {
        // TODO: 通信を行い、URLSessionを通したPublishierを返す
        return Future<NewsAPIResponse, Error> { promise in
            let dummyResponse = NewsAPIResponse(items: [])
            promise(.success(dummyResponse))
        }
        .eraseToAnyPublisher() // AnyPublisherに変換して返す
    }
}
