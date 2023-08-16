//
//  WebView.swift
//  hacker-news-pp
//
//  Created by Jose Luna on 26/10/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlNullable: String?
    init(_ urlNullable: String?) {
        self.urlNullable = urlNullable
    }
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = urlNullable {
            if let pageUrl = URL(string: url) {
                let request = URLRequest(url: pageUrl)
                uiView.load(request)
            }
                
        }
    }
    
}
