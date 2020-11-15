//
//  NewsUseCase.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation

protocol NewsUseCase {
    func readNewsList(_ completion: (Result<[NewsArticle], Error>) -> Void)
}

struct NewsUseCaseImpl: NewsUseCase {
    let newsAPIRepository: NewsAPIRepository

    init(newsAPIRepository: NewsAPIRepository) {
        self.newsAPIRepository = newsAPIRepository
    }

    func readNewsList(_ completion: (Result<[NewsArticle], Error>) -> Void) {
        // TODO: ニュース記事一覧を取得する
    }
}
