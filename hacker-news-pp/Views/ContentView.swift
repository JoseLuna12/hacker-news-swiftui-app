//
//  ContentView.swift
//  hacker-news-pp
//
//  Created by Jose Luna on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle(
                Text("HN")
            )
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "This is america"),
    Post(id: "2", title: "This is america"),
    Post(id: "3", title: "This is america"),
    Post(id: "4", title: "This is america"),
    Post(id: "5", title: "This is america"),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
