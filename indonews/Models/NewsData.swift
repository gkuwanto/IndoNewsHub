//
//  NewsData.swift
//  indonews
//
//  Created by Garry Kuwanto on 22/03/20.
//  Copyright © 2020 Garry Kuwanto. All rights reserved.
//

import Foundation
struct Results: Decodable {
    let articles: [News]
}

struct News: Decodable, Identifiable {
    let title: String
    let url: String
    var id: String {
        return url
    }
}
