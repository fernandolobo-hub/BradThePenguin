//
//  Challenges.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI


struct Challenges: View {
    
    @State private var showingAlert: Bool = false
    
    var body: some View {
        
        ZStack{
            
            NavigationView{
                
                List(challengeData){ challenge in
                    
                    if challenge.imageName == "Lock"{
                        
                        Button(action: {
                            if challenge.imageName == "Lock"{
                                self.showingAlert.toggle()
                            }
                        }) {
                            
                            ChallengeCard(challenge: challenge)
                        }
                    }
                        
                    else{
                        
                        NavigationLink(destination: ChallengeInstructions(challenge: challenge)) {
                            
                            ChallengeCard(challenge: challenge)
                        }.buttonStyle(PlainButtonStyle())
                        
                    }
                    
                    
                    
                }
                    
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                }.alert(isPresented: self.$showingAlert){
                    Alert(title: Text("Bloqueado"), message: Text("Desafio em desenvolvimento"),dismissButton: .default(Text("OK")))
                    
                }
                
            }
            
        }
        
    }
    
}



struct Challenges_Previews: PreviewProvider {
    static var previews: some View {
        Challenges()
    }
}



