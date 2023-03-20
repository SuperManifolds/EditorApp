//
//  WebView.swift
//  EditorApp
//
//  Created by Alex Sørlie Glomsaas on 2023-03-20.
//

import SwiftUI
import WebKit

// embed WKWebView in SwiftUI
struct WebView: UIViewRepresentable {
    let webView = WKWebView()
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        let url = Bundle.main.url(forResource: "index", withExtension: "html")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
