//
//  PlayModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct PlayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).edgesIgnoringSafeArea(.all).opacity(0.25)
                RoundedRectangle(cornerRadius: 40).foregroundColor(Color.white).shadow(radius: 5).frame(width: 350, height: 600).padding()
            VStack{
                Text("Seu desenho:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                Spacer()
            
            }.padding()
            
        }.onTapGesture {
        self.presentationMode.wrappedValue.dismiss()}
        
    }
    
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
