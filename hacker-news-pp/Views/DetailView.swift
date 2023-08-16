//
//  DetailView.swift
//  hacker-news-pp
//
//  Created by Jose Luna on 26/10/22.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


