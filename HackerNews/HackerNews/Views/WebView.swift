//
//  WebView.swift
//  HackerNews
//
//  Created by Amritanshu Dash on 04/08/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
        if let safeString = urlString{
            
            if let url = URL(string: safeString){
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
