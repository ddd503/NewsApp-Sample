//
//  NewsAPIResponse.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/11/15.
//

import Foundation

struct NewsAPIResponse: Decodable {
    let items: [Item]
}

extension NewsAPIResponse {
    struct Item: Decodable {
        let category: String
        let title: String
        let content: String
        let date: String
        let img: String
        let imgSourceName: String
        let imgSourceURL: String
    }
}
