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
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5).edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 40).foregroundColor(Color.white).shadow(radius: 5).frame(width: 350, height: 600).padding(.top, 100)
            VStack{
                Text("Seu desenho:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center).foregroundColor(Color.black).padding(.top)
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
