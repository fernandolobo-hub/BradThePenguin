//
//  ChallengeInstructions.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 07/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct ChallengeInstructions: View {
    
    @State var showChallenge = false
    
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Text(ChallengeContentData[0].title).font(.title)
                Spacer()
            }
            Spacer()
            Text("Apresentação").font(.title)
            
            Text(ChallengeContentData[0].presentation).font(.custom("Avenir", size: 20))
            Spacer()
            Text("Instruções").font(.title)
            Text(ChallengeContentData[0].instructions).font(.custom("Avenir", size: 20))
            Spacer()
            
            Button(action: {
                self.showChallenge.toggle()
            }) {
                ZStack{
                    
                    Circle().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(width: 50, height: 50).shadow(radius: 3).overlay(Image(systemName: "info.circle").fixedSize().padding())
                    
                }}.sheet(isPresented: $showChallenge) {
                    FlagChallenge()
                    
            }
        }
        
    }
}

struct ChallengeInstructions_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeInstructions()
    }
}
