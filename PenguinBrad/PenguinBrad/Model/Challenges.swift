//
//  Challenges.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Challenges: View {
    
    var challenges : [Challenge] = []
    
    var body: some View {
        
        NavigationView{
                       
            List(challenges) { challenge in NavigationLink(destination: Text("Instructions to \(challenge.topic)")){
                       
                Image(challenge.imageName).resizable().aspectRatio(1, contentMode: .fit)
                               .cornerRadius(8)
                           
                               
                           
                           VStack {
                               VStack(alignment: .leading){
                                   Text(challenge.name)
                                .offset()
               
                               }
                            Text(challenge.topic)
                                   .font(.subheadline)
                                   .foregroundColor(Color.secondary)
                            .offset()
                           }
                           
                       }

                           
                       }.navigationBarTitle("Challenges")
                           
                           .padding(.top)

            }
               
        }
        
        
}


struct Challenges_Previews: PreviewProvider {
    static var previews: some View {
        Challenges(challenges: challengeData)
    }
}
