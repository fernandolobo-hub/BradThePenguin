//
//  InfoModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            ZStack{
                Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).edgesIgnoringSafeArea(.all).opacity(0.25)
                RoundedRectangle(cornerRadius: 40).frame(width: 300, height: 400).foregroundColor(Color.white).shadow(radius: 5).padding(.bottom, 250)
                Circle().foregroundColor(Color.white).frame(width: 20, height: 20).padding(.top, 200)
                Circle().foregroundColor(Color.white).frame(width: 15, height: 15).padding(.top, 250).padding(.trailing, 30)
                Text("ola").padding(.bottom, 580).padding(.trailing, 220)
                Image("breuson").resizable().aspectRatio(contentMode: .fit).padding(.top, 500).padding(.trailing, 175)
        
            }.onTapGesture {
        self.presentationMode.wrappedValue.dismiss()}

    }
    }}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
       InfoView()
    }
}

