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
            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.15).edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 40).foregroundColor(Color.white).shadow(radius: 3).frame(width: 350, height: 600).padding(.top, 100)
            
            
            Image("triangulo").aspectRatio(contentMode: .fill)
            
            VStack{
                Text("Seu desenho:")
                    .font(.custom("Avenir Next", size: 40))
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
