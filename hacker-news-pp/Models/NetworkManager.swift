//
//  NetworkManager.swift
//  hacker-news-pp
//
//  Created by Jose Luna on 26/10/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts =  [PostItem]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, err in
                
                if (err == nil){
                    let decoder = JSONDecoder()
                    if let hrData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: hrData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch {
                            print("there was a problem fetching data")
                        }
                    }
                }
            }
            task.resume()
 
        }
        
    }
}
