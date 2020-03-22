//
//  NetworkManager.swift
//  indonews
//
//  Created by Garry Kuwanto on 22/03/20.
//  Copyright © 2020 Garry Kuwanto. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var news = [News]()
    
    func fetchData() {
        let API_KEY = "1eafc94ab284461fad92b2d74b07dbeb"
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=id&apiKey=\(API_KEY)") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.news = results.articles
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
