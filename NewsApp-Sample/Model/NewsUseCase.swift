//
//  NewsUseCase.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation

protocol NewsUseCase {
    func readNewsList(_ completion: @escaping (Result<[NewsArticle], Error>) -> Void)
}

struct NewsUseCaseImpl: NewsUseCase {
    let newsAPIRepository: NewsAPIRepository

    init(newsAPIRepository: NewsAPIRepository) {
        self.newsAPIRepository = newsAPIRepository
    }

    func readNewsList(_ completion: @escaping (Result<[NewsArticle], Error>) -> Void) {
        newsAPIRepository.request { result in
            switch result {
            case .success(let newsAPIResponse):
                completion(.success(newsAPIResponse.items.map {
                    NewsArticle(category: $0.category, title: $0.title, content: $0.content, date: $0.date, img: $0.img)
                }))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
