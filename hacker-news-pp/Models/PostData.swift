//
//  PostData.swift
//  hacker-news-pp
//
//  Created by Jose Luna on 26/10/22.
//

import Foundation

struct Results: Decodable {
    let hits: [PostItem]
}

struct PostItem: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
