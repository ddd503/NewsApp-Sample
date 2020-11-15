//
//  Injectable.swift
//  NewsApp-Sample
//
//  Created by kawaharadai on 2020/10/11.
//

import Foundation

protocol Injectable {
    associatedtype Input
    associatedtype Output

    init(input: Input, output: Output)
}
