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
    
    var challenge: Challenge
    
    var body: some View {
        
        
        
        VStack {
            
            
            
            
            
            Spacer()
            HStack {
                Spacer()
                Text(challenge.title).font(.title).fontWeight(.bold)
                Spacer()
            }
            Spacer()
            Text("Apresentação").font(.title)
            
            Text(challenge.presentation).font(.custom("Avenir", size: 20)).padding()
            Spacer()
            Text("Instruções").font(.title)
            Text(challenge.instructions).font(.custom("Avenir", size: 20)).padding()
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
        ChallengeInstructions(challenge: challengeData[1])
    }
}
