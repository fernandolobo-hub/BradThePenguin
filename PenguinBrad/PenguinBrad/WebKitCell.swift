//
//  WebKitCell.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI
import WebKit

struct WebKitCell : View {
    var body: some View {
        NavigationView{
            VStack {
                WebView(request: URLRequest(url: URL(string: "https://www.openprocessing.org")!))
            }.navigationBarTitle(Text("Comunidade"))
        }
    }
}

struct WebView: UIViewRepresentable{

    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    

}

struct WebKitCell_Previews: PreviewProvider {
    static var previews: some View {
        WebKitCell()
    }
}
