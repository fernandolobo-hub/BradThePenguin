//
//  ChallengeCard.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 21/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct ChallengeCard: View {
    
    //@State private var showingAlert = false
    //@State private var locked = false
    var challenge: Challenge
    
    var body: some View {
        ZStack {
            VStack{
                
                
                
                Spacer()
                HStack(alignment: .top){
                    Image(challenge.imageName)
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .trailing).padding() //80,90
                        //.overlay(Rectangle().stroke(Color.secondary, lineWidth: 1))
                        .padding(.top, 10)
                    VStack(alignment: .leading){
                        Text(challenge.name).font(.custom("Avenir Next", size: 17)).minimumScaleFactor(0.5)
                        //.font(.system(size: 18, weight: .bold, design: .default))
                        Text(challenge.topic).font(.custom("Avenir Next", size: 17)).minimumScaleFactor(0.5)
                            //.font(.system(size: 16, weight: .semibold, design: .default)))
                            .foregroundColor(.secondary)
                        
                    }.navigationBarTitle("Challenges").font(.title).padding(.top, 10).padding(.leading, 5)
                        
//                        .alert(isPresented: self.$showingAlert){
//                            Alert(title: Text("Bloqueado"), message: Text("Desafio em desenvolvimento"),dismissButton: .default(Text("OK")))
//                            
//                    }
                    Spacer()
                    //Image(systemName: "chevron.right").font(.custom("Avenir Next", size: 17)).minimumScaleFactor(0.5).padding()
                    
                    //.font(.system(size: 18, design: .default)).minimumScaleFactor(0.5).padding()
                }
                
                
                Spacer()
            }
        }/*.onTapGesture{
         
         if self.challenge.imageName == "Lock"{
         
         self.showingAlert.toggle()
         
         }
         
         
         
         }*/
    }
}

struct ChallengeCard_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeCard(challenge: challengeData[1])
    }
}
