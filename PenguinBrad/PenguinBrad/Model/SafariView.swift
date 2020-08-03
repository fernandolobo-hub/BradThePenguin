//
//  WebKitCell.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI
import SafariServices

struct ContentView2: View {
    // whether or not to show the Safari ViewController
    @State var showSafari = false
    // initial URL string
    @State var urlString = "https://www.openprocessing.org"

    var body: some View {
            NavigationView{
                VStack{
            SafariView(url:URL(string: self.urlString)!)
                }
                }.edgesIgnoringSafeArea(.all)
        
    }
}


struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}



struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
